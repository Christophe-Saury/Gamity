<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Welcome admin</title>
</head>
<body>
    <h2>Welcome ${userId} to the site!</h2>
    <table>
        <c:forEach items="${usersList}" var="user">
            <tr>
                <td><c:out value="${user.userId}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>