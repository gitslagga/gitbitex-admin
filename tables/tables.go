package tables

import (
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
)

// generators is a map of table models.
//
// The key of generators is the prefix of table info url.
// The corresponding value is the Form and TableName data.
//
// http://{{config.Domain}}:{{Port}}/{{config.Prefix}}/info/{{key}}
//
// example:
//
// "posts"   => http://localhost:9033/admin/info/posts
// "authors" => http://localhost:9033/admin/info/authors
//
var Generators = map[string]table.Generator{
	"example_user":     GetExampleUserTable,
	"example_post":     GetExamplePostsTable,
	"example_author":   GetExampleAuthorTable,
	"example_employee": GetExampleEmployeeTable,
	"example_profile":  GetExampleProfileTable,

	"g_config":        GetGConfigTable,
	"g_address":       GetGAddressTable,
	"g_account":       GetGAccountTable,
	"g_account_asset": GetGAccountAssetTable,
	"g_account_pool":  GetGAccountPoolTable,
	"g_account_shop":  GetGAccountShopTable,

	"g_product": GetGProductTable,
	"g_order":   GetGOrderTable,
	"g_trade":   GetGTradeTable,
	"g_tick":    GetGTickTable,
}
