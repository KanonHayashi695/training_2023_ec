<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   
   <!-- 登録更新画面作成 -->
   <form action = "update3" method = "post">
     <p>会員情報登録</p>
     <p>ID</p>
    <input type= "text" name = "member_id" required = "required">
    
     <p>パスワード<br>
    <input type= "text" name = "password" required = "required"></p>
     
     <p>名前</p>
    <input type= "text" name = "member_name" required = "required">
    
     <p>住所</p>
     <input type= "text" name = "home_address" required = "required">
     
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
    <input type = "text" name = "phone_number" required = "required"></p>
  
     <p>メールアドレス<br>
    <input type = "text" name = "mail_address" required = "required"></p>
    
    
    <input type = "submit" value = "更新">
   </form>
    
   <form action = "update" method = "post">
    <input type = "submit" value = "戻る"> 
   </form>
   
</body>
</html>