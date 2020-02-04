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
	div>.team{
	float:left;
		}
</style>
<body>
<div class="team">
<ul>
<li>롯데<input id="lotte" type="checkbox" value="1"></li>
<li>삼성<input id="samsung" type="checkbox" value="2"></li>
<li>KIA<input id="KIA" type="checkbox" value="3"></li>
<li>SK<input id="SK" type="checkbox" value="4"></li>
<li>한화<input id="han" type="checkbox" value="5"></li>
</ul>
</div>
<div class="frame">

<div class="memberList">
<table border="1" >
<thead>
</thead>
<tbody class="player">
 </tbody>
</table>
</div>

</div>

</body>

<script>
var type=0

/* 롯데 */
$("#lotte").click(function(){
	var check=$("#lotte").prop("checked");
	if(check==true){
type=1
	$.ajax({
		method:"GET",
		url:"testplayer?type="+type,
		dataType:'json',
		success:function(data){
			console.log(data);
			$(".memberList").remove();
			$newMemberList1=(
					"<div class='newMemberList1'>"+
					    "<table border='1' >"+
					        "<thead>"+
					            " <tr>"+
					                "<td>이름</td>"+
					                "<td>선수번호</td>"+
					                "<td>소속팀</td>"+
					                "<td>나이</td>"+
					            "</tr>"+
					        "</thead>"+
					        "<tbody class='player1'>"+
					        "</tbody>"+
					    "</table>"+
					"</div>"
					);

			$(".frame").append($newMemberList1);
			
			 for(let list of data){
				 for(i=0; i<list.players.length;i++){
					 console.log(list.players[1].id);
					 let $newRow=$(
							"<tr>"+
							 "<td><a href='player/detail/"+list.players[i].id+"'>"+list.players[i].pname+"</a></td>"+
							   "<td>"+list.players[i].pno+"</td>"+
								"<td>"+list.tname+"</td>"+
								"<td>"+list.players[i].page+"</td>"+
								"</tr>"
								
							);
					 $(".player1").append($newRow);
						}
				
				
			}
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
				$(".newMemberList1").remove();
				
				},
			error:function(data){
					alert("error")
				}
			});
		}
	
});

/* 삼성 */
$("#samsung").click(function(){ 
var check=$("#samsung").prop("checked");
if(check==true){
type=2
	$.ajax({
		method:"GET",
		url:"testplayer?type="+type,
		dataType:'json',
		success:function(data){
			$(".memberList").remove();
			$newMemberList2=(
					"<div class='newMemberList2'>"+
					    "<table border='1' >"+
					        "<thead>"+
					            " <tr>"+
					                "<td>이름</td>"+
					                "<td>선수번호</td>"+
					                "<td>소속팀</td>"+
					                "<td>나이</td>"+
					            "</tr>"+
					        "</thead>"+
					        "<tbody class='player2'>"+
					        "</tbody>"+
					    "</table>"+
					"</div>"
					);

			$(".frame").append($newMemberList2);
			
			 for(let list of data){
				 for(i=0; i<list.players.length;i++){
					 console.log(list.players[1].id);
					 let $newRow=$(
							"<tr>"+
							 "<td><a href='player/detail/"+list.players[i].id+"'>"+list.players[i].pname+"</a></td>"+
							   "<td>"+list.players[i].pno+"</td>"+
								"<td>"+list.tname+"</td>"+
								"<td>"+list.players[i].page+"</td>"+
								"</tr>"
								
							);
					 $(".player2").append($newRow);
						}
				
				
			}
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
				$(".newMemberList2").remove();
				},
			error:function(data){
					alert("error")
				}
			});
		}
	
});

/* 기아 */
$("#KIA").click(function(){  
var check=$("#KIA").prop("checked");
	if(check==true){
type=3
	$.ajax({
		method:"GET",
		url:"testplayer?type="+type,
		dataType:'json',
		success:function(data){
			$(".memberList").remove();
			$newMemberList3=(
					"<div class='newMemberList3'>"+
					    "<table border='1' >"+
					        "<thead>"+
					            " <tr>"+
					                "<td>이름</td>"+
					                "<td>선수번호</td>"+
					                "<td>소속팀</td>"+
					                "<td>나이</td>"+
					            "</tr>"+
					        "</thead>"+
					        "<tbody class='player3'>"+
					        "</tbody>"+
					    "</table>"+
					"</div>"
					);

			$(".frame").append($newMemberList3);
			
			for(let list of data){
				 for(i=0; i<list.players.length;i++){
					 console.log(list.players[1].id);
					 let $newRow=$(
							"<tr>"+
							 "<td><a href='player/detail/"+list.players[i].id+"'>"+list.players[i].pname+"</a></td>"+
							   "<td>"+list.players[i].pno+"</td>"+
								"<td>"+list.tname+"</td>"+
								"<td>"+list.players[i].page+"</td>"+
								"</tr>"
								
							);
					 $(".player3").append($newRow);
						}
			      }
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
				$(".newMemberList3").remove();
				},
			error:function(data){
					alert("error")
				}
			});
		}
});

/* SK */
$("#SK").click(function(){
	var check=$("#SK").prop("checked");
	if(check==true){
type=4
	$.ajax({
		method:"GET",
		url:"testplayer?type="+type,
		dataType:'json',
		success:function(data){
			$(".memberList").remove();
			$newMemberList4=(
					"<div class='newMemberList4'>"+
					    "<table border='1' >"+
					        "<thead>"+
					            " <tr>"+
					                "<td>이름</td>"+
					                "<td>선수번호</td>"+
					                "<td>소속팀</td>"+
					                "<td>나이</td>"+
					            "</tr>"+
					        "</thead>"+
					        "<tbody class='player4'>"+
					        "</tbody>"+
					    "</table>"+
					"</div>"
					);

			$(".frame").append($newMemberList4);
			
			 for(let list of data){
				 for(i=0; i<list.players.length;i++){
					 console.log(list.players[1].id);
					 let $newRow=$(
							"<tr>"+
							 "<td><a href='player/detail/"+list.players[i].id+"'>"+list.players[i].pname+"</a></td>"+
							   "<td>"+list.players[i].pno+"</td>"+
								"<td>"+list.tname+"</td>"+
								"<td>"+list.players[i].page+"</td>"+
								"</tr>"
								
							);
					 $(".player4").append($newRow);
						}
               	}
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
				$(".newMemberList4").remove();
				},
			error:function(data){
					alert("error")
				}
			});
		}
});


$("#han").click(function(){
	var check=$("#han").prop("checked");
	if(check==true){
type=5
	$.ajax({
		method:"GET",
		url:"testplayer?type="+type,
		dataType:'json',
		success:function(data){
			$(".memberList").remove();
			$newMemberList5=(
					"<div class='newMemberList5'>"+
					    "<table border='1' >"+
					        "<thead>"+
					            " <tr>"+
					                "<td>이름</td>"+
					                "<td>선수번호</td>"+
					                "<td>소속팀</td>"+
					                "<td>나이</td>"+
					            "</tr>"+
					        "</thead>"+
					        "<tbody class='player5'>"+
					        "</tbody>"+
					    "</table>"+
					"</div>"
					);

			$(".frame").append($newMemberList5);
			
			for(let list of data){
				 for(i=0; i<list.players.length;i++){
					 console.log(list.players[1].id);
					 let $newRow=$(
							"<tr>"+
							 "<td><a href='player/detail/"+list.players[i].id+"'>"+list.players[i].pname+"</a></td>"+
							   "<td>"+list.players[i].pno+"</td>"+
								"<td>"+list.tname+"</td>"+
								"<td>"+list.players[i].page+"</td>"+
								"</tr>"
								
							);
					 $(".player5").append($newRow);
						}
 			      }
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
				$(".newMemberList5").remove();
				},
			error:function(data){
					alert("error")
				}
			});
		}
});




function createTable(data){
	$(".memberList").remove();
	$newMemberList2=(
			"<div class='newMemberList2'>"+
			    "<table border='1' >"+
			        "<thead>"+
			            " <tr>"+
			                "<td>이름</td>"+
			                "<td>선수번호</td>"+
			                "<td>소속팀</td>"+
			                "<td>나이</td>"+
			            "</tr>"+
			        "</thead>"+
			        "<tbody class='player2'>"+
			        "</tbody>"+
			    "</table>"+
			"</div>"
			);

	$(".newMemberList1").append($newMemberList2);
	
	 for(let list of data){
		let $newRow=$(
				"<tr>"+
				   "<td>"+list.players[0].pname+"</td>"+
				   "<td>"+list.players[0].pno+"</td>"+
					"<td>"+list.tname+"</td>"+
					"<td>"+list.players[0].page+"</td>"+
					"</tr>"
				);
		$(".player2").append($newRow);
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