package tables

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetGMachineAddressTable(ctx *context.Context) (userTable table.Table) {

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
	info.AddField("矿机名称", "name", db.Varchar).FieldJoin(types.Join{
		Field:     "machine_id",
		JoinField: "id",
		Table:     "g_machine",
	}).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("钱包地址", "address", db.Varchar).FieldJoin(types.Join{
		Field:     "user_id",
		JoinField: "id",
		Table:     "g_address",
	}).FieldWidth(200).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})

	info.AddField("每日释放量", "number", db.Decimal)
	info.AddField("总释放量", "total_number", db.Decimal)
	info.AddField("剩余释放天数", "day", db.Int)
	info.AddField("总释放天数", "total_day", db.Int)

	info.AddField("CreatedAt", "created_at", db.Timestamp).FieldFilterable(types.FilterType{FormType: form.DatetimeRange})
	info.AddField("UpdatedAt", "updated_at", db.Timestamp)

	info.SetTable("g_machine_address").SetTitle("用户矿机管理")

	return
}
