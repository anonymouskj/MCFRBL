package beans;
// Generated 11 May, 2018 11:03:36 AM by Hibernate Tools 4.0.1.Final

/**
 * IrwisHrPltLieuCalM generated by hbm2java
 */
public class IrwisHrPltLieuCalM implements java.io.Serializable {

	private IrwisHrPltLieuCalMId id;
	private String remarks;

	public IrwisHrPltLieuCalM() {
	}

	public IrwisHrPltLieuCalM(IrwisHrPltLieuCalMId id) {
		this.id = id;
	}

	public IrwisHrPltLieuCalM(IrwisHrPltLieuCalMId id, String remarks) {
		this.id = id;
		this.remarks = remarks;
	}

	public IrwisHrPltLieuCalMId getId() {
		return this.id;
	}

	public void setId(IrwisHrPltLieuCalMId id) {
		this.id = id;
	}

	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

}