 void buildPlayTree(tree t){
   int start = 0;
    t.insert(start);
    //calculate the root node posibilities
    calculatePosibilities(start, t.root);
    
    //Are more posibilities, possible? 
    boolean morePossibilities = true;
    while(morePossibilities){
      iterateNodesForPosibilities()
      
    }
    
    
    
    print("Amount Of Children"+t.root.getChildAmount());
 }
 
 int iterateNodesForPosibilities(node ne){
     int amountOfPosibilities = 0;
     for(int i = 0; i < ne.getChildAmount(); i++){
      node n = ne.nodes.get(i);
      amountOfPosibilities = calculatePosibilities(n.movimiento, n );
    }
    if(amountOfPosibilities > 0){
        iterateNodesForPosibilities();
    } 
    
    return amountOfPosibilities;
 }
 
 int calculatePosibilities(int movimiento, node n){
   int[][] movimientoParsed = intToPosition(movimiento);
   print(movimientoParsed[0][0]);
   for(int i = 0; i <= 2; i++){
     for(int j = 0; j <= 2; j++){
       if(movimientoParsed[j][i] == 0){
         //print("New movement in "+j+" "+i); // Use this to debug
         //print(movimientoParsed[j][i]);
         int[][] newMove = movimientoParsed;
         newMove[j][i] = 1;
         n.addChild(new node(positionsToInt(newMove), n));
       }
       //}else{
       //   print("No new movement in "+j+" "+i);
       //}
       //print("\n");
     }
   }
   return n.getChildAmount();
 }
 
 int positionsToInt(int[][] movimiento){
   int res = 0;
   
   if(movimiento[2][2] == 1){
     res+=pow(2,0);
   }
   if(movimiento[1][2] == 1){
     res+=pow(2,1);
   }
   if(movimiento[0][2] == 1){
     res+=pow(2,2);
   }
   if(movimiento[2][1] == 1){
     res+=pow(2,3);
   }
   if(movimiento[1][1] == 1){
     res+=pow(2,4);
   }
   if(movimiento[1][0] == 1){
     res+=pow(2,5);
   }
   if(movimiento[0][2] == 1){
     res+=pow(2,6);
   }
   if(movimiento[0][1] == 1){
     res+=pow(2,7);
   }
   if(movimiento[0][0] == 1){
     res+=pow(2,8);
   }
   
   return res;
   
 }
 
 int[][] intToPosition(int n){
   int[][] res = new int[3][3];
   
   if(n >= 256){
     n-=256;
     res[0][0] = 1;
   }
   if(n >= 128){
     n-=128;
     res[1][0] = 1;
   }
   if(n >= 64){
     n-=64;
     res[2][0] = 1;
   }
   if(n >= 32){
     n-=32;
     res[0][1] = 1;
   }
   if(n >= 16){
     n-=16;
     res[1][1] = 1;
   }
   if(n >= 8){
     n-=8;
     res[2][1] = 1;
   }
   if(n >= 4){
     n-=4;
     res[0][2] = 1;
   }
   if(n >= 2){
     n-=2;
     res[1][2] = 1;
   }
   if(n >= 1){
     n-=1;
     res[2][2] = 1;
   }
   
   
   
   return res; //<>//
 }
 