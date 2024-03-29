package tables

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetGOrderTable(ctx *context.Context) (userTable table.Table) {

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
	info.AddField("交易对", "product_id", db.Varchar).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("钱包地址", "name", db.Varchar).FieldDisplay(func(value types.FieldModel) interface{} {
		address, _ := value.Row["g_address_goadmin_join_address"].(string)
		return address
	}).FieldWidth(200)
	info.AddField("钱包地址", "address", db.Varchar).FieldJoin(types.Join{
		Field:     "user_id",
		JoinField: "id",
		Table:     "g_address",
	}).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike}).FieldHide()

	info.AddField("价格", "price", db.Decimal)
	info.AddField("数量", "size", db.Decimal)
	info.AddField("总金额", "funds", db.Decimal)
	info.AddField("填充数量", "filled_size", db.Decimal)
	info.AddField("执行数量", "executed_value", db.Decimal)
	info.AddField("填充手续费", "fill_fees", db.Decimal)

	info.AddField("类型", "type", db.Varchar)
	info.AddField("方向", "side", db.Varchar)
	//info.AddField("有效时间", "time_in_force", db.Varchar)
	info.AddField("状态", "status", db.Varchar)
	//info.AddField("校验状态", "settled", db.Tinyint)
	//info.AddField("自定义ID", "client_oid", db.Varchar)

	info.AddField("CreatedAt", "created_at", db.Timestamp).FieldFilterable(types.FilterType{FormType: form.DatetimeRange})
	info.AddField("UpdatedAt", "updated_at", db.Timestamp)

	info.SetTable("g_order").SetTitle("委托订单管理")

	return
}
