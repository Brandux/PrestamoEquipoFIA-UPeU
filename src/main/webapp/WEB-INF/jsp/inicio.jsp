<%-- 
    Document   : inicio
    Created on : 12/07/2017, 12:53:18 AM
    Author     : Brandukosky
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

        <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
        <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
        <link href="<c:url value='resources/css/style.css'/>" rel="stylesheet" type="text/css"/>
        
        
    </head>
    <body>
        <br>
        <br>

        <div class="container">
            <div class="card"></div>
            <div class="card">
                <h1 class="title">Login</h1>
                
                <form  action="loguea" method="post"  modelAttribute="user">
                    <div class="input-container">
                        <input type="{type}" id="{label}" name="user" required="required"/>
                        <label for="{label}">Username</label>
                        <div class="bar"></div>
                    </div>
                    <div class="input-container">
                        <input type="{type}" name="pass" id="{label}" required="required"/>
                        <label for="{label}">Password</label>
                        <div class="bar"></div>
                    </div>
                    <div class="button-container">
                        <button><span>Ingresar</span></button>
                    </div>
                    <div class="footer"><a href="#">Forgot your password?</a></div>
                </form>
            
            </div>
            
            <div class="card alt">
                <div class="toggle"></div>
                <h1 class="title">Register
                    <div class="close"></div>
                </h1>
                <form>
                    <div class="input-container">
                        <input type="{type}" id="{label}" required="required"/>
                        <label for="{label}">Username</label>
                        <div class="bar"></div>
                    </div>
                    <div class="input-container">
                        <input type="{type}" id="{label}" required="required"/>
                        <label for="{label}">Password</label>
                        <div class="bar"></div>
                    </div>
                    <div class="input-container">
                        <input type="{type}" id="{label}" required="required"/>
                        <label for="{label}">Repeat Password</label>
                        <div class="bar"></div>
                    </div>
                    <div class="button-container">
                        <button><span>Next</span></button>
                    </div>
                </form>
            </div>
        </div>

         <script src="<c:url value='resources/js/jquery.min.js'/>" type="text/javascript"></script>
         <script src="<c:url value='resources/js/index.js" type="text/javascript'/>"></script>
                        
    </body>
</html>
