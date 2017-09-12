<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="coffee.*" %>
<%@ page import="java.util.ArrayList" %>

<html>
  <head>
    <style>
    .bean {
      color: white;
      border-radius: 50px;
      padding: 25px;
    }
    </style>
  </head>
  <body>
      <%
      LegumeLoader loader = new LegumeLoader(getServletContext().getRealPath("/") + "beans/");
      ArrayList<Bean> beans = loader.getBeans();
      for (Bean bean : beans) {
        %>
        <div class="bean" style="background-color: <%= bean.color %>;">
          <h1><%= bean.name %></h1>
          <h3>$<%= bean.price %></h3>
          <div><%= bean.roast() %></div>
        </div>
        <%
      }
      %>
  </body>
</html>
