package tables

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
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
	}).FieldWidth(200)
	info.AddField("钱包地址", "address", db.Varchar).FieldJoin(types.Join{
		Field:     "user_id",
		JoinField: "id",
		Table:     "g_address",
	}).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike}).FieldHide()

	info.AddField("币种", "coin", db.Varchar).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("交易ID", "tx_id", db.Varchar).FieldWidth(200)
	info.AddField("区块高度", "block_num", db.Bigint)
	info.AddColumn("地址", func(value types.FieldModel) interface{} {
		first, _ := value.Row["address"].(string)
		return first
	}).FieldWidth(200)
	info.AddField("数量", "value", db.Decimal)
	info.AddField("实际到账", "actual", db.Decimal)
	info.AddField("状态", "status", db.Int).FieldDisplay(func(model types.FieldModel) interface{} {
		if model.Value == "1" {
			return "审核中"
		}
		if model.Value == "2" {
			return "成功"
		}
		if model.Value == "3" {
			return "通过"
		}
		if model.Value == "4" {
			return "不通过"
		}
		if model.Value == "5" {
			return "取消"
		}
		return "未知"
	})

	info.AddField("CreatedAt", "created_at", db.Timestamp).FieldFilterable(types.FilterType{FormType: form.DatetimeRange})
	info.AddField("UpdatedAt", "updated_at", db.Timestamp)

	info.SetTable("g_address_withdraw").SetTitle("提现管理")

	return
}
