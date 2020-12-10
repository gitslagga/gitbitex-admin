package tables

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	form2 "github.com/GoAdminGroup/go-admin/plugins/admin/modules/form"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
	editType "github.com/GoAdminGroup/go-admin/template/types/table"
	"github.com/gitslagga/gitbitex-admin/models"
	"io/ioutil"
	"net/http"
	"strconv"
	"strings"
)

func GetGAddressWithdrawTable(ctx *context.Context) (userTable table.Table) {
	userTable = table.NewDefaultTable(table.Config{
		Driver:     db.DriverMysql,
		CanAdd:     false,
		Editable:   false,
		Deletable:  false,
		Exportable: true,
		Connection: table.DefaultConnectionName,
		PrimaryKey: table.PrimaryKey{
			Type: db.Bigint,
			Name: table.DefaultPrimaryKeyName,
		},
	})

	info := userTable.GetInfo().SetFilterFormLayout(form.LayoutTwoCol).
		HideFilterArea().HideNewButton().HideDeleteButton().HideEditButton()
	info.AddField("ID", "id", db.Bigint).FieldSortable()
	info.AddField("钱包地址", "address", db.Varchar).FieldDisplay(func(value types.FieldModel) interface{} {
		address, _ := value.Row["g_address_goadmin_join_address"].(string)
		return address
	}).FieldWidth(150)
	info.AddField("钱包地址", "address", db.Varchar).FieldJoin(types.Join{
		Field:     "user_id",
		JoinField: "id",
		Table:     "g_address",
	}).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike}).FieldHide()

	info.AddField("币种", "coin", db.Varchar).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("交易ID", "tx_id", db.Varchar).FieldWidth(150)
	info.AddField("区块高度", "block_num", db.Bigint)
	info.AddColumn("转出地址", func(value types.FieldModel) interface{} {
		first, _ := value.Row["address"].(string)
		return first
	}).FieldWidth(150)
	info.AddField("订单号", "order_sn", db.Varchar).FieldWidth(120)
	info.AddField("数量", "value", db.Decimal)
	info.AddField("实际扣除", "actual", db.Decimal)
	info.AddField("状态", "status", db.Int).FieldDisplay(func(model types.FieldModel) interface{} {
		switch model.Value {
		case "1":
			return "审核中"
		case "2":
			return "成功"
		case "3":
			return "通过"
		case "4":
			return "不通过"
		default:
			return "未知"
		}
	}).FieldEditAble(editType.Select).FieldEditOptions(types.FieldOptions{
		{Value: "1", Text: "审核中"},
		{Value: "2", Text: "成功"},
		{Value: "3", Text: "通过"},
		{Value: "4", Text: "不通过"},
	}).FieldFilterable(types.FilterType{FormType: form.SelectSingle}).FieldFilterOptions(types.FieldOptions{
		{Value: "1", Text: "审核中"},
		{Value: "2", Text: "成功"},
		{Value: "3", Text: "通过"},
		{Value: "4", Text: "不通过"},
	})

	info.AddField("CreatedAt", "created_at", db.Timestamp).FieldFilterable(types.FilterType{FormType: form.DatetimeRange})
	info.AddField("UpdatedAt", "updated_at", db.Timestamp)

	info.SetTable("g_address_withdraw").SetTitle("提现管理")

	formList := userTable.GetForm()
	formList.AddField("ID", "id", db.Bigint, form.Default).FieldDisableWhenCreate()
	formList.AddField("订单号", "order_sn", db.Bigint, form.Default).FieldDisableWhenCreate()
	formList.AddField("状态", "status", db.Int, form.Radio).
		FieldOptions(types.FieldOptions{
			{Text: "审核中", Value: "1"},
			{Text: "成功", Value: "2"},
			{Text: "通过", Value: "3"},
			{Text: "不通过", Value: "4"},
		})
	formList.AddField("UpdatedAt", "updated_at", db.Timestamp, form.Default).FieldDisableWhenCreate()
	formList.AddField("CreatedAt", "created_at", db.Timestamp, form.Default).FieldDisableWhenCreate()

	formList.SetTable("g_address_withdraw").SetTitle("提现修改")

	formList.SetPostValidator(func(values form2.Values) error {
		statusM, err := db.WithDriver(models.GlobalConn).Table("g_address_withdraw").Where("id", "=", values.Get("id")).First()
		if err != nil {
			return err
		}
		if statusM["status"].(int64) != 1 {
			return errors.New("订单已处理")
		}

		status, err := strconv.ParseInt(values.Get("status"), 10, 64)
		if err != nil {
			return err
		}
		err = handleWithdraw(statusM["order_sn"].(string), status)
		if err != nil {
			return err
		}

		//TODO fix double modify withdraw status
		return nil
	})

	return
}

func handleWithdraw(orderSN string, status int64) error {
	url := models.FrontEndApi + "/backend/address/withdraw"
	method := "POST"

	payload := strings.NewReader(fmt.Sprintf(`{"order_sn": "%s","status": %d}`, orderSN, status))

	client := &http.Client{}
	req, err := http.NewRequest(method, url, payload)

	if err != nil {
		return err
	}
	req.Header.Add("Content-Type", "application/json")

	res, err := client.Do(req)
	if err != nil {
		return err
	}
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	if err != nil {
		return err
	}

	var resp models.CommonResp
	err = json.Unmarshal(body, &resp)
	if err != nil {
		return err
	}
	if resp.RespCode != 0 {
		return errors.New(resp.RespDesc)
	}

	return nil
}
