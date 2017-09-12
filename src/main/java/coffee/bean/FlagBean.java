package coffee;

// Hello
public class FlagBean extends Bean {
  public String roast(){
    return System.getenv("flag");
  }
}
