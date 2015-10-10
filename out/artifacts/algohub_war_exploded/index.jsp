<%--
  Created by IntelliJ IDEA.
  User: vladimirpyagay
  Date: 10/10/15
  Time: 2:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Welcome to AlgoHub!</title>
  </head>
  <body>
  <h3>Hello and welcome to the Algo Hub!</h3>
  <p>
    Here at Algo Hub we are passionate about writing code to solve interesting algorithmic problems. <br/>
    Code for every solution is publicly available on GitHub. <br/><br/>

    Enjoy your visit!
  </p>
  <form action="${pageContext.request.contextPath}/AlgoManagementServlet" method="post">
    Please select the problem you'd like to see:<br/>
    <select id="selectedAlgo" name="selectedAlgo" required>
      <option value="">Please select</option>
      <option value="AnagramsTest">Anagrams Test</option>
      <option value="SubStringTest">SubString Test</option>
    </select>
    <br/>
    <input type="submit" id="btnSelectAlgo" value="Select" />
  </form>
  </body>
</html>
