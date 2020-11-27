package tables

import (
	"encoding/base64"
	"errors"
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	form2 "github.com/GoAdminGroup/go-admin/plugins/admin/modules/form"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
	editType "github.com/GoAdminGroup/go-admin/template/types/table"
	"github.com/skip2/go-qrcode"
)

var globalConn db.Connection

func SetConn(conn db.Connection) {
	globalConn = conn
}

func GetGAccountScanTable(ctx *context.Context) (userTable table.Table) {

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
		HideFilterArea().HideNewButton().HideDeleteButton().HideEditButton()
	info.AddField("ID", "id", db.Bigint).FieldSortable()
	info.AddField("钱包地址", "address", db.Varchar).FieldDisplay(func(value types.FieldModel) interface{} {
		address, _ := value.Row["g_address_goadmin_join_address"].(string)
		return address
	}).FieldWidth(200)
	info.AddField("钱包地址", "address", db.Varchar).FieldJoin(types.Join{
		Field:     "user_id",
		JoinField: "id",
		Table:     "g_address",
	}).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike}).FieldHide()

	info.AddField("币种", "currency", db.Varchar)
	info.AddField("URL二维码", "url", db.Varchar).FieldDisplay(func(model types.FieldModel) interface{} {
		png, err := qrcode.Encode(model.Value, qrcode.Medium, 600)
		if err != nil {
			return model.Value
		}

		image := "data:image/png;base64," + base64.StdEncoding.EncodeToString(png)
		return template.Default().Image().
			SetSrc(template.HTML(image)).
			SetHeight("120").SetWidth("120").WithModal().GetContent()
	})

	info.AddField("金额", "number", db.Decimal)
	info.AddField("手续费", "fee", db.Decimal)
	info.AddField("实际金额", "actual_number", db.Decimal)
	info.AddField("兑换比例", "rate", db.Decimal)
	info.AddField("扣除数量", "amount", db.Decimal)
	info.AddField("状态", "status", db.Int).FieldDisplay(func(model types.FieldModel) interface{} {
		if model.Value == "1" {
			return "未支付"
		}
		if model.Value == "2" {
			return "已支付"
		}
		return "未知"
	}).FieldEditAble(editType.Switch).FieldEditOptions(types.FieldOptions{
		{Value: "1", Text: "未支付"},
		{Value: "2", Text: "已支付"},
	}).FieldFilterable(types.FilterType{FormType: form.SelectSingle}).FieldFilterOptions(types.FieldOptions{
		{Value: "1", Text: "未支付"},
		{Value: "2", Text: "已支付"},
	})

	info.AddField("CreatedAt", "created_at", db.Timestamp).FieldFilterable(types.FilterType{FormType: form.DatetimeRange})
	info.AddField("UpdatedAt", "updated_at", db.Timestamp)

	info.SetTable("g_account_scan").SetTitle("扫一扫管理")

	formList := userTable.GetForm()
	formList.AddField("ID", "id", db.Bigint, form.Default).FieldDisableWhenCreate()
	formList.AddField("状态", "status", db.Int, form.Radio).
		FieldOptions(types.FieldOptions{
			{Text: "未支付", Value: "1"},
			{Text: "已支付", Value: "2"},
		})
	formList.AddField("UpdatedAt", "updated_at", db.Timestamp, form.Default).FieldDisableWhenCreate()
	formList.AddField("CreatedAt", "created_at", db.Timestamp, form.Default).FieldDisableWhenCreate()

	formList.SetTable("g_account_scan").SetTitle("扫一扫修改")

	formList.SetPostValidator(func(values form2.Values) error {
		statusM, err := db.WithDriver(globalConn).Table("g_account_scan").Select("status").
			Where("id", "=", values.Get("id")).First()
		if err != nil {
			return err
		}
		if statusM["status"].(int64) != 1 {
			return errors.New("订单已处理")
		}

		return nil
	})

	return
}
