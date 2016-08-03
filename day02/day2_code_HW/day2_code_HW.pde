boolean logo = false;

int x;
int y;

int w = 370;
int h = 370;

int logoColorR = 100;
int logoColorG = 100;
int logoColorB = 100;

void setup(){
  
  rectMode(CENTER);
  size(400,400);
  background(255,255,255);
  x = width/2;
  y = height/2;
 
}

void draw(){
 
 fill(logoColorR,logoColorG,logoColorB);
 noStroke();
 rect(x,y,w,h,90);
 
 stroke(255);
 strokeWeight(25);
 rect(x,y,width-160,height-160,60);
 
 stroke(255);
 strokeWeight(25);
 ellipse(x,y,width-290,height-290);
 noStroke();
 fill(255);
 ellipse(272,128,32,32);
 
 if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2 && mousePressed) {
    logo = true;
  } else {
    logo = false;
  }
  if (logo) {
    logoColorR = (int) random(256);
    logoColorG = (int) random(256);
    logoColorB = (int) random(256);
    
  } else { 
    logoColorR = 100;
    logoColorG = 100;
    logoColorB = 100;
  }


}