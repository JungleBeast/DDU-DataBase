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
       SelectedField = true;
       }else{
       SelectedField = false;{
   }
  }
 }
 
void WriteText(){
  if(SelectedField == true){
  if(keyCode != 8){
  content += key;
  }else if(content.length() > 0){
  content = content.substring(0,content.length()-1);  
   }
  }
 }
void Display(){
  if(SelectedField == true){
  fill(50,200,100);
  rect(x - 10,y - 10,w+20,h + 20) ;
  } else{
  fill(200,50,100);
  rect(x - 10,y - 10,w+20,h + 20) ;  
  }
  
  fill(10,50,100);
  rect(x,y,w,h);
  
  textSize(30);
  fill(255);
  text("Fill in text: " + content,x+5,y+35);
 
 }
}
