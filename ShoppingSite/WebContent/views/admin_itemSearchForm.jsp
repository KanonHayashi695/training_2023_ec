<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>サイト名_商品情報検索_管理者</title>
</head>
<body>
	<h3>変更したい商品検索を検索してください。</h3>
	<form action="Item_searchServlet" method="post">
		<label for="item_name">商品名:</label>
		<input type="text" id="item_name" name="item_name">
		<input type="submit" value="検索">
	</form>
</body>
</html>