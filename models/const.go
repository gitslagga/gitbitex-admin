package models

import "github.com/GoAdminGroup/go-admin/modules/db"

var GlobalConn db.Connection
var FrontEndApi = "http://127.0.0.1:8001"

func SetConn(conn db.Connection) {
	GlobalConn = conn
}

//{"respCode":0,"respDesc":"SUCCESS"}
type CommonResp struct {
	RespCode int    `json:"respCode"`
	RespDesc string `json:"respDesc"`
}

type IssueResp struct {
	RespCode int                      `json:"respCode"`
	RespDesc string                   `json:"respDesc"`
	RespData []map[string]interface{} `json:"respData"`
}
