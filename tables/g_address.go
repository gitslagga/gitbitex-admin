package tables

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
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
	info.AddField("钱包公钥", "public_key", db.Varchar).FieldWidth(300).
		FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("父级ID", "parent_ids", db.Varchar)
	info.AddField("邀请人数", "invite_num", db.Int).FieldFilterable(types.FilterType{FormType: form.NumberRange})
	info.AddField("活跃度", "active_num", db.Int)
	info.AddField("兑换手续费", "convert_fee", db.Decimal)
	info.AddField("全球分红手续费", "global_fee", db.Decimal)
	info.AddField("CreatedAt", "created_at", db.Timestamp).FieldFilterable(types.FilterType{FormType: form.DatetimeRange})
	info.AddField("UpdatedAt", "updated_at", db.Timestamp)

	info.SetTable("g_address").SetTitle("钱包地址管理")

	return
}
