//CLASE PRINCIPAL
class Fondo {

  //otras clases
  Blancanieves blancanieves;
  Manzanas m1, m2, m3;
  //esta clase
  PImage fondo;

  Fondo () {
    //otras clases
    blancanieves = new Blancanieves();
    m1= new Manzanas();
    m2= new Manzanas();
    m3= new Manzanas();
    // esta clase
    fondo=loadImage("fondo1.jpg");
  }

  void dibujo() {
    //otras clases
    image(fondo, 0, 0, 500, 500);
    //esta clase
    blancanieves.dibujo();
    m1.dibujo();
    m2.dibujo();
    m3.dibujo();
  }
}
