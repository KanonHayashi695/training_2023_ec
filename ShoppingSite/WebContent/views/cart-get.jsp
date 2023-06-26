<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DANRAKU_カート画面</title>
<div id = "headerview">
<%@include file="../header_user.jsp" %>
<link href="${pageContext.request.contextPath}/css/headerStyle_user.css?20230620" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css?20230620" rel="stylesheet" media="all" type="text/css" />
</div>
</head>
<body>
<div id="cartContent">
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
	     <input type="hidden" name="stock" value="<%=i.getStock() %>">
	    <p><input type = "submit" value = "＋"></p>
	   </form>
	    <% if( i.getStock() == i.getCount()){ %>
	    <p>※購入上限です</p>
	    <%} %>
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
      <select name="purchasemethod" required = "required">
        <option value="">※選択してください</option>
        <option value="カード">カード</option>
        <option value="代金引換">代金引換</option>
        <option value="銀行振込">銀行振込</option>
        <option value="コンビニ">コンビニ</option>
      </select></p> 
	
	<%@page import = "jp.co.aforce.bean.MemberBean, java.util.List" %>
	<% MemberBean member = (MemberBean)session.getAttribute("member"); %>
	<%if(member != null){%>
	   <form action = "cartpurchasetransition" method = "post">
	    <p><input type = "submit" value = "購入"></p>
	    </form>
	<%}else{ %>
		<p>商品購入の際はログインしてください</p>
		<%} %>
	    
		<div>
			<p><button type="button" onclick="goBack()" class="Button">戻る</button></p>
		</div>
</div>
<script src="../js/sample_javascript.js">
</script>
	<script>
		<!-- 戻るボタンの挙動 -->
		function goBack(){
			window.history.back();
		}
	</script>
</body>       
<%@include file="../footer.jsp" %>
</html>
