package struts.action.master;
import org.hibernate.Session;
import dao.Daofpvc;

import beans.QciFPvcTrans;
import beans.FurnishingTransaction;
import common.DateUtil;
import hibernateConnect.HibernateConfig;


public class Savefpvc {
	private String furnishingAssetId;
	private String footPlateJam;
	private String movementHard;
	private String footPlateSpringHardware;
	private String footPlateSideRubberLoose;
	private String footPlateSideRubberMissing;
	private String tailLampFitted;
	private String tailLampHardwareMissing;
	private String tailLampWelding;
	private String footStepLoose;
	private String footStepHardware;
	private String fitmentEntranceHandRail;
	private String footStepRusted;
	private String footStepTaperFitted;
	private String stepRailScrewSited;
	private String stepRailScrewMissing;
	private String chequerSheetNotSealed;
	private String chequerSheetRouglySealed;
	private String roughlyCuttingChequerSheet;
	private String chequerSheetNotSitedCorner;
	private String chequerSheetScrewSited;
	private String chequerSheetScrewMissing;
	private String chequerSheetScrewLoose;
	private String doorStopperNotFitted;
	private String endwallSafetyHandleFitted;
	private String endwallSafetyHandleLoose;
	private String endwallSafetyHandleMissing;
	private String pvcCuttingPastingEndwalldoor;
	private String pvcCuttingPastingLavatorydoor;
	private String pvcJointWeldingCabinSide;
	private String pvcJointWeldingNonCabinSide;
	private String airBubblePvc;
	private String floorLevelCorridorArea;
	private String uicVestibuleSited;
	private String uicVestibuleTaper;
	private String uicVestibuleCracked;
	private String foamFamSealingNotDone;
	private String foamFamSealingRoughlyDone;
	private String fitmentDoorHandle;
	private String testingObservationRemark;
	
	
	public String saveData()
	{
		Session session=null;
		session=HibernateConfig.getSession();
		Integer furnishingAssetIdAsInt=Integer.parseInt(furnishingAssetId);
		System.out.println(":>");
		System.out.println("Furnishing asset id: "+furnishingAssetIdAsInt);
		
		FurnishingTransaction furnishingTransaction= (FurnishingTransaction) session.get(FurnishingTransaction.class, furnishingAssetIdAsInt);
		furnishingTransaction.setQcifpvcflag(1);
		
		
		
		QciFPvcTrans qciFPvcTrans=new QciFPvcTrans();
		qciFPvcTrans.setFurnishingAssetId(furnishingAssetIdAsInt);
		System.out.println("furnishingAssetIdAsInt: "+furnishingAssetIdAsInt);
		
		qciFPvcTrans.setFootPlateJam(footPlateJam);
		System.out.println(footPlateJam);
		qciFPvcTrans.setMovementHard(movementHard);
		System.out.println(movementHard);
		qciFPvcTrans.setFootPlateSpringHardware(footPlateSpringHardware);
		System.out.println(footPlateSpringHardware);
		qciFPvcTrans.setFootPlateSideRubberLoose(footPlateSideRubberLoose);
		System.out.println(footPlateSideRubberLoose);
		qciFPvcTrans.setFootPlateSideRubberMissing(footPlateSideRubberMissing);
		qciFPvcTrans.setTailLampFitted(tailLampFitted);
		qciFPvcTrans.setTailLampHardwareMissing(tailLampHardwareMissing);
		qciFPvcTrans.setTailLampWelding(tailLampWelding);
		qciFPvcTrans.setFootStepLoose(footStepLoose);
		qciFPvcTrans.setFootStepHardware(footStepHardware);
		qciFPvcTrans.setFitmentEntranceHandRail(fitmentEntranceHandRail);
		qciFPvcTrans.setFootStepRusted(footStepRusted);
		qciFPvcTrans.setFootStepTaperFitted(footStepTaperFitted);
		qciFPvcTrans.setStepRailScrewSited(stepRailScrewSited);
		qciFPvcTrans.setStepRailScrewMissing(stepRailScrewMissing);
		qciFPvcTrans.setChequerSheetNotSealed(chequerSheetNotSealed);
		qciFPvcTrans.setChequerSheetRouglySealed(chequerSheetRouglySealed);
		qciFPvcTrans.setRoughlyCuttingChequerSheet(roughlyCuttingChequerSheet);
		qciFPvcTrans.setChequerSheetNotSitedCorner(chequerSheetNotSitedCorner);
		qciFPvcTrans.setChequerSheetScrewSited(chequerSheetScrewSited);
		qciFPvcTrans.setChequerSheetScrewMissing(chequerSheetScrewMissing);
		qciFPvcTrans.setChequerSheetScrewLoose(chequerSheetScrewLoose);
		qciFPvcTrans.setDoorStopperNotFitted(doorStopperNotFitted);
		qciFPvcTrans.setEndwallSafetyHandleFitted(endwallSafetyHandleFitted);
		qciFPvcTrans.setEndwallSafetyHandleLoose(endwallSafetyHandleLoose);
		qciFPvcTrans.setEndwallSafetyHandleMissing(endwallSafetyHandleMissing);
		qciFPvcTrans.setPvcCuttingPastingEndwalldoor(pvcCuttingPastingEndwalldoor);
		qciFPvcTrans.setPvcCuttingPastingLavatorydoor(pvcCuttingPastingLavatorydoor);
		qciFPvcTrans.setPvcJointWeldingCabinSide(pvcJointWeldingCabinSide);
		qciFPvcTrans.setPvcJointWeldingNonCabinSide(pvcJointWeldingNonCabinSide);
		qciFPvcTrans.setAirBubblePvc(airBubblePvc);
		qciFPvcTrans.setFloorLevelCorridorArea(floorLevelCorridorArea);
		qciFPvcTrans.setUicVestibuleSited(uicVestibuleSited);
		qciFPvcTrans.setUicVestibuleTaper(uicVestibuleTaper);
		qciFPvcTrans.setUicVestibuleCracked(uicVestibuleCracked);
		qciFPvcTrans.setFoamFamSealingNotDone(foamFamSealingNotDone);
		qciFPvcTrans.setFoamFamSealingRoughlyDone(foamFamSealingRoughlyDone);
		qciFPvcTrans.setFitmentDoorHandle(fitmentDoorHandle);
		qciFPvcTrans.setTestingObservationRemark(testingObservationRemark);
		
		
	
	
		//end of code
			try
			{
				Daofpvc dao=new Daofpvc();
				dao.saveData(qciFPvcTrans, furnishingTransaction);
				System.out.println(footPlateJam);
				System.out.println(movementHard);
				return "success";
				
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
				return "error";
			}
		}
	
	
	
	
	
	
	
	public String getFurnishingAssetId() {
		return furnishingAssetId;
	}
	public void setFurnishingAssetId(String furnishingAssetId) {
		this.furnishingAssetId = furnishingAssetId;
	}
	public String getFootPlateJam() {
		return footPlateJam;
	}
	public void setFootPlateJam(String footPlateJam) {
		this.footPlateJam = footPlateJam;
	}
	public String getMovementHard() {
		return movementHard;
	}
	public void setMovementHard(String movementHard) {
		this.movementHard = movementHard;
	}
	public String getFootPlateSpringHardware() {
		return footPlateSpringHardware;
	}
	public void setFootPlateSpringHardware(String footPlateSpringHardware) {
		this.footPlateSpringHardware = footPlateSpringHardware;
	}
	public String getFootPlateSideRubberLoose() {
		return footPlateSideRubberLoose;
	}
	public void setFootPlateSideRubberLoose(String footPlateSideRubberLoose) {
		this.footPlateSideRubberLoose = footPlateSideRubberLoose;
	}
	public String getFootPlateSideRubberMissing() {
		return footPlateSideRubberMissing;
	}
	public void setFootPlateSideRubberMissing(String footPlateSideRubberMissing) {
		this.footPlateSideRubberMissing = footPlateSideRubberMissing;
	}
	public String getTailLampFitted() {
		return tailLampFitted;
	}
	public void setTailLampFitted(String tailLampFitted) {
		this.tailLampFitted = tailLampFitted;
	}
	public String getTailLampHardwareMissing() {
		return tailLampHardwareMissing;
	}
	public void setTailLampHardwareMissing(String tailLampHardwareMissing) {
		this.tailLampHardwareMissing = tailLampHardwareMissing;
	}
	public String getTailLampWelding() {
		return tailLampWelding;
	}
	public void setTailLampWelding(String tailLampWelding) {
		this.tailLampWelding = tailLampWelding;
	}
	public String getFootStepLoose() {
		return footStepLoose;
	}
	public void setFootStepLoose(String footStepLoose) {
		this.footStepLoose = footStepLoose;
	}
	public String getFootStepHardware() {
		return footStepHardware;
	}
	public void setFootStepHardware(String footStepHardware) {
		this.footStepHardware = footStepHardware;
	}
	public String getFitmentEntranceHandRail() {
		return fitmentEntranceHandRail;
	}
	public void setFitmentEntranceHandRail(String fitmentEntranceHandRail) {
		this.fitmentEntranceHandRail = fitmentEntranceHandRail;
	}
	public String getFootStepRusted() {
		return footStepRusted;
	}
	public void setFootStepRusted(String footStepRusted) {
		this.footStepRusted = footStepRusted;
	}
	public String getFootStepTaperFitted() {
		return footStepTaperFitted;
	}
	public void setFootStepTaperFitted(String footStepTaperFitted) {
		this.footStepTaperFitted = footStepTaperFitted;
	}
	public String getStepRailScrewSited() {
		return stepRailScrewSited;
	}
	public void setStepRailScrewSited(String stepRailScrewSited) {
		this.stepRailScrewSited = stepRailScrewSited;
	}
	public String getStepRailScrewMissing() {
		return stepRailScrewMissing;
	}
	public void setStepRailScrewMissing(String stepRailScrewMissing) {
		this.stepRailScrewMissing = stepRailScrewMissing;
	}
	public String getChequerSheetNotSealed() {
		return chequerSheetNotSealed;
	}
	public void setChequerSheetNotSealed(String chequerSheetNotSealed) {
		this.chequerSheetNotSealed = chequerSheetNotSealed;
	}
	public String getChequerSheetRouglySealed() {
		return chequerSheetRouglySealed;
	}
	public void setChequerSheetRouglySealed(String chequerSheetRouglySealed) {
		this.chequerSheetRouglySealed = chequerSheetRouglySealed;
	}
	public String getRoughlyCuttingChequerSheet() {
		return roughlyCuttingChequerSheet;
	}
	public void setRoughlyCuttingChequerSheet(String roughlyCuttingChequerSheet) {
		this.roughlyCuttingChequerSheet = roughlyCuttingChequerSheet;
	}
	public String getChequerSheetNotSitedCorner() {
		return chequerSheetNotSitedCorner;
	}
	public void setChequerSheetNotSitedCorner(String chequerSheetNotSitedCorner) {
		this.chequerSheetNotSitedCorner = chequerSheetNotSitedCorner;
	}
	public String getChequerSheetScrewSited() {
		return chequerSheetScrewSited;
	}
	public void setChequerSheetScrewSited(String chequerSheetScrewSited) {
		this.chequerSheetScrewSited = chequerSheetScrewSited;
	}
	public String getChequerSheetScrewMissing() {
		return chequerSheetScrewMissing;
	}
	public void setChequerSheetScrewMissing(String chequerSheetScrewMissing) {
		this.chequerSheetScrewMissing = chequerSheetScrewMissing;
	}
	public String getChequerSheetScrewLoose() {
		return chequerSheetScrewLoose;
	}
	public void setChequerSheetScrewLoose(String chequerSheetScrewLoose) {
		this.chequerSheetScrewLoose = chequerSheetScrewLoose;
	}
	public String getDoorStopperNotFitted() {
		return doorStopperNotFitted;
	}
	public void setDoorStopperNotFitted(String doorStopperNotFitted) {
		this.doorStopperNotFitted = doorStopperNotFitted;
	}
	public String getEndwallSafetyHandleFitted() {
		return endwallSafetyHandleFitted;
	}
	public void setEndwallSafetyHandleFitted(String endwallSafetyHandleFitted) {
		this.endwallSafetyHandleFitted = endwallSafetyHandleFitted;
	}
	public String getEndwallSafetyHandleLoose() {
		return endwallSafetyHandleLoose;
	}
	public void setEndwallSafetyHandleLoose(String endwallSafetyHandleLoose) {
		this.endwallSafetyHandleLoose = endwallSafetyHandleLoose;
	}
	public String getEndwallSafetyHandleMissing() {
		return endwallSafetyHandleMissing;
	}
	public void setEndwallSafetyHandleMissing(String endwallSafetyHandleMissing) {
		this.endwallSafetyHandleMissing = endwallSafetyHandleMissing;
	}
	public String getPvcCuttingPastingEndwalldoor() {
		return pvcCuttingPastingEndwalldoor;
	}
	public void setPvcCuttingPastingEndwalldoor(String pvcCuttingPastingEndwalldoor) {
		this.pvcCuttingPastingEndwalldoor = pvcCuttingPastingEndwalldoor;
	}
	public String getPvcCuttingPastingLavatorydoor() {
		return pvcCuttingPastingLavatorydoor;
	}
	public void setPvcCuttingPastingLavatorydoor(String pvcCuttingPastingLavatorydoor) {
		this.pvcCuttingPastingLavatorydoor = pvcCuttingPastingLavatorydoor;
	}
	public String getPvcJointWeldingCabinSide() {
		return pvcJointWeldingCabinSide;
	}
	public void setPvcJointWeldingCabinSide(String pvcJointWeldingCabinSide) {
		this.pvcJointWeldingCabinSide = pvcJointWeldingCabinSide;
	}
	public String getPvcJointWeldingNonCabinSide() {
		return pvcJointWeldingNonCabinSide;
	}
	public void setPvcJointWeldingNonCabinSide(String pvcJointWeldingNonCabinSide) {
		this.pvcJointWeldingNonCabinSide = pvcJointWeldingNonCabinSide;
	}
	public String getAirBubblePvc() {
		return airBubblePvc;
	}
	public void setAirBubblePvc(String airBubblePvc) {
		this.airBubblePvc = airBubblePvc;
	}
	public String getFloorLevelCorridorArea() {
		return floorLevelCorridorArea;
	}
	public void setFloorLevelCorridorArea(String floorLevelCorridorArea) {
		this.floorLevelCorridorArea = floorLevelCorridorArea;
	}
	public String getUicVestibuleSited() {
		return uicVestibuleSited;
	}
	public void setUicVestibuleSited(String uicVestibuleSited) {
		this.uicVestibuleSited = uicVestibuleSited;
	}
	public String getUicVestibuleTaper() {
		return uicVestibuleTaper;
	}
	public void setUicVestibuleTaper(String uicVestibuleTaper) {
		this.uicVestibuleTaper = uicVestibuleTaper;
	}
	public String getUicVestibuleCracked() {
		return uicVestibuleCracked;
	}
	public void setUicVestibuleCracked(String uicVestibuleCracked) {
		this.uicVestibuleCracked = uicVestibuleCracked;
	}
	public String getFoamFamSealingNotDone() {
		return foamFamSealingNotDone;
	}
	public void setFoamFamSealingNotDone(String foamFamSealingNotDone) {
		this.foamFamSealingNotDone = foamFamSealingNotDone;
	}
	public String getFoamFamSealingRoughlyDone() {
		return foamFamSealingRoughlyDone;
	}
	public void setFoamFamSealingRoughlyDone(String foamFamSealingRoughlyDone) {
		this.foamFamSealingRoughlyDone = foamFamSealingRoughlyDone;
	}
	public String getFitmentDoorHandle() {
		return fitmentDoorHandle;
	}
	public void setFitmentDoorHandle(String fitmentDoorHandle) {
		this.fitmentDoorHandle = fitmentDoorHandle;
	}
	public String getTestingObservationRemark() {
		return testingObservationRemark;
	}
	public void setTestingObservationRemark(String testingObservationRemark) {
		this.testingObservationRemark = testingObservationRemark;
	}



}
