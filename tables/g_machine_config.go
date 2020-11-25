package tables

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetGMachineConfigTable(ctx *context.Context) (userTable table.Table) {

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

	info.AddField("兑换等级", "candy_level", db.Int)
	info.AddField("邀请人数", "invite_num", db.Int)
	info.AddField("兑换手续费", "convert_fee", db.Decimal)

	info.AddField("CreatedAt", "created_at", db.Timestamp).FieldFilterable(types.FilterType{FormType: form.DatetimeRange})
	info.AddField("UpdatedAt", "updated_at", db.Timestamp)

	info.SetTable("g_machine_config").SetTitle("兑换配置管理")

	formList := userTable.GetForm()
	formList.AddField("ID", "id", db.Bigint, form.Default).FieldDisableWhenCreate()

	formList.AddField("兑换等级", "candy_level", db.Int, form.Default)
	formList.AddField("邀请人数", "invite_num", db.Int, form.Text)
	formList.AddField("兑换手续费", "convert_fee", db.Decimal, form.Text)

	formList.AddField("UpdatedAt", "updated_at", db.Timestamp, form.Default).FieldDisableWhenCreate()
	formList.AddField("CreatedAt", "created_at", db.Timestamp, form.Default).FieldDisableWhenCreate()

	formList.SetTable("g_machine_config").SetTitle("兑换配置修改")

	return
}
