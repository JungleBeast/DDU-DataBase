class Tab extends Component{

Tab(int xin, int yin, int win, int hin){
x= xin;
y= yin;
w= win;
h= hin;  
    
}
  
//Parameters
//Universal
float r = 20;
//Top Corners
float tl = r; float tr = r;
//Bottom Corners
float bl = r; float br = r;

void Display(){
fill(255);
rect(x, y, w, h, tl, tr, br, bl);





 }
}
