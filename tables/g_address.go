package tables

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
	editType "github.com/GoAdminGroup/go-admin/template/types/table"
)

func GetGAddressTable(ctx *context.Context) (userTable table.Table) {

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

	info := userTable.GetInfo().SetFilterFormLayout(form.LayoutTwoCol).HideFilterArea().HideNewButton().HideDeleteButton().HideEditButton()
	info.AddField("ID", "id", db.Bigint).FieldSortable()
	info.AddField("钱包名称", "username", db.Varchar).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("钱包地址", "address", db.Varchar).FieldWidth(200).
		FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("父级ID", "parent_ids", db.Varchar)
	info.AddField("邀请人数", "invite_num", db.Int).FieldFilterable(types.FilterType{FormType: form.NumberRange})
	info.AddField("活跃度", "active_num", db.Int)
	info.AddField("兑换手续费", "convert_fee", db.Decimal)
	info.AddField("全球分红手续费", "global_fee", db.Decimal)
	info.AddField("节点状态", "status", db.Int).FieldDisplay(func(model types.FieldModel) interface{} {
		switch model.Value {
		case "0":
			return "用户"
		case "1":
			return "普通节点"
		case "2":
			return "生态节点"
		case "3":
			return "超级节点"
		default:
			return "未知"
		}
	}).FieldEditAble(editType.Select).FieldEditOptions(types.FieldOptions{
		{Value: "0", Text: "用户"},
		{Value: "1", Text: "普通节点"},
		{Value: "2", Text: "生态节点"},
		{Value: "3", Text: "超级节点"},
	}).FieldFilterable(types.FilterType{FormType: form.SelectSingle}).FieldFilterOptions(types.FieldOptions{
		{Value: "0", Text: "用户"},
		{Value: "1", Text: "普通节点"},
		{Value: "2", Text: "生态节点"},
		{Value: "3", Text: "超级节点"},
	})
	info.AddField("CreatedAt", "created_at", db.Timestamp).FieldFilterable(types.FilterType{FormType: form.DatetimeRange})
	info.AddField("UpdatedAt", "updated_at", db.Timestamp)

	info.SetTable("g_address").SetTitle("钱包地址管理")

	formList := userTable.GetForm()
	formList.AddField("ID", "id", db.Bigint, form.Default).FieldDisableWhenCreate()
	formList.AddField("节点状态", "status", db.Int, form.Radio).
		FieldOptions(types.FieldOptions{
			{Text: "用户", Value: "0"},
			{Text: "普通节点", Value: "1"},
			{Text: "生态节点", Value: "2"},
			{Text: "超级节点", Value: "3"},
		})
	formList.AddField("UpdatedAt", "updated_at", db.Timestamp, form.Default).FieldDisableWhenCreate()
	formList.AddField("CreatedAt", "created_at", db.Timestamp, form.Default).FieldDisableWhenCreate()

	formList.SetTable("g_address").SetTitle("钱包地址修改")

	return
}
