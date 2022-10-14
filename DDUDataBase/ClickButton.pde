class ClickButton extends Komponent{

  ClickButton(int xin,int yin,int win,int hin){
 x= xin;
 y= yin;
 w= win;
 h= hin;
}
  
  
  void detectClick(){
    if(mouseX > x && mouseX < x + w && 
       mouseY > y && mouseY < y + h){
       SelectedField = true;}
       }
  void Release(){
   SelectedField = false;
  }
  
 void Display(){
 
   if(SelectedField){
     fill(50,200,100);
   }else{
     fill(200,50,100);}
   
    rect(x, y, w, h);
   
   fill(10,50,100);
   rect(x+10,y+10,w-20,h-20); 
   fill(255);
   textSize(25);
   text("Click Button", x+35, y+55); 
  }
}
