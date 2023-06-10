<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/9/2023
  Time: 9:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Send Email</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background-color: black" >
<div class="container" style="margin-top: 10px;">
  <div class="row"
       style="border: 1px darkgrey solid; border-radius: 10px; width: 100%; margin: 0 auto; padding: 20px;">
    <div class="col-sm-12">
      <h2 class="myclass" style="color: white">Information</h2>
      <form action="/send" method="post">
        <div class="form-group">
          <label style="color: white" >To: </label>
          <input type="text"
                 class="form-control" name="to" placeholder="Enter Email">
        </div>
        <div class="form-group">
          <label style="color: white">Subject:</label>
          <input type="text"
                 class="form-control" name="subject" placeholder="Enter Subject">
        </div>
        <div class="form-group">
          <label style="color: white" >Content: </label>
          <textarea class="form-control" rows="4" name="content"></textarea>
        </div>
        <br>
        <button type="submit" class="btn btn-primary">Send</button>
        <button type="reset" class="btn btn-primary">Reset</button>
      </form>
    </div>
  </div>
</div>

<script>

</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
