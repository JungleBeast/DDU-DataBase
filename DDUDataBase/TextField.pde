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
    noFill();
    stroke(100);
    rect(x, y, 300, 20);
    text(content, x+10, y+15);
}
  
  void mousePress(){
  if(mouseX>x && mouseX < x + w && mouseY > y && mouseY<y + h){
  Writing = 2;
  }else{
  Writing = 0;
  }}

void keyPress(){
  if (Writing==2){
  if ( keyPressed && keyCode !=8 ) {
  content +=key; //adder den key som trykkespå til content.
  }else{
  content =content.substring(0, content.length()-1); //bruger substring til at til at læse længden på content og trække det seneste fra.
  }}}
  
}
