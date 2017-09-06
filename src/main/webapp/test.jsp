<%@ page import="coffee.Bean" %>
<%@ page import="com.esotericsoftware.yamlbeans.*" %>
<%@ page import="java.io.*" %>

<html>
<body>
<h2>Hello World!</h2>

<%
  Bean b = new Bean();
  b.setName("Leon");
  b.setId("LeonLeon");
  b.setcolor(12341234);

%>
</body>
<%
  File f = new File("/Users/passion/github/notmycupofcoffee/coffee/target/coffee/WEB-INF/contact.yml");
  try{
    try{
      f.createNewFile();
    } catch (Exception e) {
      out.println(e.getMessage());
    }
    YamlWriter writer = new YamlWriter(new FileWriter(f));
    writer.write(b);
    writer.close();
  } catch (Exception e) {
    out.println(e.getMessage());
  }

  try {
    YamlReader reader = new YamlReader(new FileReader(f));
    Bean c = reader.read(Bean.class);
    out.println(c.getName());
  } catch(Exception e) {}
%>
</html>
