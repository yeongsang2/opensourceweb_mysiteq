package blog;
import blog.BlogDto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BlogDao {
	private Connection conn;
	private ResultSet rs;
	
	
	public BlogDao() { // ������ ����ɶ����� �ڵ����� db������ �̷�� �� �� �ֵ�����
		try {
			System.out.println("1");
			// localhost:3306 ��Ʈ�� ��ǻ�ͼ�ġ�� mysql�ּ�/��Ű��
			String dbURL = "jdbc:mysql://localhost:3306/web_programming?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
			String dbID = "root";
			String dbPassword = "041102";		// ��й�ȣ�� ���� ������ ���� �����ϴ� ���� ����
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			System.out.println("2");
			e.printStackTrace(); // ������ �������� ���
		}
	}

	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return "";
	}
	public int getNext() {
		String SQL = "SELECT blogId FROM myblog ORDER BY blogId DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // 첫 번째 게시물인 경우
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	
	public int write(String blogTitle, String userName, String blogContent) {
		String SQL = "INSERT INTO myblog VALUES (?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, blogTitle);
			pstmt.setString(3, userName);
			pstmt.setString(4, blogContent);
			pstmt.setString(5, getDate());	
			return pstmt.executeUpdate(); 
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	public ArrayList<BlogDto> getList() {
		String SQL = "SELECT * FROM myblog ORDER BY blogId DESC";
		ArrayList<BlogDto> list = new ArrayList<BlogDto>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BlogDto blogDto = new BlogDto();
				blogDto.setBlogId(rs.getInt(1));
				blogDto.setBlogTitle(rs.getString(2));
				blogDto.setBlogAuthor(rs.getString(3));
				blogDto.setBlogContent(rs.getString(4));
				blogDto.setBlogDate(rs.getString(5));
				
				list.add(blogDto);
			}			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public BlogDto getBlog(int blogId) {
		String SQL = "SELECT * FROM myblog WHERE blogId = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, blogId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				BlogDto blogDto = new BlogDto();
				blogDto.setBlogId(rs.getInt(1));
				blogDto.setBlogTitle(rs.getString(2));
				blogDto.setBlogAuthor(rs.getString(3));
				blogDto.setBlogContent(rs.getString(4));
				blogDto.setBlogDate(rs.getString(5));
				
				return blogDto;
			}			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
