// opening.js
import * as ld from "./load.js";
import * as fc from "./functions.js";


var op_n = -1;
var somecase = false;
const op_ba = document.getElementById('io_m');
const op_ml = document.getElementById('io_m_log');
const op_lb = document.getElementById('io_m_log_btn');
const op_msg = document.getElementById('io_msg');
const op_wrl = document.getElementById('io_world');
const op_wrl_b = document.getElementById('io_world_0');
const op_chars = document.getElementById('io_chars');
const op_mak = document.getElementById('io_making');
var loginUrl = document.getElementById('loginUrl').getAttribute('data-url');
var signinUrl = document.getElementById('signinUrl').getAttribute('data-url');
var signupUrl = document.getElementById('signupUrl').getAttribute('data-url');
var tocharUrl = document.getElementById('tocharUrl').getAttribute('data-url');
let reqId, reqPwd;
let result = null;
op_lb.addEventListener('click', () => {
    reqId = jQ('#io_m_log_id').val();
    reqPwd = jQ('#io_m_log_pwd').val();
    if (
        reqId !== "" || reqId !== null ||
        reqPwd !== "" || reqPwd !== null) {
        if (result == null) {
            checkLogin(reqId, reqPwd)
        }

    }
    else {
        jQ('#io_m_log_id').focus();
    }

});
op_msg.addEventListener('click', () => {
    if (result != null) {
        switch (result) {
            case 0:
                jQ('#io_msg').removeClass('io_msg_0');
                requestSignUp(reqId, reqPwd);
                requestSignIn(reqId, reqPwd);
                op_ba.style.backgroundPosition = '0% 60%';                
                op_ml.style.display = `none`;
                op_wrl.style.display = `block`;
                break;
            case 1:
                break;
            case 2:
            case 3:
                jQ('#io_m_log_id').val("");
                jQ('#io_m_log_pwd').val("");
                jQ('#io_msg').removeClass('io_msg_2');
                break;
        }
        result = null;
        jQ('#io_msg').fadeOut(300);

    }
});
op_wrl_b.addEventListener('click', () => {
    jQ.ajax({
        url: tocharUrl,
        type: 'GET',
        
        success: function (data) {
            op_ba.style.backgroundPosition = '0% 31%';
            op_wrl.style.display = `none`;
            op_chars.style.display = `block`;
            let lists = data;
            if(lists.length >0){

            }else{

            }
        },
        error: function (errorThrown) {
            op_ba.style.backgroundPosition = '0% 95%';
            op_wrl.style.display = `none`;
        }

    });
})
jQ(document).on("click", '.co_chars_def', function(){
    if(jQ(this).hasClass('co_chars_em')){
        op_chars.style.display = `none`;
        op_ba.style.backgroundPosition = '0% -1%';
        op_mak.style.display = `block`;
        loadHairFaceJson();
    }else{

    }
});


function requestSignUp(reqId, reqPwd) {
    jQ.ajax({
        url: signupUrl,
        type: 'POST',
        data: { reqId: reqId, reqPwd: reqPwd },
        success: function (data) {

        },
        error: function (errorThrown) {
            alert(errorThrown);
        }

    });
}
function requestSignIn(reqId, reqPwd) {
    jQ.ajax({
        url: signinUrl,
        type: 'POST',
        data: { reqId: reqId, reqPwd: reqPwd },
        success: function (data) {

        },
        error: function (errorThrown) {
            alert(errorThrown);
        }

    });
}
function checkLogin(reqId, reqPwd) {
    jQ.ajax({
        url: loginUrl,
        type: 'POST',
        data: { reqId: reqId, reqPwd: reqPwd },
        success: function (data) {
            result = parseInt(data);
            excuteLogin(result);
        },
        error: function (errorThrown) {
            alert(errorThrown);
        }

    });

};
function excuteLogin(result) {
    switch (result) {
        case 0:
            jQ('#io_msg').addClass('io_msg_0');
            jQ('#io_msg').fadeIn(300);
            break;
        case 1:
            requestSignIn(reqId, reqPwd);
            op_ba.style.backgroundPosition = '0% 60%';
            op_ml.style.display = `none`;
            op_wrl.style.display = `block`;
            break;
        case 2:
        case 3:
            jQ('#io_msg').addClass('io_msg_2');
            jQ('#io_msg').fadeIn(300);
            break;
    }

}
const l_url = "/resources/res/face.json"
let facejson;
const l_url2 = "/resources/res/hair.json"
let hairjson;
const l_url3= "/resources/res/temp.json"
const ch_no = 0;
ld.jsonData((data1) => {
    facejson = data1;
    ld.jsonData((data2) => {
        hairjson = data2;
        ld.jsonData((data) => {
            let tempjson = data;
            let chFilterasNo = tempjson.filter((ch)=>parseInt(ch.ch_no) == ch_no)[0];
            let hairFilterasNo = hairjson.filter((ha)=>ha.hair_original==chFilterasNo.ch_ha)
            let faceFilterasNo = facejson.filter((ha)=>ha.face_original==chFilterasNo.ch_fa)
            
            console.log(chFilterasNo)
        }, l_url3)
    }, l_url2)
}, l_url)






































if (somecase) {
    op_lb.addEventListener('click', () => {
        //make op_n for each case

        switch (op_n) {
            case -1:
                op_ba.style.backgroundPosition = '0% 60%';
                op_ml.style.display = `none`;
                break;
            case 0:
                op_ba.style.backgroundPosition = '0% 0%';
                break;
            case 1:
                op_ba.style.backgroundPosition = '0% 31%';
                break;
            case 2:
                backgroundDiv.style.backgroundPosition = '0% 95%';
                number = -1;
                break;
        }
        op_n++;
        window.scrollTo({
            top: number > 0 ? 0 : document.body.scrollHeight,
            behavior: 'smooth'
        });
    })

}