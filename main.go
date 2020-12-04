package main

import (
	"context"
	"errors"
	"fmt"
	"github.com/gitslagga/gitbitex-admin/models"
	"log"
	"net/http"
	"os"
	"os/signal"
	"time"

	_ "github.com/GoAdminGroup/go-admin/modules/db/drivers/mysql"
	_ "github.com/GoAdminGroup/themes/adminlte"
	_ "github.com/GoAdminGroup/themes/sword"

	"github.com/GoAdminGroup/components/echarts"
	ada "github.com/GoAdminGroup/go-admin/adapter/gin"
	adminContext "github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/engine"
	"github.com/GoAdminGroup/go-admin/modules/config"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/form"
	"github.com/GoAdminGroup/go-admin/template"
	"github.com/GoAdminGroup/go-admin/template/chartjs"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/gin-gonic/gin"
	"github.com/gitslagga/gitbitex-admin/login"
	"github.com/gitslagga/gitbitex-admin/pages"
	"github.com/gitslagga/gitbitex-admin/tables"
)

func main() {
	//gin.SetMode(gin.ReleaseMode)
	//r := gin.New()
	r := gin.Default()

	eng := engine.Default()

	var loginComps = map[string]template.Component{
		"default": login.Get(),
	}

	template.AddLoginComp(loginComps["default"])
	template.AddComp(chartjs.NewChart())
	template.AddComp(echarts.NewChart())

	cfg := config.ReadFromJson("./config.json")

	cfg.AddUpdateProcessFn(func(values form.Values) (values2 form.Values, e error) {
		if values.Get("login_title") != "GO111MODULE" {
			return nil, errors.New("不允许的操作")
		}
		return values, nil
	})

	if err := eng.AddConfig(cfg).
		AddGenerators(tables.Generators).
		ResolveMysqlConnection(models.SetConn).
		Use(r); err != nil {
		panic(err)
	}

	r.Static("/uploads", "./uploads")

	// you can custom your pages like:
	r.GET("/admin", ada.Content(func(ctx *gin.Context) (panel types.Panel, e error) {
		if config.GetTheme() == "adminlte" {
			return pages.GetDashBoardContent(ctx)
		} else {
			return pages.GetDashBoard2Content(ctx)
		}
	}))
	r.GET("/admin/issue", ada.Content(pages.GetIssueContent))
	r.GET("/admin/holding", ada.Content(pages.GetHoldingContent))
	r.GET("/admin/promote", ada.Content(pages.GetPromoteContent))
	r.GET("/admin/bestHolding", ada.Content(pages.GetIssueContent))
	r.GET("/admin/echarts", ada.Content(pages.GetDashBoard3Content))
	r.GET("/admin/table", ada.Content(pages.GetTableContent))

	r.GET("/admin/form1", ada.Content(pages.GetForm1Content))
	eng.Data("POST", "/admin/form/update", func(ctx *adminContext.Context) {
		fmt.Println("ctx.PostForm()", ctx.PostForm())
		ctx.PjaxUrl("/admin")
	})
	eng.Data("POST", "/admin/popup/form", func(ctx *adminContext.Context) {
		ctx.JSON(http.StatusOK, map[string]interface{}{
			"code": 200,
			"msg":  "ok",
			"data": map[string]string{
				"url": "/admin/info/profile",
			},
		})
	})

	r.GET("/", func(ctx *gin.Context) {
		ctx.Redirect(http.StatusMovedPermanently, "/admin")
	})

	models.Init(eng.MysqlConnection())

	srv := &http.Server{
		Addr:    ":9001",
		Handler: r,
	}

	go func() {
		if err := srv.ListenAndServe(); err != nil {
			log.Printf("listen: %s\n", err)
		}
	}()

	quit := make(chan os.Signal)
	signal.Notify(quit, os.Interrupt)
	<-quit

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()
	if err := srv.Shutdown(ctx); err != nil {
		log.Fatal("Server Shutdown:", err)
	}
	log.Println("Server exiting")

	log.Print("closing database connection")
	eng.MysqlConnection().Close()

}
