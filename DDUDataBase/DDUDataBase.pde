import de.bezier.data.sql.*;
MySQL msql;

GUIHandler guiHandler               = new GUIHandler();
Komponent mineKomponenter           = new Komponent();
ClickButton CB                      = new ClickButton(200,500,200,100);
TextField T                         = new TextField(700,540,500,50);
Tab Ta                              = new Tab(100,540,500,50);

//Background
int X_AXIS;
int Y_AXIS;
color c1, c2;

//Import image
PImage Logo;

void settings(){
size(1000,800);

}

void setup(){
Ta = guiHandler.createTab(200,200,600,500);
CB = guiHandler.createButton(400,550,200,100);
T  = guiHandler.createTextField(250,400,500,50);
T  = guiHandler.createTextField(250,300,500,50);


c1 = color(50,157,200);
c2 = color(0,0,49);

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


void draw(){
clear();
strokeWeight(3);

setGradient(0, 0, 1000, 800, c1, c2, Y_AXIS);
guiHandler.displayAll();


}

void mousePressed(){
 guiHandler.detectClick(); 
}

void mouseReleased(){
 guiHandler.detectRelease();    
}

void keyPressed(){
  guiHandler.WriteText();
  T.WriteText();
}
