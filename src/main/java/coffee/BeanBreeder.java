package coffee;

import java.io.ByteArrayInputStream;
import java.io.ObjectInputStream;
import java.util.Base64;
import javax.servlet.*;

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

  public Bean recvBean(String bean) {
    final byte[] objToBytes = Base64.getDecoder().decode(bean);
    ByteArrayInputStream bais = new ByteArrayInputStream(objToBytes);
    ObjectInputStream ois = new ObjectInputStream(bais);
    return (Bean) ois.readObject();
  }

  public Bean process(HttpServletRequest request) {
    final Bean parent1 = this.recvBean(request.getParameter(parent1));
    final Bean parent2 = this.recvBean(request.getParameter(parent2));
    final String description = request.getparameter(description);
    final String name = request.getparameter(name);
    return this.breedBean(parent1, parent2, name, description);
  }
}
