import * as ld from "./load.js";
import * as fc from "./functions.js";

var cUrl = document.getElementById('clientUrl').getAttribute('data-url');
var gUrl = document.getElementById('gameUrl').getAttribute('data-url');
var jsUrl = document.getElementById('jsUrl').getAttribute('data-url');
var rootUrl = document.getElementById('rootUrl').getAttribute('data-url');

var cssUrl = document.getElementById('cssUrl').getAttribute('data-url');
const err = document.getElementById('error');
const rsp_m = document.getElementById('ir_m');
const rsp_main = document.getElementById('ir_party_main');
const rsp_lv_t = document.getElementById('ir_party_lv_t');
const rsp_lv_v = document.getElementById('ir_party_lv_v');
const rsp_data_r = document.getElementById('ir_party_data_r');
const rsp_data_w = document.getElementById('ir_party_data_w');
const rsp_data_l = document.getElementById('ir_party_data_l');
const rsp_data_d = document.getElementById('ir_party_data_d');
const rsp_done = document.getElementById('ir_party_done');
jQ(document).ready(function(){
	ld.loadWell(jQ('#globalLoad'))
    if(ld.checkLoged(rootUrl, jQ('#sessionId'),err,jQ('#error_button'))){
        jQ.ajax({
            url : gUrl + "getScoreRSP",
            type: 'GET',
            success: function (data) {
                console.log(data)
            },
            error: function (errorThrown) {
                
            }
        });
    }//last
});//lastss
