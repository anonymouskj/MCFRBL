package struts.action.master;
import org.hibernate.Session;
import dao.DaoPartitionFrame;

import beans.QciPartitionFrameTrans;
import beans.FurnishingTransaction;
import common.DateUtil;
import hibernateConnect.HibernateConfig;

public class SavePartitionFrame {
	private String furnishingAssetId;
	private String dentMarkPartitionBn;
	private String dentMarkPartitionExceesCut;
	private String excessGapUmouldingPartitionpillar;
	private String middleBearthStopperMissing;
	private String middleBearthStopperLoose;
	private String middleBearthStopperRubberPad;
	private String partitionPillarHardwareLoose;
	private String partitionPillarHardwareMissing;
	private String partitionPillarHardwareTaper;
	private String unwantedHolesPartitionBn;
	private String plasticFilmRemovedPartition;
	private String roughlyPuttyPartition;
	private String partitionPillarZigzag;
	private String partitionPillarProperlySited;
	private String burrFoundPartitionPillar;
	private String burrFoundBerthHoldingBkt;
	private String testingObservationRemark;

	public String saveData1()
	{
		Session session=null;
		session=HibernateConfig.getSession();
		Integer furnishingAssetIdAsInt=Integer.parseInt(furnishingAssetId);
		System.out.println(":>");
		System.out.println("Furnishing asset id: "+furnishingAssetIdAsInt);
		
		FurnishingTransaction furnishingTransaction= (FurnishingTransaction) session.get(FurnishingTransaction.class, furnishingAssetIdAsInt);
//		furnishingTransaction.setIntrPaintFinalFlag(1);
		
		
		
		QciPartitionFrameTrans qciPartitionFrameTrans=new QciPartitionFrameTrans();
		qciPartitionFrameTrans.setFurnishingAssetId(furnishingAssetIdAsInt);
		System.out.println("furnishingAssetIdAsInt: "+furnishingAssetIdAsInt);
		
		qciPartitionFrameTrans.setDentMarkPartitionBn(dentMarkPartitionBn);
		System.out.println(dentMarkPartitionBn);
		qciPartitionFrameTrans.setDentMarkPartitionExceesCut(dentMarkPartitionExceesCut);
		System.out.println(dentMarkPartitionExceesCut);
		qciPartitionFrameTrans.setExcessGapUmouldingPartitionpillar(excessGapUmouldingPartitionpillar);
		System.out.println(excessGapUmouldingPartitionpillar);
		qciPartitionFrameTrans.setMiddleBearthStopperMissing(middleBearthStopperMissing);
		System.out.println(middleBearthStopperMissing);
		qciPartitionFrameTrans.setMiddleBearthStopperLoose(middleBearthStopperLoose);
		qciPartitionFrameTrans.setMiddleBearthStopperRubberPad(middleBearthStopperRubberPad);
		qciPartitionFrameTrans.setPartitionPillarHardwareLoose(partitionPillarHardwareLoose);
		qciPartitionFrameTrans.setPartitionPillarHardwareMissing(partitionPillarHardwareMissing);
		qciPartitionFrameTrans.setPartitionPillarHardwareTaper(partitionPillarHardwareTaper);
		qciPartitionFrameTrans.setUnwantedHolesPartitionBn(unwantedHolesPartitionBn);
		qciPartitionFrameTrans.setPlasticFilmRemovedPartition(plasticFilmRemovedPartition);
		qciPartitionFrameTrans.setRoughlyPuttyPartition(roughlyPuttyPartition);
		qciPartitionFrameTrans.setPartitionPillarZigzag(partitionPillarZigzag);
		qciPartitionFrameTrans.setPartitionPillarProperlySited(partitionPillarProperlySited);
		qciPartitionFrameTrans.setBurrFoundPartitionPillar(burrFoundPartitionPillar);
		qciPartitionFrameTrans.setBurrFoundBerthHoldingBkt(burrFoundBerthHoldingBkt);
		qciPartitionFrameTrans.setTestingObservationRemark(testingObservationRemark);
		
		
	
	
		//end of code
			try
			{
				DaoPartitionFrame dao=new DaoPartitionFrame();
				dao.saveData1(qciPartitionFrameTrans, furnishingTransaction);
				System.out.println(dentMarkPartitionBn);
				System.out.println(dentMarkPartitionExceesCut);
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

	public String getDentMarkPartitionBn() {
		return dentMarkPartitionBn;
	}

	public void setDentMarkPartitionBn(String dentMarkPartitionBn) {
		this.dentMarkPartitionBn = dentMarkPartitionBn;
	}

	public String getDentMarkPartitionExceesCut() {
		return dentMarkPartitionExceesCut;
	}

	public void setDentMarkPartitionExceesCut(String dentMarkPartitionExceesCut) {
		this.dentMarkPartitionExceesCut = dentMarkPartitionExceesCut;
	}

	public String getExcessGapUmouldingPartitionpillar() {
		return excessGapUmouldingPartitionpillar;
	}

	public void setExcessGapUmouldingPartitionpillar(String excessGapUmouldingPartitionpillar) {
		this.excessGapUmouldingPartitionpillar = excessGapUmouldingPartitionpillar;
	}

	public String getMiddleBearthStopperMissing() {
		return middleBearthStopperMissing;
	}

	public void setMiddleBearthStopperMissing(String middleBearthStopperMissing) {
		this.middleBearthStopperMissing = middleBearthStopperMissing;
	}

	public String getMiddleBearthStopperLoose() {
		return middleBearthStopperLoose;
	}

	public void setMiddleBearthStopperLoose(String middleBearthStopperLoose) {
		this.middleBearthStopperLoose = middleBearthStopperLoose;
	}

	public String getMiddleBearthStopperRubberPad() {
		return middleBearthStopperRubberPad;
	}

	public void setMiddleBearthStopperRubberPad(String middleBearthStopperRubberPad) {
		this.middleBearthStopperRubberPad = middleBearthStopperRubberPad;
	}

	public String getPartitionPillarHardwareLoose() {
		return partitionPillarHardwareLoose;
	}

	public void setPartitionPillarHardwareLoose(String partitionPillarHardwareLoose) {
		this.partitionPillarHardwareLoose = partitionPillarHardwareLoose;
	}

	public String getPartitionPillarHardwareMissing() {
		return partitionPillarHardwareMissing;
	}

	public void setPartitionPillarHardwareMissing(String partitionPillarHardwareMissing) {
		this.partitionPillarHardwareMissing = partitionPillarHardwareMissing;
	}

	public String getPartitionPillarHardwareTaper() {
		return partitionPillarHardwareTaper;
	}

	public void setPartitionPillarHardwareTaper(String partitionPillarHardwareTaper) {
		this.partitionPillarHardwareTaper = partitionPillarHardwareTaper;
	}

	public String getUnwantedHolesPartitionBn() {
		return unwantedHolesPartitionBn;
	}

	public void setUnwantedHolesPartitionBn(String unwantedHolesPartitionBn) {
		this.unwantedHolesPartitionBn = unwantedHolesPartitionBn;
	}

	public String getPlasticFilmRemovedPartition() {
		return plasticFilmRemovedPartition;
	}

	public void setPlasticFilmRemovedPartition(String plasticFilmRemovedPartition) {
		this.plasticFilmRemovedPartition = plasticFilmRemovedPartition;
	}

	public String getRoughlyPuttyPartition() {
		return roughlyPuttyPartition;
	}

	public void setRoughlyPuttyPartition(String roughlyPuttyPartition) {
		this.roughlyPuttyPartition = roughlyPuttyPartition;
	}

	public String getPartitionPillarZigzag() {
		return partitionPillarZigzag;
	}

	public void setPartitionPillarZigzag(String partitionPillarZigzag) {
		this.partitionPillarZigzag = partitionPillarZigzag;
	}

	public String getPartitionPillarProperlySited() {
		return partitionPillarProperlySited;
	}

	public void setPartitionPillarProperlySited(String partitionPillarProperlySited) {
		this.partitionPillarProperlySited = partitionPillarProperlySited;
	}

	public String getBurrFoundPartitionPillar() {
		return burrFoundPartitionPillar;
	}

	public void setBurrFoundPartitionPillar(String burrFoundPartitionPillar) {
		this.burrFoundPartitionPillar = burrFoundPartitionPillar;
	}

	public String getBurrFoundBerthHoldingBkt() {
		return burrFoundBerthHoldingBkt;
	}

	public void setBurrFoundBerthHoldingBkt(String burrFoundBerthHoldingBkt) {
		this.burrFoundBerthHoldingBkt = burrFoundBerthHoldingBkt;
	}

	public String getTestingObservationRemark() {
		return testingObservationRemark;
	}

	public void setTestingObservationRemark(String testingObservationRemark) {
		this.testingObservationRemark = testingObservationRemark;
	}


}
