<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!-- bootstrap�� ����ϱ� ���� CDN�ּ� -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 
<!-- jquery�� ����ϱ����� CDN�ּ� -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 
<script>
    $(document).ready(function(){
        $('#removeButton').click(function(){
            if($('#boardPw').val().length <4) {
                alert('boardPw�� 4���̻� �̾�� �մϴ�');
                $('#boardPw').focus();
            } else {
                $('#removeForm').submit();
            }
        });
    });
</script>
<title>BOARD REMOVE FORM(spring mvc ���)</title>
</head>
<body>
<div class="container">
<a href="/logout">�α׾ƿ�</a>
<h1>BOARD REMOVE FORM(spring mvc ���)</h1>
     <form  class="form-inline" id="removeForm" action="${pageContext.request.contextPath}/removeBoard" method="post">
         <!-- boardPw�� �Բ� boardNo���� ���ܼ�(hidden������) �ѱ� -->
         <input name="boardNo" value="${param.boardNo}" type="hidden"/>
         <div class="form-group">
             <label for="boardPw">��й�ȣȮ�� :</label>
             <input class="form-control" id="boardPw" name="boardPw" type="password">
         </div>
         <div class="form-group">
             <input class="btn btn-default" id="removeButton" type="button" value="����"/>
         </div>
     </form>
</div>
</body>
</html>