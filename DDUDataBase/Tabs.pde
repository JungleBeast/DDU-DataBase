class Tabs extends Component{

Tabs(int xin, int yin, int win, int hin){
x= xin;
y= yin;
w= win;
h= hin;  
    
}
  
//Parameters
//Universal
float r = 50;
//Top Corners
float tl = r; float tr = r;
//Bottom Corners
float bl = r; float br = r;

void display(){

rect(x, y, w, h, tl, tr, br, bl);





 }
}
