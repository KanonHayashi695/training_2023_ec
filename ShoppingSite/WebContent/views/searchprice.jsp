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
    
    <form action = "cartadd2" method = "post">
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
         
</body>
</html>