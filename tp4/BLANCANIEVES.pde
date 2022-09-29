class Blancanieves {
  PImage princesa;


  Blancanieves () {
    princesa=loadImage("blancanieves.png");
  }

  void dibujo() {
    image(princesa, mouseX, mouseY);
  }
}
