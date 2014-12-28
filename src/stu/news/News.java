package stu.news;

/**
 * News entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class News implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 8100307895978613178L;
	private Long newsId;
	private String newsTitle;
	private String newsAuthor;
	private String newsSource;
	private String newsContent;
	private String newsType;
	private Integer newsHit;
	private String newsFlag;
	private String newsDate;
	private String newsImage;

	// Constructors

	/** default constructor */
	public News() {
	}

	/** minimal constructor */
	public News(String newsTitle, String newsType, Integer newsHit,
			String newsFlag) {
		this.newsTitle = newsTitle;
		this.newsType = newsType;
		this.newsHit = newsHit;
		this.newsFlag = newsFlag;
	}

	/** full constructor */
	public News(String newsTitle, String newsAuthor, String newsSource,
			String newsContent, String newsType, Integer newsHit,
			String newsFlag, String newsDate) {
		this.newsTitle = newsTitle;
		this.newsAuthor = newsAuthor;
		this.newsSource = newsSource;
		this.newsContent = newsContent;
		this.newsType = newsType;
		this.newsHit = newsHit;
		this.newsFlag = newsFlag;
		this.newsDate = newsDate;
	}

	// Property accessors

	public Long getNewsId() {
		return this.newsId;
	}

	public void setNewsId(Long newsId) {
		this.newsId = newsId;
	}

	public String getNewsTitle() {
		return this.newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public String getNewsAuthor() {
		return this.newsAuthor;
	}

	public void setNewsAuthor(String newsAuthor) {
		this.newsAuthor = newsAuthor;
	}

	public String getNewsSource() {
		return this.newsSource;
	}

	public void setNewsSource(String newsSource) {
		this.newsSource = newsSource;
	}

	public String getNewsContent() {
		return this.newsContent;
	}

	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}

	public String getNewsType() {
		return this.newsType;
	}

	public void setNewsType(String newsType) {
		this.newsType = newsType;
	}

	public Integer getNewsHit() {
		return this.newsHit;
	}

	public void setNewsHit(Integer newsHit) {
		this.newsHit = newsHit;
	}

	public String getNewsFlag() {
		return this.newsFlag;
	}

	public void setNewsFlag(String newsFlag) {
		this.newsFlag = newsFlag;
	}

	public String getNewsDate() {
		return this.newsDate;
	}

	public void setNewsDate(String newsDate) {
		this.newsDate = newsDate;
	}

	/**
	 * @return the newsImage
	 */
	public String getNewsImage() {
		return newsImage;
	}

	/**
	 * @param newsImage the newsImage to set
	 */
	public void setNewsImage(String newsImage) {
		this.newsImage = newsImage;
	}

}