import de.bezier.data.sql.*;
MySQL msql;

int X_AXIS;
int Y_AXIS;

color c1, c2;

void setup(){
size(840, 680);

c1 = color(0, 39, 70);
c2 = color(0, 0, 20);

noLoop();

}

void draw(){
  
//Background
setGradient(0, 0, 840, 680, c1, c2, Y_AXIS);  
}



void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }  
  }
}
