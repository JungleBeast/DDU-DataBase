class TextField extends Component{
String content = ""; 
  
TextField(int xin, int yin, int win, int hin){
x= xin;
y= yin;
w= win;
h= hin;  
    
}  

boolean ClickTest(){
  if(mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h){
   SelectedField  = true;   
  }else{
    SelectedField = false;
 }
 return SelectedField;
}
void WriteText(){
  if(SelectedField == true){
  if(keyCode !=8){
    content += key;
    }else if(content.length() > 0){
    content = content.substring(0,content.length()-1);
    }
   }
  }

 void display(){
  if(SelectedField == true){
  fill(0);
  rect(x, y, w, h, tl, tr, br, bl);
  }
  textSize(30);
  fill(0);
  text("Insert text " + content,x,y);
 }
 
}
