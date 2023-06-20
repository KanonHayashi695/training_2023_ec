<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DANRAKU-ホーム</title>
<link rel="stylesheet" media="all" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<p class="exp">
	当サイトは漫才やコント等の台本を適正な価格で販売するサイトとなっております。<br>
	お客様のスタイルに合わせ、『紙媒体』と『テキストファイル形式』の２種類から選択し購入が可能です。<br>
	また、ネクタイやスーツなどの舞台衣装も取り揃えております。<br>
	品質の良い商品をお楽しみください。
	</p>
	<div class="loginButton">
		<form action = "login2" method = "post">
			<p>初めての方はこちら</p>
			<p><input type = "submit" value = "新規登録"></p>
		</form>
		<form action = "login" method = "post">
			<p>ログインに進む</p>
			<p><input type = "submit" value = "ログイン"></p>
		</form>
		<form action = "update2" method = "post">
			<p>会員情報の更新に進む</p>
			<p><input type = "submit" value = "更新"></p>
		</form>
		   
		<form action = "delete" method = "post">
			<p>会員情報の削除に進む</p>
			<p><input type = "submit" value = "削除"></p>
		</form>
	</div>
</body>
</html>