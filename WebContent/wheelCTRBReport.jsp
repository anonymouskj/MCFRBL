<%@ page import="com.opensymphony.xwork2.ActionContext" %> 
<%@ page import="common.DateUtil" %> 
  <%@ page import="java.util.Date" %> 
  <%@ taglib uri="/birt.tld" prefix="birt"%> 

 <%
 String contextpath=request.getContextPath();
Integer wheelAssetId= Integer.parseInt(request.getParameter("wheelAssetId"));
%>
<!-- Include jTable script file. -->
<script src="<%=contextpath %>/js/jquery-2.1.4.min.js" type="text/javascript"></script> 
<script src="<%=contextpath %>/js/jquery-ui-1.11.4.custom/jquery-ui.js" type="text/javascript"></script> 


<script>
$(document).ready(function() {
	//alert("resetting height");
	var width=$(window).width();
 	var height= $(window).height();
 	
    $('iframe').css('height', height * 1.0);
    $('iframe').css('width', width * 0.98);
    //alert("height:"+height+"  width:"+width);
    
});


</script>

<birt:viewer id="birtViewer" 
				reportDesign="reports/wheelSelfInspectionReport.rptdesign"
				pattern="frameset" 
				scrolling="yes" 
				
				showParameterPage="false">

<birt:param name="Wheelset_asset_id" value='<%=wheelAssetId%>'></birt:param>

</birt:viewer>


