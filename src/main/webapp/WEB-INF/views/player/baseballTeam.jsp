<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
	div{
	float:left;
		}
</style>
<body>

<ul>
<li>롯데<input id="lotte" type="checkbox" value="1"></li>
<li>삼성<input id="samsung" type="checkbox" value="2"></li>
<li>KIA<input id="KIA" type="checkbox" value="3"></li>
<li>SK<input id="SK" type="checkbox" value="4"></li>
<li>한화<input id="han" type="checkbox" value="5"></li>
</ul>
<table border="1" class="originTable">
<thead>
 <tr>
  <td>이름</td>
  <td>선수번호</td>
  <td>소속팀</td>
  <td>나이</td>
 </tr>
</thead>

<tbody class="lotteMember">
 </tbody>
</table>



</body>

<script>
var type=0
var count=0

$("#lotte").click(function(){
	count++;
	if(count%2==1){
type=1
	$.ajax({
		method:"GET",
		url:"testplayer?type="+type,
		dataType:'json',
		success:function(data){
			console.log(data);
			createTable(data);
			},
		error:function(data){
				alert("error")
			}
		});
	}
	else{
		type=1
		$.ajax({
			method:"GET",
			url:"testplayer?type="+type,
			dataType:'json',
			success:function(data){
				$(".lotteMember").remove();
				$(".newTbody").remove();
				},
			error:function(data){
					alert("error")
				}
			});
		}
	
});

$("#samsung").click(function(){
	count++;
	if(count%2==1){
type=2
	$.ajax({
		method:"GET",
		url:"testplayer?type="+type,
		dataType:'json',
		success:function(data){
			console.log(data);
			createTable(data);
			},
		error:function(data){
				alert("error")
			}
		});
	}
	else{
		type=2
		$.ajax({
			method:"GET",
			url:"testplayer?type="+type,
			dataType:'json',
			success:function(data){
				$(".lotteMember").remove();
				$(".newTbody").remove();
				},
			error:function(data){
					alert("error")
				}
			});
		}
	
});

$("#KIA").click(function(){
	count++;
	if(count%2==1){
type=3
	$.ajax({
		method:"GET",
		url:"testplayer?type="+type,
		dataType:'json',
		success:function(data){
			console.log(data);
			createTable(data);
			},
		error:function(data){
				alert("error")
			}
		});
	}
	else{
		type=3
		$.ajax({
			method:"GET",
			url:"testplayer?type="+type,
			dataType:'json',
			success:function(data){
				$(".lotteMember").remove();
				$(".newTbody").remove();
				},
			error:function(data){
					alert("error")
				}
			});
		}
	
});

$("#SK").click(function(){
	count++;
	if(count%2==1){
type=4
	$.ajax({
		method:"GET",
		url:"testplayer?type="+type,
		dataType:'json',
		success:function(data){
			console.log(data);
			createTable(data);
			},
		error:function(data){
				alert("error")
			}
		});
	}
	else{
		type=4
		$.ajax({
			method:"GET",
			url:"testplayer?type="+type,
			dataType:'json',
			success:function(data){
				$(".lotteMember").remove();
				$(".newTbody").remove();
				},
			error:function(data){
					alert("error")
				}
			});
		}
	
});

$("#han").click(function(){
	count++;
	if(count%2==1){
type=5
	$.ajax({
		method:"GET",
		url:"testplayer?type="+type,
		dataType:'json',
		success:function(data){
			console.log(data);
			createTable(data);
			},
		error:function(data){
				alert("error")
			}
		});
	}
	else{
		type=5
		$.ajax({
			method:"GET",
			url:"testplayer?type="+type,
			dataType:'json',
			success:function(data){
				$(".lotteMember").remove();
				$(".newTbody").remove();
				},
			error:function(data){
					alert("error")
				}
			});
		}
	
});

function createTable(data){
	$(".lotteMember").remove();
	$(".newTbody").remove();
	$newTbody=$("<tbody class='newTbody'></tbody>");
	$(".originTable").append($newTbody);

	 for(let list of data){
	//<a href="/player/detail/${list.players[0].pname}"></a>
		let $newRow=$(
				"<tr>"+
				   "<td>"+list.players[0].pname+"</td>"+
				   "<td>"+list.players[0].pno+"</td>"+
					"<td>"+list.tname+"</td>"+
					"<td>"+list.players[0].page+"</td>"+
					"</tr>"
				);
		$newTbody.append($newRow);
	}
	/* for(let list of data){
		var players=list.players[0];
			console.log("선수이름"+players.id);
			console.log("선수나이"+players.pname);
			console.log("선수번호"+players[0]);
		} */
	
}
</script>

</html>