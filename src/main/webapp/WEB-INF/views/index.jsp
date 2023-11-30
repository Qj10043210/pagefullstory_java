<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pagefullstory</title>
<link href="<c:url value='/resources/css/main.css'/>" rel="stylesheet" type="text/css"/>
<link href="<c:url value='/resources/css/opening.css'/>" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div id="loginUrl" data-url="<c:url value='/client/login' />"></div>
	<div id="signinUrl" data-url="<c:url value='/client/signin' />"></div>
	<div id="signupUrl" data-url="<c:url value='/client/signup' />"></div>
	<div id="tocharUrl" data-url="<c:url value='/client/tochar' />"></div>
	
	<div id="io_back">
        <div class="io_back_front"></div>
        <div class="io_back_front"></div>
        <div class="io_back_front"></div>
        <div class="io_back_front"></div>
        <div id="io_b_tit">
            <div class="co_b_tit_in co_b_tit_i_l"></div>
            <div class="co_b_tit_in co_b_tit_i_r"></div>
        </div>
    </div>
    <div id="io_m">
        <div id="io_m_log">
            <input type="text" name="io_m_log_id" id="io_m_log_id" class="co_m_log"/>
            <input type="password" name="io_m_log_pwd" id="io_m_log_pwd" class="co_m_log"/>
            <input type="button" id="io_m_log_btn" value="" class="co_m_log"/>
        </div>
        <div id="io_msg">
            <div id="io_msg_i"></div>
        </div>
        <div id="io_world">
            <div id="io_world_0"></div>
        </div>
         <div id="io_chars">
            <div id="io_chars_0" class="co_chars_def co_chars_em"></div>
            <div id="io_chars_1" class="co_chars_def co_chars_em"></div>
            <div id="io_chars_2" class="co_chars_def co_chars_em"></div>
        </div>
         <div id="io_making">
            <div id="io_making_left">
                <div id="io_making_left_stat">
                    <input type="text" name="io_making_left_str" id="io_making_left_str" class="io_making_left_input" readonly value="1"/>
                    <input type="text" name="io_making_left_dex" id="io_making_left_dex" class="io_making_left_input" readonly value="1"/>
                    <input type="text" name="io_making_left_int" id="io_making_left_int" class="io_making_left_input" readonly value="1"/>
                    <input type="text" name="io_making_left_luk" id="io_making_left_luk" class="io_making_left_input" readonly value="1"/>
                </div>
                <div id="io_making_left_dice"></div>
            </div>
            <div id="io_making_middle">
                <div id="io_making_middle_body">
                    <div id="io_making_middle_head"></div>
                </div>

            </div>
            <div id="io_making_right">
                <input type="button" name="io_making_right_check" id="io_making_right_check"/>
                <input type="text" name="io_making_right_name" id="io_making_right_name" class="io_making_right_inputs"/>
                <input type="text" name="io_making_right_hair" id="io_making_right_hair" class="io_making_right_input" value="머리" readonly/>
                <input type="text" name="io_making_right_face" id="io_making_right_face" class="io_making_right_input" value="얼굴" readonly/>
                <input type="text" name="io_making_right_weapon" id="io_making_right_weapon" class="io_making_right_input" value="무기" readonly/>
                <input type="text" name="io_making_right_upcloth" id="io_making_right_upcloth" class="io_making_right_input" value="상의" readonly/>
                <input type="text" name="io_making_right_downcloth" id="io_making_right_downcloth" class="io_making_right_input"value="하의"  readonly/>
                <input type="text" name="io_making_right_shoes" id="io_making_right_shoes" class="io_making_right_input" value="신발" readonly/>
                <input type="button" name="io_making_right_confirm" id="io_making_right_confirm"/>
                <input type="button" name="io_making_right_cancel" id="io_making_right_cancel"/>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script>
    $.noConflict();
	var jQ = jQuery;
	</script>
	
    <script src="${pageContext.request.contextPath}/resources/js/main.js" ></script>
    <script src="${pageContext.request.contextPath}/resources/js/opening.js" ></script>
    <script type="module" src="${pageContext.request.contextPath}/resources/js/load.js" defer></script>
    <script type="module" src="${pageContext.request.contextPath}/resources/js/functions.js" defer></script>
    
</body>
</html>