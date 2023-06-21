<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="jp.co.aforce.bean.MemberBean" %>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/css/headerStyle_user.css?20230620" rel="stylesheet" media="all" type="text/css" />
<meta charset="UTF-8">
<title>header_user</title>
</head>
	<body>
		<header>
			<div class="title2">
				<h1>DANRAKU</h1>
				<h2>-台本販売サイト-</h2>
			</div>
			<div class="actionButtons">
				<% if(session.getAttribute("member")!=null){ %>
					<span class="welcomeMessage"><%= ((MemberBean)session.getAttribute("member")).getMember_id() %>でログイン中</span>
					<div class="hoverMenu">
						<a class="myPageButton">
							<img src="${pageContext.request.contextPath}/img/人物アイコン.png" alt="マイページ" width="40" height="40">
							<div class="menuContent">
								<a href="update.jsp">登録情報の変更</a>
								<a href="delete.jsp">登録情報の削除</a>
								<a href="logout">ログアウト</a>
							</div>
						</a>
					</div>
				<% }else { %>
					<div class="button welcomeMessage">
						<a href="login.jsp">ログイン</a>
					</div>
				<% } %>
				<a href="itemtransition2" class="cartButton">
					<img src="${pageContext.request.contextPath}/img/カートのアイコン素材.png" alt="カート" width="40" height="40">
					<span id="cartCount" class="cartCount"></span>
				</a>
			</div>
		</header>
	</body>
</html>
