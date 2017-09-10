package coffee;

import com.esotericsoftware.yamlbeans.YamlWriter;
import com.esotericsoftware.yamlbeans.YamlReader;

import java.io.Serializable;
import java.io.IOException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.File;

public class Bean implements Serializable{

  public String name;
  public double price;

  public void save(String beanstore) throws IOException {
    File f = new File(beanstore + "beans/" + this.name + ".yml");
    f.createNewFile();
    YamlWriter writer = new YamlWriter(new FileWriter(f));
    writer.write(this);
    writer.close();
  }

  public String Beananza(String location) throws IOException {
    return "Hello";
  }
}
