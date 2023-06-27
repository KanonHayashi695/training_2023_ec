<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DANRAKU_会員情報削除</title>
<%@include file="../header_user.jsp" %>
<link href="${pageContext.request.contextPath}/css/style.css?20230620" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/headerStyle_user.css?20230620" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
   
   <div class="mainContent">
   
     <p>削除されました</p>
    
		<div>
			<p><button type="button" onclick="goBack()" class="Button">戻る</button></p>
		</div>
   </div>
   
	<script>
		<!-- 戻るボタンの挙動 -->
		function goBack(){
			window.history.back();
		}
	</script>
<%@include file="../footer.jsp" %>
   
</body>
</html>