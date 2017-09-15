import java.util.HashMap;

public class BeanSolve {
  public static void main(String[] args) {
    HashMap<Integer, String> secret = new HashMap<Integer, String>();
    String a = "Siblings";
    secret.put(a.hashCode(), "da secret");
    String b = new String("Teheran");
    System.out.println(a.hashCode() == b.hashCode());
    System.out.println(secret.get(b.hashCode()));
  }
}
