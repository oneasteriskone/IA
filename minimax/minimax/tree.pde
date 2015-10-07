public class tree{
  public node root;
  
  public void insert(int movimiento){
    if(root == null){
      root = new node(movimiento, null);
    }else{
      insertNew(root, movimiento);
    }
  }
  
  public void insertNew(node root, int movimiento){
    //add nodes to root. 
    root.addChild(new node(movimiento, root));
    
  }
  
}