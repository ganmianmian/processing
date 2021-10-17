
String message = "dog is shaking";

Letter[] letters;
 
void setup() {
  fill(233,221,14);
  size(500, 180);
textSize(48);

  letters = new Letter[message.length()];
  int aaa = 16;
  for (int i = 0; i < message.length(); i++) {
    letters[i] = new Letter(aaa,100,message.charAt(i));
    aaa += textWidth(message.charAt(i));
  }
}
 
void draw() {
  background(255);
  for (int i = 0; i < letters.length; i++) {

    letters[i].display();
     

    if (mousePressed) {
      letters[i].shake();
    } else {
      letters[i].home();
    }
  }
}
 
class Letter {
  char letter;
  float homex,homey;
  float x,y;
 
  Letter (float x_, float y_, char letter_) {
    homex = x = x_;
    homey = y = y_;
    letter = letter_;
  }

  void display() {
    fill(random(255),random(255),random(255));
    textAlign(LEFT);
    text(letter,x,y);
  }
 

  void shake() {
    x += random(-4,10);
    y += random(-4,6);
  }
 

  void home() {
    x = homex;
    y = homey;
  }
}
