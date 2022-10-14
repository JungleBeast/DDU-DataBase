class ToggleButton extends Komponent{
  
  ToggleButton(int xin,int yin,int win,int hin){
 x= xin;
 y= yin;
 w= win;
 h= hin;
}
  
  

  void detectClick(){
    if(mouseX > x && mouseX < x + w && 
       mouseY > y && mouseY < y + h){
       OverKnap = !OverKnap;
     }
  }  
  
  
  
 void display(){   
   if(OverKnap){
     fill(200,50,100);
   }else{
     fill(50,200,100);}
     rect(x,y,w,h);
    
   fill(10,50,100);
   rect(x+10,y+10,w-20,h-20); 
   fill(255);
   textSize(25);
   text("Toggle Button", x+25, y+55); 
  }
}
