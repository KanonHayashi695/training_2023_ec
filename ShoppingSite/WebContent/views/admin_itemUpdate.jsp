<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jp.co.aforce.bean.ItemBean" %>
<%@ page import="jp.co.aforce.dao.ItemDAO2" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>サイト名_商品情報更新_管理者</title>
</head>
<body>

<%	try {
	ItemBean i = (ItemBean) request.getAttribute("item");
%>
	<h2>商品更新</h2>
	<form action="Item_updateServlet" method="post">

		<input type="hidden" name="item_id" value="<%= i.getItem_id() %>">
		<label for="item_name">商品名:</label>
		<input type="text" id="item_name" name="item_name" value="<%= i.getItem_name() %>"><br>
		<label for="price">価格:</label>
		<input type="text" id="price" name="price" value="<%= i.getPrice() %>"><br>
		<label for="category">分類:</label>
		<input type="text" id="category" name="category" value="<%= i.getCategory() %>"><br>
		<label for="release_year">発売年:</label>
		<input type="text" id="release_year" name="release_year" value="<%= i.getRelease_year() %>"><br>
		<label for="release_month">発売月:</label>
		<input type="text" id="release_month" name="release_month" value="<%= i.getRelease_month() %>"><br>
		<label for="release_day">発売日:</label>
		<input type="text" id="release_day" name="release_day" value="<%= i.getRelease_day() %>"><br>
		<label for="level">レベル:</label>
		<input type="text" id="level" name="level" value="<%= i.getLevel() %>"><br>
		<label for="stock">在庫数:</label>
		<input type="text" id="stock" name="stock" value="<%= i.getStock() %>"><br>
		<input type="submit" value="更新">
	
	</form>
<% 
} catch (Exception e) {
	e.printStackTrace();
}
%>
</body>
</html>