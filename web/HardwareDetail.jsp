<%-- 
    Document   : HardwareDetail
    Created on : Nov 1, 2019, 6:06:01 PM
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
            <h3> Item: </h3>  ${currenthardware.hardwareitem} 
            <h3> Brand: </h3> ${currenthardware.hardwarebrand} 
            <h3> Serial No.: </h3>${currenthardware.hardwareserial}
            <h3>Price: </h3> ${currenthardware.price}
        <form action="AddCourseServlet">
                            <input type="submit" value="Add"/>                        
                            <input type="hidden" name="prefix" 
                                   value="${course.courseprefix}"/>
                            <input type="hidden" name="number" 
                                   value="${course.coursenumber}"/>
                        </form>
        </article> 
    </body>
    <footer>Copyright &copy; </footer>
</html>
