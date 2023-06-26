<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DANRAKU_会員情報変更</title>
<%@include file="../header_user.jsp" %>
<link href="${pageContext.request.contextPath}/css/style.css?20230620" rel="stylesheet" media="all" type="text/css" />
<link href="${pageContext.request.contextPath}/css/headerStyle_user.css?20230620" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
   <%@page import = "jp.co.aforce.bean.MemberBean, java.util.List" %>
   <% MemberBean member = (MemberBean)session.getAttribute("member"); %>
   <!-- 登録更新画面作成 -->
   <div class="mainContent">
   <form action = "update3" method = "post">
    <input type="hidden" name="origin_id" value="<%=member.getMember_id() %>">
    <input type="hidden" name="member_id" value="<%=member.getMember_id() %>">
     <p>会員情報変更</p>
     <p>ID</p>
    <p><%=member.getMember_id()%></p>
    
     <p>パスワード<br>
    <input type= "text" name = "password" required = "required" value = "<%=member.getPassword()%>"></p>
     
     <p>名前</p>
    <input type= "text" name = "member_name" required = "required" value = "<%=member.getMember_name()%>">
    
     <p>住所</p>
     <input type= "text" name = "home_address" required = "required" value = "<%=member.getHome_address()%>">
     
     <p>生年月日<br>
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  
    <select name = "birth_year" required = "required">
      <c:forEach var = "i" begin = "1920" end = "2020">
       <option value = "${i}">${i} </option>
      </c:forEach></select> 年
  
    <select name = "birth_month" required = "required">
      <c:forEach var = "i" begin = "1" end = "12">
       <option value = "${i}">${i} </option>
    </c:forEach></select> 月
  
    <select name="birth_day" required = "required">
      <c:forEach var = "i" begin = "1" end = "31">
       <option value = "${i}">${i} </option>
      </c:forEach></select>　日
     </p>
     
     <p>職業<br>
    <select name="job" required = "required">
      <option value="‐">‐</option>
      <option value="会社員">会社員</option>
      <option value="自営業">芸人</option>
      <option value="学生">学生</option>
      <option value="その他">その他</option>
    </select></p>
     
     <p>電話番号<br>
    <input type = "text" name = "phone_number" required = "required" "required" value = "<%=member.getPhone_number()%>"></p>
  
     <p>メールアドレス<br>
    <input type = "text" name = "mail_address" required = "required" "required" value = "<%=member.getMail_address()%>"></p>
    
    
    <input type = "submit" value = "更新">
   </form>
    
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