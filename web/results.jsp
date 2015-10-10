<%--
  Created by IntelliJ IDEA.
  User: vladimirpyagay
  Date: 10/10/15
  Time: 3:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Algorithm Results</title>
</head>
<body>
  <h3>Results for algorithm <%= request.getAttribute("algoName") %>:</h3>

  <p><%= request.getAttribute("algoResult")%></p>
</body>
</html>
