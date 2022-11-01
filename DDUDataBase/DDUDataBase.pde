import de.bezier.data.sql.*;
SQLite sqlite;

GuiHandler guihand = new GuiHandler();

int Submit=0;
int SignIn=0;
int Email=0;
int Adgang=0;
int lifetime = 0;
int Navn = 0;
int adgangGivet = 0;
String checker1= " ";

void settings(){
  size(1000,1000);
}
TekstFelt t;
TekstFelt y;
TekstFelt l;
Knap K1;
Knap K2;



void setup(){ 
 sqlite = new SQLite(this, "mydatabase_DDU_KONTO_LOGIN.sqlite");
 if(sqlite.connect()){
 }
 
  frameRate(10);
 t = guihand.lavTekstFelt(250,280);
 y = guihand.lavTekstFelt(250,400);
 l = guihand.lavTekstFelt(250,340);
 K1 = guihand.lavKlik(530,500);
 K2 = guihand.lavKlik(310,500);
}


void draw(){
  clear();
  fill(50,10,200);
  rect(0,0,1000,1000);
  fill(100,100,100);
  guihand.displayAll();
  
  fill(200,200,200);
  
  if(Email==0){
  text("E-mail",260,315);
  }
  if(Adgang==0){
  text("Adgangskode",260,435);
  }
  if(Navn==0){
  text("Fornavn",260,375);
  }
  if(adgangGivet > 0){
  fill(20,200,20);  
  rect(0,0,1000,1000);
  fill(300,300,300);
  text("Velkommen",450,480);
  fill(100,100,100);
  }else{
  text("Registrer",330,550);
  text("Log In",565,550);
  fill(100,100,100);
  }
  
  
  if(Submit==1){
     if(sqlite.connect()){
           sqlite.query( "INSERT INTO User (email_id,adgangskode_id,fornavn) VALUES ('"+t.content+ "','"+y.content+"','"+l.content+"') " );
           Submit=0;
           lifetime = 15;
}}

if(SignIn==1){
  if(sqlite.connect()){
     sqlite.query( "SELECT * FROM User" );
     while(sqlite.next()){
       String a = sqlite.getString("email_id");
       String b = sqlite.getString("adgangskode_id");
       
       if(a.equals(t.content) && b.equals(y.content)){
         adgangGivet++;
         }else{
         println("error");
       }}}
  SignIn=SignIn-1;
}

 if(lifetime > 0){
    ellipseMode(CENTER);
    noStroke();
    fill(20,200,20);
    circle(500,350,100);
    fill(100,100,100);
    stroke(3);
    lifetime=lifetime-1;
  }
}

//Hurlumhej
void mousePressed(){
  guihand.detectClick();
  
if(mouseX>530 && mouseX<530+150 && mouseY>500 && mouseY<500+80 && mousePressed){
SignIn++;
//Giv en særm der siger velkommen hvis det er rigtigt. Hvis det er forkert giv en der siger inkorrekt og reset content samt tekstfelterne
}

if(mouseX>310 && mouseX<310+150 && mouseY>500 && mouseY<500+80 && mousePressed){
Submit++;
//reset content og clear begge tekst felter. Fjern "Registere knappen". Kan gøres ved at sætte en boks over den. 
}


if(mouseX>250 && mouseX<250+500 && mouseY>300 && mouseY<280+50 && mousePressed){
Email++;
}
if(mouseX>310 && mouseX<250+500 && mouseY>400 && mouseY<400+50 && mousePressed){
Adgang++;
}
if(mouseX>250 && mouseX<250+500 && mouseY>350 && mouseY<375+50 && mousePressed){
Navn++;
}

}

void keyPressed(){
  guihand.detectKeyPressed();
}
