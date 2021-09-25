void setup(){
  size(720,640);
  background(250,248,177);

}
void draw(){
  if (mousePressed && (mouseButton == LEFT))
  {
    float xx = random(0,200);
    fill(113,152,183,80);
    rect(0,0,720,640);
  fill(random(255),random(255),random(255));
  strokeWeight(random(50,250));
  stroke(random(255),random(255),random(255));
  ellipse(mouseX,mouseY,xx,xx);
  }
}
