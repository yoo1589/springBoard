<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BOARD VIEW(spring mvc ���)</title>
<!-- bootstrap�� ����ϱ� ���� CDN�ּ� -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
<a href="/logout">�α׾ƿ�</a>
    <h1>BOARD VIEW(spring mvc ���)</h1>
     <table class="table">
         <tbody>
             <tr>
                <td>board_no :</td>
                <td>${board.boardNo}</td>
               </tr>
            <tr>
                   <td>board_title :</td>
                   <td>${board.boardTitle}</td>
            </tr>
            <tr>
                   <td>board_content :</td>
                   <td>${board.boardContent}</td>
            </tr>
            <tr>
                   <td>board_user :</td>
                   <td>${board.boardUser}</td>
            </tr>
            <tr>
                   <td>board_date :</td>
                   <td>${board.boardDate}</td>
            </tr>
            
            <c:if test="${board.boardfile != null}">

            	<tr>
            		<td>boardfile:</td>
            		<td><a href="/upload/${board.boardfile.filename}.${board.boardfile.extension}">
            		${board.boardfile.originName}
            		</a></td>
            		
            	</tr>
            	
            	</form>
            </c:if>
        </tbody>
      
    </table>
    <a class="btn btn-default" href="${pageContext.request.contextPath}/modifyBoard?boardNo=${board.boardNo}">����</a>
    <a class="btn btn-default" href="${pageContext.request.contextPath}/removeBoard?boardNo=${board.boardNo}">����</a>
    <a class="btn btn-default" href="${pageContext.request.contextPath}/getBoardList">�۸��</a>
    <br>
    <!-- ��� ���μ��� �κ� -->
	<div>
		<input type="hidden" id="boardNo" value="${board.boardNo}">
		<textarea id="commentContent" rows="2" cols="50"></textarea>
		<br>
		�ۼ��� : <input type="text" id="commentUser">
		<br>
		��й�ȣ : <input type="password" id="commentPw">
		<button type="button" id="addComment">����Է�</button>
	</div>
	<p>
	<table class="table">
		<tbody id="commentBody">
		
		</tbody>
	</table>
</div>
<script>
	$.ajax({
		url:"/rest/getCommentList", 
		method:"post",
		data:{"boardNo":$("#boardNo").val()},
		success:function(json){
			$(json).each(function(index, item){
				console.log(item);
				let html="";
					html += "<tr><td>";
					html += item.commentContent;
					html += "</td><td>";
					html += item.commentUser;
					html += "</td><td>";
					html += "<input type='password'>";
					html += "<button type='button' id='delComment' value='"+item.commentNo+"'>����</button>";
					html += "</td></tr>";
				$("#commentBody").append(html);
			});
		}
	});

	$(document).on("click", "#delComment", function(){
		console.log(this.value); // alert($(this).val())
		console.log($(this).prev().val())
		$.ajax({
			url:"/rest/removeComment",
			method:"post",
			data:{"commentNo":$(this).val(), 
					"commentPw":$(this).prev().val()}, //this �տ� input �±��� value�� ��������
			success:function(){
				location.reload(); //�������ü�� ���ε�� �̾ȿ��Ÿ� ���ε�ǰ��ؾߵ�(��۸����ΰ�ħ)
			}
		});
	});
	
	$("#addComment").click(function() {
		// console.log("addComment click test");
		if ($("#commentContent").val() == "" || $("#commentPw").val() == "" || $("#commentUser").val() == "") {
			alert("����� �Է��ϼ���");
		} else {
			$.ajax({
				url : "/rest/addComment", // spring @RestController
				method : "POST",
				data : {"boardNo" : $("#boardNo").val(),
						"commentContent" : $("#commentContent").val(),
						"commentPw" : $("#commentPw").val(),
						"commentUser" : $("#commentUser").val()},
				success : function(json) {
					console.log(json);
				}

			});
		}
	});
</script>
</body>
</html>
