<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="coffee.*" %>

<html>
  <head>
  </head>
  <body>
    <c:choose>
      <c:when test="<${"POST".equalsIgnoreCase(request.getMethod())}">
        <%
        LegumeLoader loader = new LegumeLoader(getServletContext().getRealPath("/") + "beans/");
        String bean_name = request.getParameter("bean");
        Bean bean = loader.getBean(bean_name);
        %>
        <h2>${bean.roast() }</h2>
      </c:when>
      <c:otherwise>
        Regular request
        <form method="POST">
          Bean:<input type="text" name="bean" />
          <input type="submit" />
        </form>
      </c:otherwise>
    </c:choose>
  </body>
</html>
