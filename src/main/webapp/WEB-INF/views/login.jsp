<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SSTC DevOps示範專案</title>
</head>
<body>
<script>     
      function clearform() {    	  
    	 var form = document.getElementById("inputForm");
    	 form.reset();
         return false;
      }
</script>
<form action="admin" method="post" id="inputForm">
<br>
<table width="100%">
<tr>
<td colspan="2" align="center"></td>
</tr>
<tr>
<td align="right" width="50%">帳號：</td><td><input type="text" name="userName"></td>
</tr>
<tr>
<td align="right" width="50%">密碼：</td><td><input type="password" name="userPasswd"><font color="red">${errorMsg}</font></td>
</tr>
<tr>
<td align="right" width="50%"></td><td><input type="checkbox" value="1" name="RememberMe" >Remember Me</td>
</tr>
<tr>
<td align="right" width="50%"></td><td  align="left"><input type="submit" value="清空" onclick="clearform();return false;"><input type="submit" value="登入"></td>
</tr>
</table>
</form>
</body>
</html>