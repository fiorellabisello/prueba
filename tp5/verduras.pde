class Verduras {
  float posY;
  int tam = 50;
  float posX;
  PImage [] verduras = new PImage[3];
  //float []  posX = new float [3];
  
  int cantVerduras = 0;
  
  Verduras(float x, float y) {
  /*for(int i=0; i<2;i++){
    verduras[i]= loadImage("verdura[i].jpg");
  }
  */
    verduras[0] = loadImage("verdura1.jpg");
    verduras[1] = loadImage("verdura2.jpg");
    verduras[2] = loadImage("verdura3.jpg");
    posX= x;
    posY= y;
  }
  
  void dibujo() {
    caida();
  }
  
  void caida() {
    posY+=6;
    for(int i = 0; i < 3; i++){
    image(verduras[i],posX,posY,40,40);
        
      }
  }
}
      
  
