package coffee;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.io.IOException;

public class FlagBean extends Bean {
  public String Beananza(String root) throws IOException{
    byte[] encoded = Files.readAllBytes(Paths.get(root + "flag.txt"));
    return new String(encoded, "utf-8");
  }
}
