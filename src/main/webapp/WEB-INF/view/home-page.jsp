<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.error {
	color: red;
	position: fixed;
	text-align: left;
	margin-left: 30px;
}
</style>

<script type="text/javascript">
	function validateUser() {
		var userName = document.getElementById("yn").value;
		if (userName.length < 3) {
			alert("Your name should be min 3 Character")
			return false;
		}
		return true;
	}
</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<div align="right">
		<a href="register">register</a>
	</div>
	<h1 align="center">My Love Calculator world</h1>
	<hr />
	<form:form action="result-page" method="get" onsubmit="validateUser()"
		modelAttribute="userInfo">
		<div align="center">
			<p>
				<label>Your Name :</label>
				<form:input id="yn" path="userName" />
				<form:errors cssClass="error" path="userName"></form:errors>
			</p>
			<p>
				<label>Crush Name :</label>
				<form:input id="cn" path="crushName" />
				<form:errors cssClass="error" path="crushName"></form:errors>
			</p>
			<p>
				<form:checkbox path="termsAndCondition" />
				<label>I'am Agreeing that this just for fun</label>
				<form:errors cssClass="error" path="termsAndCondition"></form:errors>
			</p>
			<input type="submit" value="Calculate">

		</div>
	</form:form>
</body>
</html>