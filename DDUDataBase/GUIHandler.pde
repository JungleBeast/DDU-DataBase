class GUIHandler{
//Arraylist for the components
ArrayList<Component> myComponents = new ArrayList<Component>();

//Components
Tab createTab(int x, int y, int w, int h){
Tab T = new Tab(x,y,w,h);
myComponents.add(T);
return T;
}

 void displayAll(){
  for(Component C : myComponents){
  C.Display();
  }
 }  
}
