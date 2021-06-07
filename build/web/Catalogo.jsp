

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>

<!DOCTYPE html>
<html>
     <head>
        <meta charset="utf-8"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

        <link href="css1.css" rel="stylesheet" type="text/css">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>Pagina Instabook</title>

        <link rel="stylesheet" href="css/estilos.css">
        <link href="https://fonts.googleapis.com/css2?family=Athiti&family=Montserrat&family=Pattaya&display=swap" rel="stylesheet">

        



        
        <script src="js/jquery-3.2.1.js"></script>
        <script src="js/script.js"></script>
    </head>
    
    <body class="container">
        
        <div class="row">
            <div class="col-md-4">
                <!-- INSTABOOK -->
            </div>

            <div id="Barra de busqueda" class="col-md-3">
                <div>
                    <a href="http://localhost:8080/BibliotecaTest/Buscar.jsp">Busqueda</a>
                </div>
            </div>

            <div id="Redirect" class="col-md-3">
                <div>
                    <a href="xD">Ir a catalogos</a>
                </div>
            </div>

            <div class="col-md-1">
                <div>
                    <div>
                        <button type="button"><spam class="bi bi-cart3"></spam>(0)</button>
                    </div>
                </div>
            </div>
            <div id="Login" class="col-md-1">
                <div>
                    <a href="login">Login</a>
                </div>
            </div>

        </div>
        <!-- CARRUSEL -->
        <div id="BAN1">
            

            <ul class="slider">
                <li id="slide1"><img src="Imagenes/Oferta1.jpg"/></li>
                <li id="slide2"><img src="Imagenes/Oferta2.jpg"/></li>
                <li id="slide3"><img src="Imagenes/Oferta5.jpg"/></li>

                <li id="slide4"><img src="Imagenes/Oferta4.jpg"/></li>
            </ul>
            <ul class="menu">
                <li><a href="#slide1">1</a></li>
                <li><a href="#slide2">2</a></li>
                <li><a href="#slide3">3</a></li>
                <li><a href="#slide4">4</a></li>
            </ul>
        </div>

        <div class="wrap">
            <h1>Bienvenido a INSTABOOK</h1>
    
            <!--CLASE FILTROS/MOSTRAR-->

            <div class="store-wrapper">
                <div class="category_list">
                    <a href="#" class="category_item" category="all">Todo</a>
                    <a href="#" class="category_item" category="ficcion">Ficcion</a>
                    <a href="#" class="category_item" category="no">No Ficcion</a>
 
                </div>
                
                <section class="products-list">
                    <%

                   Connection conector =  null;
                   String CadenaConexion = "jdbc:postgresql://localhost:5432/bibliotecapruebadb";
                   String usuario="bibliotecaprueba";
                   String pass= "123"; 
                    try {
                        Class.forName("org.postgresql.Driver");
                        conector=DriverManager.getConnection(CadenaConexion,usuario,pass);
                        System.out.println("Conexión exitosa");
                    } catch (SQLException ex) {}
                   PreparedStatement pst;
                   String sql = "Select id,nombre,genero,autor from libros";
                   pst = conector.prepareStatement(sql);

                   ResultSet rs = pst.executeQuery();

                   while(rs.next()){
                       out.println("<div class=\"product-item\" category="+rs.getString("genero")+"><img src=\"images/"+rs.getString("id")+".jpg\" width=\"200\" height=\"300\" alt=\"\" ><a href=\"#\">"+rs.getString("nombre")+"</a><a href=\"#\">"+rs.getString("autor")+"</a></div>");
                       //out.println(rs.getString("nombre"));
                       //out.println(rs.getString("genero"));
                       //out.println(rs.getString("autor"));

                       }
                   %>
                   
                </section>
            </div>
        </div>










        <div id="PieP">
        </div>
        <div class="card">
            <div class="card-body">
                Universidad de Lima
                <div>
                    20172161 | 20171275 | 20170132 | 20162810 | 20142300 | 20131783 
                </div>
                
            </div>
        </div>

        <!--<script src="js/gastos.js"></script>-->     
        <script src="js/index.js"></script>
        <script src="js/jquery-3.2.1.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/glider-js@1.7.3/glider.min.js"></script>
	    <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
	    <script src="js/app.js"></script>
        
    </body>

    
</html>
