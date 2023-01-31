<%-- 
    Document   : Result
    Created on : Oct 21, 2019, 2:39:31 AM
    Author     : mahar
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <article >     
            <p>
                <c:if test="${empty hardwarearray}">
                    <c:redirect url="HardwareServlet"/>
                 </c:if>
            </p>
      
            <table width="100%" border="2">
                <th>ID</th>
                <th>Hardwares</th>
                
               
                <c:forEach var="hardware" items="${hardwarearray.hardwares}">
                <tr>
                    <td>
                        
                            ${hardware.hardwareid}
                        
                    </td>
                    
                    <td>
                        <a href='GetHardwareServlet?brand=${hardware.hardwarebrand}&serial=${hardware.hardwareserial}'>
                            ${hardware.hardwareitem}
                        </a>  
                    </td>
                    
                    <td>
                        <form action="AddHardwareServlet">
                            <input type="submit" value="Add"/>                        
                            <input type="hidden" name="brand" 
                                   value="${hardware.hardwarebrand}"/>
                            <input type="hidden" name="serial" 
                                   value="${hardware.hardwareserial}"/>
                        </form>
                    </td>
                </tr>
                </c:forEach>
                <table>
        </article>
        
        <footer>Copyright &copy; </footer>
    </body>
    
</html>
