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
   <% List<ItemBean> cart = (List<ItemBean>)session.getAttribute("cart"); %>
   
   <% 
     int a = 0;
   %>
    
   <% if(cart != null){ %> 
   <% for(ItemBean i : cart){ %> 
    
    <p><%=i.getItem_name() %> : <%=i.getPrice() %></p>
  
    
   <form action = "cartremoveaction" method = "post"> 
   <input type="hidden" name="item_id" value="<%=i.getItem_id() %>">
   
   <%  a += i.getPrice(); %>
   
    <p><input type = "submit" value = "カートから削除する"></p>
  
   </form>
    
   <% } %>
   <% } %> 
 
   <p>合計：<%=a %></p>

   <form action = "cartpurchasetransition" method = "post">
    <p><input type = "submit" value = "購入"></p>
   </form>
    
   <form action = "carttransition" method = "post"> 
    <p><input type = "submit" value = "戻る"></p>
   </form>
    
</body>
</html>