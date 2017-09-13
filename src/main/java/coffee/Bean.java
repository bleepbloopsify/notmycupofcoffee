package coffee;

import java.io.Serializable;
import java.io.IOException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.File;

public class Bean implements Serializable {

  protected String name;
  protected String color;
  protected String description;

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
