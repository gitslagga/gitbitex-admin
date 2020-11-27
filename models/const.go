package models

var FrontEndApi = "http://127.0.0.1:8001"

//{"respCode":0,"respDesc":"SUCCESS"}
type CommonResp struct {
	RespCode int    `json:"respCode"`
	RespDesc string `json:"respDesc"`
	RespData string `json:"respData"`
}
