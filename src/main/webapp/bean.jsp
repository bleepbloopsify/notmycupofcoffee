<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="coffee.*" %>

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
      String bean = request.getParameter("bean");
      %>
      <c:choose>
        <c:when test='<%= bean == "" %>'>
            
        </c:when>
        <c:otherwise>
            pizzas.
            <br />
        </c:otherwise>
    </c:choose>

      <div class="bean col-sm-6 col-sm-offset-3">

      </div>
    </div>
  </body>
</html>
