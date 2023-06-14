<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <%@page import = "jp.co.aforce.bean.ItemBean, java.util.List" %>
   <% List<ItemBean> list = (List<ItemBean>)request.getAttribute("list"); %>
   
   <% for(ItemBean i : list){ %>
         <%=i.getItem_name() %> : <%=i.getPrice() %> : <%=i.getCategory() %> : <%=i.getRelease_yaer() %> : <%=i.getRelease_month() %> : <%=i.getRelease_day() %> : <%=i.getLevel() %> : <%=i.getStock() %><br>
   <% } %>
   
</body>
</html>