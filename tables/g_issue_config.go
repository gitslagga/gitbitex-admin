package tables

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetGIssueConfigTable(ctx *context.Context) (userTable table.Table) {
	userTable = table.NewDefaultTable(table.Config{
		Driver:     db.DriverMysql,
		CanAdd:     false,
		Editable:   true,
		Deletable:  false,
		Exportable: true,
		Connection: table.DefaultConnectionName,
		PrimaryKey: table.PrimaryKey{
			Type: db.Bigint,
			Name: table.DefaultPrimaryKeyName,
		},
	})

	info := userTable.GetInfo().SetFilterFormLayout(form.LayoutTwoCol).
		HideFilterArea().HideNewButton().HideDeleteButton()
	info.AddField("ID", "id", db.Bigint).FieldSortable()

	info.AddField("配置项", "key", db.Varchar)
	info.AddField("每月释放量", "value", db.Decimal)
	info.AddField("每天释放量", "number", db.Decimal)

	info.AddField("CreatedAt", "created_at", db.Timestamp).FieldFilterable(types.FilterType{FormType: form.DatetimeRange})
	info.AddField("UpdatedAt", "updated_at", db.Timestamp)

	info.SetTable("g_issue_config").SetTitle("认购配置")

	formList := userTable.GetForm()
	formList.AddField("ID", "id", db.Bigint, form.Default).FieldDisableWhenCreate()
	formList.AddField("配置项", "key", db.Varchar, form.Default)
	formList.AddField("每月释放量", "value", db.Decimal, form.Text)
	formList.AddField("每天释放量", "number", db.Decimal, form.Text)

	formList.AddField("UpdatedAt", "updated_at", db.Timestamp, form.Default).FieldDisableWhenCreate()
	formList.AddField("CreatedAt", "created_at", db.Timestamp, form.Default).FieldDisableWhenCreate()

	formList.SetTable("g_issue_config").SetTitle("认购配置修改")

	return
}
