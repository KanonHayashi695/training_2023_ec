<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   
   <!-- 内容は未定　とりあえずボタンのみ作成 -->
   <form action = "login" method = "post">
     <p>ログインに進む</p>
     <p><input type = "submit" value = "ログイン"></p>
   </form>
   
   <form action = "login2" method = "post">
     <p>登録に進む</p>
     <p><input type = "submit" value = "登録"></p>
   </form>
   
   <form action = "update2" method = "post">
     <p>登録の更新に進む</p>
     <p><input type = "submit" value = "更新"></p>
   </form>
   
   <form action = "delete" method = "post">
     <p>登録の削除に進む</p>
     <p><input type = "submit" value = "削除"></p>
   </form>
   
   <form action = "logout" method = "post">
    <p>ログアウトする</p>
    <p><input type = "submit" value = "ログアウト"></p>
   </form>
   
</body>
</html>