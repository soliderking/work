<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="schooldoadd.action" method="post">
		<table>
			<tr>
				<td>校名</td>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td>用户名</td>
				<td>
					<select name="userid">
						<c:forEach items="${users}" var="user">
							<option value="${user.id}">${user.name}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="增加"/></td>
				<td><input type="reset" value="重置"/></td>
			</tr>
		</table>
	</form>
</body>
</html>