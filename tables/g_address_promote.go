package tables

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetGAddressPromoteTable(ctx *context.Context) (userTable table.Table) {
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
	info.AddField("推广收益", "number", db.Decimal)
	info.AddField("算力", "power", db.Decimal)
	info.AddField("总算力", "total_power", db.Decimal)
	info.AddField("下级用户数量", "count_son", db.Int)

	info.AddField("CreatedAt", "created_at", db.Timestamp).FieldFilterable(types.FilterType{FormType: form.DatetimeRange})
	info.AddField("UpdatedAt", "updated_at", db.Timestamp)

	info.SetTable("g_address_promote").SetTitle("推广日志")

	return
}
