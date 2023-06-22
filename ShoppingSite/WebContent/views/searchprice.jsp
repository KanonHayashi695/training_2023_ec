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
    <% List<ItemBean> price = (List<ItemBean>)session.getAttribute("price"); %>
    
    <% if(price != null){ %>
    <% for(ItemBean i : price){ %>
         <%=i.getItem_name() %> : <%=i.getPrice() %> : <%=i.getCategory() %> : 
         <%=i.getRelease_year() %> : <%=i.getRelease_month() %> : 
         <%=i.getRelease_day() %> : <%=i.getLevel() %> : <%=i.getStock() %><br>
    
    <% } %>
    <% } %>
    
    <form action = "carttransition" method = "post">
      <p><input type = "submit" value = "戻る"></p>
    </form>
         
</body>
</html>