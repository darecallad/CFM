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
	// id
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id = id;
	}
	// name
	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name = name;
	}
	//email
	public String getEmail(){
		return email;
	}
	public void setEmail(String email){
		this.email= email;
	}
	
	//description
	public String getDescription(){
		return description;
	}
	public void setDescription(String description){
		this.description = description;
	}
	
	//rate
	
	public int getRate(){
		return rate;
	}
	public void setRate(int rate){
		this.rate = rate;
	}

}
