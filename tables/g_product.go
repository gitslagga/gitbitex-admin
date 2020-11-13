package tables

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetGProductTable(ctx *context.Context) (userTable table.Table) {

	userTable = table.NewDefaultTable(table.Config{
		Driver:     db.DriverMysql,
		CanAdd:     false,
		Editable:   false,
		Deletable:  false,
		Exportable: true,
		Connection: table.DefaultConnectionName,
		PrimaryKey: table.PrimaryKey{
			Type: db.Varchar,
			Name: table.DefaultPrimaryKeyName,
		},
	})

	info := userTable.GetInfo().SetFilterFormLayout(form.LayoutTwoCol).
		HideFilterArea().HideNewButton().HideDeleteButton().HideEditButton()
	info.AddField("ID", "id", db.Varchar).FieldSortable()
	info.AddField("基本币种", "base_currency", db.Varchar).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("交易币种", "quote_currency", db.Varchar).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})

	info.AddField("基本币种最小", "base_min_size", db.Decimal)
	info.AddField("基本币种最大", "base_max_size", db.Decimal)

	info.AddField("基本币种精度", "base_scale", db.Int)
	info.AddField("交易币种精度", "quote_scale", db.Int)

	info.AddField("交易币种自增", "quote_increment", db.Double)

	info.AddField("交易币种最小", "base_min_size", db.Decimal)
	info.AddField("交易币种最大", "base_max_size", db.Decimal)

	info.AddField("CreatedAt", "created_at", db.Timestamp).FieldFilterable(types.FilterType{FormType: form.DatetimeRange})
	info.AddField("UpdatedAt", "updated_at", db.Timestamp)

	info.SetTable("g_product").SetTitle("交易对管理")

	return
}
