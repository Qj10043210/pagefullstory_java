<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RSP</title>
    <link href="<c:url value='/resources/css/main.css'/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value='/resources/css/rsp.css'/>" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="clientUrl" data-url="<c:url value='/client/' />"></div>
<div id="gameUrl" data-url="<c:url value='/game/' />"></div>                        
<div id="cssUrl" data-url="${pageContext.request.contextPath}/resources/css/"></div>
<div id="jsUrl" data-url="${pageContext.request.contextPath}/resources/js/"></div>
<div id="rootUrl" data-url="${pageContext.request.contextPath}/"></div>
<input id="sessionId" value="${sessionScope.joinedName}" type="hidden"/>
<div id="globalLoad">
        <div id="globalLoad_context"></div>
    </div>
 <div id="error">
        <div id="error_button"></div>
    </div>
    <div id="ir_back">
        <div class="ir_back_front"></div>
        <div class="ir_back_front"></div>
        <div class="ir_back_front"></div>
        <div class="ir_back_front"></div>
        <div id="ir_b_tit">
            <div class="cr_b_tit_in cr_b_tit_i_l"></div>
            <div class="cr_b_tit_in cr_b_tit_i_r"></div>
        </div>
    </div>
    <div id="ir_m">
        <div id="ir_party_main">
            <div id="ir_party_lv">
                <span id="ir_party_lv_t">Lv</span>
                <span id="ir_party_lv_v">1</span>
            </div>
            <div id="ir_party_data">
                <span id="ir_party_data_r">0</span>
                <span id="ir_party_data_w">0</span>
                <span id="ir_party_data_l">0</span>
                <span id="ir_party_data_d">0</span>
            </div>
            <div id="ir_party_done">

            </div>
            <div id="ir_party_room_all">
                <div id="ir_party_room0" class="cr_party_room">
                    <span class="cr_party_room_title">이름1</span>
                    <span class="cr_party_room_index">쉬운 승리 부탁드려요</span>
                </div>
                <div id="ir_party_room1" class="cr_party_room cr_party_room_em">
                    <span class="cr_party_room_title"></span>
                    <span class="cr_party_room_index"></span>
                </div>
                <div id="ir_party_room2" class="cr_party_room cr_party_room_em">
                    <span class="cr_party_room_title"></span>
                    <span class="cr_party_room_index"></span>
                </div>
                <div id="ir_party_room3" class="cr_party_room cr_party_room_em">
                    <span class="cr_party_room_title"></span>
                    <span class="cr_party_room_index"></span>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
            <script>
                $.noConflict();
                var jQ = jQuery;
            </script>

            <script type="module" src="${pageContext.request.contextPath}/resources/js/main.js"></script>
            <script type="module" src="${pageContext.request.contextPath}/resources/js/rsp.js"></script>
</body>

</html>