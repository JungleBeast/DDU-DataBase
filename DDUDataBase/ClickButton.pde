class ClickButton extends Component{

ClickButton(int xin, int yin, int win, int hin){
x= xin;
y= yin;
w= win;
h= hin;  
    
}
  
 void Tegn(){
  if(mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h && mousePressed){
  noStroke();
  fill(40,200,40);
  rect (x , y , w, h);
  }else{
  fill(100,100,100);
  stroke(10);
  rect (x , y , w , h);
  }}
  
}
