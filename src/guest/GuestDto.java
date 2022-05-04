package guest;

public class GuestDto {

	
	private int guestId;
	private String guestName;
	private String guestContent;
	private String guestDate;
	
	public void setGuestId(int guestId) {
		this.guestId = guestId;
	}
	
	public void setGuestName(String guestName) {
		this.guestName= guestName;
	}
	
	public void setGuestContent(String guestContent) {
		this.guestContent = guestContent;
	}
	public void setGuestDate(String guestDate) {
		this.guestDate = guestDate;
	}
	
	public int getGuestId() {
		return this.guestId;
	}
	public String getGuestName() {
		return this.guestName;
	}
	public String getGuestContent() {
		return this.guestContent;
	}
	public String getGuestDate() {
		return this.guestDate;
	}
	
	
}
