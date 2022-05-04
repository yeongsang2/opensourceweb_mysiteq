package blog;

public class BlogDto {
	private int blogId;
	private String blogTitle;
	private String blogContent;
	private String blogAuthor;
	private String blogDate;
	
	public int getBlogId() {
		return blogId;
	}
	public String getBlogTitle() {
		return blogTitle;
	}
	public String getBlogContent() {
		return blogContent;
	}
	public String getBlogAuthor() {
		return blogAuthor;
	}
	public String getBlogDate() {
		return blogDate;
	}
	
	public void setBlogId(int blogId) {
		this.blogId = blogId;
	}
	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}
	public void setBlogContent(String blogContent) {
		this.blogContent = blogContent;
	}
	public void setBlogDate(String blogDate) {
		this.blogDate = blogDate;
	}
	public void setBlogAuthor(String blogAuthor) {
		this.blogAuthor = blogAuthor;
	}
	
	
}
