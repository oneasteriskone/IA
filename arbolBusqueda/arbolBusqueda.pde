
float successX = 25;
float successY = 25;

float playerX = 10;
float playerY = 10;

void setup(){
  size(30, 30);
  
  background(255);
}



void draw(){
  //triangle(30, 30, 50, 50, 80, 50);
  
  // 30 X 30 MATRIX
  // 0 1 2 3 4 5 6 7 8 9 10 . . . . . . . . . . 20 . . . . . . . . . . 30 
  // . . . . . . . . . . XX . . . . . . . . . . XX . . . . . . . . . . XX
  // . . . . . . . . . . XX . . . . . . . . . . XX . . . . . . . . . . XX
  // . . . . . . . . . . XX . . . . . . . . . . XX . . . . . . . . . . XX
  // . . . . . . . . . . XX . . . . . . . . . . XX . . . . . . . . . . XX
  // . . . . . . . . . . XX . . . . . . . . . . XX . . . . . . . . . . XX
  // . . . . . . . . . . XX . . . . . . . . . . XX . . . . . . . . . . XX
  // . . . . . . . . . . XX . . . . . . . . . . XX . . . . . . . . . . XX
  // . . . . . . . . . . XX . . . . . . . . . . XX . . . . . . . . . . XX
  // . . . . . . . . . . XX . . . . . . . . . . XX . . . . . . . . . . XX
  

  //arbolBusqueda(a,a);
  pintarAgente(playerX, playerY);
  
}

void arbolBusqueda(Tree problema, Estrategia estrategia){

}

void pintarAgente(float x, float y){
  ellipse(playerX, playerY, 10, 10);
}