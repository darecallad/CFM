package mainpages;

public class Food_CFM {

	int id;
	String name;
	String food_type;
	
	public Food_CFM(String name){
		super();
		this.name = name;
	}
	
	
	
	public Food_CFM(int id, String name, String food_type){
		
		super();
		this.id = id;
		this.name = name;
		this.food_type = food_type;
		
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
	public String getfood_type(){
		return food_type;
	}
	public void setfood_type(String food_type){
		this.food_type= food_type;
	}
	
	
}
