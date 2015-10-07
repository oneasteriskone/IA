
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

}