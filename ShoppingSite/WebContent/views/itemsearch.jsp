<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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
  
  
</body>
</html>