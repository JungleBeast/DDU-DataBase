class GUIHandler{
//Arraylist for the components
ArrayList<Component> myComponents = new ArrayList<Component>();

//Components
Tab createTab(int x, int y, int w, int h){
Tab T = new Tab(x,y,w,h);
myComponents.add(T);
return T;
}
 TextField createTextField(int x, int y, int w, int h){ 
 TextField TF = new TextField(x,y,w,h);
 myComponents.add(T);
   return TF;
 }

 void displayAll(){
  for(Component C : myComponents){
  C.Display();
  }
 }  
 void WriteText(){
 for(Component C : myComponents){
  C.WriteText();
  }
 }
}
