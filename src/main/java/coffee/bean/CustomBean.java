package coffee;
import java.util.Random;

public class CustomBean extends Bean {
  public String description;
  public Bean parent;

  public String roast() {
    if (this.description == null) {
      if (this.parent == null) {
        return "Uh oh it's an orphan bean";
      }
      return this.parent.roast();
    }
    return this.description;
  }

  public void setParent(final Bean parent1, final Bean parent2) {
    Random rand = new Random();
    if (rand.nextInt(1) == 0) {
      this.parent = parent1;
    } else {
      this.parent = parent2;
    }
  }

  public void setDescription(final String description) {
    this.description = description;
  }
}
