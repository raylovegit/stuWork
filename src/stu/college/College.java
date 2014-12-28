package stu.college;

/**
 * College entity. @author MyEclipse Persistence Tools
 */

public class College implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -3856857364119164548L;
	private Long colId;
	private String colTitle;
	private String colAuthor;
	private String colSource;
	private String colContent;
	private String colType;
	private String colFlag;
	private String colDate;
	private String colImage;

	// Property accessors

	public Long getColId() {
		return this.colId;
	}

	public void setColId(Long colId) {
		this.colId = colId;
	}

	public String getColTitle() {
		return this.colTitle;
	}

	public void setColTitle(String colTitle) {
		this.colTitle = colTitle;
	}

	public String getColAuthor() {
		return this.colAuthor;
	}

	public void setColAuthor(String colAuthor) {
		this.colAuthor = colAuthor;
	}

	public String getColSource() {
		return this.colSource;
	}

	public void setColSource(String colSource) {
		this.colSource = colSource;
	}

	public String getColContent() {
		return this.colContent;
	}

	public void setColContent(String colContent) {
		this.colContent = colContent;
	}

	public String getColType() {
		return this.colType;
	}

	public void setColType(String colType) {
		this.colType = colType;
	}

	public String getColFlag() {
		return this.colFlag;
	}

	public void setColFlag(String colFlag) {
		this.colFlag = colFlag;
	}

	public String getColDate() {
		return this.colDate;
	}

	public void setColDate(String colDate) {
		this.colDate = colDate;
	}

	/**
	 * @return the colImage
	 */
	public String getColImage() {
		return colImage;
	}

	/**
	 * @param colImage the colImage to set
	 */
	public void setColImage(String colImage) {
		this.colImage = colImage;
	}

	
}