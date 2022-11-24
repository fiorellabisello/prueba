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
//import es para llamar a la carpeta minim que descargue en el programa, la cual es una libreria de sonidos.
// todo lo de abajo son objetos de la clase minim , y audioplayer es para llamar a un sonido especifico, la cual es mp3 etc etc
// mimin es una clase hecha x defecto, no hay q crearla
