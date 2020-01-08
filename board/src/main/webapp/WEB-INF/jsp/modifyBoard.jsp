<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- bootstrap을 사용하기 위한 CDN주소 -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 
<!-- jquery를 사용하기위한 CDN주소 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script>
    $(document).ready(function(){
        $('#modifyButton').click(function(){
            if($('#boardPw').val().length <4) {
                alert('boardPw는 4자이상 이어야 합니다');
                $('#boardPw').focus();
            } else if($('#boardTitle').val()=='') {
                alert('boardTitle을 입력하세요');
                $('#boardTitle').focus();
            } else if($('#boardContent').val()=='') {
                alert('boardContent을 입력하세요');
                $('#boardContent').focus();
            } else if($('#boardUser').val()=='') {
                alert('boardUser을 입력하세요');
                $('#boardUser').focus();
            }else if($('#boardfile').val()=='') {
                alert('bordfile을 입력하세요');
                $('#boardfile').focus();
            } else {
                $('#modifyForm').submit();
            }
        });
    });
</script>
<title>BOARD MODIFY FORM(spring mvc 방식)</title>
</head>
<body>
<div class="container">
<a href="/logout">로그아웃</a>
    <h1>BOARD MODIFY FORM(spring mvc 방식)</h1> 
    <form id="modifyForm" 
    action="${pageContext.request.contextPath}/modifyBoard"
			method="post"
			enctype="multipart/form-data">
        <div class="form-group">boardNo :
            <input class="form-control" name="boardNo"
             value="${boardModify.boardNo}" type="text" readonly="readonly"/>
        </div>
        <div class="form-group">
            <label for="boardPw">비밀번호 확인 :</label>
            <input class="form-control" name="boardPw" id="boardPw" type="password"/>
        </div>    
        <div class="form-group">
            <label for="boardPw">boardTitle :</label>
            <input class="form-control" value="${boardModify.boardTitle}" name="boardTitle" id="boardTitle" type="text"/>
        </div>
        <div class="form-group">boardContent :
            <textarea class="form-control" id="boardContent" name="boardContent" rows="5" cols="50">${boardModify.boardContent}</textarea>
        </div>
        
        
        <div class="form-group">
				<label for="boardFile">boardFile :</label> <input
					class="form-control" name="boardFile" id="boardFile" type="file" />
			</div>
        <div>
        
            <input class="btn btn-default" id="modifyButton" type="button" value="글수정"/>
            <input class="btn btn-default" type="reset" value="초기화"/>
            <a class="btn btn-default" href="${pageContext.request.contextPath}/getBoardList">글목록</a>
        </div>
        
    </form>
</div>
</body>
</html>