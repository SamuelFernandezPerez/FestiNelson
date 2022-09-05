<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="FM.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="wide wow-animation" lang="en">
  <head>
    <title>FestiNelson</title>   
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700|Kreon:700|Audiowide&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Lato:400,700%7COpen+Sans:400,600,700%7CSource+Code+Pro:300,400,500,600,700,900%7CNothing+You+Could+Do%7CPoppins:400,500">
    <link rel="stylesheet" href="css/paginate.css">
    <link rel="stylesheet" href="css/dd.css?v=4.0">
    <link rel="stylesheet" type="css" href="assets/css/flags.css?v=1.0" />
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/fonts.css">
	<link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/style.css">
    
    <style> .ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
  </head>
  <body>
  <%
  	ArrayList<Tarjeta> tarjetas = new ArrayList<Tarjeta>();
	BDController bdController = new BDController();
	tarjetas = bdController.todasTarjetas();
	%>
    <div class="ie-panel"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <div class="preloader">
      <div class="preloader-body">
        <div class="cssload-container">
          <div class="cssload-speeding-wheel"></div>
        </div>
      </div>
    </div>
    <div class="page">
      <!-- Page Header-->
      <header class="section page-header">
        <!--RD Navbar-->
        <div class="rd-navbar-wrap" style="position: absolute">
          <nav class="rd-navbar rd-navbar-classic" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-fixed" data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="46px" data-xl-stick-up-offset="46px" data-xxl-stick-up-offset="46px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
            <div class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle=".rd-navbar-collapse"><span></span></div>
            <div class="rd-navbar-main-outer">
              <div class="rd-navbar-main">
                <!--RD Navbar Panel-->
                <div class="rd-navbar-panel">
                  <!--RD Navbar Toggle-->
                  <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                  <!--RD Navbar Brand-->
                  <div class="rd-navbar-brand">
                    <!--Brand--><a class="brand" href="Inicio.jsp"><img src="images/logo1.png" alt="" width="148" height="26"/></a>
                  </div>
                </div>
                <div class="rd-navbar-main-element">
                  <div class="rd-navbar-nav-wrap">
                    <ul class="rd-navbar-nav">
                      <li class="rd-nav-item"><a class="rd-nav-link" href="Inicio.jsp">Inicio</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="clientes.jsp">Clientes</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="entradas.jsp">Entradas</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="tarjetas.jsp">Tarjetas</a>
                      </li>
                      <li class="rd-nav-item active"><a class="rd-nav-link" href="productos.jsp">Productos</a>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="rd-navbar-collapse">
                  <ul class="socialite-list">
                    <li><a class="icon novi-icon socialite fa-facebook" href="https://es-es.facebook.com/CentroNelson/" target="_blank"></a></li>
                    <li><a class="icon novi-icon socialite fa-twitter" href="https://twitter.com/CentroNelson?s=20&t=mkIfCpPGUkWTHY_7DF5uIA" target="_blank"></a></li>
                    <li><a class="icon novi-icon socialite fa-instagram" href="https://www.instagram.com/centronelson/" target="_blank"></a></li>
                    <li><a href="adminInicio.jsp">Administración</a></li>
                    
                  </ul>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </header>
        <section class="breadcrumbs-custom bg-image context-dark" style="background-image: url(images/pro2.jpg);">
        <div class="container">
          <h1 style="font-size: 7rem; class="breadcrumbs-custom-title">Nuestros productos</h1>
        </div>
        <ul class="breadcrumbs-custom-path"></ul>
      </section>
       <%
      if(request.getParameter("resultado")!= null){
			String resultado = request.getParameter("resultado");
			if(resultado.equalsIgnoreCase("error")){%>
			<div class="row grid-responsive">
				<div class="column" style="position: relative; width: 100%;  margin-right: 50px; margin-left: 50px;">
					<div class="alert background-danger"><em class="fa fa-times-circle"></em> ¡ERROR! No se ha podido realizar la venta por alguna causa que se desconoce.</div>
				</div>
			</div>
			<%}else if(resultado.equalsIgnoreCase("errorDisponibilidad")){%>
			<div class="row grid-responsive">
				<div class="column" style="position: relative; width: 100%;  margin-right: 50px; margin-left: 50px;">
					<div class="alert background-danger"><em class="fa fa-times-circle"></em> ¡ERROR! Ya no quedan más entradas de el tipo seleccionado</div>				
				</div>
			</div>
			<%}else if(resultado.equalsIgnoreCase("errorTarjeta")){%>
			<div class="row grid-responsive">
				<div class="column" style="position: relative; width: 100%;  margin-right: 50px; margin-left: 50px;">
					<div class="alert background-danger"><em class="fa fa-times-circle"></em> ¡ERROR! La tarjeta seleccionada no existe en la base de datos</div>				
				</div>
			</div>
			<%}else if(resultado.equalsIgnoreCase("errorSaldo")){%>
			<div class="row grid-responsive">
				<div class="column" style="position: relative; width: 100%;  margin-right: 50px; margin-left: 50px;">
					<div class="alert background-danger"><em class="fa fa-times-circle"></em> ¡ERROR! No tienes saldo suficiente para realizar la compra</div>				
				</div>
			</div>
			<%}else if(resultado.equalsIgnoreCase("exito")){%>
			<div class="row grid-responsive">
				<div class="column" style="position: relative; width: 100%;  margin-right: 50px; margin-left: 50px;">
					<div class="alert background-success"><em class="fa fa-thumbs-up"></em> Compra realizada con exito</div>				
				</div>
			</div>
			<%}else if(resultado.equalsIgnoreCase("exitoListado")){%>
			<div class="row grid-responsive">
			<div class="column" style="position: relative; width: 100%;  margin-right: 50px; margin-left: 50px;">
				<div class="alert background-success"><em class="fa fa-thumbs-up"></em> Descarga realizada con exito</div>				
			</div>
			</div>
			<%}
			else{%>
			<%}
		}
		%>
		<br>
		<br>
                  <!-- Product-->
                  <div class="container" style=" text-align: center;">
					<div class="panel">
        				<div class="body">
            				<div style="text-align: right;">
                				<input type="search" id="searchBox" placeholder="Filtrar..." style="margin-bottom: 10px;">
            				</div>
       					</div>
    				</div>
					<table class="myTable table hover">
					<%
					Map<Integer,Producto> listproductos = bdController.dameproductoHash();
					Iterator<Map.Entry<Integer, Producto>> entries = listproductos.entrySet().iterator();
					while (entries.hasNext()){
						Map.Entry<Integer, Producto> entry = entries.next();
						Producto currentProducto = entry.getValue();					
					%>
                		<tbody>
							<tr>           
                  				<td><div class="product__title" style="padding: 1rem; color: #4ac4cf; font-size: 2rem;"><%=currentProducto.getNombre() %></div>
                  				<article class="product"><img class="product__image" src="images/productos/<%=currentProducto.getId_producto() %>.PNG" alt="" title='<%= currentProducto.getNombre()%>'width="500" height="340"  />
                   				<form action="operaciones.jsp?tipo=comprarProducto&id_producto=<%=currentProducto.getId_producto() %>" method="post">
									<fieldset>
                    					<select id="id_tarjeta" name="id_tarjeta" is="ms-dropdown" required style="width:500px" data-child-height="105">
											<option value="">selecciona el ID  de la tarjeta</option>
											<%for(int j = 0;j<tarjetas.size();j++) {%>
											<option value="<%=tarjetas.get(j).getId_tarjeta()%>"><%=tarjetas.get(j).getId_tarjeta()%></option>
											<%}%>
										</select>
                    					<div class="product__main">
                      						<div class="product__price" style="padding-top: 1rem; font-size: 2rem;"><%=currentProducto.getPrecio() %>€</div>
                    					</div>
										<div class="">
											<input class="button button-xs button-gray-2" type="submit" value="Comprar" style="background-color: #222d4f; color: #4ac4cf; border-color: #4ac4cf; heig">
										</div>
									</fieldset>
								</form>
                  				</article>
                  				</td>
                			</tr>
                		</tbody>
                		<%} %>
                	</table>
              	</div>
              	<form action="operaciones.jsp?tipo=descargarListadoProductos" method="post">
				<fieldset>
					<div style="text-align: center;">
						<input class="button-primary" type="submit" value="Descargar listado en PDF">
					</div>
				</fieldset>
			</form>
      <footer class="section footer-classic bg-default">
        <div class="container">
          <div class="row row-15">
            <div class="col-sm-6">
              <p class="rights"><span>FestiNelson</span><span>&nbsp;</span><span>&copy;&nbsp;</span><span class="copyright-year"></span><span>&nbsp;</span><span>\&nbsp;</span>Todos los derechos reservados
              </p>
            </div>
            <div class="col-sm-6">
              <div class="footer-contact">
                  Samuel Fernández Pérez
          </div>
        </div>
      </footer>
    </div>
    <div class="snackbars" id="form-output-global"></div>
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/dd.min.js?ver=4.0"></script>
		<script type="text/javascript" src="js/paginate.js"></script>	
	<script>

    let options = {
        numberPerPage:3, //Cantidad de datos por pagina
        goBar:true, //Barra donde puedes digitar el numero de la pagina al que quiere ir
        pageCounter:true, //Contador de paginas, en cual estas, de cuantas paginas
    };

    let filterOptions = {
        el:'#searchBox' //Caja de texto para filtrar, puede ser una clase o un ID
    };

    paginate.init('.myTable',options,filterOptions);
</script>
    <!--coded by houdini-->
  </body>
</html>