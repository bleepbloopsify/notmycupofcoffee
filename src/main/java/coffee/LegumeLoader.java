package coffee;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.lang.ClassNotFoundException;
import java.lang.IllegalAccessException;
import java.lang.InstantiationException;
import java.lang.reflect.InvocationTargetException;
import java.lang.NoSuchMethodException;
import java.util.ArrayList;
import java.util.Base64;
import java.lang.reflect.Constructor;


public class LegumeLoader {
  private String legumefolder;
  private ArrayList<Bean> beans;

  public LegumeLoader(String legumefolder) throws ClassNotFoundException, IllegalAccessException, InstantiationException, InvocationTargetException, NoSuchMethodException {
    this.legumefolder = legumefolder;
    File dir = new File(this.legumefolder);
    for (File f : dir.listFiles()) {
      String name = f.getName();
      if (f.isFile() && name != "FlagBean") {
        beans.add(this.getBean(name));
      }
    }
  }

  public ArrayList<Bean> getBeans() {
    return beans;
  }

  public Bean getBean(String name) throws ClassNotFoundException, NoSuchMethodException, InstantiationException, IllegalAccessException, InvocationTargetException {
    Class<?> beanClass = Class.forName(name);
    Constructor<?> constructor = beanClass.getConstructor();
    Bean bean = (Bean) constructor.newInstance();
    return bean;
  }

  public String sendBean(Bean bean) throws IOException {
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
