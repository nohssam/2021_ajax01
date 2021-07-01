<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{width:600px;}
	table, th, td{border: 1px solid red; text-align: center;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
   $(function() {
	   $("#btn").click(function() {
			$("#out").empty();
			$.ajax({
				url : "data_05.js",
				method : "post",
				dataType : "json",
				success : function(data) {
					var table = "<table>";
					table += "<thead>";
					table += "<tr><td>종류</td><td>가격</td></tr>";
					table += "</thead>";
					table += "<tbody>";
					/* 
					$.each(data, function(k, v) {
						table += "<tr>";
						table += "<td>"+ v["name"]  +"</td>" ;
						table += "<td>"+ v["price"]  +"</td>" ;
						table += "</tr>";
					});
					 */
					$.each(data, function() {
						table += "<tr>";
						table += "<td>"+ this["name"]  +"</td>" ;
						table += "<td>"+ this["price"]  +"</td>" ;
						table += "</tr>";
					});
					table += "</tbody></table>";
					$("#out").append(table);
				},
				error : function() {
					alert("읽기실패");
				}
			});
		});
   });
</script>
<script type="text/javascript"></script>
</head>
<body>
	<button id="btn">JSON 정보 가져오기</button>
	<hr>
	<div id="out"></div>
	<h3>Hello World</h3>
</body>
</html>