// desarrollo la clase cartman
class Cartman{
  PImage personaje = loadImage("cartman.png");
  int posX = 200;
  int posY = 500;
  // declaro imagen y posiciones de mi personaje
  
  void dibujo(){
    image(personaje, posX, posY, 80,80);
  }
  //variable para cartman
  void moverIzq(){
    this.posX = this.posX - 6;
    this.dibujo();
  }
  
  void moverDer(){
    this.posX = this.posX + 6;
    this.dibujo();
  }
 
  public int getPos(){
    return this.posX;
  }
  
}
