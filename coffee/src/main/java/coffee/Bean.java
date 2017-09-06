package coffee;

import java.io.Serializable;

public class Bean implements Serializable{
  private static final long serialVersionUID = 7526472295622776147L;

  private String name;
  private String id;
  private int color;

  public void setName(String name) { this.name = name; }
  public void setId(String id) { this.id = id; }
  public void setcolor(int color) { this.color = color; }

  public String getName() { return this.name; }
  public String getId() { return this.id; }
  public int getColor() { return this.color; }
}
