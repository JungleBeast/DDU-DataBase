class TextField extends Komponent{
String content = "";
 
  TextField(int xin,int yin,int win,int hin){
 x= xin;
 y= yin;
 w= win;
 h= hin;  
}

 void detectClick(){
   if(mouseX > x && mouseX < x + w && 
      mouseY > y && mouseY < y + h){
       OverKnap = true;
       }else{
       OverKnap = false;{
   }
  }
 }
 
void WriteText(){
  if(OverKnap == true){
  if(keyCode != 8){
  content += key;
  }else if(content.length() > 0){
  content = content.substring(0,content.length()-1);  
   }
  }
 }
void display(){
  if(OverKnap == true){
  fill(200,240,255);
  rect(x,y,w,h,tl,tr,bl,br) ;
  } else{
  fill(255);
  rect(x,y,w,h,tl,tr,bl,br) ;  
  }
  
  textSize(30);
  fill(0);
  text(content,x+10,y+35);
 
 }
}
