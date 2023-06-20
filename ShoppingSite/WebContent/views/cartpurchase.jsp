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

   <% if(cart != null){ %> 
   <% for(ItemBean i : cart){ %> 
    
    <p><%=i.getItem_name() %> : <%=i.getPrice() %>円</p>
  
   <% } %>
   <% } %> 
   
   <%@page import = "jp.co.aforce.bean.MemberBean, java.util.List" %>
   <% MemberBean member = (MemberBean)session.getAttribute("member"); %>
   
    <p>名前：<%=member.getMember_name() %></p>
    <p>住所：<%=member.getHome_address() %></p>
    
   <form action = "cartpurchasetransition2" method = "post">
    <p><input type = "submit" value = "確定"></p>
   </form>
     
   
</body>
</html>