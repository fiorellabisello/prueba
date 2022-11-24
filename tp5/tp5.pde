import ddf.minim.*;

Minim minim;
AudioPlayer player;
Juego juego;

void setup() {
  size (600, 600);  
  juego = new Juego();
  minim = new Minim(this);
  player = minim.loadFile("intro.mp3");
}

void draw() {
  juego.dibujo();
  juego.keyPressed();
}
