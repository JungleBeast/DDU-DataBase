class Tab extends Komponent{
Tab(int xin, int yin, int win, int hin){
x= xin;
y= yin;
w= win;
h= hin;  
    
}
  

void Display(){
fill(255);
rect(x, y, w, h, tl, tr, br, bl);

 }
}
