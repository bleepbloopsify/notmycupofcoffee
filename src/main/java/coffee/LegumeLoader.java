package coffee;

import com.esotericsoftware.yamlbeans.YamlReader;
import com.esotericsoftware.yamlbeans.YamlWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.File;
import java.util.ArrayList;

public class LegumeLoader {
  private String legumestore;

  public LegumeLoader(String legumestore) {
    this.legumestore = legumestore;
  }

  public ArrayList<Bean> getBeans() throws IOException {
    File dir = new File(this.legumestore);
    ArrayList<Bean> beans = new ArrayList<Bean>();
    for (File f : dir.listFiles()) {
      if (f.isFile()) {
        beans.add(this.getBean(f.getName()));
      }
    }
    return beans;
  }

  public Bean getBean(String filename) throws IOException {
    YamlReader reader = new YamlReader(new FileReader(this.legumestore + filename));
    Bean bean = reader.read(Bean.class);
    reader.close();
    return bean;
  }

  public void storeBean(Bean bean, String filename) throws IOException {
    YamlWriter writer = new YamlWriter(new FileWriter(this.legumestore + filename));
    writer.write(bean);
    writer.close();
  }
}
