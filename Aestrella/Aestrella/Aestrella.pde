
ArrayList<PVector> lista;
ArrayList<PVector> visitados;
ArrayList<PVector> bestPath;

int startX;
int startY;
int goalX;
int goalY;

PImage img;

boolean validMove(int x, int y){
  if(!visitados.contains(new PVector(x,y)) && get(x,y) == -1){
    return true;
  }
  return false;
}

void aestrella(int startx, int starty, int goalx, int goaly){
  
  int currentx = startx;
  int currenty = starty;
  
  int count = 0;
  
  while(count < 100){
    if( currentx == goalx && currenty == goaly){
      //create path goal. follow your dreams.
      print(visitados);
      //return true;
    }
    
    visitados.add(new PVector(currentx, currenty));
    
    
    float bestDist = 10000000000.0; // como son 465*465, no importa. 
    PVector bestVecino = null ;
    
    print(currentx+"\n");
    print(currenty+"\n");
    
    // es horrible! 
    if( validMove(currentx-1, currenty) && dist(currentx-1, currenty, goalx, goaly) < bestDist){ //izq
      bestDist = dist(currentx-1, currenty, goalx, goaly);
      bestVecino = new PVector(currentx-1, currenty);
      print("izq");
    }
    if( validMove(currentx+1, currenty)&& dist(currentx+1, currenty, goalx, goaly) < bestDist){ //derecha
      bestDist = dist(currentx+1, currenty, goalx, goaly);
      bestVecino = new PVector(currentx+1, currenty);
      print("der");
    } 
    if(  validMove(currentx, currenty-1) && dist(currentx, currenty-1, goalx, goaly) < bestDist){ //abajo
      bestDist = dist(currentx, currenty-1, goalx, goaly);
      bestVecino = new PVector(currentx, currenty-1);
      print("abajo");
    }
    if(  validMove(currentx, currenty+1) && dist(currentx, currenty+1, goalx, goaly) < bestDist){ //arriba
      bestDist = dist(currentx, currenty+1, goalx, goaly);
      bestVecino = new PVector(currentx, currenty+1);
      print("arr");
    }
    
    print(bestVecino);
    
    currentx = (int) bestVecino.x;
    currenty = (int) bestVecino.y;
    
    
    visitados.add(bestVecino);
    print((int) bestVecino.x+"\n");
    print((int) bestVecino.y+"\n");
    
    count++;
  }
  
}


void setup(){
  size(465, 465);
  lista = new ArrayList<PVector>();
  visitados = new ArrayList<PVector>();
  bestPath = new ArrayList<PVector>();
  startX = (int) random(465);
  startY = (int) random(465);
  goalX = (int) random(465);
  goalY = (int) random(465);
  
  img = loadImage("laberinto.jpg");
  image(img, 0, 0);
  
  
  print("start "+startX+" "+startY);
  print("goal "+goalX+" "+goalY);
  print("\n");
  
  aestrella(startX, startY, goalX, goalY);
}


  int x = startX;
  int y = startY;

  int i = 0; 

void draw(){
  image(img, 0, 0);
  
  fill(204, 102, 0);
  rect(goalX,goalY, 5,5);
  
  
    rect(visitados.get(i).x, visitados.get(i).y, 50, 50);
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