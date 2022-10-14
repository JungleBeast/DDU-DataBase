class GUIHandler{
 //En ArrayList til at opbevare knapperne
 ArrayList<Komponent> mineKomponenter = new ArrayList<Komponent>();

  ClickButton createButton(int x, int y, int w, int h){
  ClickButton CB = new ClickButton(x,y,w,h);
  mineKomponenter.add(CB);
  return CB;
 }
 TextField createTextField(int x, int y, int w, int h){
 TextField TF = new TextField(x,y,w,h);
 mineKomponenter.add(TF);
   return TF;
 }
 
  Tab createTab(int x, int y, int w, int h){
  Tab T = new Tab(x,y,w,h);
  mineKomponenter.add(T);
  return T;
 }

  void displayAll(){
  for(Komponent k : mineKomponenter){
  k.Display();
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
  
