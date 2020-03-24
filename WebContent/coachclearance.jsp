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
<style>
.Custom{
 position: relative;
 font-family: Arial;
 box-sizing: border-box;
   padding-left:2px;}
   
   .Custom-select select {
  display: none; 
}

.select-selected {
  background-color: white;
}
.submitBtn:hover {
  background-color:#5555;
  color: white;
  
}

input[type=submit] {
  background-color: SlateBlue;
  color: white;
  cursor: pointer;
  align:center;
  font-size: 15px;
  border-radius: 10px;
  padding: 6px;
}
.submitBtn{
	margin-left:10px;
	outline:none;
}
</style>
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
	//console.log("received broadcast: " + ", " +Coachtype);
	//var stage=$('input[id=stage]').val();
	//var stageDesc=stage.toUpperCase();

    var formdata={Coachtype:Coachtype};
	$.ajax({
		url:"coachtypeclearance",
		type:'POST',
		data:formdata,
	   success: function(data){ 
		    //if(data.stagedesclist.length!=0 && data.furnishingnumberList.length!=0){
		    	
	   /*  var $table  =  $('<table style="margin-left:20px;"border="2px solidblack"></table>');
		   var $tr =  $('<tr style="padding-left:5px;padding-right:5px;"> </tr>');
		   var $th0 =  $('<th>FURNISHING NO:</th>');
		   $tr.append($th0);
		   //$table.append($tr);
		 for(var i in data.substagestagedesclist){
		 var $th=$('<th  style="padding-left:5px;padding-right:5px;"> </th>');
		// var $td =  $('<td> </td>');
		 $th.append(data.substagestagedesclist[i]);
		 $tr.append($th);
		 // $table.append($tr);
		   }
		 $table.append($tr);
		 
		 
		
	 for(var p in data.furnishingnumberList){
			 var $tr =  $('<tr></tr>');
		 var $td =  $('<td></td>');
			 $td.append(data.furnishingnumberList[p]);
			 $tr.append($td);
			//  $table.append($tr);
			   //} 
		    
		   ///tried something not working
		    
		for(var i in data.substagestagedesclist) {
			//for(var j in data.furnishingnumberList){
				// var $tr =  $('<tr></tr>');
			
				for(var k in data.stageList){
					 var $td =  $('<td></td>');
					if(data.stageList[k]==data.substagestagedesclist[i]){
						 if(data.testingstatusList[k]=="not_ok"){
							$td.append("N");
					}
						 else 
							 $td.append("Y");
			}
				else {
					$td.append("N");
				}
					          
					    
					$tr.append($td);
			}
				//$tr.append($td);
				
		//}
			//$table.append($tr);
	}
		$table.append($tr);
} */
	//it 
	if(data.substagestagedesclist.length!=0 && data.furnishingnumberList.length!=0){
		  var $table  =  $('<table style="margin-left:20px;"border="2px solidblack"></table>');
		    var $tr =  $('<tr style="padding-left:5px;padding-right:5px;"> </tr>');
		    var $th0 =  $('<th>FURNISHING NO:</th>');
			 $tr.append($th0);
			   //$table.append($tr);
			 for(var i in data.substagestagedesclist){
			 var $th=$('<th  style="padding-left:5px;padding-right:5px;"> </th>');
			 $th.append(data.substagestagedesclist[i]);
			 $tr.append($th);
			 }
			 $table.append($tr);
			 
			 
	   for(var i in data.furnishingnumberList){
				  var $tr =  $('<tr></tr>');
			      var $th0 =  $('<th></th>');
			     // console.log("furnishing number " + ", " +data.furnishingnumberList[i]);
				   $th0.append(data.furnishingnumberList[i]);
				   $tr.append($th0);
			    for(var j in data.substagestagedesclist){
			    	//console.log("substage description" + ", " +data.substagestagedesclist[j]);
			    	var $td =  $('<td></td>');
			    	   var flag=false;
			    	for(var k in data.stageList){
			    		 //console.log("tmc se jo data aya hai " + ", " +data.stageList[k]);
			    		 if(data.stageList[k]==data.substagestagedesclist[j] && data.furnishingnumberList[i]==data.originalfurnishingnumberlist[j]){
			    			 if(data.testingstatusList[k]=="ok")  
			    				 flag=true;
			    		 }
			    		       
			    	 }
			    	if(flag==true)
			    	    $td.append("Y");
			    	else 
			    		$td.append("N");
			    	
			    	
			   	$tr.append($td);
			    	
			    }	
			    $table.append($tr);
			   } 
			 
			 
		 
		   $('#divTable').empty().append($table);
		   
	}	   
	else{ 
	         var $markup=$('<p style="font-size:160%; margin-left:70px; text-align:center ">--x--x--No Data Available--x--x--</p>');
		   $('#divTable').empty().html($markup); 
	     
	}




		   } 
		  
	   
		   
	   });
}
	
</script>
<input type="submit" value="Back" id="SUBMIT" class="submitBtn" onclick="goBack()" style="margin-left:20px;margin-bottom:40px;">
<div id="nodata" style="font-size:23px;text-align:center;"></div>
<div id="divTable" class="divTable"></div></div>  

</body>
</html>