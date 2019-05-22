<%--
  Created by IntelliJ IDEA.
  User: Mac
  Date: 21.05.2019
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
</head>
<!--<body>-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">



<body>

<form method="post" name="MyForm">
    <div class="form-group row">
        <label for="number" class="col-4 col-form-label">Число передаваемое в URL</label>
        <div class="col-8">
            <input id="number" name="number" type="number" class="form-control">
        </div>
    </div>
    <div class="form-group row">
        <label for="stringValue" class="col-4 col-form-label">Значение передаваемое в теле запроса</label>
        <div class="col-8">
            <input id="stringValue" name="stringValue" class="form-control" type="text">
        </div>
    </div>
    <div class="form-group row">
        <div class="offset-4 col-8">
            <button type="button" onclick=postdata();>Send request</button>
        </div>
    </div>
</form>

<script>
    function postdata() {
        var form1 = document.getElementsByName("MyForm")[0];
        var input1 = document.getElementsByName("number")[0];
        form1.action = window.location.href+input1.value;
        form1.submit();
        return false;
    }
</script>

</body>
</html>
