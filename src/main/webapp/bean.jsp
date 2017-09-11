<%@ page import="coffee.*" %>

<html>
<body>
<h2>Hello World!</h2>

<%
  Bean b = new Bean();
  String beanname = request.getParameter("bean");
  if (beanname == "") beanname = "failed";
  b.name = beanname;
  b.save(getServletContext().getRealPath("/"));
%>
</body>
<%
  BeanLoader loader = new BeanLoader(getServletContext().getRealPath("/") + "beans/");
  Bean c = loader.getBean(beanname);
  out.println(c.name);
%>
</html>
