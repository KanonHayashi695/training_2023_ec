<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DANRAKU_商品検索ページ</title>
<%@include file="../header_user.jsp" %>
<link href="${pageContext.request.contextPath}/css/headerStyle_user.css?20230620" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css?20230620" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
<div class="mainContent">
  <form action = "itemsearch" method = "post">
   <p>商品名<input type = "text" name = "item_name" required = "required"></p>
   
   <p><input type = "submit" value = "検索"></p>
  </form>
  
  <form action = "carttransition" method = "post">
   <p><input type = "submit" value = "戻る"></p>
  </form>
  
   <p>漫才の分類</p>
   <input type = "radio" name = "classification" value = "漫才台本" checked>漫才台本
   <input type ="radio" name = "classification" value = "コント台本">コント台本
   <input type = "radio" name = "classification" value = "一発ギャグ">一発ギャグ
   <input type = "radio" name = "classification" value = "エピソードトーク">エピソードトーク
   <input type = "radio" name = "classification" value = "舞台衣装">舞台衣装
   <input type = "radio" name = "classification" value = "その他">その他
   <input type = "radio" name = "classification" value = "指定なし">指定なし
   
   
    <p><input type = "submit" value = "すべて"></p>
    
   <form action = "searchmanzai" method = "post">
   <input type="hidden" name="keyword" value="漫才台本">
    <p><input type = "submit" value = "漫才"></p>
   </form>
   
   <form action = "searchkonto" method = "post">
   <input type="hidden" name="keyword" value="コント台本">
    <p><input type = "submit" value = "コント台本"></p>
   </form>
   
    <p><input type = "submit" value = "一発ギャグ"></p>
    <p><input type = "submit" value = "エピソードトーク"></p>
    <p><input type = "submit" value = "舞台衣装"></p>
    <p><input type = "submit" value = "その他"></p>
    </div>
  
<%@include file="../footer.jsp" %>