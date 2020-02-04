<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="player" items="${player}">
<h1>이름 :${player.players[0].PName}</h1><br>
<h1>나이 :${player.players[0].PAge}</h1><br>
<h1>소속 :${player.TName}</h1><br>
</c:forEach> 


</body>
</html>