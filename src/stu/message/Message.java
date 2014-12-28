package stu.message;

/**
 * News entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Message implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 8100307895978613178L;
	private Long megId;
	private String megName;
	private String megTitle;
	private String megContent;
	private String megTime;
	private String replyTime;
	private String reply;
	private String flag;
	public Long getMegId() {
		return megId;
	}
	public void setMegId(Long megId) {
		this.megId = megId;
	}
	public String getMegName() {
		return megName;
	}
	public void setMegName(String megName) {
		this.megName = megName;
	}
	public String getMegTitle() {
		return megTitle;
	}
	public void setMegTitle(String megTitle) {
		this.megTitle = megTitle;
	}
	public String getMegContent() {
		return megContent;
	}
	public void setMegContent(String megContent) {
		this.megContent = megContent;
	}
	public String getMegTime() {
		return megTime;
	}
	public void setMegTime(String megTime) {
		this.megTime = megTime;
	}
	
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getReplyTime() {
		return replyTime;
	}
	public void setReplyTime(String replyTime) {
		this.replyTime = replyTime;
	}

}