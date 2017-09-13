package coffee;

import java.io.Serializable;
import java.io.IOException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.File;

public class Bean implements Serializable {

  public String filename;
  public String name;
  public double price;
  public String color;
  public String description;

  public String roast() {
    return this.description;
  }

  public String getName() {
    return this.name;
  }

  public void setName(final String name) {
    this.name = name;
  }
}
