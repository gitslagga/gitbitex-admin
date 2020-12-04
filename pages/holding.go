package pages

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/GoAdminGroup/go-admin/modules/config"
	template2 "github.com/GoAdminGroup/go-admin/template"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/gin-gonic/gin"
	"github.com/gitslagga/gitbitex-admin/models"
	"html/template"
	"io/ioutil"
	"net/http"
	"strings"
)

func GetHoldingContent(ctx *gin.Context) (types.Panel, error) {
	comp := template2.Get(config.GetTheme())

	response, err := getHoldingList()
	if err != nil {
		return types.Panel{}, err
	}

	holdingList := response.HoldingMap
	bestHolding := response.BestHolding

	var infoList = make([]map[string]types.InfoItem, len(holdingList))
	for k, v := range holdingList {
		infoList[k] = make(map[string]types.InfoItem)
		infoList[k]["id"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["Id"]))}
		infoList[k]["user_id"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["UserId"]))}
		infoList[k]["currency"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["Currency"]))}
		infoList[k]["available"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["Available"]))}
		infoList[k]["rank"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["Rank"]))}
		infoList[k]["profit"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["Profit"]))}
	}

	table := comp.DataTable().
		SetInfoList(infoList).
		SetPrimaryKey("id").
		SetThead(types.Thead{
			{Head: "ID", Field: "id"},
			{Head: "用户ID", Field: "user_id"},
			{Head: "币种", Field: "currency"},
			{Head: "可用数量", Field: "available"},
			{Head: "持币量排名", Field: "rank"},
			{Head: "持币收益", Field: "profit"},
		})

	body := table.GetContent()

	btn1 := template.HTML(`
		<label class="btn btn-sm btn-primary">最佳持币量：` + bestHolding + `</label><div style="float: right;">
		<button type="button" id="holding_release" class="btn btn-sm btn-primary">收益释放</button>
		<script type="text/javascript">
			$("#holding_release").click(function(){
                $.post('` + models.FrontEndApi + `/backend/holding/start', {},
				function (data) {
					console.log(data);
					$.pjax.reload('#pjax-container');
					toastr.success(data.respDesc);
				});
			})
		</script>
    </div>`)

	return types.Panel{
		Content: comp.Box().
			SetBody(body).
			SetNoPadding().
			SetHeader(table.GetDataTableHeader() + btn1).
			WithHeadBorder().
			GetContent(),
		Title:       "持币",
		Description: "持币收益",
	}, nil
}

func getHoldingList() (*models.HoldingData, error) {
	url := models.FrontEndApi + "/backend/holding/list"
	method := "GET"

	payload := strings.NewReader(``)

	client := &http.Client{}
	req, err := http.NewRequest(method, url, payload)

	if err != nil {
		return nil, err
	}
	req.Header.Add("Content-Type", "application/json")

	res, err := client.Do(req)
	if err != nil {
		return nil, err
	}
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	if err != nil {
		return nil, err
	}

	var resp models.HoldingResp
	err = json.Unmarshal(body, &resp)
	if err != nil {
		return nil, err
	}
	if resp.RespCode != 0 {
		return nil, errors.New(resp.RespDesc)
	}

	return &resp.RespData, nil
}
