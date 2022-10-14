class TextField extends Component{
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
  fill(10,50,100);
  rect(x,y,w,h);
  
  textSize(20);
  fill(0);
  text("Fill in text: " + content,x,y);
 
 }
}
