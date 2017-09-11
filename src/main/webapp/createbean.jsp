<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="coffee.*" %>

<html>

  <head>
    <title>Management - Create Beans</title>
  </head>

  <body>
    <c:choose>
      <c:when test="<%= \"POST\".equalsIgnoreCase(request.getMethod()) %>">
        <%= request.getParameter("bean") %>
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
