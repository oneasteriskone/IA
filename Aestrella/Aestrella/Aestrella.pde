//TODO://
// Add coordinates
// An actual tree
// Leave path
// Pre-calculate the path ( using the nodes.) 


ArrayList<PVector> visitados;
ArrayList<PVector> bestPath;

int startX;
int startY;
int goalX;
int goalY;

PImage img;

boolean validMove(int x, int y){
  print(get(x,y));
  if(!visitados.contains(new PVector(x,y)) &&  get(x,y) == -1){
    return true;
  }
  return false;
}

void aestrella(int startx, int starty, int goalx, int goaly){
  
  int currentx = startx;
  int currenty = starty;
  
  int count = 0;// <<<PRUEBA
  
  while(count < 500){ // <<<PRUEBA
    if( currentx == goalx && currenty == goaly){
      //create path goal. follow your dreams.
      print(visitados);
      count = 501;
      //return true;
    }
    
    visitados.add(new PVector(currentx, currenty));
    
    
    float bestDist = 10000000000.0; // como son 465*465, no importa. 
    PVector bestVecino = null ;
    
    print(currentx+"\n");
    print(currenty+"\n");
    
    int movimiento = 20;
    
    // Se selecciona el siguiente moviemiento con la mejor distancia.
    // es horrible! 
    if( validMove(currentx-movimiento, currenty) && dist(currentx-movimiento, currenty, goalx, goaly) < bestDist){ //izq
      bestDist = dist(currentx-movimiento, currenty, goalx, goaly);
      bestVecino = new PVector(currentx-5, currenty);
      print("izq");
    }
    if( validMove(currentx+movimiento, currenty)&& dist(currentx+movimiento, currenty, goalx, goaly) < bestDist){ //derecha
      bestDist = dist(currentx+movimiento, currenty, goalx, goaly);
      bestVecino = new PVector(currentx+movimiento, currenty);
      print("der");
    } 
    if(  validMove(currentx, currenty-movimiento) && dist(currentx, currenty-movimiento, goalx, goaly) < bestDist){ //abajo
      bestDist = dist(currentx, currenty-movimiento, goalx, goaly);
      bestVecino = new PVector(currentx, currenty-movimiento);
      print("abajo");
    }
    if(  validMove(currentx, currenty+movimiento) && dist(currentx, currenty+movimiento, goalx, goaly) < bestDist){ //arriba
      bestDist = dist(currentx, currenty+movimiento, goalx, goaly);
      bestVecino = new PVector(currentx, currenty+movimiento);
      print("arr");
    }
    
    if(bestVecino == null){
      print("FAIL");
      break;
      
    }
    
    print(bestVecino);
    
    currentx = (int) bestVecino.x;
    currenty = (int) bestVecino.y;
    
    
    visitados.add(bestVecino);
    //print((int) bestVecino.x+"\n");
    //print((int) bestVecino.y+"\n");
    
    count++;
  }
  
}


void setup(){
  size(420, 420);
  visitados = new ArrayList<PVector>();
  
  bestPath = new ArrayList<PVector>(); // un-used... 
  
  startX = (int) random(5,420);
  startY = (int) random(5,420);
  while(validMove(startX,startY)){
    startX = (int) random(5,420);
    startY = (int) random(5,420);
  }
  
  goalX = (int) random(5,420);
  goalY = (int) random(5,420);
  while(validMove(goalX,goalY)){
    goalX = (int) random(5,420);
    goalY = (int) random(5,420);
  }
  
  
  img = loadImage("laberinto.jpg");
  image(img, 20, 20);
  
  
  print("start "+startX+" "+startY);
  print("goal "+goalX+" "+goalY);
  print("\n");
  
  aestrella(startX, startY, goalX, goalY);
}


  int x = startX;
  int y = startY;

  int i = 0; 

void draw(){
  image(img, -20, -20);
  
  fill(204, 102, 0);
  rect(goalX,goalY, 5,5);
  
  fill(94);
  
  rect(visitados.get(i).x, visitados.get(i).y, 20, 20);
  i++;
  
    // TEST
    //color c = get(x, y);
    //fill(153);
    //rect(x,y, 5,5);
    ////delay(1);
    
    //if(c == -1){
    //  x++;
    //  y++;
    //}else{
    //  y++;
    //}
    
  
  
}