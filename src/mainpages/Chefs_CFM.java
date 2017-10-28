package mainpages;

public class Chefs_CFM {
	
	int id;
	String name;
	String email;
	String description;
	int rate;
	
	public Chefs_CFM(int id, String name, String email, String description,
			 int rate){
		
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.description = description;
		this.rate = rate;
		
	}
	
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id = id;
	}
	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name = name;
	}
	public String getEmail(){
		return email;
	}
	
	

}
