package coffee;

// Hello
public class FlagBean extends Bean {
  public FlagBean() {
    this.name = "Flag";
  }
  public String roast() {
    return System.getenv("flag");
  }
}
