<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.Calendar" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

<%@page import="org.hibernate.Criteria" %>
<%@page import="org.hibernate.Session" %>
<%@page import="org.hibernate.criterion.Restrictions" %>
<%@page import="hibernateConnect.HibernateConfig" %>
<%@page import="model.SubStagesMaster" %>
<html>
<head>
<title></title>
<% String contextpath=request.getContextPath();
String stageID= request.getParameter("stageId");
Session session1=HibernateConfig.getSession();
 Criteria cr1=session1.createCriteria(SubStagesMaster.class);
 cr1.add(Restrictions.eq("substageId", stageID));
 SubStagesMaster subStagesMaster =(SubStagesMaster)cr1.list().get(0);

String previousStage=subStagesMaster.getPreviousstageId();   //return either START or some value. Create option only applicable for where the value is START
String nextStages=subStagesMaster.getNextStageId();
 session1.close();
%>

<script src="<%=contextpath %>/js/jquery-2.1.4.min.js" type="text/javascript"></script>
<link href="<%=contextpath %>/css/metro/blue/jtable.css" rel="stylesheet" type="text/css" />
<link href="<%=contextpath %>/css/jquery-ui-1.10.3.custom.css" rel="stylesheet"type="text/css" />


<script src="<%=contextpath %>/js/jquery-ui-1.10.3.custom.js" type="text/javascript"></script>
<script src="<%=contextpath %>/js/jquery.jtable.js" type="text/javascript"></script>
<script src="<%=contextpath %>/js/moment.js" type="text/javascript"></script>

<link href="<%=contextpath %>/js/validationEngine/validationEngine.jquery.css" rel="stylesheet"type="text/css" />

<script src="<%=contextpath %>/js/validationEngine/jquery.validationEngine.js" type="text/javascript"></script>
<script src="<%=contextpath %>/js/validationEngine/jquery.validationEngine-en.js" type="text/javascript"></script>

<style>

.jtable-input-readonly {
	background-color: lightgray;
}

#overlay{
	/* margin:0px auto;							
	
  display:block; z-index:15;
  width:47px; height:48px;  */
        position: fixed; 
        width: 20%; /* Set your desired with */
        z-index: 2; /* Make sure its above other items. */
        top: 50%;
        left: 50%;
        margin-top: -10%; /* Changes with height. */
        margin-left: -10%; /* Your width divided by 2. */
        /* You will not need the below, its only
           for styling   purposes.*/
        padding: 10px;
        border: 2px solid #555555;
        background-color: #ccc; 
/*        background-color: #4C4CFF; */
}


.hide-calendar .ui-datepicker-calendar {
	display: none;
}
/* button.ui-datepicker-current { display: none; } */
.jtable-child-table-container {
	border: 2px solid blue;
	width: 650px;
}

</style>





<style>
.no-titlebar .ui-dialog-titlebar {
    display: none;
}

.ui-datepicker .ui-datepicker-title select {
    color: #000;
}

.jtable-input-readonly {
	background-color: lightgray;
}

div.jtable-column-header-container {
	height: auto !important;
}

.col1
{
float:left;
padding: 5px 10px 5px 5px;
width: 45%;
}
.col2
{
float:right;
padding: 5px 5px 5px 10px;
width: 45%;
}


#jtable-create-form {
	
	display: block;
	width: 650px;
	
}

#jtable-edit-form {
	display: block;
	width: 650px;
	
}
#error_msg {
  color: red;
  text-align: center;
  margin: 10px auto;
}

.form_success span {
  width: 80%;
  height: 35px;
  margin: 3px 10%;
  font-size: 1.1em;
  color: green;
}
.form_success input {
  border: 1px solid green;
}

.disable{
   cursor: not-allowed;
   pointer-events: none;
   background-color: #cccccc;
  color: #666666;
}
input{
	font-weight:bold;
}
#selectStages {
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}
#selectStages button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 10px;
}
#selectStages button:hover {
  background-color: #ddd;
}
#selectStages button.active {
  background-color: #ccc;
}
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}
</style>



<body>
<div id="FurnishingProductionTableContainer"></div>
<div id="selectStages" style="height:150%; width:200%; display:none; z-index:9;">
<table>
<tr>	
	<td><button class="tablinks" id="1" onclick="openCity(event, 'F&PVC')">F&PVC</button></td>
   	<td><button class="tablinks" id="2" onclick="openCity(event, 'ParitionFrame')">Parition frame</button></td>
   	<td><button class="tablinks" id="3" onclick="openCity(event, 'Panel')">Panel</button></td>
   	<td><button class="tablinks" id="4" onclick="openCity(event, 'WindowCelling')">Window & celling</button></td>
   	<td><button class="tablinks" id="5" onclick="openCity(event, 'Moulding')">Moulding</button></td>
   	<td><button class="tablinks" id="6" onclick="openCity(event, 'SeatBerth')">Seat & Berth</button></td>
   	<td><button class="tablinks" id="7" onclick="openCity(event, 'Lavatory')">Lavatory</button></td>
   	<td><button class="tablinks" id="8" onclick="openCity(event, 'Plumbing')">Plumbing</button></td>
   	<td><button class="tablinks" id="9" onclick="openCity(event, 'AirBrake')">Air Brake</button></td>
   	<td><button class="tablinks" id="10" onclick="openCity(event, 'CoachLowering')">Coach Lowering</button></td>
   	<td><button class="tablinks" id="11" onclick="openCity(event, 'Paint')">Paint</button></td>
   	<td><button class="tablinks" id="12" onclick="openCity(event, 'CoachCleaning')">Coach Cleaning</button></td>
 </tr>
 </table>  	

 <div id="F&PVC" class="tabcontent">
    <form name="F&PVC">
    	<table class="t2" border="1">
			<tr><td class="t3"><h1 Style="text-align:center"><b>Modern Coach Factory, Raebareli</b></h1><br><h2 Style="text-align:center;font-size:16px;">QUALITY CONTROL INSPECTION REPORT(QCI)</h2><br><h3 Style="text-align:center;font-size:16px;">L2T,L3T,L2T(T),HUMSAFAR (FURNISHING QUALITY)</h3></td><td>
			&nbsp;&nbsp;&nbsp;Doc No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="" name="" class="validate[required]"><br>&nbsp;&nbsp;&nbsp;Rev No: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="" name=""><br>&nbsp;&nbsp;&nbsp;Date: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="" name=""></td></tr>
		</table>
		<table border="1">
			<tr><td>Furnishing No.:<input type="text" id="" name=""></td><td colspan="2">Booked To:<input type="text" id="" name=""></td><td>Shell No.:<input type="text" id="" name=""></td></tr>
			<tr><td>Coach No.:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="" name=""></td><td colspan="2">Bogie No.:&nbsp;&nbsp;<input type="text" id="" name=""></td><td>Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="" name=""></td></tr>
			<tr><td>RLY:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="" name=""></td><td>PP:<input type="text" id="" name=""></td><td>NPP:<input type="text" id="" name=""></td><td>Shift:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="" name=""></td></tr>
		</table>
		<br><br>
		<table border="1">
			<tr><td colspan="7" style="text-align:center;font-size:16px;"><b>1-F&PVC</b></td></tr>
			<tr><td>1.</td><td>Foot plate jam</td><td colspan="2"><input type="text" id="footPlateJam" name="footPlateJam"></td><td>Movement hard</td><td colspan="2"><input type="text" id="movementHard" name="movementHard"></td></tr>
			<tr><td>2.</td><td>Foot plate spring hardware loose and not property fitted</td><td colspan="5"><input type="text" id="footPlateSpringHardware" name="footPlateSpringHardware"></td></tr>
			<tr><td>3.</td><td>Foot plate side rubber pad hardware loose</td><td colspan="2"><input type="text" id="footPlateSideRubberLoose" name="footPlateSideRubberLoose"></td><td>Missing</td><td colspan="2"><input type="text" id="footPlateSideRubberMissing" name="footPlateSideRubberMissing"></td></tr>
			<tr><td>4.</td><td>Tail lamp taper fitted</td><td><input type="text" id="tailLampFitted" name="tailLampFitted"></td><td>Hardware missing</td><td><input type="text" id="tailLampHardwareMissing" name="tailLampHardwareMissing"></td><td>Welding done on tail lamp instead of nut bolting</td><td><input type="text" id="tailLampWelding" name="tailLampWelding"></td></tr>
			<tr><td>5.</td><td>Foot step found loose</td><td colspan="2"><input type="text" id="footStepLoose" name="footStepLoose"></td><td>Hardware missing</td><td colspan="2"><input type="text" id="footStepHardware" name="footStepHardware"></td></tr>
			<tr><td>6.</td><td>Fitment of entrance hand rail</td><td colspan="5"><input type="text" id="fitmentEntranceHandRail" name="fitmentEntranceHandRail"></td></tr>
			<tr><td>7.</td><td>Foot step rusted</td><td colspan="2"><input type="text" id="footStepRusted" name="footStepRusted"></td><td>Taper fitted</td><td colspan="2"><input type="text" id="footStepTaperFitted" name="footStepTaperFitted"></td></tr>
			<tr><td>8.</td><td>Step rail mounting screw not property sited</td><td colspan="2"><input type="text" id="stepRailScrewSited" name="stepRailScrewSited"></td><td>Missing</td><td colspan="2"><input type="text" id="stepRailScrewMissing" name="stepRailScrewMissing"></td></tr>
			<tr><td>9.</td><td>Chequer sheet corner not sealed</td><td colspan="2"><input type="text" id="chequerSheetNotSealed" name="chequerSheetNotSealed"></td><td>Roughly sealed</td><td colspan="2"><input type="text" id="chequerSheetRouglySealed" name="chequerSheetRouglySealed"></td></tr>
			<tr><td>10.</td><td>Roughly cutting of chequer sheet at corner</td><td colspan="5"><input type="text" id="roughlyCuttingChequerSheet" name="roughlyCuttingChequerSheet"></td></tr>
			<tr><td>11.</td><td>Chequer sheet is not sited properly at corner</td><td colspan="5"><input type="text" id="chequerSheetNotSitedCorner" name="chequerSheetNotSitedCorner"></td></tr>
			<tr><td>12.</td><td>Chequer sheet screw not properly sited in corner</td><td><input type="text" id="chequerSheetScrewSited" name="chequerSheetScrewSited"></td><td>Missing</td><td><input type="text" id="chequerSheetScrewMissing" name="chequerSheetScrewMissing"></td><td>Loose</td><td><input type="text" id="chequerSheetScrewLoose" name="chequerSheetScrewLoose"></td></tr>
			<tr><td>13.</td><td>Door stopper is not fitted at 90 degree</td><td colspan="5"><input type="text" id="doorStopperNotFitted" name="doorStopperNotFitted"></td></tr>
			<tr><td>14.</td><td>End wall safety handle not fitted</td><td><input type="text" id="endwallSafetyHandleFitted" name="endwallSafetyHandleFitted"></td><td>Loose</td><td><input type="text" id="endwallSafetyHandleLoose" name="endwallSafetyHandleLoose"></td><td>Hardware missing</td><td><input type="text" id="endwallSafetyHandleMissing" name="endwallSafetyHandleMissing"></td></tr>
			<tr><td>15.</td><td>PVC is not properly cutting and pasting near end wall door</td><td colspan="2"><input type="text" id="pvcCuttingPastingEndwalldoor" name="pvcCuttingPastingEndwalldoor"></td><td>Lavatory door frame</td><td colspan="2"><input type="text" id="pvcCuttingPastingLavatorydoor" name="pvcCuttingPastingLavatorydoor"></td></tr>
			<tr><td>16.</td><td>PVC joint welding roughly done cabin side</td><td colspan="2"><input type="text" id="pvcJointWeldingCabinSide" name="pvcJointWeldingCabinSide"></td><td>Non cabin side</td><td colspan="2"><input type="text" id="pvcJointWeldingNonCabinSide" name="pvcJointWeldingNonCabinSide"></td></tr>
			<tr><td>17.</td><td>Air bubble found on PVC</td><td colspan="5"><input type="text" id="airBubblePvc" name="airBubblePvc"></td></tr>
			<tr><td>18.</td><td>Floor not in level at corridor area</td><td colspan="5"><input type="text" id="floorLevelCorridorArea" name="floorLevelCorridorArea"></td></tr>
			<tr><td>19.</td><td>UIC vestibule note sited properly</td><td><input type="text" id="uicVestibuleSited" name="uicVestibuleSited"></td><td>Taper</td><td><input type="text" id="uicVestibuleTaper" name="uicVestibuleTaper"></td><td>Cracked</td><td><input type="text" id="uicVestibuleCracked" name="uicVestibuleCracked"></td></tr>
			<tr><td>20.</td><td>Foam/FAM sealing not done</td><td colspan="2"><input type="text" id="foamFamSealingNotDone" name="foamFamSealingNotDone"></td><td>Roughly done</td><td colspan="2"><input type="text" id="foamFamSealingRoughlyDone" name="foamFamSealingRoughlyDone"></td></tr>
			<tr><td>21.</td><td>Fitment of entrance door handle</td><td colspan="5"><input type="text" id="fitmentDoorHandle" name="fitmentDoorHandle"></td></tr>
		</table>
		<h3>Testing Observations</h3>
			<textarea id="testingObservationRemark" name="testingObservationRemark" style="width:100%;height:100px;"></textarea>
		
    </form>
  </div> 

	<div id="ParitionFrame" class="tabcontent">
	   <form name="ParitionFrame">	
		<table border="1">
			<tr><td colspan="7" style="text-align:center;font-size:16px;"><b>2-Partition frame</b></td></tr>
			<tr><td>1.</td><td>Dent mark on partition BN</td><td colspan="2"><input type="text" id="dentMarkPartitionBn" name="dentMarkPartitionBn"></td><td>Excess cut</td><td colspan="2"><input type="text" id="dentMarkPartitionExceesCut" name="dentMarkPartitionExceesCut"></td></tr>
			<tr><td>2.</td><td>Excess gap between U moulding and partition pillar BN</td><td colspan="5"><input type="text" id="excessGapUmouldingPartitionpillar" name="excessGapUmouldingPartitionpillar"></td></tr>
			<tr><td>3.</td><td>Middle berth stopper missing</td><td><input type="text" id="middleBearthStopperMissing" name="middleBearthStopperMissing"></td><td>Loose</td><td><input type="text" id="middleBearthStopperLoose" name="middleBearthStopperLoose"></td><td>Rubber pad missing</td><td><input type="text" id="middleBearthStopperRubberPad" name="middleBearthStopperRubberPad"></td></tr>
			<tr><td>4.</td><td>Partition pillar mounting hardware loose</td><td><input type="text" id="partitionPillarHardwareLoose" name="partitionPillarHardwareLoose"></td><td>Missing</td><td><input type="text" id="partitionPillarHardwareMissing" name="partitionPillarHardwareMissing"></td><td>Taper</td><td><input type="text" id="partitionPillarHardwareTaper" name="partitionPillarHardwareTaper"></td></tr>
			<tr><td>5.</td><td>Unwanted holes on partition</td><td colspan="2"><input type="text" id="unwantedHolesPartitionBn" name="unwantedHolesPartitionBn"></td><td>Plastic film not removed from partition</td><td colspan="2"><input type="text" id="plasticFilmRemovedPartition" name="plasticFilmRemovedPartition"></td></tr>
			<tr><td>6.</td><td>Roughly putty applied on partition</td><td colspan="5"><input type="text" id="roughlyPuttyPartition" name="roughlyPuttyPartition"></td></tr>
			<tr><td>7.</td><td>Partition pillar U moulding Zigzag</td><td colspan="2"><input type="text" id="partitionPillarZigzag" name="partitionPillarZigzag"></td><td>Not properly sited</td><td colspan="2"><input type="text" id="partitionPillarProperlySited" name="partitionPillarProperlySited"></td></tr>
			<tr><td>8.</td><td>Burr found on partition pillar</td><td colspan="2"><input type="text" id="burrFoundPartitionPillar" name="burrFoundPartitionPillar"></td><td>Berth holding bkt</td><td colspan="2"><input type="text" id="burrFoundBerthHoldingBkt" name="burrFoundBerthHoldingBkt"></td></tr>
		</table>
		<h3>Testing Observations</h3>
			<textarea id="testingObservationRemark" name="testingObservationRemark" style="width:100%;height:100px;"></textarea>
		</form>
  </div>
  
  <div id="Panel" class="tabcontent">
    <form name="Panel">
		<table border="1">
			<tr><td colspan="7" style="text-align:center;font-size:16px;"><b>3-Panel</b></td></tr>
			<tr><td>1.</td><td>AC air grill screw not tighten properly PP/NPP</td><td colspan="2"><input type="text" id="" name=""></td><td>Missing</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>2.</td><td>Gap found between partition and panel</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>3.</td><td>Unnecessary cut mark found on panel at corner</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>4.</td><td>Panel found crack near</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>5.</td><td>Dent mark found on panel near</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>6.</td><td>Magazine bag screw loose</td><td colspan="2"><input type="text" id="" name=""></td><td>Not fitted</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>7.</td><td>Magazine Taper fitted</td><td><input type="text" id="" name=""></td><td>Bulged</td><td><input type="text" id="" name=""></td><td>Damage</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>8.</td><td>Unwanted hole found on panel/partition</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>9.</td><td>Panel not properly locked</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>10.</td><td>Excess gap between panel and partition</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>11.</td><td>Window rubber excess in length</td><td><input type="text" id="" name=""></td><td>Short in length</td><td><input type="text" id="" name=""></td><td>Uprooted</td><td><input type="text" id="" name=""></td></tr>
		</table>
		<h3>Testing Observations</h3>
			<textarea id="" name="" style="width:100%;height:100px;"></textarea>
		</form>
  </div> 
  
  <div id="WindowCelling" class="tabcontent">
    <form name="WindowCelling">
		<table border="1">
			<tr><td colspan="7" style="text-align:center;font-size:16px;"><b>4-Window & celling</b></td></tr>
			<tr><td>1.</td><td>Screw missing from L type ceiling</td><td colspan="2"><input type="text" id="" name=""></td><td>Chip up</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>2.</td><td>Doorway ceiling and gangway ceiling not in align</td><td colspan="2"><input type="text" id="" name=""></td><td>Dent mark</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>3.</td><td>Chip up found on doorway and gang way ceiling</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>4.</td><td>Excess gap found between doorway ceiling & linen room 3 ceiling</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>5.</td><td>Taper gap found between corridor ceiling & partition</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>6.</td><td>Nylon rope not provided in doorway ceiling</td><td colspan="2"><input type="text" id="" name=""></td><td>Ceiling unlock</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>7.</td><td>Door way & gangway ceiling knotted using non standard rope instead of nylon rope</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>8.</td><td>Gap found between s/wall ceiling & partition</td><td colspan="2"><input type="text" id="" name=""></td><td>Dent mark</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>9.</td><td>EP sheet roughly applied between s/wall ceiling & partition</td><td colspan="5"><input type="text" id="" name=""></td></tr>		
			<tr><td>10.</td><td>Excess cut on ceiling</td><td><input type="text" id="" name=""></td><td>Dent mark near B.no.</td><td><input type="text" id="" name=""></td><td>Screw missing</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>11.</td><td>Screw missing from side ceiling</td><td><input type="text" id="" name=""></td><td>Loose</td><td><input type="text" id="" name=""></td><td>Unwanted hole</td><td><input type="text" id="" name=""></td></tr>		
			<tr><td>12.</td><td>Side ceiling not in level with each other</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>13.</td><td>Center diffuser level mismatch</td><td colspan="2"><input type="text" id="" name=""></td><td>Bulge</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>14.</td><td>Center diffuser not locked properly</td><td colspan="2"><input type="text" id="" name=""></td><td>Industrial lock missing</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>15.</td><td>Emergency pull handle rubber not sited properly</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>16.</td><td>Window glass found cracked</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>17.</td><td>Gap between small center diffuser and side ceiling</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>18.</td><td>Gap found between sidewall ceiling and center diffuser</td><td colspan="5"><input type="text" id="" name=""></td></tr>
		</table>
		<h3>Testing Observations</h3>
			<textarea id="" name="" style="width:100%;height:100px;"></textarea>
		</form>
  </div>
  
  
  <div id="Moulding" class="tabcontent">
    <form name="Moulding">
		<table border="1">
			<tr><td colspan="9" style="text-align:center;font-size:16px;"><b>5-Moulding</b></td></tr>
			<tr><td>1.</td><td colspan="2">End wall door cover is loose fitted</td><td><input type="text" id="" name=""></td><td colspan="2">Hardware Missing</td><td><input type="text" id="" name=""></td><td>Not properly tighten</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>2.</td><td colspan="2">End wall door is not sliding smoothly</td><td><input type="text" id="" name=""></td><td colspan="2">Rail screw missing</td><td><input type="text" id="" name=""></td><td>Loose</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>3.</td><td colspan="3">End wall door lock not in align</td><td><input type="text" id="" name=""></td><td colspan="3">Bracket hardware loose</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>4.</td><td colspan="2">Manual handle movement hard</td><td><input type="text" id="" name=""></td><td colspan="2">Hardware loose</td><td><input type="text" id="" name=""></td><td colspan="2">Handle rusted</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>5.</td><td colspan="3">Entrance Door movement is not smooth</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>6.</td><td colspan="3">Entrance Door pivot loose</td><td><input type="text" id="" name=""></td><td colspan="3">Pivot screw not properly sited</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>7.</td><td colspan="3">Entrance Door lock is not properly working</td><td><input type="text" id="" name=""></td><td colspan="3">Latch catch mismatch</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>8.</td><td colspan="3">Entrance Door bottom pivot excess in length</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>9.</td><td colspan="3">Entrance Door grazing with chequer sheet</td><td><input type="text" id="" name=""></td><td colspan="3">Rubber</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>10.</td><td colspan="3">Excess play found on entrance door pivot</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>11.</td><td colspan="2">Horizontal steel strip screw not properly tighten</td><td><input type="text" id="" name=""></td><td colspan="2">Screw missing</td><td><input type="text" id="" name=""></td><td colspan="2">Unwanted hole</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>12.</td><td colspan="2">Vertical steel strip screw not properly tighten</td><td><input type="text" id="" name=""></td><td colspan="2">Screw missing</td><td><input type="text" id="" name=""></td><td colspan="2">Unwanted hole</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>13.</td><td colspan="3">Horizontal/Vertical rubber are not pasted</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>14.</td><td colspan="2">Tilli panel loose fitted</td><td><input type="text" id="" name=""></td><td colspan="2">Bulge</td><td><input type="text" id="" name=""></td><td>Unwanted hole</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>15.</td><td>Vertical FRP loose fitted</td><td><input type="text" id="" name=""></td><td>Screw missing</td><td><input type="text" id="" name=""></td><td>Unwanted hole</td><td><input type="text" id="" name=""></td><td>Screw not properly tighten</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>16.</td><td>Horizontal FRP loose fitted</td><td><input type="text" id="" name=""></td><td>Screw missing</td><td><input type="text" id="" name=""></td><td>Unwanted hole</td><td><input type="text" id="" name=""></td><td>Screw not properly tighten</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>17.</td><td colspan="3">Vertical FRP/Horizontal FRP joint mismatch</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>18.</td><td colspan="3">Horizontal & Vertical FRP edge uneven cut out</td><td><input type="text" id="" name=""></td><td colspan="3">Roughly putty applied</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>19.</td><td colspan="3">Gap found between self & partition</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>20.</td><td colspan="3">Flap door movement hard(pantry linen room)</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>21.</td><td colspan="3">Z-member hardware missing & loose(pantry linen room)</td><td><input type="text" id="" name=""></td><td colspan="3">Burr found</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>22.</td><td colspan="3">Linen room door stopper screw loose</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>23.</td><td colspan="3">Linen room binjo hinge screw missing</td><td><input type="text" id="" name=""></td><td colspan="2">Loose</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>24.</td><td colspan="3">Linen room hasp & staple missing</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>25.</td><td colspan="3">Compartment door frame not properly sited with partition pillar</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>26.</td><td colspan="3">Compartment door hinge screw loose/handle missing/loose</td><td><input type="text" id="" name=""></td><td colspan="3">Screw missing</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>27.</td><td colspan="3">Compartment door brush missing</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>28.</td><td colspan="3">Compartment door stopper is not properly working</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>29.</td><td colspan="3">Compartment door grazing with its frame</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>30.</td><td colspan="3">Checker for proper fitment of end wall & saloon sliding doors & smooth movement without jerks & noise</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>31.</td><td colspan="3">Ensure max. opening force of end wall & saloon sliding door shell be 50-80 Newton & 50-60 Newton respectively</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>32.</td><td colspan="3">Movement of sliding doors should be lower at the end of closing stroke for last 200mm(0.05m/sec)</td><td colspan="5"><input type="text" id="" name=""></td></tr>
		</table>
		<h3>Testing Observations</h3>
			<textarea id="" name="" style="width:100%;height:100px;"></textarea>
		</form>
  </div>
  
  
  <div id="SeatBerth" class="tabcontent">
    <form name="SeatBerth">
		<table border="1">
			<tr><td colspan="7" style="text-align:center;font-size:16px;"><b>6-Seat & Berth</b></td></tr>
			<tr><td>1.</td><td>Protection wall hardware loose B.No.</td><td colspan="2"><input type="text" id="" name=""></td><td>Hardware missing B.No.</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>2.</td><td>Luggage rack loose No.</td><td><input type="text" id="" name=""></td><td>Taper cabin No.</td><td><input type="text" id="" name=""></td> <td>Hardware missing C.No.</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>3.</td><td>Mirror not pasted cabin No.</td><td colspan="2"><input type="text" id="" name=""></td><td>Rubber uprooted</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>4.</td><td>Coat hook loose B.No.</td><td colspan="2"><input type="text" id="" name=""></td><td>Screw missing B.No.</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>5.</td><td>Coat hook APD not done B.No.</td><td colspan="2"><input type="text" id="" name=""></td><td>Roughly B.No.</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>6.</td><td>Chip up found on doorway and gang way ceiling</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>7.</td><td>Curtain Runner came out B.No.</td><td colspan="2"><input type="text" id="" name=""></td><td>Stopper not fitted B.No.</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>8.</td><td>Snack table loose No.</td><td><input type="text" id="" name=""></td><td>Taper C.No.</td><td><input type="text" id="" name=""></td> <td>Screw missing C.No.</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>9.</td><td>Safety rail tapper B.No.</td><td colspan="2"><input type="text" id="" name=""></td><td>Loose B.No.</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>10.</td><td>Safety rail bkt. Hardware loose No.</td><td><input type="text" id="" name=""></td><td>Not properly tighten B.No.</td><td><input type="text" id="" name=""></td><td>Taper B.No.</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>11.</td><td>Berth chain loose B.No.</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>12.</td><td>Berth chain hardware B.No.</td><td colspan="2"><input type="text" id="" name=""></td><td>Missing B.No.</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>13.</td><td>Bottle holder loose B.No.</td><td colspan="2"><input type="text" id="" name=""></td><td>Taper B.No.</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>14.</td><td>Bottle holder screw missing B.No.</td><td colspan="2"><input type="text" id="" name=""></td><td>Damage B.No.</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>15.</td><td>Berth mounting hardware with side wall loose B.No.</td><td><input type="text" id="" name=""></td><td>Taper B.No.</td><td><input type="text" id="" name=""></td><td>Missing B.No.</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>16.</td><td>Berth mounting hardware with pillar bkt. B.No.</td><td><input type="text" id="" name=""></td><td>Taper B.No.</td><td><input type="text" id="" name=""></td><td>Missing B.No.</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>17.</td><td>Berth found taper B.No.</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>18.</td><td>Berth flap hardware loose B.No.</td><td colspan="2"><input type="text" id="" name=""></td><td>Flap bulge B.No.</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>19.</td><td>Flap Al.strip excess in length</td><td colspan="2"><input type="text" id="" name=""></td><td>Its hardware excess in length</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>20.</td><td>Transverse Berth not in level B.No.</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>21.</td><td>Gap found between back rest of berth no.</td><td colspan="5"><input type="text" id="" name=""></td></tr>		
			<tr><td>22.</td><td>Back rest movement not smooth seat No.</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>24.</td><td>Latch catch miss match seat no.</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>25.</td><td>Burr found on latch Seat No.</td><td colspan="2"><input type="text" id="" name=""></td><td>Burr found on catch seat no.</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>26.</td><td>Hole not done on partition for latch seat no.</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>27.</td><td>Rexine torn on back rest seat no.</td><td colspan="2"><input type="text" id="" name=""></td><td>Berth no.</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>28.</td><td>Almirah mounting hardware loose</td><td colspan="2"><input type="text" id="" name=""></td><td>Missing</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>29.</td><td>Towel hole not working properly</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>30.</td><td>not working properly</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>31.</td><td>Unwanted hole in almirah</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>32.</td><td>Unwanted hole near near bottle holder B.No.</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>33.</td><td>Unwanted hole near near latch seat B.No.</td><td colspan="2"><input type="text" id="" name=""></td><td>Near catch seat no.</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>34.</td><td>Rexin torn on berth and arm rest</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>35.</td><td>Builder plate screw missing</td><td colspan="2"><input type="text" id="" name=""></td><td>Not standard screw provided</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>36.</td><td>Rexene not pasted back side of berth BN.</td><td colspan="5"><input type="text" id="" name=""></td></tr>
		</table>
		<h3>Testing Observations</h3>
			<textarea id="" name="" style="width:100%;height:100px;"></textarea>
		</form>
  </div>
  
  
  <div id="Lavatory" class="tabcontent">
	   <form name="Lavatory">	
		<table border="1">
			<tr><td colspan="7" style="text-align:center;font-size:16px;"><b>7-Lavatory</b></td></tr>
			<tr><td style="text-align:center;padding:2px;">1.</td><td>Loro pipe loose</td><td colspan="2"><input type="text" id="" name=""></td><td>Hardware missing</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>2.</td><td>Attachment wall hinge hardware loose</td><td><input type="text" id="" name=""></td><td>Missing</td><td><input type="text" id="" name=""></td><td>Dent mark</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>3.</td><td>Attachment wall tower bolt screw missing</td><td colspan="2"><input type="text" id="" name=""></td><td>Bolt damage</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>4.</td><td>Tower bolt not fitted</td><td colspan="2"><input type="text" id="" name=""></td><td>Hole not done for tower bolt</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>5.</td><td>Soap case screw missing</td><td><input type="text" id="" name=""></td><td>Screw loose</td><td><input type="text" id="" name=""></td><td>Taper</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>6.</td><td>Lav. wash basin not sealed</td><td><input type="text" id="" name=""></td><td>Outside</td><td><input type="text" id="" name=""></td><td>Inside</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>7.</td><td>Lav. wash basin roughly sealed</td><td><input type="text" id="" name=""></td><td>Outside</td><td><input type="text" id="" name=""></td><td>Inside</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>8.</td><td>Dustbin box not provided</td><td colspan="2"><input type="text" id="" name=""></td><td>Unlocked</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>9.</td><td>Dustbin bkt hardware loose</td><td colspan="2"><input type="text" id="" name=""></td><td>Screw missing</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>10.</td><td>Steel dustbin mounting bracket hardware loose</td><td colspan="5"><input type="text" id="" name=""></td></tr>		
			<tr><td>11.</td><td>Waste bin mounting hardware loose</td><td><input type="text" id="" name=""></td><td>Screw missing</td><td><input type="text" id="" name=""></td><td>Dent mark</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>12.</td><td>Waste bin cover plate rusted</td><td colspan="2"><input type="text" id="" name=""></td><td>Magnet not pasted</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>13.</td><td>Less no of screw fitted on waste bin cover plate</td><td colspan="2"><input type="text" id="" name=""></td><td>Cover plate grazing with module</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>14.</td><td>Outside waste bin mounting hardware loose</td><td colspan="2"><input type="text" id="" name=""></td><td>Not tighten properly</td><td colspan="2"><input type="text" id="" name=""></td></tr>		
			<tr><td>15.</td><td>Sleeve screw missing </td><td><input type="text" id="" name=""></td><td>Not in level with floor</td><td><input type="text" id="" name=""></td><td>Not properly sited</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>16.</td><td>Drain pipe leakage</td><td colspan="2"><input type="text" id="" name=""></td><td>Not sealed</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>17.</td><td>Outside drain pipe sleeve not sited</td><td colspan="5"><input type="text" id="" name=""></td></tr>		
			<tr><td>18.</td><td>Loro pipe hardware loose</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>19.</td><td>Lavatory door pivot loose</td><td><input type="text" id="" name=""></td><td>Screw missing</td><td><input type="text" id="" name=""></td><td>Screw not sited</td><td><input type="text" id="" name=""></td></tr>		
			<tr><td>20.</td><td>Lavatory door taper fitted</td><td colspan="2"><input type="text" id="" name=""></td><td>Unnecessary sound during movement of door</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>21.</td><td>Lavatory door frame corner not properly sited</td><td colspan="2"><input type="text" id="" name=""></td><td>Excess gap between door and its frame</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>22.</td><td>Lavatory door handle loose</td><td colspan="2"><input type="text" id="" name=""></td><td>Missing/not fitted</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>23.</td><td>Coat hook loose in lavatory no.</td><td colspan="2"><input type="text" id="" name=""></td><td>Missing/not fitted</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>24.</td><td>Engage-Vacant lock is not working smoothly</td><td colspan="2"><input type="text" id="" name=""></td><td>Male-female part mismatch</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>25.</td><td>Engage-Vacant lock female part loose</td><td colspan="2"><input type="text" id="" name=""></td><td>Screw missing</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>26.</td><td>Engage-Vacant lock Male part loose</td><td colspan="2"><input type="text" id="" name=""></td><td>Screw missing</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>27.</td><td>Swing lock catch loose</td><td colspan="2"><input type="text" id="" name=""></td><td>Latch loose</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>28.</td><td>Swing lock catch hardware excess in length</td><td colspan="2"><input type="text" id="" name=""></td><td>Burr found on swing lock hardware</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>29.</td><td>Lavatory door closer screw not tighten properly</td><td><input type="text" id="" name=""></td><td>Rusted</td><td><input type="text" id="" name=""></td><td>Movement not smooth</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>30.</td><td>Soap dispenser loose</td><td><input type="text" id="" name=""></td><td>Taper</td><td><input type="text" id="" name=""></td><td>Screw missing</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>31.</td><td>not provided in soap dispenser</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>32.</td><td>Lotah tap strainer level up with respect to floor level</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>33.</td><td>Lotah tap strainer not sealed</td><td><input type="text" id="" name=""></td><td>Roughly sealed</td><td><input type="text" id="" name=""></td><td>Screw missing</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>34.</td><td>Additional wall handle cap not pasted</td><td colspan="2"><input type="text" id="" name=""></td><td>Handle screw loose</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>35.</td><td>Pan level up with respect to floor level</td><td colspan="2"><input type="text" id="" name=""></td><td>Roughly sealed</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>36.</td><td>I/S wash basin mounting hardware missing</td><td><input type="text" id="" name=""></td><td>Not tighten properly</td><td><input type="text" id="" name=""></td><td>Loose</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>37.</td><td>Dent mark found on module</td><td colspan="2"><input type="text" id="" name=""></td><td>Dent on HPL sheet</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>38.</td><td>Module joint not sealed</td><td colspan="2"><input type="text" id="" name=""></td><td>Roughly sealed</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>39.</td><td>Commode hardware loose</td><td colspan="2"><input type="text" id="" name=""></td><td>Missing</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>40.</td><td>Plastic film not removed from ceiling/door</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>41.</td><td>Ceiling not in level</td><td><input type="text" id="" name=""></td><td>Hardware loose</td><td><input type="text" id="" name=""></td><td>Dent mark</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>42.</td><td>Module hardware with side wall loose</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>43.</td><td>Mirror holder loose</td><td><input type="text" id="" name=""></td><td>Mirror holder taper</td><td><input type="text" id="" name=""></td><td>APD not done</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>44.</td><td>Hopper window frame not properly sited</td><td><input type="text" id="" name=""></td><td>Short in length</td><td><input type="text" id="" name=""></td><td>Excess length</td><td><input type="text" id="" name=""></td></tr>
			<tr><td>45.</td><td>Hopper window rubber uprooted</td><td colspan="2"><input type="text" id="" name=""></td><td>Hopper window glass crack</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>46.</td><td>Condition of lavatory floor level</td><td colspan="5"><input type="text" id="" name=""></td></tr>
		</table>
		<h3>Testing Observations</h3>
			<textarea id="" name="" style="width:100%;height:100px;"></textarea>
		</form>
  </div>
  
  
  <div id="Plumbing" class="tabcontent">
	   <form name="Plumbing">	
		<table border="1">
			<tr><td colspan="7" style="text-align:center;font-size:16px;"><b>8-Plumbing</b></td></tr>
			<tr><td>1.</td><td>Reading of water level gauge</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>2.</td><td>I/S & O/S wash basin tap loose</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>3.</td><td>Shower handle loose</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>4.</td><td>Shower handle broken</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>5.</td><td>Shower handle stand screw loose</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>6.</td><td>Upper tank U camp rubber missing & loose</td><td colspan="5"><input type="text" id="" name=""></td></tr>
		</table>
		<h3>Testing Observations</h3>
			<textarea id="" name="" style="width:100%;height:100px;"></textarea>
		</form>
  </div>
  
  
  <div id="AirBrake" class="tabcontent">
	   <form name="AirBrake">	
		<table border="1">
			<tr><td colspan="7" style="text-align:center;font-size:16px;"><b>9-Air Brake</b></td></tr>
			<tr><td>1.</td><td>Releasing device chuck nut loose</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>2.</td><td>Releasing device rod taper fitted</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>3.</td><td>Brake indicator out of sole bar and taper fitted</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>4.</td><td>Air hose pipe angle cock hardware loose and PVC packing provided</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>5.</td><td>Emergency pull box cover bulged and handle taper fitted</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>6.</td><td>Lavatory air pipe clamp not properly fitted</td><td colspan="2"><input type="text" id="" name=""></td><td>Alarm pipe clamp not fitted</td><td colspan="2"><input type="text" id="" name=""></td></tr>
		</table>
		<h3>Testing Observations</h3>
			<textarea id="" name="" style="width:100%;height:100px;"></textarea>
		</form>
  </div>
  
  
  <div id="CoachLowering" class="tabcontent">
	   <form name="CoachLowering">	
	   <h3 style="text-align:center;">10-Coach Lowering</h3>
		<h3>Testing Observations</h3>
			<textarea id="" name="" style="width:100%;height:100px;"></textarea>
		</form>
  </div>
  
  
  <div id="Paint" class="tabcontent">
	   <form name="Paint">	
		<table border="1">
			<tr><td colspan="7" style="text-align:center;font-size:16px;"><b>11-Paint</b></td></tr>
			<tr><td>1.</td><td>Fitment of Destination Board/No. Plate</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>2.</td><td>Check proper stenciling & lettering</td><td colspan="5"><input type="text" id="" name=""></td></tr>
			<tr><td>3.</td><td>Burr found o braille sticker rivet</td><td colspan="5"><input type="text" id="" name=""></td></tr>
		</table>
		<h3>Testing Observations</h3>
			<textarea id="" name="" style="width:100%;height:100px;"></textarea>
		</form>
  </div>
  
  
  <div id="CoachCleaning" class="tabcontent">
	   <form name="CoachCleaning">	
		<table border="1">
			<tr><td colspan="7" style="text-align:center;font-size:16px;"><b>12-Coach Cleaning</b></td></tr>
			<tr><td>1.</td><td>Floor found dirty</td><td colspan="2"><input type="text" id="" name=""></td><td>Lavatory found dirty</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>2.</td><td>Ceilings found dirty</td><td colspan="2"><input type="text" id="" name=""></td><td>Seat & Berths found dirty</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>3.</td><td>Paneis found dirty</td><td colspan="2"><input type="text" id="" name=""></td><td>Store room, pantry, linen room found dirty</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>4.</td><td>Rails of sliding found dirty</td><td colspan="2"><input type="text" id="" name=""></td><td>Window glass found dirty</td><td colspan="2"><input type="text" id="" name=""></td></tr>
			<tr><td>5.</td><td>Plastic film of fittings not removed</td><td colspan="2"><input type="text" id="" name=""></td><td>Doors found dirty</td><td colspan="2"><input type="text" id="" name=""></td></tr>
		</table>
		<h3>Testing Observations</h3>
			<textarea id="" name="" style="width:100%;height:100px;"></textarea>
		</form>
  </div>
  
  
</div>
 


</body>
<script>
var btn;
function openCity(evt, cityName) {
	  var i, tabcontent, tablinks;
	  btn=evt.target.id;
	  tabcontent = document.getElementsByClassName("tabcontent");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }
	  tablinks = document.getElementsByClassName("tablinks");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].className = tablinks[i].className.replace(" active", "");
	  }
	  document.getElementById(cityName).style.display = "block";
	  evt.currentTarget.className += " active";
	
	  if(btn==1){
		  if(record.qcifpvflag==1)
			{
			$.ajax({
				url : "showExistingDataOfIntrPaintSip",  //action-name as defined in struts.xml
				dataType: 'json', 
				async:false,
				data : {
					paintAssetId: record.paintAssetId,
				},
				success:function(data)
				{
					$('#intrPaintSipDocNo').val(data.intrPaintFinalSipTran.intrPaintSipDocNo);	
					
			
				
					
				}
              });
			}
		
	  }
	}
	

var shellArray=[];
		$(document).ready(function() {
			
			 var first = new Option("select", null );
				
				$("#coachType").append(first);
				
				<c:forEach var="a" items="${coachType}">
				
				var o = new Option("${a}", "${a}");
			
				$(o).html("${a}");
				$("#coachType").append(o);
				
				
		    </c:forEach>
		    
		   
		    
		   // end of code for bogie type
				//start: retrieving axle number in dropdown option
			    var bogieNumbers=[]; 

				var j=1;
				bogieNumbers[0]={ Value:null, DisplayText: "Select" };
				<c:forEach var="b" items="${bogieNumberList}">
				bogieNumbers[j]={ Value: "${b.key}", DisplayText: "${b.value}" };
					j++;
				    </c:forEach>
				  //end: retrieving axle number in dropdown option
	
						
	$('#FurnishingProductionTableContainer').jtable({
			
			title : 'Issue QCI for Coach',
			
			paging:true,
            sorting: true,
            defaultSorting: 'receiptDateAtQuality ASC',
            selecting: true, //Enable selecting
            multiselect: false, 
            multiSorting: true,
            animationsEnabled : true,   
         
       //Create toolbat
       toolbar: {
           items: [
        {
       	 icon: '<%=contextpath%>/images/rs_out.png',
            text: 'Perform QCI',
            click: function () {
            	
            	
            	
            	 var $selectedRows = $('#FurnishingProductionTableContainer').jtable('selectedRows');
        	 	 if ($selectedRows.length<1)
        		 alert("Please select a row for which you want to sent for Perform QCI");
        	 	 else{
        	 		var record;
        	 		$selectedRows.each(function () {
                        record = $(this).data('record');
                        });
						
						
					
        	 	 	$("#selectStages").dialog({
        	 	 		title : 'Exit for  '+record.shellTransactionId + 'from Stage- <%=stageID%>',
        	 	 		width:'90%',
        	 	 		close: function (e, u) {
        	 	 			
  	 		              
  	 		          	/* $("#shellCheckListSip").validationEngine('hideAll');
  	 		         $('#shellCheckListSip').find('form[name="form2"]')[0].reset(); */
  	 		          },
    	 		 	
							buttons: {
                            Submit: {
                               text: "Submit",
                                id: "my-button-submit",
                                click:function () {
                                	
                            	if(btn==1){
                                
                            	var c=confirm("Do you want to submit data!!");
                            	if(c==false){return false;}
                             
                            		    	   
                            	$.ajax({
            						url : "savefPvc",  //action-name as defined in struts.xml
            						dataType: 'json', 
            						data : {
            							furnishingAssetId: record.furnishingAssetId,
        								footPlateJam:$('#footPlateJam').val(),
        								movementHard:$('#movementHard').val(),
        								footPlateSpringHardware:$('#footPlateSpringHardware').val(),
        								footPlateSideRubberLoose:$('#footPlateSideRubberLoose').val(),
        								footPlateSideRubberMissing:$('#footPlateSideRubberMissing').val(),
        								tailLampFitted:$('#tailLampFitted').val(),
        								tailLampHardwareMissing:$('#tailLampHardwareMissing').val(),
        								tailLampWelding:$('#tailLampWelding').val(),
        								footStepLoose:$('#footStepLoose').val(),
        								footStepHardware:$('#footStepHardware').val(),
        								fitmentEntranceHandRail:$('#fitmentEntranceHandRail').val(),
        								footStepRusted:$('#footStepRusted').val(),
        								footStepTaperFitted:$('#footStepTaperFitted').val(),
        								stepRailScrewSited:$('#stepRailScrewSited').val(),
        								stepRailScrewMissing:$('#stepRailScrewMissing').val(),
        								chequerSheetNotSealed:$('#chequerSheetNotSealed').val(),
        								chequerSheetRouglySealed:$('#chequerSheetRouglySealed').val(),
        								roughlyCuttingChequerSheet:$('#roughlyCuttingChequerSheet').val(),
        								chequerSheetNotSitedCorner:$('#chequerSheetNotSitedCorner').val(),
        								chequerSheetScrewSited:$('#chequerSheetScrewSited').val(),
        								chequerSheetScrewMissing:$('#chequerSheetScrewMissing').val(),
        								chequerSheetScrewLoose:$('#chequerSheetScrewLoose').val(),
        								doorStopperNotFitted:$('#doorStopperNotFitted').val(),
        								endwallSafetyHandleFitted:$('#endwallSafetyHandleFitted').val(),
        								endwallSafetyHandleLoose:$('#endwallSafetyHandleLoose').val(),
        								endwallSafetyHandleMissing:$('#endwallSafetyHandleMissing').val(),
        								pvcCuttingPastingEndwalldoor:$('#pvcCuttingPastingEndwalldoor').val(),
        								pvcCuttingPastingLavatorydoor:$('#pvcCuttingPastingLavatorydoor').val(),
        								pvcJointWeldingCabinSide:$('#pvcJointWeldingCabinSide').val(),
        								pvcJointWeldingNonCabinSide:$('#pvcJointWeldingNonCabinSide').val(),
        								airBubblePvc:$('#airBubblePvc').val(),
        								floorLevelCorridorArea:$('#floorLevelCorridorArea').val(),
        								uicVestibuleSited:$('#uicVestibuleSited').val(),
        								uicVestibuleTaper:$('#uicVestibuleTaper').val(),
        								uicVestibuleCracked:$('#uicVestibuleCracked').val(),
        								foamFamSealingNotDone:$('#foamFamSealingNotDone').val(),
        								foamFamSealingRoughlyDone:$('#foamFamSealingRoughlyDone').val(),
        								fitmentDoorHandle:$('#fitmentDoorHandle').val(),
        								testingObservationRemark:$('#testingObservationRemark').val(),
            							
            							
            						
            						},
            						
            						type : 'POST',
            						async : false,
                    	 		})
            						.done(function( msg ) {
            							
            							 $('#footPlateJam').val(''),
		        		                    $('#movementHard').val(''),                   							
		        		                    $('#footPlateSpringHardware').val(''),               							
		        		                    $('#footPlateSideRubberLoose').val(''),   
		        		                    $('#footPlateSideRubberMissing').val(''),   
		        		                    $('#tailLampFitted').val(''),   
		        		                    $('#tailLampHardwareMissing').val(''),   
		        		                    $('#tailLampWelding').val(''),
		        		                    $('#footStepLoose').val(''),
		        		                    $('#footStepHardware').val(''),                   							
		        		                    $('#fitmentEntranceHandRail').val(''),               							
		        		                    $('#footStepRusted').val(''),   
		        		                    $('#footStepTaperFitted').val(''),   
		        		                    $('#stepRailScrewSited').val(''),   
		        		                    $('#stepRailScrewMissing').val(''),   
		        		                    $('#chequerSheetNotSealed').val(''),
		        		                    $('#chequerSheetRouglySealed').val(''),
		        		                    $('#roughlyCuttingChequerSheet').val(''),                   							
		        		                    $('#chequerSheetNotSitedCorner').val(''),               							
		        		                    $('#chequerSheetScrewSited').val(''),   
		        		                    $('#chequerSheetScrewMissing').val(''),   
		        		                    $('#chequerSheetScrewLoose').val(''),   
		        		                    $('#doorStopperNotFitted').val(''),   
		        		                    $('#endwallSafetyHandleFitted').val(''),
		        		                    $('#endwallSafetyHandleLoose').val(''),
		        		                    $('#endwallSafetyHandleMissing').val(''),                   							
		        		                    $('#pvcCuttingPastingEndwalldoor').val(''),               							
		        		                    $('#pvcCuttingPastingLavatorydoor').val(''),   
		        		                    $('#pvcJointWeldingCabinSide').val(''),   
		        		                    $('#pvcJointWeldingNonCabinSide').val(''),   
		        		                    $('#airBubblePvc').val(''),   
		        		                    $('#floorLevelCorridorArea').val(''),
		        		                    $('#uicVestibuleSited').val(''),
		        		                    $('#uicVestibuleTaper').val(''),                   							
		        		                    $('#uicVestibuleCracked').val(''),               							
		        		                    $('#foamFamSealingNotDone').val(''),   
		        		                    $('#foamFamSealingRoughlyDone').val(''),   
		        		                    $('#fitmentDoorHandle').val(''),   
		        		                    $('#testingObservationRemark').val(''),
            							
            						
            							$('#selectStages').dialog('close'),
            							
            							$('#FurnishingProductionTableContainer').jtable('load');
 								  })
 								.error(function (msg){
 									
 									alert("Error Fetching Data");
 								});
                            	}
                            	else if(btn==2){
                            		var c=confirm("Do you want to submit data!!");
                                	if(c==false){return false;}
                                 
                                		    	   
                                	$.ajax({
                						url : "savePartitionFrame",  //action-name as defined in struts.xml
                						dataType: 'json', 
                						data : {
                							furnishingAssetId: record.furnishingAssetId,
                							dentMarkPartitionBn:$('#dentMarkPartitionBn').val(),
                							dentMarkPartitionExceesCut:$('#dentMarkPartitionExceesCut').val(),
                							excessGapUmouldingPartitionpillar:$('#excessGapUmouldingPartitionpillar').val(),
                							middleBearthStopperMissing:$('#middleBearthStopperMissing').val(),
                							middleBearthStopperLoose:$('#middleBearthStopperLoose').val(),
                							middleBearthStopperRubberPad:$('#middleBearthStopperRubberPad').val(),
                							partitionPillarHardwareLoose:$('#partitionPillarHardwareLoose').val(),
                							partitionPillarHardwareMissing:$('#partitionPillarHardwareMissing').val(),
                							partitionPillarHardwareTaper:$('#partitionPillarHardwareTaper').val(),
                							unwantedHolesPartitionBn:$('#unwantedHolesPartitionBn').val(),
                							plasticFilmRemovedPartition:$('#plasticFilmRemovedPartition').val(),
                							roughlyPuttyPartition:$('#roughlyPuttyPartition').val(),
                							partitionPillarZigzag:$('#partitionPillarZigzag').val(),
                							partitionPillarProperlySited:$('#partitionPillarProperlySited').val(),
                							burrFoundPartitionPillar:$('#burrFoundPartitionPillar').val(),
                							burrFoundBerthHoldingBkt:$('#burrFoundBerthHoldingBkt').val(),
                							testingObservationRemark:$('#testingObservationRemark').val(),
                							
                						},
                						
                						type : 'POST',
                						async : false,
                        	 		})
                						.done(function( msg ) {
                							
                							 $('#dentMarkPartitionBn').val(''),
                							 $('#dentMarkPartitionExceesCut').val(''),
                							 $('#excessGapUmouldingPartitionpillar').val(''),
                							 $('#middleBearthStopperMissing').val(''),
                							 $('#middleBearthStopperLoose').val(''),
                							 $('#middleBearthStopperRubberPad').val(''),
                							 $('#partitionPillarHardwareLoose').val(''),
                							 $('#partitionPillarHardwareLoose').val(''),
                							 $('#partitionPillarHardwareMissing').val(''),
                							 $('#partitionPillarHardwareTaper').val(''),
                							 $('#unwantedHolesPartitionBn').val(''),
                							 $('#plasticFilmRemovedPartition').val(''),
                							 $('#roughlyPuttyPartition').val(''),
                							 $('#partitionPillarZigzag').val(''),
                							 $('#partitionPillarProperlySited').val(''),
                							 $('#burrFoundPartitionPillar').val(''),
                							 $('#burrFoundBerthHoldingBkt').val(''),
                							 $('#testingObservationRemark').val(''),
                							 
                							$('#selectStages').dialog('close'),
                							
                							$('#FurnishingProductionTableContainer').jtable('load');
     								  })
     								.error(function (msg){
     									
     									alert("Error Fetching Data");
     								});
                            	}
                            	else{
                            		alert("Bye");
                            	}
			                 			    	   /* return true; */
		                                    }
                            },
		                        Close: function () {
		                        	/* $('#shellCheckListSip').find('form[name="form2"]')[0].reset(); */
		                                        $(this).dialog('close');
		                                    }
                            },
            	        modal: true
   });
        	 		
        	 		
        	 		
        	 		
        	 		
        	 		    
			    	   return true;
        	 		    
        	 			  
        	 		  }//ending else               	  
        	  // ajax call ends here				
					 
            }
        } 
       	 
       
               
              
       ]
       },
			actions : {
	
 			listAction: 'availableForQCIFurnishingAction?stageID=<%=stageID%>',
 			
 						},
			
			fields : {
				
				sno:{
					title : 'SNo',
					create: false,
					edit : false,
					width: '5%',
					display: function(data)
					{
						
						srno++;
						return srno;
					}
				},
				
				shellAssetId: {
					title: 'Shell No',
					width: '20%',
					display:function(data){
 						//var shellNo;
 						var shell={};
 						shell.assetId=data.record.shellAssetId;
 						$.ajax({                    
 							  //url: 'descByshellFromIdinPaintShop', 
 							   url: 'descByshellFromId', 
 							  type: 'post', // performing a POST request
 							  async: false,
							  
 							  dataType: 'json',
 								  data : {
									
 									 shellAssetId: data.record.shellAssetId
 								  	  }									                    
 						})
 								.done(function( msg ) {
 								//	shellNo=msg.shellNo;
 								shell.assetNo=msg.shellNo;
								shellArray.push(shell);
									
 									//return msg.stageName;																			    											
 								  })
 								.error(function (msg){
 									alert("Error Saving Data");
 								})
 								  ;
						
						
 						//return shellNo;
 						return shell.assetNo;
 						},
 						create: false,
 						width : '20%',
 						list: true,
 						edit : false
 					},
 					shellType: {
 						title :'Shell Type',
 						width: '8%',
 						list: true,
 						create: false,
 						edit: false		
 						},		
 						coachType:
						{
						title: 'Coach Type',
						 width : '10%',
						list: true,
						edit : false,
					     create: false 
						},
				furnishingAssetId : {
					title : 'furnishingAssetId',
					width: '8%',
					key: true,
					list : false,
					edit : false,
					create : false
									
					},
					
		
// 					assemblyStartDate: {
// 							title :'Assembly Start Date',
// 							width: '8%',
// 							inputClass: 'validate[required]',
// 							type: 'date',
//  							displayFormat: 'dd-mm-yy',
// 							display:function(data){
												 
// 								return ((data.record.assemblyStartDate!=null) && (data.record.assemblyStartDate!="") ) ? moment(data.record.assemblyStartDate).format('DD-MM-YYYY') : "";
// 													}, 
// 							list: true,
// 							create: false,
// 							edit: false
											
// 							},
							vendorAllotted:{
								title :'Alloted Vendor',
								width: '8%',
								
								list: true,
								create: false,
								edit: false
								},
								vendorAllottedDate:
									{
									title :'Alloted Date',
									width: '8%',
									//inputClass: 'validate[required]',
		 							type: 'date',
		 							displayFormat: 'dd-mm-yy',
									display:function(data){
										//alert(data.record.id.hodyCode)	;				 
										return ((data.record.vendorAllottedDate!=null) && (data.record.vendorAllottedDate!="") ) ? moment(data.record.vendorAllottedDate).format('DD-MM-YYYY') : "";
															}, 
														
													
									list: true,
									create: true,
									edit: true
									
									},
					//left bogie display purpose	
							
				bogiePpSideAssetId: {
							title :'PP side Bogie No.',
 					display:function(data){
	 						var bogieNo;
	 						if(data.record.bogiePpSideAssetId!=null)
							{
	 						$.ajax({                    
	 							  url: 'descByBogieId',     
	 							  type: 'post', // performing a POST request
	 							  async: false,
								  
	 							  dataType: 'json',
	 								  data : {
										
	 									 bogieAssetId: data.record.bogiePpSideAssetId
	 								  	  }									                    
	 						})
	 								.done(function( msg ) {
	 									bogieNo=msg.bogieNo;
										
	 									//return msg.stageName;																			    											
	 								  })
	 								.error(function (msg){
	 									alert("Error Saving Data");
	 								})
	 								  ;
							
							}
	 						return bogieNo;
	 						},
							
							
							list:true,
							create: false,
							edit: false
							},
							//left bogie update and create purpose		
					  bogiePpSideAssetId1: {
						title :'PP Side Bogie No.',
						width: '8%',

						options: bogieNumbers,
						list: false,
						create: true,
						edit: true		
						}, 
					//Non PP SIde Bogie display	
						bogieNppSideAssetId: {
							title :'N-PP side Bogie No.',
							list:true,
							display:function(data){
		 						var bogieNo;
		 						if(data.record.bogieNppSideAssetId!=null)
								{
		 						$.ajax({                    
		 							  url: 'descByBogieId',     
		 							  type: 'post', // performing a POST request
		 							  async: false,
									  
		 							  dataType: 'json',
		 								  data : {
											
		 									 bogieAssetId:data.record.bogieNppSideAssetId
		 								  	  }									                    
		 						})
		 								.done(function( msg ) {
		 									bogieNo=msg.bogieNo;
											
		 									//return msg.stageName;																			    											
		 								  })
		 								.error(function (msg){
		 									alert("Error Saving Data");
		 								})
		 								  ;
								}
								
		 						return bogieNo;
		 						},
							create: false,
							edit: false
							},
					//right wheel update and create purpose
 					bogieNppSideAssetId1: {
 					title :'N-PP Side Bogie No.',
						width: '8%',
 			          options: bogieNumbers,
 						list: false,
						create: true,
 						edit: true		
							},

				exitRemarkFurnishing: {
				   title: 'Remark given by Furnishing',
				   width : '10%',
					type : 'textarea',
					edit : false,
					create: false 
				},
								
				
					receiptDateAtQuality:
					{
					title: 'Coach Receipt Date',
					width: '5%',
					type:'date',
					display:function(data){
						 
						return ((data.record.receiptDateAtQuality!=null) && (data.record.receiptDateAtQuality!="") ) ? moment(data.record.receiptDateAtQuality).format('DD-MM-YYYY') : "";
											}, 
							
					},
					coachNumber: {
						   title: 'Coach No.',
						   width : '10%',
							
							edit : false,
							create: false 
						},
						showerTestingFlag:
							{
							title:'',
							list:false,
							edit:false,
							create:false
							},
							biotankTestingFlag:
								{
								title:'',
								list:false,
								edit:false,
								create:false
								},
							cbcTestingFlag:
								{
								title:'',
								list:false,
								edit:false,
								create:false
								}
                        
			},
			loadingRecords: function(event,data)
			{
				srno=0;
			},
			recordsLoaded: function(event, data) {
	
				 /*  if (prevStage!='START'){
					 
				     $('#FurnishingProductionTableContainer').find('.jtable-toolbar-item.jtable-toolbar-item-add-record').remove();
				  } */
				  
				},
				formCreated: function (event, data) {
					  
				var startDate=(data.record.dispatchDateInQuality).substring(0,10);
				
                    var num = startDate.match(/\d+/g); 
             		var date = new Date(num[0], num[1]-1, num[2]);
				//	 $('[name=expectedExitDate]').datepicker("option","minDate", date)	;	
				//	 $('[name=vendorAllottedDate]').datepicker("option","minDate", date)	;
 				
	
	               	            },
	            recordDeleted: function(event,data)
	    		{
	    			srno=0;
	    			$('#FurnishingProductionTableContainer').jtable('load');
	    		},
	    		
 
					//Validate form when it is being submitted
				formSubmitting: function (event, data) {
			   return data.form.validationEngine('validate');
			             
			            },
			    
				//Dispose validation logic when form is closed
				formClosed: function (event, data) {
			               data.form.validationEngine('hide');
			                data.form.validationEngine('detach');
				},
				recordUpdated:function(event,data)
				{
					srno=0;
					$('#FurnishingProductionTableContainer').jtable('load');
				},
	              
			});
	$('#FurnishingProductionTableContainer').jtable('load');
		});
	
	</script>
	
	<script>
	
	function search(id)
	{
		//alert("am called, id="+id +""+JSON.stringify(shellArray));
		for(var i=0;i<shellArray.length;i++){
			
			if(shellArray[i].assetId==id)
				{
				//alert( shellArray[i].assetNo);
					return shellArray[i].assetNo;
				}
				
			}
		}
	function setMinDate(){
	
		var from = $('#datepickerCompletion').val(); 
		var numbers = from.match(/\d+/g); 
		
		var date = new Date(numbers[2], numbers[1]-1, numbers[0]);
		
		$('#datepickerExit').datepicker('option', 'minDate', date);
	}
	function isNumberKey(el, evt) {
		var spanid=el.id+'_output';
		//alert(spanid);
		 var h = document.getElementById(el.id);
		    var charCode = (evt.which) ? evt.which : event.keyCode;
		    var number = el.value.split('.');
		    if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
document.getElementById(spanid).innerHTML='<span style="background: #fee;width: 200px;height: 25px;margin: 15px 0;color: #a33;">Only number and point allowed</span>';
		     
		return false;
		    }
		else
		{
		document.getElementById(spanid).innerHTML="";
		}
		    //just one dot
		    if(number.length>1 && charCode == 46){

		document.getElementById(spanid).innerHTML='<span style="background:#fee;width:200px;height: 25px;margin: 15px 0;color: #a33;">Not a valid number</span>';

		         return false;
		    }
		    //get the carat position
		    var caratPos = getSelectionStart(el);
		    var dotPos = el.value.indexOf(".");
		    if( caratPos > dotPos && dotPos>-1 && (number[1].length > 1)){ //Change 1 to 2 for 3 places of decimal allowed
		        return false;
		    }
		    return true;
		}


		function getSelectionStart(o) {
		if (o.createTextRange) {
		var r = document.selection.createRange().duplicate();
		r.moveEnd('character', o.value.length);
		if (r.text == '') return o.value.length
		return o.value.lastIndexOf(r.text)
		} else return o.selectionStart
		}

	</script>