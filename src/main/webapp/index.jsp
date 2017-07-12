<%@page pageEncoding="UTF-8" contentType="text/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
  </head>
  <body>
    <!-- c:if n'autorise pas le else -->
    <c:if test="${param['age'] lt 18}">
      Vous êtes mineur !
    </c:if>
    <c:if test="${param['age'] ge 18}">
      Vous êtes majeur !
    </c:if>

    <!-- c:choose permet de spécifier autant de c:when que l'on souhaite -->
    <c:choose>
      <c:when test="${param['age'] lt 18}">
        Vous êtes mineur !
      </c:when>
      <c:otherwise>
        Vous êtes majeur !
      </c:otherwise>
    </c:choose>
  </body>
</html>
