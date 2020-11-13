package tables

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetGAccountPoolTable(ctx *context.Context) (userTable table.Table) {

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
		HideFilterArea().HideNewButton().HideDeleteButton().HideEditButton().HideDetailButton()
	info.AddField("ID", "id", db.Bigint).FieldSortable()
	info.AddField("钱包地址", "address", db.Varchar).FieldJoin(types.Join{
		Field:     "user_id",
		JoinField: "id",
		Table:     "g_address",
	}).FieldWidth(200).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("币种名称", "currency", db.Varchar).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("可用数量", "available", db.Decimal)
	info.AddField("冻结数量", "hold", db.Decimal)
	info.AddField("CreatedAt", "created_at", db.Timestamp).FieldFilterable(types.FilterType{FormType: form.DatetimeRange})
	info.AddField("UpdatedAt", "updated_at", db.Timestamp)

	info.SetTable("g_account_pool").SetTitle("矿池账户管理")

	return
}
