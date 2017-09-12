package coffee;

import com.esotericsoftware.yamlbeans.YamlWriter;
import com.esotericsoftware.yamlbeans.YamlReader;

import java.io.Serializable;
import java.io.IOException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.File;

public class Bean implements Serializable {

  public String name;
  public double price;
  public String color;

  public String roast() {
    return "string";
  }
}
