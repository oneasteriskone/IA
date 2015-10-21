
public class node{

  public node parent;
  public ArrayList<node> nodes;
  public int movimiento;
  public boolean evaluated;
  
  public node(int movimiento, node parent ){
    this.parent = parent;
    this.nodes = new ArrayList<node>();
    this.movimiento = movimiento;
    this.evaluated = false;
  }
  
  public void addChild(node n){
    this.nodes.add(n);
  }
  
  public int getChildAmount(){
    return nodes.size();
  }
  
  public node next(){
    for(int i = 0; i < nodes.size(); i++){
      if(nodes.get(i).evaluated == false){
        return nodes.get(i);
      }
    }
    if(nodes.get(0).nodes.size() > 0 ){
      print("Geeting next node");
      return nodes.get(0).nodes.get(0);
    }
    return null;
  }

}