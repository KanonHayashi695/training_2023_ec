<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品検索</title>
</head>
<body>
	<h2>商品検索</h2>
	<form action="Item_searchServlet" method="post">
		<label for="item_name">商品名:</label>
		<input type="text" id="item_name" name="item_name">
		<input type="submit" value="検索">
	</form>
</body>
</html>