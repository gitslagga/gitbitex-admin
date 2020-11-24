package tables

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetGAddressConfigTable(ctx *context.Context) (userTable table.Table) {
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

	info.AddField("币种", "coin", db.Varchar).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("精度", "decimals", db.Int)
	info.AddField("最小充值", "min_deposit", db.Decimal)
	info.AddField("最小提现", "min_withdraw", db.Decimal)
	info.AddField("提现手续费", "withdraw_fee", db.Decimal)
	info.AddField("合约地址", "contract_address", db.Varchar).FieldWidth(200)
	info.AddField("归集地址", "collect_address", db.Varchar).FieldWidth(200)
	info.AddField("归集手续费地址", "collect_fee_address", db.Varchar).FieldWidth(200)
	info.AddField("状态", "status", db.Int).FieldDisplay(func(model types.FieldModel) interface{} {
		if model.Value == "1" {
			return "关闭"
		}
		if model.Value == "2" {
			return "开启"
		}
		return "未知"
	})

	info.AddField("CreatedAt", "created_at", db.Timestamp).FieldFilterable(types.FilterType{FormType: form.DatetimeRange})
	info.AddField("UpdatedAt", "updated_at", db.Timestamp)

	info.SetTable("g_address_config").SetTitle("币种管理")

	formList := userTable.GetForm()
	formList.AddField("ID", "id", db.Bigint, form.Default).FieldDisableWhenCreate()

	formList.AddField("币种", "coin", db.Varchar, form.Text)
	formList.AddField("精度", "decimals", db.Int, form.Text)
	formList.AddField("最小充值", "min_deposit", db.Decimal, form.Text)
	formList.AddField("最小提现", "min_withdraw", db.Decimal, form.Text)
	formList.AddField("提现手续费", "withdraw_fee", db.Decimal, form.Text)
	formList.AddField("合约地址", "contract_address", db.Varchar, form.Text)
	formList.AddField("归集地址", "collect_address", db.Varchar, form.Text)
	formList.AddField("归集手续费地址", "collect_fee_address", db.Varchar, form.Text)
	formList.AddField("状态", "status", db.Int, form.Radio).
		FieldOptions(types.FieldOptions{
			{Text: "关闭", Value: "1"},
			{Text: "开启", Value: "2"},
		})

	formList.AddField("UpdatedAt", "updated_at", db.Timestamp, form.Default).FieldDisableWhenCreate()
	formList.AddField("CreatedAt", "created_at", db.Timestamp, form.Default).FieldDisableWhenCreate()

	formList.SetTable("g_address_config").SetTitle("币种管理修改")

	return
}
