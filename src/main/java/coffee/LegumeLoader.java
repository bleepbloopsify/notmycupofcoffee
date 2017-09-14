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
  private String[] beanNames = {"Covfefe", "Dennis", "Ghost", "Hyper", "MG",
                                "Passion", "Raid", "Tnek", "Yeet"};

  public LegumeLoader(String legumefolder) throws ClassNotFoundException, IllegalAccessException, InstantiationException, InvocationTargetException, NoSuchMethodException {
    this.legumefolder = legumefolder;
    beans = new ArrayList<Bean>();
    for (String name : this.beanNames) {
      beans.add(this.getBean(name + "Bean"));
    }
  }

  public ArrayList<Bean> getBeans() {
    return beans;
  }

  public Bean getBean(String name) throws ClassNotFoundException, NoSuchMethodException, InstantiationException, IllegalAccessException, InvocationTargetException {
    Class<?> beanClass = Class.forName("coffee." + name);
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

  public Boolean beanLimit() {
    if (beans.size() > 30) {
      return true;
    }
    return false;
  }

  public void addBean(Bean bean) {
    this.beans.add(bean);
  }
}
