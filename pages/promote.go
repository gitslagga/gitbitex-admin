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

func GetPromoteContent(ctx *gin.Context) (types.Panel, error) {
	comp := template2.Get(config.GetTheme())

	promoteList, err := getPromoteList()
	if err != nil {
		return types.Panel{}, err
	}

	// 排序需要时间，不建议开启
	//for i := 0; i< len(promoteList)-1;i++ {
	//	for j := i+1; j < len(promoteList);j++ {
	//		if promoteList[i]["ParentId"].(float64) > promoteList[j]["ParentId"].(float64) {
	//			promoteList[i], promoteList[j] = promoteList[j], promoteList[i]
	//		}
	//	}
	//}

	var infoList = make([]map[string]types.InfoItem, len(promoteList))
	for k, v := range promoteList {
		infoList[k] = make(map[string]types.InfoItem)
		infoList[k]["parent_id"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["ParentId"]))}
		infoList[k]["currency"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["Currency"]))}
		infoList[k]["power"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["Power"]))}
		infoList[k]["total_power"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["TotalPower"]))}
		infoList[k]["count_son"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["CountSon"]))}
		infoList[k]["profit"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["Profit"]))}
	}

	table := comp.DataTable().
		SetInfoList(infoList).
		SetPrimaryKey("parent_id").
		SetThead(types.Thead{
			{Head: "用户ID", Field: "parent_id"},
			{Head: "币种", Field: "currency"},
			{Head: "用户算力", Field: "power"},
			{Head: "总算力", Field: "total_power"},
			{Head: "下级用户数量", Field: "count_son"},
			{Head: "持币收益", Field: "profit"},
		})

	body := table.GetContent()

	btn1 := template.HTML(`<div style="float: right;">
		<button type="button" id="holding_release" class="btn btn-sm btn-primary">收益释放</button>
		<script type="text/javascript">
			$("#holding_release").click(function(){
                $.post('` + models.FrontEndApi + `/backend/promote/start', {},
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
		Title:       "推广",
		Description: "推广收益",
	}, nil
}

func getPromoteList() ([]map[string]interface{}, error) {
	url := models.FrontEndApi + "/backend/promote/list"
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

	var resp models.PromoteResp
	err = json.Unmarshal(body, &resp)
	if err != nil {
		return nil, err
	}
	if resp.RespCode != 0 {
		return nil, errors.New(resp.RespDesc)
	}

	return resp.RespData, nil
}
