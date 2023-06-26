<%@page import="bitedu.bipa.member.vo.TestVO"%>
<%@ page import="java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>
<title>수정화면</title>
<style>
        table, td, th {
            border : 1px solid black;
            border-collapse: collapse;
            margin: 20px auto;
        }
        table{
        	width: 70%;
        }
        td {
            width: 150px;
            height: 50px;
            padding: 5px;
            font-size: 20px;
            /* text-align: center; */
        }
        h1 {
        	margin: 30px auto;
        	text-align: center;
        }

        input , select {
            font-size: 20px;
        }
        .data_ui {
            /* width: 250px; */
            height: 50px;
        }

        button {
            font-size: 15px;
            margin: 5px;
        }
        
        
        #sending {
        	text-align: center;
        }
        
        input.poster :disabled {
        	background: gray;
        }
        
        #form {
        	font-size: 30px;
        }
        
        #message {
        	color: red;
        }
        #home {
        	border: none;
        	background-color: #ffbbbb;
        	padding: 10px 20px;
        	border-radius: 10px;
        	box-shadow: 2px 2px 5px #aaa;
        }
    </style>
</head>
<body>
	<h1>회원가입 완료</h1>
	<%
	// scriptlet : 여기에서 자바 사용가능
	// 서블릿에는 문자열로 일일이 태그 다 적어줘야하므로s 서블릿 안쓰게 되었음 -> JSP 만들어짐
	// 클래스를 통해 확장이 가능함
	// String id = request.getParameter("userId");
	// out.print("<h1>" + id + "</h1>"); // out: 브라우저
	TestVO test = (TestVO)request.getAttribute("test");
	String id = test.getId();
	String pwd = test.getPwd1();
	String name = test.getName();
	String zipCode = test.getZipCode();
	String addr1 = test.getAddr1();
	String addr2 = test.getAddr2();
	String year = test.getYear();
	String month = test.getMonth();
	String day = test.getDay();
	String gender = test.getGender();
	String[] interests = test.getInterests();
	String introduce = test.getIntroduce();
	%>
	<br/>
	<form action=""> <!--web.xml에 매핑된 URL, 서비스명(server.xml에 있음)/URL명-->
    <table>
        <tr><th colspan="5" id="form">회원 정보</th></tr>
        <tr><th style="width:30%;">구분</th><th class="data_ui" colspan="2">입력된 정보</th>
        <tr>
            <td>아이디</td>
            <td colspan="2"><%=id %></td>
        </tr>
        <tr><td>비밀번호</td><td colspan="2"><%=pwd %></td></tr>

        <tr><td>이름</td><td colspan="2"><%=name %></td></tr>
        <tr><td>우편번호</td><td colspan="2"><%=zipCode %></td></tr>
        <tr><td>주소1</td><td><%=addr1 %></td></tr>
        <tr><td>주소2</td><td><%=addr2 %></td><tr>
        <tr>
            <td>생년월일</td>
            <td colspan="2">
                <%=year %>
                -
                <%=month %>
                -
                <%=day %>
            </td>
        </tr>
        <tr>
            <td>성별</td>
            <td colspan="2">
                <input type="radio" name="gender" value="male" id="male"  onclick="return(false);">남
                <input type="radio" name="gender" value="female" id="female"  onclick="return(false);">여
        </tr>
        <tr>
            <td>관심분야</td>
            <td colspan="2">
                <input type="checkbox" name="interests" value="literature" id="literature" onclick="return(false);">문학
                <input type="checkbox" name="interests" value="language" id="language" onclick="return(false);">어학
                <input type="checkbox" name="interests" value="it" id="it" onclick="return(false);">정보IT<br>
                <input type="checkbox" name="interests" value="science" id="science" onclick="return(false);">과학
                <input type="checkbox" name="interests" value="math" id="math" onclick="return(false);">수학
                <input type="checkbox" name="interests" value="art" id="art" onclick="return(false);">예술
        </tr>
        <tr><td>자기소개</td><td colspan="2"><%=introduce %></textarea></td></tr>
        
    </table>
    <div style="text-align: center"><button id="home">홈으로</button></div>
   	<script type="text/javascript">
   		if (<%=gender%>.value == "male"){
   			$("#male").prop("checked", true);
   		} else {
   			$("#female").prop("checked", true);
   		};
   		console.log(<%=gender%>.value);
   		
   		let arr = [<% for (int i = 0; i < interests.length; i++) { %>
                     '<%= interests[i] %>'
                      <% if (i < interests.length - 1) { %>
                      ,<% } %>
                  <% } %>];
   		console.log(arr);
   		
   		for(let i of arr){
   			console.log(i);
   			$('#'+i).prop("checked", true)
   		}
   		
   		$("#home").click(function(e){
   			e.preventDefault();
   			location.href = "./member/user_regist_ex.html";
   		})
   	</script>
</form>
</body>
</html>