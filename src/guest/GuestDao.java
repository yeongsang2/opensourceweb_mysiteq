package guest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import guest.GuestDto;


public class GuestDao {

	private Connection conn; // connection:db�������ϰ� ���ִ� ��ü
	private ResultSet rs;
	
	public GuestDao() { // ������ ����ɶ����� �ڵ����� db������ �̷�� �� �� �ֵ�����
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
			String SQL = "SELECT guestId FROM guest ORDER BY guestId DESC";
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
		
		public int write(String guestName, String guestContent) {
			String SQL = "INSERT INTO guest VALUES (?, ?, ?, ?)";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, getNext());
				pstmt.setString(2, guestName);
				pstmt.setString(3, guestContent);
				pstmt.setString(4, getDate());	
				return pstmt.executeUpdate(); 
			} catch(Exception e) {
				e.printStackTrace();
			}
			return -1; // 데이터베이스 오류
		}
		public ArrayList<GuestDto> getList() {
			String SQL = "SELECT * FROM guest ORDER BY guestId DESC";
			ArrayList<GuestDto> list = new ArrayList<GuestDto>();
			try {
				
				PreparedStatement pstmt = conn.prepareStatement(SQL);			
				rs = pstmt.executeQuery();
				while (rs.next()) {
					GuestDto guestDto = new GuestDto();
					
					guestDto.setGuestId(rs.getInt(1));
					guestDto.setGuestName(rs.getString(2));
					guestDto.setGuestContent(rs.getString(3));
					guestDto.setGuestDate(rs.getString(4));			
					list.add(guestDto);
				}			
			} catch(Exception e) {
				e.printStackTrace();
			}
			return list;
		}
		
		
	
}
