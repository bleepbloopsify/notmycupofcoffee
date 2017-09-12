package coffee;

import com.esotericsoftware.yamlbeans.YamlReader;
import com.esotericsoftware.yamlbeans.YamlWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class LegumeLoader {
  private String legumestore;

  public LegumeLoader(String legumestore) {
    this.legumestore = legumestore;
  }

  public Bean getBean(String filename) throws IOException {
    YamlReader reader = new YamlReader(new FileReader(this.legumestore + filename + ".yml"));
    Bean bean = reader.read(Bean.class);
    reader.close();
    return bean;
  }

  public void storeBean(Bean bean, String filename) throws IOException {
    YamlWriter writer = new YamlWriter(new FileWriter(this.legumestore + filename + ".yml"));
    writer.write(bean);
    writer.close();
  }
}
