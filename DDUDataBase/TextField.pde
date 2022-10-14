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
  fill(50,200,100);
  rect(x,y,w,h,tl,tr,bl,br) ;
  } else{
  fill(200,50,100);
  rect(x,y,w,h,tl,tr,bl,br) ;  
  }
  
  textSize(30);
  fill(255);
  text("Fill in text: " + content,x+5,y+35);
 
 }
}
