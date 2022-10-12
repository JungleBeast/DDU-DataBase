class TextField extends Component{
  
  String content = ""; //laver en "tom" string til at indholde teksten
  int Writing = 0;
  
TextField(int xin, int yin, int win, int hin){
x= xin;
y= yin;
w= win;
h= hin;
}

void Tegn(){
    stroke(100);
    noFill();
    rect(x, y, 300, 20);
    fill(255);
    text("Test" + content, x+10, y+15);
}
  
  void mousePress(){
  if(mouseX>x && mouseX < x + w && mouseY > y && mouseY<y + h){
  SelectedField = true;
  Writing = 2;
  }else{
  Writing = 0;
  }}

void WriteText(){
  if(SelectedField == true){
  if(keyCode != 8){
  content += key;
  }else if(content.length() > 0){
  content = content.substring(0,content.length()-1);  
   }
  }
 }
}
