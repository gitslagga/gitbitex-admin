package tables

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetGMachineLevelTable(ctx *context.Context) (userTable table.Table) {

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

	info.AddField("达人级别", "master_level", db.Int)
	info.AddField("直接育成", "train_num", db.Int)
	info.AddField("有效推荐", "invite_num", db.Int)
	info.AddField("总活跃度", "total_active", db.Int)
	info.AddField("小区活跃度", "common_active", db.Int)
	info.AddField("全球分红手续费", "global_fee", db.Decimal)
	info.AddField("赠送矿机", "name", db.Varchar).FieldDisplay(func(value types.FieldModel) interface{} {
		name, _ := value.Row["g_machine_goadmin_join_name"].(string)
		return name
	})
	info.AddField("赠送矿机", "name", db.Varchar).FieldJoin(types.Join{
		Field:     "machine_id",
		JoinField: "id",
		Table:     "g_machine",
	}).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike}).FieldHide()

	info.AddField("CreatedAt", "created_at", db.Timestamp).FieldFilterable(types.FilterType{FormType: form.DatetimeRange})
	info.AddField("UpdatedAt", "updated_at", db.Timestamp)

	info.SetTable("g_machine_level").SetTitle("达人等级管理")

	formList := userTable.GetForm()
	formList.AddField("ID", "id", db.Bigint, form.Default).FieldDisableWhenCreate()

	formList.AddField("达人级别", "master_level", db.Int, form.Default)
	formList.AddField("直接育成", "train_num", db.Int, form.Text)
	formList.AddField("有效推荐", "invite_num", db.Int, form.Text)
	formList.AddField("总活跃度", "total_active", db.Int, form.Text)
	formList.AddField("小区活跃度", "common_active", db.Int, form.Text)
	formList.AddField("全球分红手续费", "global_fee", db.Decimal, form.Text)
	formList.AddField("赠送矿机", "machine_id", db.Int, form.Radio).FieldOptions(types.FieldOptions{
		{Text: "II型", Value: "2"},
		{Text: "III型", Value: "3"},
		{Text: "IV型", Value: "4"},
		{Text: "V型", Value: "5"},
		{Text: "VI型", Value: "6"},
		{Text: "VII型", Value: "7"},
	})

	formList.AddField("UpdatedAt", "updated_at", db.Timestamp, form.Default).FieldDisableWhenCreate()
	formList.AddField("CreatedAt", "created_at", db.Timestamp, form.Default).FieldDisableWhenCreate()

	formList.SetTable("g_machine_level").SetTitle("达人等级修改")

	return
}
