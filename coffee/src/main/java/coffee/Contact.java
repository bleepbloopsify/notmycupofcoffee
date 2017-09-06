package coffee;

import com.esotericsoftware.yamlbeans.*;
import java.io.FileWriter;
import java.io.File;

public class Contact {

  public String name, id;

  private File file;

  public Contact(){
  }

  public void createFile() {
    try {
      File file = new File("target/coffee/WEB-INF/contact.yml");
      file.createNewFile();
      this.file = file;
    } catch (Exception e) {}
  }

  public String write() {
    try {
      YamlWriter writer = new YamlWriter(new FileWriter(file));
      writer.write(this);
      writer.close();
      return "Worked";
    } catch (Exception e) {

      return e.getMessage();

    }
  }
}
