package coffee;

import javax.servlet.http.*;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.lang.ClassNotFoundException;
import java.util.Base64;


public class BeanBreeder {
  public LegumeLoader loader;

  public BeanBreeder(LegumeLoader loader) {
    this.loader = loader;
  }

  public Bean breedBean(Bean parent1, Bean parent2, String name, String description) {
    if (name == null || loader.beanExists(name)) {
      return null;
    }

    CustomBean bean = new CustomBean();
    bean.setParent(parent1, parent2);
    bean.setDescription(description);
    bean.setName(name);
    return bean;
  }

  public Bean recvBean(String bean) throws IOException, ClassNotFoundException {
    final byte[] objToBytes = Base64.getDecoder().decode(bean);
    ByteArrayInputStream bais = new ByteArrayInputStream(objToBytes);
    ObjectInputStream ois = new ObjectInputStream(bais);
    return (Bean) ois.readObject();
  }

  public Bean process(HttpServletRequest request) throws IOException, ClassNotFoundException {
    final Bean parent1 = recvBean(request.getParameter("parent1"));
    final Bean parent2 = recvBean(request.getParameter("parent2"));
    final String description = request.getParameter("description");
    final String name = request.getParameter("name");
    return this.breedBean(parent1, parent2, name, description);
  }
}
