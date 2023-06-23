<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DANRAKU_カート画面</title>

<%@include file="../header_user.jsp" %>
<link href="${pageContext.request.contextPath}/css/headerStyle_user.css?20230620" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css?20230620" rel="stylesheet" media="all" type="text/css" />

</head>
<body>

	<div class="cartContent">
   <% List<ItemBean> cart = (List<ItemBean>)session.getAttribute("cart"); %>
   
   <% 
     int a = 0;   
   %>
      
   <% if(cart != null){ %> 
   <% for(ItemBean i : cart){ %> 
     <img src="../img/<%=i.getItem_id() %>.jpg" height ="96">
    <p><%=i.getItem_name() %> : <%=i.getPrice() %> : <%=i.getCount() %></p>
   
   <%  a += (i.getPrice() * i.getCount()) ; %> 
   
	   <form action = "cartgetadd" method = "post">
	     <input type="hidden" name="item_name" value="<%=i.getItem_name() %>">
	     <input type="hidden" name="item_id" value="<%=i.getItem_id() %>">
	     <input type="hidden" name="price" value="<%=i.getPrice() %>">
	    <p><input type = "submit" value = "＋"></p>
	   </form>
	   
	    <form action = "cartgetreduce" method = "post">
	     <input type="hidden" name="item_name" value="<%=i.getItem_name() %>">
	     <input type="hidden" name="item_id" value="<%=i.getItem_id() %>">
	     <input type="hidden" name="price" value="<%=i.getPrice() %>">
	    <p><input type = "submit" value = "ー"></p>
	   </form>
	   
	   <form action = "cartremoveaction" method = "post"> 
	   <input type="hidden" name="item_id" value="<%=i.getItem_id() %>">
	   <input type = "submit" value = "カートから削除する">
	   </form>
	    
	   <% } %>
	   <% } %> 
	 
	   <p>合計：<%=a %>	</p>    
	    
	   <p>購入方法</p> 
	   
	   <form action = "cartpurchasetransition" method = "post">
	    <p><input type = "submit" value = "購入"></p>
	   </form>
	    
	   <form action = "carttransition" method = "post"> 
	    <p><input type = "submit" value = "戻る"></p>
   </form>
   </div>
   
<script src="../js/sample_javascript.js"></script>
</body>       

<%@include file="../footer.jsp" %>
