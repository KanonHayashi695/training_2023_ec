<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../../header_user.jsp" %>
<link href="${pageContext.request.contextPath}/css/headerStyle_user.css?20230620" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css?20230620" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/itemdetail.css?20230623" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
   
   <%@page import = "jp.co.aforce.bean.ItemBean, java.util.List" %>
   <% List<ItemBean> list = (List<ItemBean>)session.getAttribute("list"); %>

   <h1 class = "logo">コンビニの定員</h1>
   <h2 class = "logo2">1200円</h2>
   <img src="../../img/1.jpg" height ="315" width="600">
   
   <% if(list != null){ %>
   <% for(ItemBean i : list){ %>
   
   <form action = "login3" method = "post">
     <input type="hidden" name="item_name" value="<%=i.getItem_name() %>">
     <input type="hidden" name="item_id" value="<%=i.getItem_id() %>">
     <input type="hidden" name="price" value="<%=i.getPrice() %>">
     <input type="hidden" name="count" value="<%=i.getCount() %>"
     
     <input type="hidden" name="id" value="1">
     <input type = "submit" value = "カートに入れる"><br>
   </form>
   
   <% } %>
   <% } %>

  <form action = "itemtransition3" method = "post">
   <p><input type = "submit" value = "戻る"></p>
  </form>
         
</body>
<%@include file="../../footer.jsp" %>
</html>