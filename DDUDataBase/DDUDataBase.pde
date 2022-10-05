//Importing PlugIn
import de.bezier.data.sql.*;
MySQL msql;

//Background
int X_AXIS;
int Y_AXIS;
color c1, c2;

//Import image
PImage Logo;

GUIHandler guiHandler      = new GUIHandler();
Component myComponents     = new Component();

Tab T                      = new Tab(420,340,300,400);
TextField TF               = new TextField(420,340,0,0);
ClickButton CB             = new ClickButton(250, 250, 100, 100);

void setup(){
size(840, 680);
c1 = color(0, 39, 70);
c2 = color(0, 0, 20);
rectMode(CENTER);
noLoop();

T  = guiHandler.createTab(420,340,300,400);
TF = guiHandler.createTextField(420,340,0,0);
CB = guiHandler.createClickButton(250, 250, 100, 100);

Logo = loadImage("EasyNote_logo.png");
}

void draw(){ 
//Background
setGradient(0, 0, 840, 680, c1, c2, Y_AXIS);  
//Logo
Logo.resize(200,150);
image(Logo, 20, 0);

guiHandler.displayAll();
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
void keyPressed(){
  guiHandler.keyPress();
}
