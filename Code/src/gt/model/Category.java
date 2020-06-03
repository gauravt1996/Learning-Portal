package gt.model;

public class Category {

	private String categoryid;
	private String categoryname;
	private String categoryicon;
	private String categorydesc;

	public String getCategoryid(){
		return categoryid;
	}
	
	public void setCategoryid(String categoryid){
		this.categoryid=categoryid;
	}
	
	public String getCategoryname(){
		return categoryname;
	}
	
	public void setCategoryname(String categoryname){
		this.categoryname=categoryname;
	}

	public String getCategoryicon() {
		return categoryicon;
	}

	public void setCategoryicon(String categoryicon) {
		this.categoryicon = categoryicon;
	}

	public String getCategorydesc() {
		return categorydesc;
	}

	public void setCategorydesc(String categorydesc) {
		this.categorydesc = categorydesc;
	}	
}
