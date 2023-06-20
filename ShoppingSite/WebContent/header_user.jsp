<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<span class="welcomeMessage">${member_id}でログイン中</span>
				<a href="login.jsp" class="myPageButton">
					<img src="${pageContext.request.contextPath}/img/人物アイコン.png" alt="マイページ" width="40" height="40">
				</a>
				<a href="itemtransition2" class="cartButton">
					<img src="${pageContext.request.contextPath}/img/カートのアイコン素材.png" alt="カート" width="40" height="40">
				</a>
			</div>
		</header>
	</body>
</html>
