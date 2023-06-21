<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DANRAKU_検索結果</title>
<%@include file="../header_user.jsp" %>
<link href="${pageContext.request.contextPath}/css/headerStyle_user.css?20230620" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css?20230620" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
   <div class="cartContent">
   <%@page import = "jp.co.aforce.bean.ItemBean, java.util.List" %>
   <% List<ItemBean> list = (List<ItemBean>)session.getAttribute("list"); %>
   
   <% if(list != null){ %>
   <% for(ItemBean i : list){ %>
   		<img src="../img/<%=i.getItem_id() %>.jpg" height ="96">
         <%=i.getItem_name() %> : <%=i.getPrice() %> : <%=i.getCategory() %> : 
         <%=i.getRelease_year() %> : <%=i.getRelease_month() %> : 
         <%=i.getRelease_day() %> : <%=i.getLevel() %> : <%=i.getStock() %>
         <form action = "cartadd" method = "post">
         <input type="hidden" name="item_name" value="<%=i.getItem_name() %>">
         <input type="hidden" name="item_id" value="<%=i.getItem_id() %>">
         <input type="hidden" name="price" value="<%=i.getPrice() %>">
         <input type="hidden" name="price" value="<%=i.getCount() %>">
          <input type = "submit" value = "カートに入れる"><br>
         </form>
   <% } %>
   <% } %>
         <form action = "carttransition" method = "post">
          <p><input type = "submit" value = "戻る"></p>
         </form>
         </div>
<%@include file="../footer.jsp" %>