class Juego{
  Cartman personaje = new Cartman();
  //Verduras verdura = new Verduras();
  int escenario = 0;
  int tiempo = 0;
  Fondo fondo = new Fondo();
  Verduras [] verdura = new Verduras[3];
  
  int contador = 20;
  int segundos, tiempoComienzo;
  
      Juego(){
    tiempoComienzo = millis()/1000 + contador;
    for(int i=0; i<verdura.length; i++){
      verdura[i] = new Verduras(random(width), random(-10,0));
    }
    
  }
  
  void actualizar(){
  //LOGICA DE ESTADOS
    if (escenario == 0){inicio();}
    else if (escenario == 1){instrucciones();}
    else if (escenario == 2){jugar();}
    else if (escenario == 3){perdiste();}
    else  if(escenario== 4){ganaste();}
   }
  
  void inicio() {
    player.play();
    escenario = 0;
    textAlign(CENTER);
    fill(0);
    fondo.actualizarFondo();
    text("J = Jugar", height/2, 220);
    text("I = Instrucciones", height/2, width/2);
  }
  
  void instrucciones() {
    escenario = 1;
    background(0);
    textAlign(CENTER);
    fondo.actualizarFondo();
    text("Esquivar las verduras!", height/2, 220);
    text("Tenes 5 vidas!", height/2, 235);
    text("Movimiento: a/d == <-/->", height/2, width/2);
    text("J = Jugar", height/2, 270);
  }

  void perdiste() {
    escenario = 3;
    fondo.actualizarFondo();
    textAlign(CENTER);
    text("PERDISTE", height/2, width/2);
    text("Apretar 'm' para volver", height/2, 270);
  }

  void ganaste(){
    escenario = 4;
    fondo.actualizarFondo();
    textAlign(CENTER);
    text("GANASTE", height/2, width/2);
    text("Apretar 'm' para volver", height/2, 270);
  }

  void keyPressed() {
    if (escenario == 0) {
      if (key == 'i' || key == 'I') {
        instrucciones();
      }
      else if (key == 'j' || key == 'J')
        jugar();
    } 
    if (escenario == 1) {
      if (key == 'j' || key == 'J') 
        jugar();
   }
   if (escenario == 2) {
    if (key == 'a' || keyCode == LEFT) {
      if(personaje.getPos() >= 0) 
        personaje.moverIzq();
    }
    if (key == 'd' || keyCode == RIGHT) {
      if(personaje.getPos() <= 450) 
        personaje.moverDer();
    }
   }
   if (escenario == 3){
     perdiste();
     if(key == 'm' || key == 'M')
        jugar();
   }
    if(escenario == 4){
      ganaste();
      if(key == 'm' || key == 'M')
        jugar();
    }
   }
  
  void jugar(){
    player.pause();
    escenario = 2;
    fondo.actualizarFondo();
    //verdura.dibujo();
    personaje.dibujo();
    segundos = tiempoComienzo - millis()/1000;
    if (segundos < 0)
      tiempoComienzo = millis()/1000 + contador;
    else                
      text(segundos, 80, 80);
      if(segundos == 0)
        escenario = 4;
        
     for (int e=0; e<verdura.length; e++){
       verdura[e].dibujo();
       float distan = dist(verdura[e].posX,verdura[e].posY,personaje.posX, personaje.posY);
       if (distan <= 40){
         perdiste();
       }
       if(verdura[e].posY > height){
           verdura[e].posY= 0;
           verdura[e].posX= random(600);
        }
     }
     
     
     
  }
   
  void dibujo(){
    actualizar();
  }
}
