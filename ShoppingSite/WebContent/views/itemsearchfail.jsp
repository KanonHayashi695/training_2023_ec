<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DANRAKU_商品検索結果</title>
<%@include file="../header_user.jsp" %>
<link href="${pageContext.request.contextPath}/css/headerStyle_user.css?20230620" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css?20230620" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
	<div class="cartContentNull">
   <p>該当する商品はありません。</p>
  <form action = "itemtransition" method = "post">
   <input type = "submit" value = "戻る">
  </form>
  </div>
<%@include file="../footer.jsp" %>