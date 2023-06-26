
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品詳細ページ９</title>
<%@include file="../../header_user.jsp" %>
<link href="${pageContext.request.contextPath}/css/headerStyle_user.css?20230620" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css?20230620" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/itemdetail.css?20230623" rel="stylesheet" media="all" type="text/css" />
</head>
<body>

   <%@page import = "jp.co.aforce.bean.ItemBean, java.util.List" %>
   <% List<ItemBean> list = (List<ItemBean>)session.getAttribute("list"); %>

   <h1 class = "logo">ファンタ男</h1>
   
   <div class="pictureanddetail">
    <p class = "img"><img src="../../img/9.jpg" height ="315" width="600"></p>
    <h3 class = "logo3">ここに商品の説明など</h3>
   </div>
   
   <div class = "priceandcart">
    <h2 class = "logo2">500円</h2>
   
   <% if(list != null){ %>
   <% for(ItemBean i : list){ %>
   <%if(i.getItem_id() == 9){ %>
   <%if(i.getStock() == 0){ %>
   <p>在庫なし</p>
   <%}else{ %>
   
   <form action = "cartdetail" method = "post">
     <input type="hidden" name="item_name" value="<%=i.getItem_name() %>">
     <input type="hidden" name="item_id" value="<%=i.getItem_id() %>">
     <input type="hidden" name="price" value="<%=i.getPrice() %>">
     <input type="hidden" name="stock" value="<%=i.getStock() %>">
     <input type="hidden" name="id" value="9">
     <input type = "submit" value = "カートに入れる" class = "cart"><br>
   </form>
   <% } 
     }
    }
   } %>
   </div>
   
   <form action = "itemtransition3" method = "post">
   <p><input type = "submit" value = "戻る"  class = "back"></p>
   </form>
   

</body>
<%@include file="../../footer.jsp" %>
</html>