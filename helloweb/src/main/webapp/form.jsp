<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/helloweb/join.jsp"method= "post">
	<label>이메일</label>
		<input type ="submit" name= "email" value = "">
		<br>
		<br>
		
		<label>비밀번호</label>
		<input type ="password" name= "password" value = "">
		<br>
		<br>
		
		<label>생년</label>
		<select name="year">
			<option value="2002"> 2002년 </option> 
			<option value="2001"> 2001년 </option>
			<option value="2000"> 2000년 </option>
		</select>
		<br>
		<br>
		
		<label>성별:</label>
		남<input type ="radio" name= "gender" value = "male">
		여<input type ="radio" name= "gender" value = "female">
		<br>
		<br>
		
		<label>자기소개: </label>
		<textarea name= "profile" style="width:200px; height:80px"></textarea>
		
		<label>취미: </label>
		수영<input type ="checkbox" name= "hobby" value = "swimming">
		코딩<input type ="checkbox" name= "hobby" value = "coding">
		요리<input type ="checkbox" name= "hobby" value = "cooking">
		술<input type ="checkbox" name= "hobby" value = "drinking">
		<br>
		<br>
		
		<input type="submit" value="가입">
		
		
	</form>
</body>
</html>