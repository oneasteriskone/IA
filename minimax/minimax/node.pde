
public class node{

  public node parent;
  public ArrayList<node> nodes;
  public int[][] movimiento;
  
  public node(int[][] movimiento, node parent ){
    this.parent = parent;
    this.nodes = new ArrayList<node>();
    this.movimiento = movimiento;
  }
  
  public void addChild(node n){
    this.nodes.add(n);
  }
  
  public int getChildAmount(){
    return nodes.size();
  }

}