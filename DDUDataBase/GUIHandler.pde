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
 myComponents.add(TF);
   return TF;
 }
 
 ClickButton createClickButton(int x, int y, int w, int h){ 
 ClickButton CB = new ClickButton(x,y,w,h);
 myComponents.add(CB);
   return CB;
 }

void displayAll(){
 for(Component C : myComponents){
    C.Tegn();
}}
  
  void detectClick(){
  for(Component C : myComponents){
    C.mousePress();
}}
  
  void detectKeyPressed(){
    for(Component C : myComponents){
    C.keyPress();
}}
  
  
  
}
