ArrayList<float[]> table;
int n; // Amount of variables
int m; // Amount of rows

ArrayList<float[]> generateTable(int variables, int rows){
  ArrayList<float[]> res = new ArrayList<float[]>();
  for(int i = 0; i < rows; i++){
    float[] row = new float[variables];
    //for(int j = 0; j < (variables-1); j++){
    for(int j = 0; j < (variables); j++){
      row[j] = (int) random(1, 4);
    }
    //row[variables-1] = ( random(1, 10) )/100;
    println(row);
    res.add(row);
  }
  return res;
}

float prior(ArrayList<float[]> table, int variable, int search){
  float res = 0;
  
  for(int i = 0; i < table.size();i++){
    //println(table.get(i)[variable]);
    // println(table.get(i)[variable]== search);
    if((int) table.get(i)[variable] == search){
      res++;
    }
  }
 
  return res/table.size(); //<>//
}

float conditional(ArrayList<float[]> table, int variableOne, int valueOne, int variableTwo, int valueTwo){
  float res = 0;
  
  for(int i = 0; i < table.size(); i++){
    if(table.get(i)[variableOne] == valueOne && table.get(i)[variableTwo] == valueTwo ){
      res++;
    }
  }
  
  //return res/prior(table, variableTwo, valueTwo);
  return res/table.size()/prior(table, variableTwo, valueTwo);
}



void setup(){
  n = 3;
  m = 100;
  table = generateTable(n , m);
  
  println(prior(table, 1, 1));
  println(conditional(table, 0, 1, 1, 1));
}

void draw(){

}