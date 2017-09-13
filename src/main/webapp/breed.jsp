<%@ page import="coffee.*" %>

<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="sources/main.css">
  </head>

  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="/coffee">Passion Beans</a>
    </nav>
    <div class="container">
      <div class="row justify-content-center bean-title">
        <div class="col-sm-12">
          <h2>Bean Passion Chamber</h2>
        </div>
      </div>
      <form>
        <div class="form-group row justify-content-center">
          <div class="col-sm-6">
            <label for="bean-name">Name:</label>
            <input type="text" id="bean-name" class="form-control">
          </div>
        </div>
        <div class="form-group row justify-content-center">
          <div class="col-sm-6">
            <label for="bean-desc">Description:</label>
            <textarea id="bean-desc" class="form-control" rows="5"></textarea>
          </div>
        </div>
        <div class="form-group row justify-content-center">
          <div class="col-sm-4">
            <label for="parent-1">First Parent:</label>
            <select class="form-control" id="parent1">
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
            </select>
          </div>
          <div class="col-sm-4">
              <label for="parent-2">Second Parent:</label>
            <select class="form-control" id="parent2">
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
            </select>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-sm-auto">
            <button class="btn btn-success" type="submit">Breed</button>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>
