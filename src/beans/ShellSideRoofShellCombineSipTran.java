package beans;
// Generated 23 Jan, 2020 3:54:46 PM by Hibernate Tools 4.0.1.Final

import java.util.Date;

/**
 * ShellSideRoofShellCombineSipTran generated by hbm2java
 */
public class ShellSideRoofShellCombineSipTran implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int shellAssetId;
	private String docNo;
	private String revNo;
	private Date docNoDate;
	private String shiftOfTesting;
	private Date dateOfTesting;
	private String sidewallInspectionVisualHolesObser;
	private String sidewallInspectionVisualHolesRectStatus;
	private String sidewallSuspectedHolesObser;
	private String sidewallSuspectedHolesRectStatus;
	private String sidewallIncompleteWeldingObser;
	private String sidewallIncompleteWeldingRectStatus;
	private String sidewallLeakageTestObser;
	private String sidewallLeakageTestRectStatus;
	private String roofInspectionVisualHolesObser;
	private String roofInspectionVisualHolesRectStatus;
	private String roofSuspectedHolesObser;
	private String roofSuspectedHolesRectStatus;
	private String roofIncompleteWeldingObser;
	private String roofIncompleteWeldingRectStatus;
	private String shellInspectionVisualHolesObser;
	private String shellInspectionVisualHolesRectStatus;
	private String shellIncompleteWeldingObser;
	private String shellIncompleteWeldingRectStatus;
	private String shellInspectionHolesTroughObser;
	private String shellInspectionHolesTroughRectStatus;
	private String shellInspectionHolesRoofObser;
	private String shellInspectionHolesRoofRectStatus;
	private String shellSuspectedHolesObser;
	private String shellSuspectedHolesRectStatus;
	private String shellSideRoofShellCombineTestingStatus;

	public ShellSideRoofShellCombineSipTran() {
	}

	public ShellSideRoofShellCombineSipTran(int shellAssetId) {
		this.shellAssetId = shellAssetId;
	}

	public ShellSideRoofShellCombineSipTran(int shellAssetId, String docNo, String revNo, Date docNoDate,
			String shiftOfTesting, Date dateOfTesting, String sidewallInspectionVisualHolesObser,
			String sidewallInspectionVisualHolesRectStatus, String sidewallSuspectedHolesObser,
			String sidewallSuspectedHolesRectStatus, String sidewallIncompleteWeldingObser,
			String sidewallIncompleteWeldingRectStatus, String sidewallLeakageTestObser,
			String sidewallLeakageTestRectStatus, String roofInspectionVisualHolesObser,
			String roofInspectionVisualHolesRectStatus, String roofSuspectedHolesObser,
			String roofSuspectedHolesRectStatus, String roofIncompleteWeldingObser,
			String roofIncompleteWeldingRectStatus, String shellInspectionVisualHolesObser,
			String shellInspectionVisualHolesRectStatus, String shellIncompleteWeldingObser,
			String shellIncompleteWeldingRectStatus, String shellInspectionHolesTroughObser,
			String shellInspectionHolesTroughRectStatus, String shellInspectionHolesRoofObser,
			String shellInspectionHolesRoofRectStatus, String shellSuspectedHolesObser,
			String shellSuspectedHolesRectStatus, String shellSideRoofShellCombineTestingStatus) {
		this.shellAssetId = shellAssetId;
		this.docNo = docNo;
		this.revNo = revNo;
		this.docNoDate = docNoDate;
		this.shiftOfTesting = shiftOfTesting;
		this.dateOfTesting = dateOfTesting;
		this.sidewallInspectionVisualHolesObser = sidewallInspectionVisualHolesObser;
		this.sidewallInspectionVisualHolesRectStatus = sidewallInspectionVisualHolesRectStatus;
		this.sidewallSuspectedHolesObser = sidewallSuspectedHolesObser;
		this.sidewallSuspectedHolesRectStatus = sidewallSuspectedHolesRectStatus;
		this.sidewallIncompleteWeldingObser = sidewallIncompleteWeldingObser;
		this.sidewallIncompleteWeldingRectStatus = sidewallIncompleteWeldingRectStatus;
		this.sidewallLeakageTestObser = sidewallLeakageTestObser;
		this.sidewallLeakageTestRectStatus = sidewallLeakageTestRectStatus;
		this.roofInspectionVisualHolesObser = roofInspectionVisualHolesObser;
		this.roofInspectionVisualHolesRectStatus = roofInspectionVisualHolesRectStatus;
		this.roofSuspectedHolesObser = roofSuspectedHolesObser;
		this.roofSuspectedHolesRectStatus = roofSuspectedHolesRectStatus;
		this.roofIncompleteWeldingObser = roofIncompleteWeldingObser;
		this.roofIncompleteWeldingRectStatus = roofIncompleteWeldingRectStatus;
		this.shellInspectionVisualHolesObser = shellInspectionVisualHolesObser;
		this.shellInspectionVisualHolesRectStatus = shellInspectionVisualHolesRectStatus;
		this.shellIncompleteWeldingObser = shellIncompleteWeldingObser;
		this.shellIncompleteWeldingRectStatus = shellIncompleteWeldingRectStatus;
		this.shellInspectionHolesTroughObser = shellInspectionHolesTroughObser;
		this.shellInspectionHolesTroughRectStatus = shellInspectionHolesTroughRectStatus;
		this.shellInspectionHolesRoofObser = shellInspectionHolesRoofObser;
		this.shellInspectionHolesRoofRectStatus = shellInspectionHolesRoofRectStatus;
		this.shellSuspectedHolesObser = shellSuspectedHolesObser;
		this.shellSuspectedHolesRectStatus = shellSuspectedHolesRectStatus;
		this.shellSideRoofShellCombineTestingStatus = shellSideRoofShellCombineTestingStatus;
	}

	public int getShellAssetId() {
		return this.shellAssetId;
	}

	public void setShellAssetId(int shellAssetId) {
		this.shellAssetId = shellAssetId;
	}

	public String getDocNo() {
		return this.docNo;
	}

	public void setDocNo(String docNo) {
		this.docNo = docNo;
	}

	public String getRevNo() {
		return this.revNo;
	}

	public void setRevNo(String revNo) {
		this.revNo = revNo;
	}

	public Date getDocNoDate() {
		return this.docNoDate;
	}

	public void setDocNoDate(Date docNoDate) {
		this.docNoDate = docNoDate;
	}

	public String getShiftOfTesting() {
		return this.shiftOfTesting;
	}

	public void setShiftOfTesting(String shiftOfTesting) {
		this.shiftOfTesting = shiftOfTesting;
	}

	public Date getDateOfTesting() {
		return this.dateOfTesting;
	}

	public void setDateOfTesting(Date dateOfTesting) {
		this.dateOfTesting = dateOfTesting;
	}

	public String getSidewallInspectionVisualHolesObser() {
		return this.sidewallInspectionVisualHolesObser;
	}

	public void setSidewallInspectionVisualHolesObser(String sidewallInspectionVisualHolesObser) {
		this.sidewallInspectionVisualHolesObser = sidewallInspectionVisualHolesObser;
	}

	public String getSidewallInspectionVisualHolesRectStatus() {
		return this.sidewallInspectionVisualHolesRectStatus;
	}

	public void setSidewallInspectionVisualHolesRectStatus(String sidewallInspectionVisualHolesRectStatus) {
		this.sidewallInspectionVisualHolesRectStatus = sidewallInspectionVisualHolesRectStatus;
	}

	public String getSidewallSuspectedHolesObser() {
		return this.sidewallSuspectedHolesObser;
	}

	public void setSidewallSuspectedHolesObser(String sidewallSuspectedHolesObser) {
		this.sidewallSuspectedHolesObser = sidewallSuspectedHolesObser;
	}

	public String getSidewallSuspectedHolesRectStatus() {
		return this.sidewallSuspectedHolesRectStatus;
	}

	public void setSidewallSuspectedHolesRectStatus(String sidewallSuspectedHolesRectStatus) {
		this.sidewallSuspectedHolesRectStatus = sidewallSuspectedHolesRectStatus;
	}

	public String getSidewallIncompleteWeldingObser() {
		return this.sidewallIncompleteWeldingObser;
	}

	public void setSidewallIncompleteWeldingObser(String sidewallIncompleteWeldingObser) {
		this.sidewallIncompleteWeldingObser = sidewallIncompleteWeldingObser;
	}

	public String getSidewallIncompleteWeldingRectStatus() {
		return this.sidewallIncompleteWeldingRectStatus;
	}

	public void setSidewallIncompleteWeldingRectStatus(String sidewallIncompleteWeldingRectStatus) {
		this.sidewallIncompleteWeldingRectStatus = sidewallIncompleteWeldingRectStatus;
	}

	public String getSidewallLeakageTestObser() {
		return this.sidewallLeakageTestObser;
	}

	public void setSidewallLeakageTestObser(String sidewallLeakageTestObser) {
		this.sidewallLeakageTestObser = sidewallLeakageTestObser;
	}

	public String getSidewallLeakageTestRectStatus() {
		return this.sidewallLeakageTestRectStatus;
	}

	public void setSidewallLeakageTestRectStatus(String sidewallLeakageTestRectStatus) {
		this.sidewallLeakageTestRectStatus = sidewallLeakageTestRectStatus;
	}

	public String getRoofInspectionVisualHolesObser() {
		return this.roofInspectionVisualHolesObser;
	}

	public void setRoofInspectionVisualHolesObser(String roofInspectionVisualHolesObser) {
		this.roofInspectionVisualHolesObser = roofInspectionVisualHolesObser;
	}

	public String getRoofInspectionVisualHolesRectStatus() {
		return this.roofInspectionVisualHolesRectStatus;
	}

	public void setRoofInspectionVisualHolesRectStatus(String roofInspectionVisualHolesRectStatus) {
		this.roofInspectionVisualHolesRectStatus = roofInspectionVisualHolesRectStatus;
	}

	public String getRoofSuspectedHolesObser() {
		return this.roofSuspectedHolesObser;
	}

	public void setRoofSuspectedHolesObser(String roofSuspectedHolesObser) {
		this.roofSuspectedHolesObser = roofSuspectedHolesObser;
	}

	public String getRoofSuspectedHolesRectStatus() {
		return this.roofSuspectedHolesRectStatus;
	}

	public void setRoofSuspectedHolesRectStatus(String roofSuspectedHolesRectStatus) {
		this.roofSuspectedHolesRectStatus = roofSuspectedHolesRectStatus;
	}

	public String getRoofIncompleteWeldingObser() {
		return this.roofIncompleteWeldingObser;
	}

	public void setRoofIncompleteWeldingObser(String roofIncompleteWeldingObser) {
		this.roofIncompleteWeldingObser = roofIncompleteWeldingObser;
	}

	public String getRoofIncompleteWeldingRectStatus() {
		return this.roofIncompleteWeldingRectStatus;
	}

	public void setRoofIncompleteWeldingRectStatus(String roofIncompleteWeldingRectStatus) {
		this.roofIncompleteWeldingRectStatus = roofIncompleteWeldingRectStatus;
	}

	public String getShellInspectionVisualHolesObser() {
		return this.shellInspectionVisualHolesObser;
	}

	public void setShellInspectionVisualHolesObser(String shellInspectionVisualHolesObser) {
		this.shellInspectionVisualHolesObser = shellInspectionVisualHolesObser;
	}

	public String getShellInspectionVisualHolesRectStatus() {
		return this.shellInspectionVisualHolesRectStatus;
	}

	public void setShellInspectionVisualHolesRectStatus(String shellInspectionVisualHolesRectStatus) {
		this.shellInspectionVisualHolesRectStatus = shellInspectionVisualHolesRectStatus;
	}

	public String getShellIncompleteWeldingObser() {
		return this.shellIncompleteWeldingObser;
	}

	public void setShellIncompleteWeldingObser(String shellIncompleteWeldingObser) {
		this.shellIncompleteWeldingObser = shellIncompleteWeldingObser;
	}

	public String getShellIncompleteWeldingRectStatus() {
		return this.shellIncompleteWeldingRectStatus;
	}

	public void setShellIncompleteWeldingRectStatus(String shellIncompleteWeldingRectStatus) {
		this.shellIncompleteWeldingRectStatus = shellIncompleteWeldingRectStatus;
	}

	public String getShellInspectionHolesTroughObser() {
		return this.shellInspectionHolesTroughObser;
	}

	public void setShellInspectionHolesTroughObser(String shellInspectionHolesTroughObser) {
		this.shellInspectionHolesTroughObser = shellInspectionHolesTroughObser;
	}

	public String getShellInspectionHolesTroughRectStatus() {
		return this.shellInspectionHolesTroughRectStatus;
	}

	public void setShellInspectionHolesTroughRectStatus(String shellInspectionHolesTroughRectStatus) {
		this.shellInspectionHolesTroughRectStatus = shellInspectionHolesTroughRectStatus;
	}

	public String getShellInspectionHolesRoofObser() {
		return this.shellInspectionHolesRoofObser;
	}

	public void setShellInspectionHolesRoofObser(String shellInspectionHolesRoofObser) {
		this.shellInspectionHolesRoofObser = shellInspectionHolesRoofObser;
	}

	public String getShellInspectionHolesRoofRectStatus() {
		return this.shellInspectionHolesRoofRectStatus;
	}

	public void setShellInspectionHolesRoofRectStatus(String shellInspectionHolesRoofRectStatus) {
		this.shellInspectionHolesRoofRectStatus = shellInspectionHolesRoofRectStatus;
	}

	public String getShellSuspectedHolesObser() {
		return this.shellSuspectedHolesObser;
	}

	public void setShellSuspectedHolesObser(String shellSuspectedHolesObser) {
		this.shellSuspectedHolesObser = shellSuspectedHolesObser;
	}

	public String getShellSuspectedHolesRectStatus() {
		return this.shellSuspectedHolesRectStatus;
	}

	public void setShellSuspectedHolesRectStatus(String shellSuspectedHolesRectStatus) {
		this.shellSuspectedHolesRectStatus = shellSuspectedHolesRectStatus;
	}

	public String getShellSideRoofShellCombineTestingStatus() {
		return this.shellSideRoofShellCombineTestingStatus;
	}

	public void setShellSideRoofShellCombineTestingStatus(String shellSideRoofShellCombineTestingStatus) {
		this.shellSideRoofShellCombineTestingStatus = shellSideRoofShellCombineTestingStatus;
	}

}
