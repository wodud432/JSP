package mvc.exam2;

public class BookDto {
	//Dto를 만들어서 값 4개를 한번에 저장하게함, 클래스를 만들어서 속에 내용을 한번에 저장
	//한 뭉테기인 Dto를 저장하기 위한 컬렉션이 필요함(서버쪽에서) 
	private String title;
	private String author;
	private int price;
	private int quantity;
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
	
}
