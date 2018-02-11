<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Warsztat 3 - Programming School</title>
</head>
<body>

	<%@ include file="/WEB-INF/fragments/header.jspf"%>
	<table border='1'>
		<tr>
			<td>Tytul</td>
			<td>Autor</td>
			<td>Data dodania</td>
			<td>Akcja</td>
		</tr>
		<c:forEach var="solution" items="${solutions}">
			<tr>

				<td>${solution.solution.title}</td>
				<td>${solution.authorName}</td>
				<td>${solution.solution.submitionDate}</td>
				<td><a href='Solution?id=${solution.solution.id}'>szczegoly</a></td>
			</tr>
		</c:forEach>
	</table>
	
	Context
	
	<%@ include file="/WEB-INF/fragments/footer.jspf"%>

</body>
</html>