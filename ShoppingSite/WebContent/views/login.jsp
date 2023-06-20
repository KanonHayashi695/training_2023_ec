<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DANRAKU_ログイン</title>
</head>
<body>
   
  <!-- ログインフォーム -->
  <form action = "search" method = "post">
  <p>ID　　　　<input type = "text" name = "member_id" required = "required"></p>
  <p>パスワード<input type = "password" name = "password" required = "required"></p>
  <p><input type = "submit" value = "ログイン"></p>
  </form>

  <form action = "logout2" method = "post">
  <p><input type = "submit" value = "戻る"></p>
  </form>

</body>
</html>