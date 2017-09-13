package coffee;

// Hello
public class FlagBean extends Bean {
  public FlagBean() {
    this.name = "Flag";
    this.description = System.getenv("flag");
  }
}
