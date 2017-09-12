<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="coffee.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.IOException" %>

<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <%-- Custom styles --%>
    <link rel="stylesheet" type="text/css" href="sources/main.css">
  </head>
  <body style="padding-top:75px;">
    <div class="row">
      <%
      String bean_filename = request.getParameter("bean");
      LegumeLoader loader = new LegumeLoader(getServletContext().getRealPath("/") + "beans/");
      %>
      <c:choose>
        <c:when test='<%= bean_filename == null %>'>
            <form>
              <select name="bean">
                <%
                ArrayList<Bean> beans = loader.getBeans();
                for (Bean bean : beans) {
                  %>
                  <option value="<%= bean.filename %>"><%= bean.name %></option>
                  <%
                }
                %>
              </select>
              <input type="submit" value="Select Bean">
            </form>
        </c:when>
        <c:otherwise>
          <%
          Bean bean = null;
          try {
            bean = loader.getBean(bean_filename);
          } catch (IOException e) {
            out.println(e.getMessage());
          }
          if (bean != null) {
          %>
          <div class="bean col-sm-6 col-sm-offset-3" style="background-color:<%= bean.color %>">
            <h1><%= bean.name %></h1>
            <h2>$<%= bean.price %></h2>
            <h3><%= bean.roast() %></h3>
          </div>
          <%
          }
          %>
        </c:otherwise>
      </c:choose>
    </div>
  </body>
</html>
