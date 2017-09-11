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
    <h1>Hello World!</h1>
    <div class="row">
      <div class="col-sm-6 col-sm-offset-3">
        <h1>Welcome to our coffee shop!</h1>
      </div>
    </div>
    <%
    out.println("Hello World!");
    %>
    <a href="bean.jsp?bean=test">bean</a>
  </body>
</html>
