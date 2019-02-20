class Player {
  
  private String name;
  private Gender gender;
  
  public Player(String name, Gender gender){
   this.name = name;
   this.gender = gender;
  }
  
  public void setGender(Gender gender){
   this.gender = gender; 
  }
  
  public void setName(String name){
   this.name = name; 
  }
  
  public Gender getGender(){
   return this.gender; 
  }
  
  public String getName(){
   return this.name; 
  }
  
}

enum Gender{
  male("Maennlich"), female("Weiblich");
  
  String name;
  
  private Gender(String name){
    this.name = name;
  }
  
  private String getDef(){
   return this.name; 
  }
  
}
