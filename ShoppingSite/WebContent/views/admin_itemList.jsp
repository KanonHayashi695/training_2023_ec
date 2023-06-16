<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>サイト名_商品情報検索_管理者</title>
</head>
<body>
<%@ page import="jp.co.aforce.bean.ItemBean" %>
<%@ page import="java.util.List" %>

<%	try {
	List<ItemBean> item = (List<ItemBean>) request.getAttribute("item");
%>
	<h2>商品情報の更新と削除</h2>
    <table border="1">
		<tr>
			<th>商品名</th>
			<th>価格</th>
			<th>分類</th>
			<th>発売日</th>
			<th>難易度</th>
			<th>在庫</th>
			<th>操作</th>
		</tr>
		<%for (ItemBean i : item){ %>
			<tr>
				<td><%=i.getItem_name() %></td>
				<td><%=i.getPrice() %>円</td>
				<td><%=i.getCategory() %></td>
				<td><%=i.getRelease_year() %>/<%=i.getRelease_month() %>/<%=i.getRelease_day() %></td>
				<td><%=i.getLevel() %></td>
				<td><%=i.getStock() %>個</td>
				<td>
					<form action="Item_editServlet" method="post">
						<input type="hidden" name="item_id" value="<%=i.getItem_id() %>">
 						<input type="submit" value="更新">
 					</form>
					<form action="#" method="post">
						<input type="hidden" name="item_id" value="<%=i.getItem_id() %>">
 						<input type="submit" value="削除">
 					</form>
				</td>
			</tr>
		<% } %> 
	</table>
	<a href="admin_itemSearchForm.jsp">商品検索</a>
<% 
} catch (Exception e) {
	e.printStackTrace();
}
%>
</body>
</html>