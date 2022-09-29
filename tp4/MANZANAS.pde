class Manzanas {

  PImage manzanaa;
  float posX, posY, tam;

  Manzanas() {
    manzanaa = loadImage("manzana.png");
    tam=50;
    posX=random(0, width-tam);
    posY=random(0, height-tam);
  }

  void dibujo() {
    image(manzanaa, posX, posY, tam, tam);
  }
}
