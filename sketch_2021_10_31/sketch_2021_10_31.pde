float angle=0;
void setup() {
 size(400, 800,P3D);
}

void draw() {
ortho(-width/2, width/2, -height/2, height/2); // Same as ortho()
 background(0,0,0);
 angle += 0.02;
 
 pushMatrix();
 translate(width/2, height/2, 0);
 rotateX(-PI/4);
 rotateY(PI/4);
 rotateY(2*(angle));
 drawCube(150);
 popMatrix();
 
 pushMatrix();
 translate(width/2, height/2, 0);
  rotateX(-PI/4);
  rotateY(-PI/4);
  rotateZ(1.5*(angle));
  drawCube(100);
 popMatrix();
 
 pushMatrix();
 translate(width/2, height/2, 0);
 rotateX(-PI/4);
 rotateY(PI/4);
 rotateZ(angle);
 drawCube(50);
 popMatrix();
 }
 void drawCube(int size){
   int cubesize=size;
   int spheresize=3;
   pushMatrix();
   stroke(250,170,20);
   line(-cubesize/2,cubesize/2,cubesize/2,cubesize/2,cubesize/2,cubesize/2);
   line(cubesize/2,cubesize/2,cubesize/2,cubesize/2,-cubesize/2,cubesize/2);
   line(cubesize/2,-cubesize/2,cubesize/2,-cubesize/2,-cubesize/2,cubesize/2);
   line(-cubesize/2,-cubesize/2,cubesize/2,-cubesize/2,cubesize/2,cubesize/2);
   
   line(-cubesize/2,cubesize/2,-cubesize/2,cubesize/2,cubesize/2,-cubesize/2);
   line(cubesize/2,cubesize/2,-cubesize/2,cubesize/2,-cubesize/2,-cubesize/2);
   line(cubesize/2,-cubesize/2,-cubesize/2,-cubesize/2,-cubesize/2,-cubesize/2);
   line(-cubesize/2,-cubesize/2,-cubesize/2,-cubesize/2,cubesize/2,-cubesize/2);
   
   line(-cubesize/2,cubesize/2,-cubesize/2,-cubesize/2,cubesize/2,cubesize/2);
   line(cubesize/2,cubesize/2,-cubesize/2,cubesize/2,cubesize/2,cubesize/2);
   line(cubesize/2,-cubesize/2,-cubesize/2,cubesize/2,-cubesize/2,cubesize/2);
   line(-cubesize/2,-cubesize/2,-cubesize/2,-cubesize/2,-cubesize/2,cubesize/2);
   popMatrix();
   
   //画球
   pushMatrix();
   fill(250,170,20);
   
   pushMatrix();
   translate(-cubesize/2,cubesize/2,cubesize/2);
   sphere(spheresize);
   popMatrix();
   
   pushMatrix();
   translate(cubesize/2,cubesize/2,cubesize/2);
   sphere(spheresize);
   popMatrix();
   
   
   pushMatrix();
   translate(-cubesize/2,-cubesize/2,cubesize/2);
   sphere(spheresize);
   popMatrix();
   
   pushMatrix();
   translate(cubesize/2,-cubesize/2,cubesize/2);
   sphere(spheresize);
   popMatrix();
   
   pushMatrix();
   translate(-cubesize/2,cubesize/2,-cubesize/2);
   sphere(spheresize);
   popMatrix();
   
   pushMatrix();
   translate(cubesize/2,cubesize/2,-cubesize/2);
   sphere(spheresize);
   popMatrix();
   
   
   pushMatrix();
   translate(-cubesize/2,-cubesize/2,-cubesize/2);
   sphere(spheresize);
   popMatrix();
   
   pushMatrix();
   translate(cubesize/2,-cubesize/2,-cubesize/2);
   sphere(spheresize);
   popMatrix();
   
   popMatrix();
 }

import gifAnimation.*;
GifMaker exp;
float x ;
float y ;
void setup(){
  exp = new GifMaker(this,"1.gif");
  exp.setRepeat(0);
  exp.setDelay(50);
  size(400,800);
  x = width/2;
  y = height/2;
};
 void draw(){
 if (frameCount % 1 == 0){
   exp.addFrame();
 }
 x+=random (-3,3);
 y+=random (-3,3);
 ellipse(x,y,25,25);
 }
 void mousePressed(){
   exp.finish();
 }
