class GUIHandler{
 //En ArrayList til at opbevare knapperne
 ArrayList<Komponent> mineKomponenter = new ArrayList<Komponent>();

  ClickButton createButton(int x, int y, int w, int h){
  ClickButton CB = new ClickButton(x,y,w,h);
  mineKomponenter.add(CB);
  return CB;
 }
  ToggleButton createButtonT(int x, int y, int w, int h){
  ToggleButton TB = new ToggleButton(x,y,w,h);
  mineKomponenter.add(TB);
  return TB;
 }
 TextField createTextField(int x, int y, int w, int h){
   TextField T = new TextField(x,y,w,h);
   mineKomponenter.add(T);
   return T;
 }
  Tab createTab(int x, int y, int w, int h){
  Tab Ta = new Tab(x,y,w,h);
  mineKomponenter.add(Ta);
  return Ta;
 }
  void displayAll(){
  for(Komponent k : mineKomponenter){
  k.display();
  }
 }
 
  void detectClick(){
  for(Komponent k : mineKomponenter){
  k.detectClick();
  }
 }
 
 
  void detectRelease(){
  for(Komponent k : mineKomponenter){
  k.Release();
  }  
 }

   void WriteText(){
  for(Komponent k : mineKomponenter){
  k.Release();
  }
 }
}
  
  
  
  
  
  
