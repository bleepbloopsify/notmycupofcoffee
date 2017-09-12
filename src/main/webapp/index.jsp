<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <%-- Custom styles --%>
    <link rel="stylesheet" type="text/css" href="sources/main.css">
  </head>


  <body>

    <%
    if(session.getAttribute("initialized") == null) {
      session.setAttribute("initialized", true);
      out.println("Set");
    }
    %>

    <div class="row">
      <div class="bean col-sm-8 col-sm-offset-2">
        <h2>Welcome to our coffee shop!</h2>
      </div>
      <div class="bean col-sm-8 col-sm-offset-2">
        <a href="bean.jsp?bean=test">bean</a>
      </div>
    </div>
  </body>
</html>
