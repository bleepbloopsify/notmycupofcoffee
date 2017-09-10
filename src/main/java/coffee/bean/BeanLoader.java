package coffee;

import com.esotericsoftware.yamlbeans.YamlReader;
import java.io.FileReader;
import java.io.IOException;

public class BeanLoader {
  private String beanstore;

  public BeanLoader(String beanstore) {
    this.beanstore = beanstore;
  }

  public Bean getBean(String beanname) throws IOException {
    YamlReader reader = new YamlReader(new FileReader(this.beanstore + beanname + ".yml"));
    return reader.read(Bean.class);
  }
}
