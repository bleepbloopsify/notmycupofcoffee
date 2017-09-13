package coffee;

import java.io.File;
import java.io.ByteArrayOutputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Base64;

public class LegumeLoader {
  private String legumefolder;
  private ArrayList<Bean> beans;

  public LegumeLoader(String legumefolder) {
    this.legumefolder = legumefolder;
    File dir = new File(this.legumefolder);
    for (File f : dir.listFiles()) {
      if (f.isFile()) {
        beans.add(this.getBean(f.getName()));
      }
    }
  }

  public ArrayList<Bean> getBeans() {
    return beans;
  }

  public Bean getBean(String name) {
    Class<?> beanClass = Class.forName(name);
    Constructor<?> constructor = beanClass.getConstructor();
    Bean bean = constructor.newInstance();
    return bean;
  }

  public String sendBean(Bean bean) {
    final ByteArrayOutputStream baos = new ByteArrayOutputStream();
    final ObjectOutputStream oos = new ObjectOutputStream(baos);
    oos.writeObject(bean);
    oos.flush();
    final String result = new String(Base64.getEncoder().encode(baos.toByteArray()));
    return result;
  }

  public Boolean beanExists(String name) {
    for (Bean b : this.beans) {
      if (b.getName() == name) {
        return true;
      }
    }
    return false;
  }

  public void addBean(Bean bean) {
    this.beans.add(bean);
  }
}
