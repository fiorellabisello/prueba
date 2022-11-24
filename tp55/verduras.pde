class Verduras {
  float posY;
  int tam = 50;
  float posX;
  PImage verdura;
  
  int cantVerduras = 0;
  
  Verduras(float x, float y) {
    verdura= loadImage("verdura1.jpg");
    posX= x;
    posY= y;
  }
  
  void dibujo() {
     posY+=6;
    image(verdura,posX,posY,40,40);
  }
}
      // 6 es velocidad 
  
