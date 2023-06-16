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
    
    <p><%=i.getItem_name() %> : <%=i.getPrice() %></p>
  <!--    <p>個数</p>
 
    <select name = "count" required = "required">
      <c:forEach var = "i" begin = "1" end = "10">
       <option value = "${i}">${i} </option>
    </c:forEach></select> -->
     
    
   <form action = "cartremoveaction" method = "post"> 
   <input type="hidden" name="item_id" value="<%=i.getItem_id() %>">
    <p><input type = "submit" value = "カートから削除する"></p>
   </form> 
    
    
   <% } %>
   <% } %> 
    <p><input type = "submit" value = "購入"></p>
    
   <form action = "carttransition" method = "post"> 
    <p><input type = "submit" value = "戻る"></p>
   </form>
    
</body>
</html>