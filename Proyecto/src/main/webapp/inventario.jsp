<%-- 
    Document   : inventario
    Created on : 26/09/2022, 9:30:45 p. m.
    Author     : DM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>INFOSURA</title>
    <meta name="description" content="INFOSURA">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="fontawesome-6.1.1\css\all.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <script src="formulario.js"></script>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="menu-title"><br>MODULOS</li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>INVENTARIOS</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i><a href="inventario.jsp">Registro</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-th"></i>RECURSOS HUMANOS</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-th"></i><a href="infocolaboradores.jsp">Informacion Colaboradores</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-tasks"></i>PROVEEDORES Y CLIENTES</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-fort-awesome"></i><a href="ventas.jsp">Clientes</a></li>
                        </ul>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-fort-awesome"></i><a href="compras.jsp">Proveedores</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-area-chart"></i>DESPACHOS</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-map-o"></i><a href="maps-gmap.jsp">Google Maps</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </aside>
    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <header id="header" class="header">
            <div class="top-left">
                <div class="navbar-header">
                    <a class="navbar-brand" href="./"><img src="images/logo.png" alt="Logo"></a>
                    <a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"></a>
                    <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                </div>
            </div>
            <div class="top-right">
                <div class="header-menu">
                    <div class="header-left">
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <form class="search-form">
                                <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="#"><i class="fa fa- user"></i>Mi Perfil</a>
                            <a class="nav-link" href="#"><i class="fa fa -cog"></i>Configuración</a>
                            <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Logout</a>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="breadcrumbs">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-4">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <h1>SURACEITES</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><a href="#">MODULOS</a></li>
                                    <li><a href="#">INVENTARIOS</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<form id=transactionForm>
<div class="content">
    <div class="row">
    <div class="col-lg-12">
    <div class="card">
    <div class="card-header">
    <strong class="card-title">INVENTARIO</strong></div>
    <b>Tipo de transaccion</b>
    <input id="ENTRADA" type="radio" name="typeSelector"><label for="ENTRADA">ENTRADA</label>
    <input id="SALIDA" type="radio" name="typeSelector"><label for="SALIDA">SALIDA</label>
    <td class="serial">
    <div class="table-stats">
    <table class="table ">
    <tr><label for="transactionType">
        Fecha</label></tr>
    <input id="transactionType" type="date" name="transactionType">
    <tr><label for="transactionCode">
        Codigo</label></tr>
    <input id="transactionCode" type="number" name="transactionCode">
    <tr><label for="transactionProduct">
        Producto</label></tr>
    <input id="transactionProduct" name="transactionProduct">
    <tr><label for="transactionCategory">
        Categoria</label></tr>
    <input id="transactionCategory" name="transactionCategory">
    <tr><label for=transactionAmount>
        Cantidad</label></tr>
    <input id="transactionAmount" name="transactionAmount" type="number"></table></div>
    <button>Añadir</button></td>
    </div>
    </div>
    </div>
</form>
<div class="table-stats order-table ov-h">
    <table class="table ">
        <thead>
       <tr>
            <th class="serial">
               Tipo
           </th>
           <th class="serial">
               Fecha
           </th>
           <th class="serial">
               Codigo
           </th>
           <th class="serial">
               Producto
           </th>
           <th class="serial">
               Categoria
           </th>
           <th class="serial">
               Cantidad
           </th>
            <th class="serial">
               Opciones
           </th>
        </tr>
        </thead>
       </div>
       <tr>
            <td> <span class="product" class="serial">
               ENTRADA</span>
           </td>
           <td> <span class="product">
               05/01/2022</span>
           </td>
            <td> <span class="product">
               0000150</span>
           </td>
            <td> <span class="product">
               Aceite</span> 
           </td>
            <td> <span class="product">
               Aceite para cocina</span> 
           </td>
            <td> <span class="product">
               100</span> 
           </td>
            <td> <span class="product">
                <a href=""><i style="color: red;" data-toggle="modal" data-target="modallarge"><i class="fa-solid fa-floppy-disk" style="font-size: 25px;"></i>&nbsp</a>
                <a href=""><i style="color: rgb(247, 194, 96);" class="fa-solid fa-pen-to-square" style="font-size: 25px;"></i>&nbsp</a>
                <a href=""><i style="color: red;" class="fa-solid fa-trash-can" style="font-size: 25px;"></i>&nbsp</a></span>
            </td>
       </tr> 
    </table>



<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
<script src="assets/js/main.js"></script>

    </body>
</html>
