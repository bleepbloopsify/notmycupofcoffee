<%@ page import="coffee.*" %>
<%@ page import="com.esotericsoftware.yamlbeans.*" %>
<%@ page import="java.io.*" %>

<html>
<body>
<h2>Hello World!</h2>

<%
  Bean b = new Bean();
  String beanname = request.getParameter("bean");
  if (beanname == "") beanname = "failed";
  b.name = beanname;

%>
</body>
<%
  b.save(getServletContext().getRealPath("/") + "beans/");
  BeanLoader loader = new BeanLoader(getServletContext().getRealPath("/") + "beans/");
  Bean c = loader.getBean(beanname);
  out.println(c.name);
%>
</html>
