package tables

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetGMachineTable(ctx *context.Context) (userTable table.Table) {

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
	info.AddField("矿机名称", "name", db.Varchar).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("挖矿收益", "profit", db.Decimal).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("购买数量", "number", db.Decimal)
	info.AddField("释放天数", "release", db.Int)
	info.AddField("直推收益", "invite", db.Decimal)
	info.AddField("活跃度", "active", db.Int)
	info.AddField("可买数量", "buy_quantity", db.Int)

	info.AddField("CreatedAt", "created_at", db.Timestamp).FieldFilterable(types.FilterType{FormType: form.DatetimeRange})
	info.AddField("UpdatedAt", "updated_at", db.Timestamp)

	info.SetTable("g_machine").SetTitle("矿机管理")

	formList := userTable.GetForm()
	formList.AddField("ID", "id", db.Bigint, form.Default).FieldDisableWhenCreate()
	formList.AddField("矿机名称", "name", db.Varchar, form.Default)
	formList.AddField("挖矿收益", "profit", db.Decimal, form.Text)
	formList.AddField("购买数量", "number", db.Decimal, form.Text)
	formList.AddField("释放天数", "release", db.Int, form.Text)
	formList.AddField("直推收益", "invite", db.Decimal, form.Text)
	formList.AddField("活跃度", "active", db.Int, form.Text)
	formList.AddField("可买数量", "buy_quantity", db.Int, form.Text)

	formList.AddField("UpdatedAt", "updated_at", db.Timestamp, form.Default).FieldDisableWhenCreate()
	formList.AddField("CreatedAt", "created_at", db.Timestamp, form.Default).FieldDisableWhenCreate()

	formList.SetTable("g_machine").SetTitle("矿机修改")

	return
}
