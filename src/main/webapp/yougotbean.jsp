<%@ page import="coffee.*" %>
<%@ page import="com.esotericsoftware.yamlbeans.YamlReader" %>
<%@ page import="java.io.FileReader" %>
<html>
  <head>
  </head>
  <body>
    <%
    try {
      YamlReader reader = new YamlReader(new FileReader(getServletContext().getRealPath("/") + "beans/" + request.getParameter("bean") + ".yml"));
      Bean b = reader.read(Bean.class);
      out.println(b.Beananza(getServletContext().getRealPath("/")));
    } catch (Exception e) {
      out.println(e.getMessage());
    }
    %>
  </body>
</html>
