<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DANRAKU_ログイン</title>
<%@include file="../header.jsp" %>
<link href="${pageContext.request.contextPath}/css/style.css?20230620" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/loginStyle.css?20230621" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/headerStyle.css?20230620" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
	<!-- ログインフォーム -->
	<div class="mainContent">
		<h2>ログイン</h2>
		<form action = "search" method = "post">
			<p class="idp">■ID<input type = "text" name = "member_id" required = "required"></p>
			<p class="idp">■パスワード<input type = "password" name = "password" required = "required"></p>
			<p><input type = "submit" value = "ログイン"></p>
		</form>
		<div class="back">
			<p class="button"><button type="button" onclick="goBack()" class="underButton">戻る</button></p>
		</div>
		<div class="loginButton">
			<form action = "login2" method = "post">
			<p>初めての方はこちら</p>
			<p class="button"><input type = "submit" value = "新規会員登録"></p>
			</form>
		</div>
	</div>
<script>
		<!-- 戻るボタンがrequiredを無視 -->
		function goBack(){
			window.history.back();
		}
	</script>
<%@include file="../footer.jsp" %>