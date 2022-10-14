class ClickButton extends Component{

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
     fill(0,0,200);
   }else{
     fill(255);}
   
    rect(x, y, w, h, tl, tr, br, bl);
   
   fill(255);
   textSize(25);
   text("Click Button", x+35, y+55); 
  }
}
