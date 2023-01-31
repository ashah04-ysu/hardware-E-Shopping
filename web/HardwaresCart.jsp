<%-- 
    Document   : HardwaresCart
    Created on : Nov 1, 2019, 8:29:48 PM
    Author     : mahar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="Hardwarecss.css" />
        <header>Computer Hardware</header>
    </head>
    <body>
        <article>  
        <table border="1">
            <c:choose>
                <c:when test="${empty hardwarelist or hardwarelist.size == 0}">
                    <p>No courses added yet</p>
                </c:when>
            <c:otherwise>
            <th>
                Current Hardwares 
            </th>
            <c:forEach var="hardware" items="${hardwarelist.hardwares}">
                <tr>
                    <td>
                        <a href='GetHardwareServlet?brand=${hardware.hardwarebrand}&serial=${hardware.hardwareserial}'>
                            ${hardware.hardwarebrand} ${hardware.hardwareserial}
                        </a>                        
                    </td>
                    <td>
                        <form action="CancelHardwareServlet">
                            <input type="submit" value="Drop"/>                        
                            <input type="hidden" name="brand" 
                                   value="${hardware.hardwarebrand}"/>
                            <input type="hidden" name="serial" 
                                   value="${hardware.hardwareserial}"/>
                        </form>
                    </td>
                </tr>
            </c:forEach>
         <tr><td>${hardwarelist.serial} hardwares</td></tr>
         
            </c:otherwise>
            </c:choose>
        </table>
    </article> 
    </body>
    <footer>Copyright &copy; </footer>
</html>
