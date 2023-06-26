<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DANRAKU_検索結果</title>
<div id = "headerview">
<%@include file="../header_user.jsp" %>
<link href="${pageContext.request.contextPath}/css/headerStyle_user.css?20230620" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css?20230620" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/itemSearchStyle.css?20230626" rel="stylesheet" media="all" type="text/css" />
</div>
</head>
<body>
	<div id="cartContent">
		<%@page import = "jp.co.aforce.bean.ItemBean, java.util.List" %>
		<% List<ItemBean> list = (List<ItemBean>)session.getAttribute("list"); %>
		<!-- 戻るボタン -->
		<form action = "itemtransition" method = "post" class="back">
			<p><input type = "submit" value = "←商品検索ページへ"></p>
		</form>
		<!-- 検索結果リスト -->
		<% if(list != null){ %>
			<% for(ItemBean i : list){ %>
				<div class="itemList">
					<div class="box">
						<!-- 商品画像 -->
						<img src="../img/<%=i.getItem_id() %>.jpg" height ="96" class="itemImage">
						<a href="http://localhost:8080/ShoppingSite/views/itemdetail/<%=i.getItem_id() %>.jsp"></a>
					</div>
					<div class="box">
						<!-- 商品名 -->
						<p class="itemName itemText1"><%=i.getItem_name() %>　</p>
						<!-- 値段 -->
						<p class="price itemText1"><%=i.getPrice() %>円</p>
						<!-- 分類 -->
						<p class="category itemText2">分類:<%=i.getCategory() %></p>
						<!-- 難易度 -->
						<p class="level itemText2">難易度:<%=i.getLevel() %></p>
						<!-- 発売日 -->
						<p class="release itemText2"><%=i.getRelease_year() %>年<%=i.getRelease_month() %>月<%=i.getRelease_day() %>日 発売</p>
						<!-- 在庫が無い場合 -->
						<% if(i.getStock() == 0){ %>
							<p class="stock itemText1">在庫切れ</p>
							<p class="cartButtonOff">
								<input type = "submit" value = "カートに入れる">
							</p>
						<%}else{ %>
						<!-- 在庫がある場合 -->
							<p class="stock itemText1">在庫:〇</p>
							<!-- カートに入れる処理 -->
							<form action = "cartadd" method = "post" class="cartButtonOn">
								<input type="hidden" name="item_name" value="<%=i.getItem_name() %>">
								<input type="hidden" name="item_id" value="<%=i.getItem_id() %>">
								<input type="hidden" name="price" value="<%=i.getPrice() %>">
								<input type="hidden" name="price" value="<%=i.getCount() %>">
								<input type="hidden" name="stock" value="<%=i.getStock() %>">
								<input type = "submit" value = "カートに入れる"><br>
							</form>
					<% } %>
					</div>
				</div>
			<% } %>
		<% } %>  
 	</div>
<script src="../js/sample_javascript.js"></script>
 </body>
<%@include file="../footer.jsp" %>
