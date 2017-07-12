<%-- 
    Document   : home
    Created on : 30/06/2017, 08:44:14 AM
    Author     : UPEU
--%>
<%@page import="pe.edu.upeu.mavenspring.model.UsuarioDTO"%>
<%
     HttpSession sesion = request.getSession();
    if(sesion.getAttribute("Persona") == null){
        response.sendRedirect("http://localhost:8090/Prestamos-UPeU/");

}else{
    UsuarioDTO cli = (UsuarioDTO) session.getAttribute("Persona");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>:. Brandux .:</title>
        <%@include file="../../jspf/head.jspf" %>
    
        <script type="text/javascript">            
           if (history.forward(1)) {
                    location.replace(history.forward(1));
            }
        </script>
        <script>
            window.oncontextmenu = function() {
            return false;
        };
        </script>
    
    </head>
    <body>
        
        <!-- Static navbar -->
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Brandukosky System</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">MENU <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="Rol">ROL</a></li>
                                <li><a href="usuario">Usuario</a></li>
                                <li><a href="cliente">Cliente</a></li>
                                <li><a href="Producto">Producto</a></li>
                                <li><a href="vende">Venta</a></li>
                               
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                    
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <span><i class="fa fa-user-circle-o" aria-hidden="true"></i></span> 
                                <strong><%= cli.getUs_user() %></strong>
                                <span class="glyphicon glyphicon-chevron-down"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="navbar-login">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <p class="text-center">
                                                    <span class="glyphicon glyphicon-user icon-size"></span>
                                                </p>
                                            </div>
                                            <div class="col-lg-8">
                                                <p class="text-left">Bienvenido: <strong><%=cli.getUs_user() %></strong></p>
                                                <p class="text-left small"><b><%= cli.getUs_apellidos() %></b></p>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="navbar-login navbar-login-session">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <p>
                                                    <a href="cerrar" class="btn btn-danger btn-block" >Cerrar Sesion</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        
                    </ul>
                </div><!--/.nav-collapse -->
            </div><!--/.container-fluid -->
        </nav>
        
    	<div class="container" style="width: 650px;">
       
            <div class="row">
                <div class="col-md-12">

                    <hr>
                    <h3><i class="fa fa-users" aria-hidden="true"></i><strong style="margin-left: 5px;">Usuarios</strong></h3>
                    <hr> 
                    <br>
                    <div class="pull-right">
                        <button class="btn btn-success" data-toggle="modal" data-target="#add_new_record_modal"><i class="fa fa-plus" aria-hidden="true"></i></button>
                    </div>                                  
                </div>
            </div>   
       
                <table class="table">
                    <th>No</th>
                    <th>Empleado</th>
                    <th>User</th>
                    <th>Rol</th>

                    <c:forEach var="contact" items="${listContact}" varStatus="status">
                        <tr>
                        <td>${status.index + 1}</td>
                        <td>${contact.nombres}</td>
                        <td>${contact.NOM_USER}</td>
                        <td>${contact.NOM_ROL}</td>
                        <td>
                                <a href="editContact?id=?" class="btn btn-warning"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="deleteContact?id=?" class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i></a>
                        </td>
                        </tr>
                    </c:forEach>	        	
                </table>
    	</div>
    </body>
</html>
<%
}
%>