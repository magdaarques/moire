import processing.pdf.*;
import com.hamoid.*;

VideoExport videoExport;

float i, y;
boolean con=false;
float v;
void setup() {
  size(500, 500);
  videoExport = new VideoExport(this);
  //videoExport.startMovie();
}

void draw() {
  beginRecord(PDF,"pattern_degree-####.pdf");
  background(255);
  //dividir
  /*for (float y = width; y > 20; y /= 1.20) {
   println(y);
   line(20, y, width-20, y);
   }*/


  //multiplicar
  /*for (float x = 20; x < width; x *= 1.2) {
   line(x, 20, x, height-20);
   }*/

  /*for (float x = width-20; x > 20; x -= 5) {
   line(20, x+20, random(width-20), x);
   }*/

  y=i+v;
  if (y<=0) {
    con=false;
  } else if (y>=320) {
    con=true;
  }
  if (con==false) {
    i++;
    v=0.1;
  } 
  if (con==true) {
    i--;
    v=0.1;
  }
  
  println(i);
  
  pushMatrix();
  stroke(255,0,0);
  rotate(radians(i*v));
  for (float x = width-20; x > 20; x -= 5) {
    line(20, x+20, width-20, x);
  }
  popMatrix();
  pushMatrix();
  stroke(0);
  //translate(0, i*mx);
  for (float x = width-20; x > 20; x -= 5) {
    line(20, x+20, width-20, x);
  }
  popMatrix();
  //noLoop();
  //videoExport.saveFrame();
  endRecord();
}


void keyPressed() {
  if (key == 'q') {
    //videoExport.endMovie();
    exit();
  }
}