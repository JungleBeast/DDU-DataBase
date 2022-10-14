class Tab extends Komponent{
 String content = "";
 
 Tab(int xin,int yin,int win,int hin){
 x= xin;
 y= yin;
 w= win;
 h= hin; 
 }
  
void display(){
  fill(255);
  rect(x,y,w,h,tl,tr,bl,br);
 }
}
