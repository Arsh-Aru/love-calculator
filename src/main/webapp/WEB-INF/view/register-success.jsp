<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration resful</title>
</head>
<body>
	<h1>The Registered Details are</h1>
	<br />
	<i> Your name is ${res.name} <br /> 
	    user name is ${res.userName}<br />
		password ${res.password} <br /> 
		country ${res.country} <br />
		hobbies <c:forEach var="i" items="${res.hobby}">
        ${i}, 
    </c:forEach> <br /> 
        Gender {$res.gender}<br />
	</i>

</body>
</html>