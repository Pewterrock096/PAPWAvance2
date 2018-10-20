<%-- 
    Document   : historial
    Created on : 19/10/2018, 04:53:06 AM
    Author     : axelg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset = "UTF-8">
        <meta htttp-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width = device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <link rel ="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carrito.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <title>Historial</title>
    </head>
    <body>
                    <nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar-fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/jsp/home.jsp"><img src="${pageContext.request.contextPath}/imgenes/logo.png" class="img-fluid" width="20%" alt="Logo"> Tienda</a>
              <form class="form-inline my-2 my-lg-0" action="${pageContext.request.contextPath}/jsp/buscar.jsp">
                  <input class="form-control mr-sm-2" type="search" placeholder="Buscar..." aria-label="Search">
                  <button class="btn btn-outline-light my-2 my-sm-0" type="submit"><i class="fa fa-search"></i> Buscar</button>
                </form>
                 <div class="nav navbar-nav navbar-right btn-group">
                     <button type="button" class="btn btn-outline-light" data-toggle="modal" data-target="#login"><span class="fa fa-sign-in-alt"></span> Iniciar Sesión</button>
                     <button type="button" class="btn btn-outline-light" data-toggle="modal" data-target="#registro"><span class="fa fa-user-plus"></span> Crea Una Cuenta </button>
                    <a href="${pageContext.request.contextPath}/jsp/carrito.jsp" class="btn btn-outline-light"><span class="fa fa-shopping-cart"></span> Carrito </a>
                </div>
    
                  <div class="modal fade" id="login">
                    <div class="modal-dialog">
                      <div class="modal-content">

                  
                        <div class="modal-header">
                          <h4 class="modal-title">Iniciar Sesión</h4>
                          <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                  
                        <div class="modal-body">
                         <div class="row">
                            <div class="container-fluid text-center">
                                <form id="loginform" action="#" method="POST" onsubmit="return validalogin(this)">
                                        <div class="container">
                                        <input class="form-control" name="usuariologin" id="usuariologin" type="text"  placeholder="Usuario">                 
                                        <br>
                                        <input class="form-control" name="contraseñalogin" id="contraseñalogin" type="password" placeholder="Contraseña">
                                        <br>
                                        <div class="clearfix">
                                        <label class="float-left checkbox-inline"><input type="checkbox"> Recordarme</label>
                                        <button type="submit"  id="btnLogin" class="btn btn-info float-right"><i class="fa fa-sign-in-alt"></i> Iniciar Sesion</button>
                                        
                                        </div>
                                </form>

                                </div>
                            </div>
                        </div>
                        </div>

                      </div>
                    </div>
                  </div>
                
                <div class="modal fade" id="registro">
                    <div class="modal-dialog">
                      <div class="modal-content">

                  
                        <div class="modal-header">
                          <h4 class="modal-title">Registrate</h4>
                          <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                  
                        <div class="modal-body">
                         <div class="row">
                            <div class="container-fluid text-center">
                                <form id="registroform" action="#" method="POST" onsubmit="return validaregistro(this)">
                                        
                                        <input class="form-control" name="nombre" id="nombre" type="text" placeholder="Nombre">                 
                                        <br>
                                        <input class="form-control" name="apellido" id="apellido" type="text" placeholder="Apellido">                 
                                        <br>
                                        <input class="form-control" name="correo" id="correo" type="text" placeholder="Correo Electrónico">                 
                                        <br>
                                        <input class="form-control" name="usuario" id="usuario" type="text" placeholder="Nombre de Usuario">
                                        <h6 class="text-muted text-left"><small>*Minimo 6 caracteres</small></h6>
                                        <input class="form-control" name="contraseña" id="contraseña" type="password" placeholder="Contraseña">
                                        <h6 class="text-muted text-left"><small>*Minimo 8 caracteres,debe incluir una mayúsucula, una minúscula y un número</small></h6>
                                        <input class="form-control" name="telefono" id="telefono" type="text" onkeypress="return validarnumero(event)" placeholder="Teléfono (Opcional)">                 
                                        <br>
                                        <input class="form-control" name="dirección" id="dirección" type="text" placeholder="Dirección (Opcional)">                 
                                        <br>
                                        <div class="row text-muted">
                                            
                                            <p class="col-5"> Imagen de Perfil: </p>
                                            <input type="file" class="col-7" name="imagenusuario" id="imagenusuario">
                                            <br>                              
                                            <p class="col-5"> Imagen de Portada: </p>
                                            <input type="file" class="col-7" name="imagenportada" id="imagenportada">
                                            <br>
                                            
                                        </div>
                                    <button type="submit" id="btnRegistro" class="btn btn-info btn-block"><i class="fa fa-user-plus"></i> Registrarse</button>
                                    
                                </form>
                            </div>
                        </div>
                        </div>

                      </div>
                    </div>
                  </div>

            </div>
        </nav>
        <div class="container-fluid">    
              <div class="row content">
                <div class="col-sm-2 sidenav">
                    <div id="accordion">
                        
                        
                        <div class="card">
                            <div class="card-header">
                              <a class="card-link" data-toggle="collapse" href="#Opciones">
                                Opciones de Usuario
                              </a>
                            </div>
                            <div id="Opciones" class="collapse show" data-parent="#accordion">
                              <div class="card-body">
                                   <p><a href="${pageContext.request.contextPath}/jsp/perfil.jsp">Perfil</a></p>
                                  <p><a href="${pageContext.request.contextPath}/jsp/vender.jsp">Publica un artículo</a></p>
                                  <p><a href="${pageContext.request.contextPath}/jsp/historial.jsp">Historial de Compras</a></p>
                              </div>
                            </div>
                          </div>
        
                    </div>
                </div>
               <div class="col-sm-10">
                   <div class="card">
                       <div class="card-header"><h1 class="display-4">Historial de Compras</h1></div>
                       <div class="card-body">
                           <div class="card">
                                   <div class="card-body">
                                       <div class="row">
                                           <div class="col-1">
                                           <a href="${pageContext.request.contextPath}/jsp/producto.jsp"> <img src="${pageContext.request.contextPath}/imgenes/imagen.png" class="img-thumbnail" alt="Imagen"></a>
                                           </div>
                                            <div class="col-5">
                                                <a href="${pageContext.request.contextPath}/jsp/producto.jsp">Nombre</a>
                                                <h6>Precio</h6>
                                                
                                            </div>
                                           <div class="col-4">
                                               <div class="form-group">
                                                  <label for="fecha">Fecha de Compra</label>
                                                  <input type="text" class="form-control" id="fecha" disabled>
                                                </div>
                                           </div>
                                           <div class="col-2">
                                               <h4>Total Pagado</h4>
                                               <h6>Precio Total</h6>
                                           </div>
                                       </div>                                     
                                   </div>

                            </div>

                               <div class="card">
                                   <div class="card-body">
                                       <div class="row">
                                           <div class="col-1">
                                           <a href="${pageContext.request.contextPath}/jsp/producto.jsp"> <img src="${pageContext.request.contextPath}/imgenes/imagen.png" class="img-thumbnail" alt="Imagen"></a>
                                           </div>
                                            <div class="col-5">
                                                <a href="${pageContext.request.contextPath}/jsp/producto.jsp">Nombre</a>
                                                <h6>Precio</h6>
                                                
                                            </div>
                                           <div class="col-4">
                                               <div class="form-group">
                                                  <label for="fecha">Fecha de Compra</label>
                                                  <input type="text" class="form-control" id="fecha" disabled>
                                                </div>
                                           </div>
                                           <div class="col-2">
                                               <h4>Total Pagado</h4>
                                               <h6>Precio Total</h6>
                                           </div>
                                       </div>                                     
                                   </div>

                            </div>
                           
                                <div class="card">
                                   <div class="card-body">
                                       <div class="row">
                                           <div class="col-1">
                                           <a href="${pageContext.request.contextPath}/jsp/producto.jsp"> <img src="${pageContext.request.contextPath}/imgenes/imagen.png" class="img-thumbnail" alt="Imagen"></a>
                                           </div>
                                            <div class="col-5">
                                                <a href="${pageContext.request.contextPath}/jsp/producto.jsp">Nombre</a>
                                                <h6>Precio</h6>
                                                
                                            </div>
                                           <div class="col-4">
                                               <div class="form-group">
                                                  <label for="fecha">Fecha de Compra</label>
                                                  <input type="text" class="form-control" id="fecha" disabled>
                                                </div>
                                           </div>
                                           <div class="col-2">
                                               <h4>Total Pagado</h4>
                                               <h6>Precio Total</h6>
                                           </div>
                                       </div>                                     
                                   </div>

                            </div>
                                                
                            <div class="card">
                                   <div class="card-body">
                                       <div class="row">
                                           <div class="col-1">
                                           <a href="${pageContext.request.contextPath}/jsp/producto.jsp"> <img src="${pageContext.request.contextPath}/imgenes/imagen.png" class="img-thumbnail" alt="Imagen"></a>
                                           </div>
                                            <div class="col-5">
                                                <a href="${pageContext.request.contextPath}/jsp/producto.jsp">Nombre</a>
                                                <h6>Precio</h6>
                                                
                                            </div>
                                           <div class="col-4">
                                               <div class="form-group">
                                                  <label for="fecha">Fecha de Compra</label>
                                                  <input type="text" class="form-control" id="fecha" disabled>
                                                </div>
                                           </div>
                                           <div class="col-2">
                                               <h4>Total Pagado</h4>
                                               <h6>Precio Total</h6>
                                           </div>
                                       </div>                                     
                                   </div>

                            </div>
                       </div>

                    </div>
                   </div>
              </div>
            
            </div>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
        <script src="${pageContext.request.contextPath}/js/popper.js"></script>
        <script src="${pageContext.request.contextPath}/js/validacion.js"></script>
    </body>
</html>