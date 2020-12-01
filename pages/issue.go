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

func GetIssueContent(ctx *gin.Context) (types.Panel, error) {
	comp := template2.Get(config.GetTheme())

	issueList, err := getIssueList()
	if err != nil {
		return types.Panel{}, err
	}

	var infoList = make([]map[string]types.InfoItem, len(issueList))
	for k, v := range issueList {
		infoList[k] = make(map[string]types.InfoItem)
		infoList[k]["id"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["Id"]))}
		infoList[k]["user_id"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["UserId"]))}
		infoList[k]["currency"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["Currency"]))}
		infoList[k]["available"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["Available"]))}
		infoList[k]["deduction"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["deduction"]))}
		infoList[k]["rate"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["rate"]))}
		infoList[k]["release"] = types.InfoItem{Content: template.HTML(fmt.Sprintf("%v", v["release"]))}
	}

	table := comp.DataTable().
		SetInfoList(infoList).
		SetPrimaryKey("id").
		SetThead(types.Thead{
			{Head: "ID", Field: "id"},
			{Head: "用户ID", Field: "user_id"},
			{Head: "认购币种", Field: "currency"},
			{Head: "可用数量", Field: "available"},
			{Head: "实际扣除", Field: "deduction"},
			{Head: "所占比例", Field: "rate"},
			{Head: "释放量", Field: "release"},
		})

	body := table.GetContent()

	btn1 := template.HTML(`<div style="float: right;">
		<button type="button" id="issue_release" class="btn btn-sm btn-primary grid-refresh">开始认购</button>
		<script type="text/javascript">
			$("#issue_release").click(function(){
                $.post('` + models.FrontEndApi + `/backend/issue/start', {},
				function (data) {
					$.pjax.reload('#pjax-container');
					toastr.success('认购成功!');
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
		Title:       "认购",
		Description: "认购管理",
	}, nil
}

func getIssueList() ([]map[string]interface{}, error) {
	url := models.FrontEndApi + "/backend/issue/list"
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

	var resp models.CommonResp
	err = json.Unmarshal(body, &resp)
	if err != nil {
		return nil, err
	}
	if resp.RespCode != 0 {
		return nil, errors.New(resp.RespDesc)
	}

	issueListB, err := json.Marshal(resp.RespData)
	if err != nil {
		return nil, err
	}
	issueListM := make([]map[string]interface{}, 0)
	err = json.Unmarshal(issueListB, &issueListM)
	if err != nil {
		return nil, err
	}

	return issueListM, nil
}
