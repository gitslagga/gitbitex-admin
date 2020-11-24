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

	"g_config":           GetGConfigTable,
	"g_account":          GetGAccountTable,
	"g_account_asset":    GetGAccountAssetTable,
	"g_account_pool":     GetGAccountPoolTable,
	"g_account_shop":     GetGAccountShopTable,
	"g_account_scan":     GetGAccountScanTable,
	"g_account_transfer": GetGAccountTransferTable,

	"g_address":          GetGAddressTable,
	"g_address_collect":  GetGAddressCollectTable,
	"g_address_config":   GetGAddressConfigTable,
	"g_address_deposit":  GetGAddressDepositTable,
	"g_address_withdraw": GetGAddressWithdrawTable,

	"g_product": GetGProductTable,
	"g_order":   GetGOrderTable,
	"g_trade":   GetGTradeTable,
	"g_tick":    GetGTickTable,

	"g_machine":         GetGMachineTable,
	"g_machine_address": GetGMachineAddressTable,
	"g_machine_log":     GetGMachineLogTable,
	"g_machine_config":  GetGMachineConfigTable,
	"g_machine_convert": GetGMachineConvertTable,
	"g_machine_level":   GetGMachineLevelTable,
}
