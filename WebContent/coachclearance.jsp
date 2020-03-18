<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="ACTION.coachtypeclearance"%>
   <%@ page import ="java.util.*"%>
   <%@ page import="java.sql.*" %>
   <%@page import="beans.TestingMobileClearance" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="font-size:25px;color:SlateBlue; margin-left:20px;"> Enter CoachType :</h1>
<%System.out.println("coachclearanace"); 
coachtypeclearance s=new coachtypeclearance();
s.getcoachDetails();
System.out.println("fetched coach list"); 
List<String>substagei=s.getCoachtypelist();
System.out.println("substagei coach list"); 
%>
<div class="Custom" style="margin-bottom:20px;margin-left:20px;">
<select id="dropdown" style="font-size:17px; background-color:F7F1EF;">
<option><b>Select:</b></option><% 
 
for(String i:substagei) {%>
<option value="<%=i%>"><%=i%></option>
<% 
}
%>
</select>
</div>
 <br><input type="submit"  value="Confirm" name="SUBMIT" class="submitBtn" id="submitBtn" onClick="return coachtypedetails()" style="margin-left:120px;margin-bottom:40px;">
 
 <script>

function goBack() {
  window.history.back();
}

function coachtypedetails(){
	var Coachtype= $('#dropdown').find(":selected").text();
	console.log("received broadcast: " + ", " +Coachtype);
	//var stage=$('input[id=stage]').val();
	//var stageDesc=stage.toUpperCase();

    var formdata={Coachtype:Coachtype};
	$.ajax({
		url:"coachtypeclearance",
		type:'POST',
		data:formdata,
	   success: function(data){ 
		    if(data.stagedesclist.length!=0 && data.furnishingnumberList.length!=0){
		    	
		    var $table  =  $('<table style="margin-left:20px;"border="2px solidblack"></table>');
		   var $tr =  $('<tr style="padding-left:5px;padding-right:5px;"> </tr>');
		   var $td0 =  $('<td><b>FURNISHING NO:</td>');
		   $tr.append($td0);
		   $table.append($tr);
		 for(var i in data.stagedesclist){
		 var $th=$('<th  style="padding-left:5px;padding-right:5px;"> </th>');
		// var $td =  $('<td> </td>');
		 $th.append(data.stagedesclist[i]);
		 $tr.append($th);
		  $table.append($tr);
		   }
		 
		 for(var i in data.furnishingnumberList){
			 var $tr =  $('<tr></tr>');
		 var $td =  $('<td> </td>');
			 $td.append(data.furnishingnumberList[i]);
			 $tr.append($td);
			  $table.append($tr);
			   }
		   
		 
		   $('div#divTable').empty().append($table);
		   
		   } 
		//  $('#divTable').html('<link href="css/furnishingStatus.css" rel="stylesheet"  type="text/css" />' );
	   } 
		   
	   });
}
	
</script>
<input type="submit" value="Back" id="SUBMIT" class="submitBtn" onclick="goBack()" style="margin-left:20px;margin-bottom:40px;">
<div id="nodata" style="font-size:23px;text-align:center;"></div>
<div id="divTable" class="divTable"></div></div>  

</body>
</html>