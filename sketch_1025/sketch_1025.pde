void setup() {

size(720,640);
  background(250,248,177);

smooth();

}

void draw() {

background(204);

if (keyPressed) {

if ((key == 'h') || (key == 'H')) {

line(30, 60, 90, 60);

}

if ((key == 'n') || (key == 'N')) {

line(30, 20, 90, 100);

}

}

line(30, 20, 30, 100);

line(90, 20, 90, 100);
if (mousePressed && (mouseButton == LEFT))
  {
  stroke(255);
  fill(123,123,233);
  ellipse(mouseX,mouseY,50,50);
}
}
