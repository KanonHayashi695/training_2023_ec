<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<div id = "headerview">
<%@include file="../header_user.jsp" %>
<link href="${pageContext.request.contextPath}/css/headerStyle_user.css?20230620" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css?20230620" rel="stylesheet" media="all" type="text/css" />
</div>
</head>
<body>
 <div id="cartContent">
    <%@page import = "jp.co.aforce.bean.ItemBean, java.util.List" %>
    <% List<ItemBean> price = (List<ItemBean>)session.getAttribute("list"); %>
    <% if(price != null){ %>
    <% for(ItemBean i : price){ %>
         <img src="../img/<%=i.getItem_id() %>.jpg" height ="96">
         <a href="http://localhost:8080/ShoppingSite/views/itemdetail/<%=i.getItem_id() %>.jsp">
         <%=i.getItem_name() %></a> : 
         <%=i.getPrice() %> : 
         <%=i.getCategory() %> : 
         <%=i.getRelease_year() %> : 
         <%=i.getRelease_month() %> : 
         <%=i.getRelease_day() %> : 
         <%=i.getLevel() %> : 
         <%=i.getStock() %><br> 
         <form action = "cartadd2" method = "post">
         <input type="hidden" name="item_name" value="<%=i.getItem_name() %>">
         <input type="hidden" name="item_id" value="<%=i.getItem_id() %>">
         <input type="hidden" name="price" value="<%=i.getPrice() %>">
         <input type="hidden" name="stock" value="<%=i.getStock() %>">
         <input type = "submit" value = "カートに入れる"><br>
         </form>
    <% } %>
    <% } %>
    <form action = "itemtransition" method = "post">
</div>
    <p><input type = "submit" value = "戻る"></p>
    </form>
<script src="../js/sample_javascript.js"></script>
</body>
<%@include file="../footer.jsp" %>
</html>
