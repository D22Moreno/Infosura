<%-- 
    Document   : ventas
    Created on : 26/09/2022, 9:32:21 p. m.
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

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
                                <h1><b>SURACEITES</b></h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><a href="#">MODULOS</a></li>
                                    <li><a href="#">Proveedores y Clientes</a></li>
                                    <li class="active">Clientes</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content">
            <form action="" class="formulario" id="formulario">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header"><strong>Registro de datos</strong><small></small></div>
                            <div class="card-body card-block">
                                <div class="form-group"><label for="Nombre completo" class=" form-control-label">Nombres y Apellidos</label><input type="text" id="Nombre completo" name="nombrecompleto" placeholder="Nombre completo" class="form-control" required>           
                                    <p class="formulario__input-error">Solo digitar letras.</p></div>
                                <div class="form-group">
                                <form method="get" action="#">
                                 <label for="favoriteOnly">Selecciona tu tipo de identifiación:</label>
                                  <select name="favoriteOnly" id="favoriteOnly">
                                    <option>C.C.</option>
                                    <option>NIT</option>
                                    <option>Pasaporte</option>
                                    <option>C.E.</option>
                                    <option>T.I.</option>
                                    <option>R.C.</option>
                                  </select>
                                  <br>
                                    <label for="vat" class=" form-control-label">Identificación</label><input type="text" id="vat" placeholder="Digite su numero de identificación" class="form-control" required>
                                </div>
                                <div class="form-group"><label for="street" class=" form-control-label">Dirección</label><input type="text" id="Direccion completa" placeholder="Direccion completa" class="form-control" required></div>
                                <div class="row form-group">
                                    <div class="col-8">
                                        <div class="form-group">
                                        <form method="get" action="#">
                                         <label for="favoriteOnly">Selecciona tu municipio de residencia:</label>
                                          <select name="favoriteOnly" id="favoriteOnly">
                                            <option>ABEJORRAL</option>
                                            <option>ABREGO</option>
                                            <option>ABRIAQUÍ</option>
                                            <option>ACACiAS</option>
                                            <option>ACANDÍ</option>
                                            <option>ACEVEDO</option>
                                            <option>ACHÍ</option>
                                            <option>AGRADO</option>
                                            <option>AGUA DE DIOS</option>
                                            <option>AGUACHICA</option>
                                            <option>AGUADA</option>
                                            <option>AGUADAS</option>
                                            <option>AGUAZUL</option>
                                            <option>AGUSTÍN CODAZZI</option>
                                            <option>AIPE</option>
                                            <option>ALBAN</option>
                                            <option>ALBÁN</option>
                                            <option>ALBANIA</option>
                                            <option>ALBANIA</option>
                                            <option>ALBANIA</option>
                                            <option>ALCALa</option>
                                            <option>ALDANA</option>
                                            <option>ALEJANDRÍA</option>
                                            <option>ALGARROBO</option>
                                            <option>ALGECIRAS</option>
                                            <option>ALMAGUER</option>
                                            <option>ALMEIDA</option>
                                            <option>ALPUJARRA</option>
                                            <option>ALTAMIRA</option>
                                            <option>ALTO BAUDÓ</option>
                                            <option>ALTOS DEL ROSARIO</option>
                                            <option>ALVARADO</option>
                                            <option>AMAGa</option>
                                            <option>AMALFI</option>
                                            <option>AMBALEMA</option>
                                            <option>ANAPOIMA</option>
                                            <option>ANCUYA</option>
                                            <option>ANDALUCÍA</option>
                                            <option>ANDES</option>
                                            <option>ANGELOPOLIS</option>
                                            <option>ANGOSTURA</option>
                                            <option>ANOLAIMA</option>
                                            <option>ANORÍ</option>
                                            <option>ANSERMA</option>
                                            <option>ANSERMANUEVO</option>
                                            <option>ANZA</option>
                                            <option>ANZOÁTEGUI</option>
                                            <option>APARTADÓ</option>
                                            <option>APÍA</option>
                                            <option>APULO</option>
                                            <option>AQUITANIA</option>
                                            <option>ARACATACA</option>
                                            <option>ARANZAZU</option>
                                            <option>ARATOCA</option>
                                            <option>ARAUCA</option>
                                            <option>ARAUQUITA</option>
                                            <option>ARBELÁEZ</option>
                                            <option>ARBOLEDA</option>
                                            <option>ARBOLEDAS</option>
                                            <option>ARBOLETES</option>
                                            <option>ARCABUCO</option>
                                            <option>ARENAL</option>
                                            <option>ARGELIA</option>
                                            <option>ARGELIA</option>
                                            <option>ARGELIA</option>
                                            <option>ARIGUANÍ</option>
                                            <option>ARJONA</option>
                                            <option>ARMENIA</option>
                                            <option>ARMENIA</option>
                                            <option>ARMERO</option>
                                            <option>ARROYOHONDO</option>
                                            <option>ASTREA</option>
                                            <option>ATACO</option>
                                            <option>ATRATO</option>
                                            <option>AYAPEL</option>
                                            <option>BAGADÓ</option>
                                            <option>BAHÍA SOLANO</option>
                                            <option>BAJO BAUDÓ</option>
                                            <option>BALBOA</option>
                                            <option>BALBOA</option>
                                            <option>BARANOA</option>
                                            <option>BARAYA</option>
                                            <option>BARBACOAS</option>
                                            <option>BARBOSA</option>
                                            <option>BARBOSA</option>
                                            <option>BARICHARA</option>
                                            <option>BARRANCA DE UPIA</option>
                                            <option>BARRANCABERMEJA</option>
                                            <option>BARRANCAS</option>
                                            <option>BARRANCO DE LOBA</option>
                                            <option>BARRANCO MINA</option>
                                            <option>BARRANQUILLA</option>
                                            <option>BECERRIL</option>
                                            <option>BELALCÁZAR</option>
                                            <option>BELEN</option>
                                            <option>BELÉN</option>
                                            <option>BELÉN DE BAJIRA</option>
                                            <option>LÉN DE LOS ANDAQUIES</option>
                                            <option>BELÉN DE UMBRÍA</option>
                                            <option>BELLO</option>
                                            <option>BELMIRA</option>
                                            <option>BELTRÁN</option>
                                            <option>BERBEO</option>
                                            <option>BETANIA</option>
                                            <option>BETÉITIVA</option>
                                            <option>BETULIA</option>
                                            <option>BETULIA</option>
                                            <option>BITUIMA</option>
                                            <option>BOAVITA</option>
                                            <option>BOCHALEMA</option>
                                            <option>BOGOTA D.C.</option>
                                            <option>BOJACÁ</option>
                                            <option>BOJAYA</option>
                                            <option>BOLÍVAR</option>
                                            <option>BOLÍVAR</option>
                                            <option>BOLÍVAR</option>
                                            <option>BOSCONIA</option>
                                            <option>BOYACÁ</option>
                                            <option>BRICEÑO</option>
                                            <option>BRICEÑO</option>
                                            <option>BUCARAMANGA</option>
                                            <option>BUCARASICA</option>
                                            <option>BUENAVENTURA</option>
                                            <option>BUENAVISTA</option>
                                            <option>BUENAVISTA</option>
                                            <option>BUENAVISTA</option>
                                            <option>BUENAVISTA</option>
                                            <option>BUENOS AIRES</option>
                                            <option>BUESACO</option>
                                            <option>BUGA</option>
                                            <option>BUGALAGRANDE</option>
                                            <option>BURITICÁ</option>
                                            <option>BUSBANZÁ</option>
                                            <option>CABRERA</option>
                                            <option>CABRERA</option>
                                            <option>CABUYARO</option>
                                            <option>CACAHUAL</option>
                                            <option>CÁCERES</option>
                                            <option>CACHIPAY</option>
                                            <option>CACHIRÁ</option>
                                            <option>CÁCOTA</option>
                                            <option>CAICEDO</option>
                                            <option>CAICEDONIA</option>
                                            <option>CAIMITO</option>
                                            <option>CAJAMARCA</option>
                                            <option>CAJIBÍO</option>
                                            <option>CAJICÁ</option>
                                            <option>CALAMAR</option>
                                            <option>CALAMAR</option>
                                            <option>CALARCA</option>
                                            <option>CALDAS</option>
                                            <option>CALDAS</option>
                                            <option>CALDONO</option>
                                            <option>CALI</option>
                                            <option>CALIFORNIA</option>
                                            <option>CALIMA</option>
                                            <option>CALOTO</option>
                                            <option>CAMPAMENTO</option>
                                            <option>CAMPO DE LA CRUZ</option>
                                            <option>CAMPOALEGRE</option>
                                            <option>CAMPOHERMOSO</option>
                                            <option>CANALETE</option>
                                            <option>CANDELARIA</option>
                                            <option>CANDELARIA</option>
                                            <option>CANTAGALLO</option>
                                            <option>CANTON DE SAN PABLO</option>
                                            <option>CAÑASGORDAS</option>
                                            <option>CAPARRAPÍ</option>
                                            <option>CAPITANEJO</option>
                                            <option>CAQUEZA</option>
                                            <option>CARACOLÍ</option>
                                            <option>CARAMANTA</option>
                                            <option>CARCASÍ</option>
                                            <option>CAREPA</option>
                                            <option>CARMEN DE APICALÁ</option>
                                            <option>CARMEN DE BOLÍVAR</option>
                                            <option>CARMEN DE CARUPA</option>
                                            <option>CARMEN DE VIBORAL</option>
                                            <option>CARMÉN DEL DARIÉN</option>
                                            <option>CAROLINA</option>
                                            <option>CARTAGENA</option>
                                            <option>CARTAGENA DEL CHAIRÁ</option>
                                            <option>CARTAGO</option>
                                            <option>CARURU</option>
                                            <option>CASABIANCA</option>
                                            <option>CASTILLA LA NUEVA</option>
                                            <option>CAUCASIA</option>
                                            <option>CEPITÁ</option>
                                            <option>CERETÉ</option>
                                            <option>CERINZA</option>
                                            <option>CERRITO</option>
                                            <option>CERRO SAN ANTONIO</option>
                                            <option>CERTEGUI</option>
                                            <option>CHACHAGUI</option>
                                            <option>CHAGUANÍ</option>
                                            <option>CHALÁN</option>
                                            <option>CHAMEZA</option>
                                            <option>CHAPARRAL</option>
                                            <option>CHARALÁ</option>
                                            <option>CHARTA</option>
                                            <option>CHÍA</option>
                                            <option>CHIBOLO</option>
                                            <option>CHIGORODÓ</option>
                                            <option>CHIMA</option>
                                            <option>CHIMÁ</option>
                                            <option>CHIMICHAGUA</option>
                                            <option>CHINÁCOTA</option>
                                            <option>CHINAVITA</option>
                                            <option>CHINCHINa</option>
                                            <option>CHINÚ</option>
                                            <option>CHIPAQUE</option>
                                            <option>CHIPATÁ</option>
                                            <option>CHIQUINQUIRÁ</option>
                                            <option>CHÍQUIZA</option>
                                            <option>CHIRIGUANA</option>
                                            <option>CHISCAS</option>
                                            <option>CHITA</option>
                                            <option>CHITAGÁ</option>
                                            <option>CHITARAQUE</option>
                                            <option>CHIVATÁ</option>
                                            <option>CHIVOR</option>
                                            <option>CHOACHÍ</option>
                                            <option>CHOCONTÁ</option>
                                            <option>CICUCO</option>
                                            <option>CIÉNAGA</option>
                                            <option>CIÉNAGA DE ORO</option>
                                            <option>CIÉNEGA</option>
                                            <option>CIMITARRA</option>
                                            <option>CIRCASIA</option>
                                            <option>CISNEROS</option>
                                            <option>CIUDAD BOLÍVAR</option>
                                            <option>CLEMENCIA</option>
                                            <option>COCORNÁ</option>
                                            <option>COELLO</option>
                                            <option>COGUA</option>
                                            <option>COLOMBIA</option>
                                            <option>COLON</option>
                                            <option>COLÓN</option>
                                            <option>COLOSO</option>
                                            <option>CÓMBITA</option>
                                            <option>CONCEPCIÓN</option>
                                            <option>CONCEPCIÓN</option>
                                            <option>CONCORDIA</option>
                                            <option>CONCORDIA</option>
                                            <option>CONDOTO</option>
                                            <option>CONFINES</option>
                                            <option>CONSACA</option>
                                            <option>CONTADERO</option>
                                            <option>CONTRATACIÓN</option>
                                            <option>CONVENCIÓN</option>
                                            <option>COPACABANA</option>
                                            <option>COPER</option>
                                            <option>CoRDOBA</option>
                                            <option>CÓRDOBA</option>
                                            <option>CÓRDOBA</option>
                                            <option>CORINTO</option>
                                            <option>COROMORO</option>
                                            <option>COROZAL</option>
                                            <option>CORRALES</option>
                                            <option>COTA</option>
                                            <option>COTORRA</option>
                                            <option>COVARACHÍA</option>
                                            <option>COVEÑAS</option>
                                            <option>COYAIMA</option>
                                            <option>CRAVO NORTE</option>
                                            <option>CUASPUD</option>
                                            <option>CUBARÁ</option>
                                            <option>CUCAITA</option>
                                            <option>CUCUNUBÁ</option>
                                            <option>CÚCUTA</option>
                                            <option>CUCUTILLA</option>
                                            <option>CUÍTIVA</option>
                                            <option>CUMARAL</option>
                                            <option>CUMARIBO</option>
                                            <option>CUMBAL</option>
                                            <option>CUMBITARA</option>
                                            <option>CUNDAY</option>
                                            <option>CURITÍ</option>
                                            <option>CURRILLO</option>
                                            <option>CURUMANÍ</option>
                                            <option>DABEIBA</option>
                                            <option>DAGUA</option>
                                            <option>DIBULLA</option>
                                            <option>DISTRACCION</option>
                                            <option>DOLORES</option>
                                            <option>DON MATiAS</option>
                                            <option>DOSQUEBRADAS</option>
                                            <option>DUITAMA</option>
                                            <option>DURANIA</option>
                                            <option>EBÉJICO</option>
                                            <option>EL ÁGUILA</option>
                                            <option>EL BAGRE</option>
                                            <option>EL BANCO</option>
                                            <option>EL CAIRO</option>
                                            <option>EL CALVARIO</option>
                                            <option>EL CARMEN</option>
                                            <option>EL CARMEN DE ATRATO</option>
                                            <option>EL CARMEN DE CHUCURÍ</
                                            <option>EL CASTILLO</option>
                                            <option>EL CERRITO</option>
                                            <option>EL CHARCO</option>
                                            <option>EL COCUY</option>
                                            <option>EL COLEGIO</option>
                                            <option>EL COPEY</option>
                                            <option>EL DONCELLO</option>
                                            <option>EL DORADO</option>
                                            <option>EL DOVIO</option>
                                            <option>EL ENCANTO</option>
                                            <option>EL ESPINO</option>
                                            <option>EL GUACAMAYO</option>
                                            <option>EL GUAMO</option>
                                            <option>Litoral del San Juan</option>
                                            <option>EL MOLINO</option>
                                            <option>EL PASO</option>
                                            <option>EL PAUJIL</option>
                                            <option>EL PEÑOL</option>
                                            <option>EL PEÑON</option>
                                            <option>EL PEÑÓN</option>
                                            <option>EL PEÑÓN</option>
                                            <option>EL PIÑON</option>
                                            <option>EL PLAYÓN</option>
                                            <option>EL RETEN</option>
                                            <option>EL RETORNO</option>
                                            <option>EL ROBLE</option>
                                            <option>EL ROSAL</option>
                                            <option>EL ROSARIO</option>
                                            <option>El Tablon de Gomez</option>
                                            <option>EL TAMBO</option>
                                            <option>EL TAMBO</option>
                                            <option>EL TARRA</option>
                                            <option>EL ZULIA</option>
                                            <option>ELÍAS</option>
                                            <option>ENCINO</option>
                                            <option>ENCISO</option>
                                            <option>ENTRERRIOS</option>
                                            <option>ENVIGADO</option>
                                            <option>ESPINAL</option>
                                            <option>FACATATIVÁ</option>
                                            <option>FALAN</option>
                                            <option>FILADELFIA</option>
                                            <option>FILANDIA</option>
                                            <option>FIRAVITOBA</option>
                                            <option>FLANDES</option>
                                            <option>FLORENCIA</option>
                                            <option>FLORENCIA</option>
                                            <option>FLORESTA</option>
                                            <option>FLORIÁN</option>
                                            <option>FLORIDA</option>
                                            <option>FLORIDABLANCA</option>
                                            <option>FOMEQUE</option>
                                            <option>FONSECA</option>
                                            <option>FORTUL</option>
                                            <option>FOSCA</option>
                                            <option>FRANCISCO PIZARRO</option>
                                            <option>FREDONIA</option>
                                            <option>FRESNO</option>
                                            <option>FRONTINO</option>
                                            <option>FUENTE DE ORO</option>
                                            <option>FUNDACION</option>
                                            <option>FUNES</option>
                                            <option>FUNZA</option>
                                            <option>FÚQUENE</option>
                                            <option>FUSAGASUGÁ</option>
                                            <option>GACHALA</option>
                                            <option>GACHANCIPÁ</option>
                                            <option>GACHANTIVÁ</option>
                                            <option>GACHETA</option>
                                            <option>GALÁN</option>
                                            <option>GALAPA</option>
                                            <option>GALERAS</option>
                                            <option>GAMA</option>
                                            <option>GAMARRA</option>
                                            <option>GAMBITA</option>
                                            <option>GAMEZA</option>
                                            <option>GARAGOA</option>
                                            <option>GARZÓN</option>
                                            <option>GeNOVA</option>
                                            <option>GIGANTE</option>
                                            <option>GINEBRA</option>
                                            <option>GIRALDO</option>
                                            <option>GIRARDOT</option>
                                            <option>GIRARDOTA</option>
                                            <option>GIRÓN</option>
                                            <option>GÓMEZ PLATA</option>
                                            <option>GONZÁLEZ</option>
                                            <option>GRAMALOTE</option>
                                            <option>GRANADA</option>
                                            <option>GRANADA</option>
                                            <option>GRANADA</option>
                                            <option>GUACA</option>
                                            <option>GUACAMAYAS</option>
                                            <option>GUACARÍ</option>
                                            <option>GUACHETÁ</option>
                                            <option>GUACHUCAL</option>
                                            <option>GUADALUPE</option>
                                            <option>GUADALUPE</option>
                                            <option>GUADALUPE</option>
                                            <option>GUADUAS</option>
                                            <option>GUAITARILLA</option>
                                            <option>GUALMATAN</option>
                                            <option>GUAMAL</option>
                                            <option>GUAMAL</option>
                                            <option>GUAMO</option>
                                            <option>GUAPI</option>
                                            <option>GUAPOTÁ</option>
                                            <option>GUARANDA</option>
                                            <option>GUARNE</option>
                                            <option>GUASCA</option>
                                            <option>GUATAPE</option>
                                            <option>GUATAQUÍ</option>
                                            <option>GUATAVITA</option>
                                            <option>GUATEQUE</option>
                                            <option>GUÁTICA</option>
                                            <option>GUAVATÁ</option>
                                            <option>GUAYABAL DE SIQUIMA</option>
                                            <option>GUAYABETAL</option>
                                            <option>GUAYATÁ</option>
                                            <option>GuEPSA</option>
                                            <option>GÜICÁN</option>
                                            <option>GUTIÉRREZ</option>
                                            <option>HACARÍ</option>
                                            <option>HATILLO DE LOBA</option>
                                            <option>HATO</option>
                                            <option>HATO COROZAL</option>
                                            <option>HATONUEVO</option>
                                            <option>HELICONIA</option>
                                            <option>HERRÁN</option>
                                            <option>HERVEO</option>
                                            <option>HISPANIA</option>
                                            <option>HOBO</option>
                                            <option>HONDA</option>
                                            <option>IBAGUe</option>
                                            <option>ICONONZO</option>
                                            <option>ILES</option>
                                            <option>IMUES</option>
                                            <option>INÍRIDA</option>
                                            <option>INZÁ</option>
                                            <option>IPIALES</option>
                                            <option>IQUIRA</option>
                                            <option>ISNOS</option>
                                            <option>ITAGUI</option>
                                            <option>ITSMINA</option>
                                            <option>ITUANGO</option>
                                            <option>IZA</option>
                                            <option>JAMBALO</option>
                                            <option>JAMUNDÍ</option>
                                            <option>JARDÍN</option>
                                            <option>JENESANO</option>
                                            <option>JERICÓ</option>
                                            <option>JERICÓ</option>
                                            <option>JERUSALÉN</option>
                                            <option>JESÚS MARÍA</option>
                                            <option>JORDÁN</option>
                                            <option>JUAN DE ACOSTA</option>
                                            <option>JUNÍN</option>
                                            <option>JURADÓ</option>
                                            <option>LA APARTADA</option>
                                            <option>LA ARGENTINA</option>
                                            <option>LA BELLEZA</option>
                                            <option>LA CALERA</option>
                                            <option>LA CAPILLA</option>
                                            <option>LA CEJA</option>
                                            <option>LA CELIA</option>
                                            <option>LA CHORRERA</option>
                                            <option>LA CRUZ</option>
                                            <option>LA CUMBRE</option>
                                            <option>LA DORADA</option>
                                            <option>LA ESPERANZA</option>
                                            <option>LA ESTRELLA</option>
                                            <option>LA FLORIDA</option>
                                            <option>LA GLORIA</option>
                                            <option>LA GUADALUPE</option>
                                            <option>LA JAGUA DE IBIRICO</option>
                                            <option>LA JAGUA DEL PILAR</option>
                                            <option>LA LLANADA</option>
                                            <option>LA MACARENA</option>
                                            <option>LA MERCED</option>
                                            <option>LA MESA</option>
                                            <option>LA MONTAÑITA</option>
                                            <option>LA PALMA</option>
                                            <option>LA PAZ</option>
                                            <option>LA PAZ</option>
                                            <option>LA PEDRERA</option>
                                            <option>LA PEÑA</option>
                                            <option>LA PINTADA</option>
                                            <option>LA PLATA</option>
                                            <option>LA PLAYA</option>
                                            <option>LA PRIMAVERA</option>
                                            <option>LA SALINA</option>
                                            <option>LA SIERRA</option>
                                            <option>LA TEBAIDA</option>
                                            <option>LA TOLA</option>
                                            <option>LA UNION</option>
                                            <option>LA UNIÓN</option>
                                            <option>LA UNIÓN</option>
                                            <option>LA UNIÓN</option>
                                            <option>LA URIBE</option>
                                            <option>LA UVITA</option>
                                            <option>LA VEGA</option>
                                            <option>LA VEGA</option>
                                            <option>LA VICTORIA</option>
                                            <option>LA VICTORIA</option>
                                            <option>LA VICTORIA</option>
                                            <option>LA VIRGINIA</option>
                                            <option>LABATECA</option>
                                            <option>LABRANZAGRANDE</option>
                                            <option>LANDÁZURI</option>
                                            <option>LEBRÍJA</option>
                                            <option>LEIVA</option>
                                            <option>LEJANÍAS</option>
                                            <option>LENGUAZAQUE</option>
                                            <option>LeRIDA</option>
                                            <option>LETICIA</option>
                                            <option>LiBANO</option>
                                            <option>LIBORINA</option>
                                            <option>LINARES</option>
                                            <option>LLORÓ</option>
                                            <option>LOPEZ</option>
                                            <option>LORICA</option>
                                            <option>LOS ANDES</option>
                                            <option>LOS CÓRDOBAS</option>
                                            <option>LOS PALMITOS</option>
                                            <option>LOS PATIOS</option>
                                            <option>LOS SANTOS</option>
                                            <option>LOURDES</option>
                                            <option>LURUACO</option>
                                            <option>MACANAL</option>
                                            <option>MACARAVITA</option>
                                            <option>MACEO</option>
                                            <option>MACHETA</option>
                                            <option>MADRID</option>
                                            <option>MAGANGUÉ</option>
                                            <option>Magui</option>
                                            <option>MAHATES</option>
                                            <option>MAICAO</option>
                                            <option>MAJAGUAL</option>
                                            <option>MÁLAGA</option>
                                            <option>MALAMBO</option>
                                            <option>MALLAMA</option>
                                            <option>MANATi</option>
                                            <option>MANAURE</option>
                                            <option>MANAURE</option>
                                            <option>MANÍ</option>
                                            <option>MANIZALES</option>
                                            <option>MANTA</option>
                                            <option>MANZANARES</option>
                                            <option>MAPIRIPaN</option>
                                            <option>MAPIRIPaN</option>
                                            <option>MARGARITA</option>
                                            <option>MARÍA LA BAJA</option>
                                            <option>MARINILLA</option>
                                            <option>MARIPÍ</option>
                                            <option>MARIQUITA</option>
                                            <option>MARMATO</option>
                                            <option>MARQUETALIA</option>
                                            <option>MARSELLA</option>
                                            <option>MARULANDA</option>
                                            <option>MATANZA</option>
                                            <option>MEDELLÍN</option>
                                            <option>MEDINA</option>
                                            <option>MEDIO ATRATO</option>
                                            <option>MEDIO BAUDÓ</option>
                                            <option>MEDIO SAN JUAN</option>
                                            <option>MELGAR</option>
                                            <option>MERCADERES</option>
                                            <option>MESETAS</option>
                                            <option>MILaN</option>
                                            <option>MIRAFLORES</option>
                                            <option>MIRAFLORES</option>
                                            <option>MIRANDA</option>
                                            <option>MIRITI - PARANÁ</option>
                                            <option>MISTRATÓ</option>
                                            <option>MITÚ</option>
                                            <option>MOCOA</option>
                                            <option>MOGOTES</option>
                                            <option>MOLAGAVITA</option>
                                            <option>MOMIL</option>
                                            <option>MOMPÓS</option>
                                            <option>MONGUA</option>
                                            <option>MONGUÍ</option>
                                            <option>MONIQUIRÁ</option>
                                            <option>MONTEBELLO</option>
                                            <option>MONTECRISTO</option>
                                            <option>MONTELÍBANO</option>
                                            <option>Montengro</option>
                                            <option>MONTERÍA</option>
                                            <option>MONTERREY</option>
                                            <option>MOÑITOS</option>
                                            <option>MORALES</option>
                                            <option>MORALES</option>
                                            <option>MORELIA</option>
                                            <option>MORICHAL</option>
                                            <option>MORROA</option>
                                            <option>MOSQUERA</option>
                                            <option>MOSQUERA</option>
                                            <option>MOTAVITA</option>
                                            <option>MURILLO</option>
                                            <option>MURINDÓ</option>
                                            <option>MUTATA</option>
                                            <option>MUTISCUA</option>
                                            <option>MUZO</option>
                                            <option>NARIÑO</option>
                                            <option>NARIÑO</option>
                                            <option>NARIÑO</option>
                                            <option>NÁTAGA</option>
                                            <option>NATAGAIMA</option>
                                            <option>NECHÍ</option>
                                            <option>NECOCLÍ</option>
                                            <option>NEIRA</option>
                                            <option>NEIVA</option>
                                            <option>NEMOCoN</option>
                                            <option>NILO</option>
                                            <option>NIMAIMA</option>
                                            <option>NOBSA</option>
                                            <option>NOCAIMA</option>
                                            <option>NORCASIA</option>
                                            <option>NÓVITA</option>
                                            <option>NUEVA GRANADA</option>
                                            <option>NUEVO COLÓN</option>
                                            <option>NUNCHÍA</option>
                                            <option>NUQUÍ</option>
                                            <option>OBANDO</option>
                                            <option>OCAMONTE</option>
                                            <option>OCAÑA</option>
                                            <option>OIBA</option>
                                            <option>OICATÁ</option>
                                            <option>OLAYA</option>
                                            <option>OLAYA HERRERA</option>
                                            <option>ONZAGA</option>
                                            <option>OPORAPA</option>
                                            <option>ORITO</option>
                                            <option>OROCUÉ</option>
                                            <option>ORTEGA</option>
                                            <option>OSPINA</option>
                                            <option>OTANCHE</option>
                                            <option>OVEJAS</option>
                                            <option>PACHAVITA</option>
                                            <option>PACHO</option>
                                            <option>PACOA</option>
                                            <option>PÁCORA</option>
                                            <option>PADILLA</option>
                                            <option>PAEZ</option>
                                            <option>PÁEZ</option>
                                            <option>PAICOL</option>
                                            <option>PAILITAS</option>
                                            <option>PAIME</option>
                                            <option>PAIPA</option>
                                            <option>PAJARITO</option>
                                            <option>PALERMO</option>
                                            <option>PALESTINA</option>
                                            <option>PALESTINA</option>
                                            <option>PALMAR</option>
                                            <option>PALMAR DE VARELA</option>
                                            <option>PALMAS DEL SOCORRO</option>
                                            <option>PALMIRA</option>
                                            <option>PALMITO</option>
                                            <option>PALOCABILDO</option>
                                            <option>PAMPLONA</option>
                                            <option>PAMPLONITA</option>
                                            <option>PANA PANA</option>
                                            <option>PANDI</option>
                                            <option>PANQUEBA</option>
                                            <option>PAPUNAHUA</option>
                                            <option>PÁRAMO</option>
                                            <option>PARATEBUENO</option>
                                            <option>PASCA</option>
                                            <option>PASTO</option>
                                            <option>PATIA</option>
                                            <option>PAUNA</option>
                                            <option>PAYA</option>
                                            <option>PAZ DE ARIPORO</option>
                                            <option>PAZ DE RÍO</option>
                                            <option>PEDRAZA</option>
                                            <option>PELAYA</option>
                                            <option>PENSILVANIA</option>
                                            <option>PEÑOL</option>
                                            <option>PEQUE</option>
                                            <option>PEREIRA</option>
                                            <option>PESCA</option>
                                            <option>PIAMONTE</option>
                                            <option>PIEDECUESTA</option>
                                            <option>PIEDRAS</option>
                                            <option>PIENDAMO</option>
                                            <option>PIJAO</option>
                                            <option>PIJIÑO DEL CARMEN</option>
                                            <option>PINCHOTE</option>
                                            <option>PINILLOS</option>
                                            <option>PIOJÓ</option>
                                            <option>PISBA</option>
                                            <option>PITAL</option>
                                            <option>PITALITO</option>
                                            <option>PIVIJAY</option>
                                            <option>PLANADAS</option>
                                            <option>PLANETA RICA</option>
                                            <option>PLATO</option>
                                            <option>POLICARPA</option>
                                            <option>POLONUEVO</option>
                                            <option>PONEDERA</option>
                                            <option>POPAYÁN</option>
                                            <option>PORE</option>
                                            <option>POTOSÍ</option>
                                            <option>PRADERA</option>
                                            <option>PRADO</option>
                                            <option>PROVIDENCIA</option>
                                            <option>PROVIDENCIA Y SANTA CATALINA</option>
                                            <option>PUEBLO BELLO</option>
                                            <option>PUEBLO NUEVO</option>
                                            <option>PUEBLO RICO</option>
                                            <option>PUEBLO VIEJO</option>
                                            <option>PUEBLORRICO</option>
                                            <option>PUENTE NACIONAL</option>
                                            <option>PUERRES</option>
                                            <option>PUERTO ALEGRIA</option>
                                            <option>PUERTO ARICA</option>
                                            <option>PUERTO ASIS</option>
                                            <option>PUERTO BERRiO</option>
                                            <option>PUERTO BOYACa</option>
                                            <option>PUERTO CAICEDO</option>
                                            <option>PUERTO CARREÑO</option>
                                            <option>PUERTO COLOMBIA</option>
                                            <option>PUERTO COLOMBIA</option>
                                            <option>PUERTO CONCORDIA</option>
                                            <option>PUERTO ESCONDIDO</option>
                                            <option>PUERTO GAITÁN</option>
                                            <option>PUERTO GUZMAN</option>
                                            <option>PUERTO LEGUIZAMO</option>
                                            <option>PUERTO LIBERTADOR</option>
                                            <option>PUERTO LLERAS</option>
                                            <option>PUERTO LoPEZ</option>
                                            <option>PUERTO NARE</option>
                                            <option>PUERTO NARIÑO</option>
                                            <option>PUERTO PARRA</option>
                                            <option>PUERTO RICO</option>
                                            <option>PUERTO RICO</option>
                                            <option>PUERTO RONDÓN</option>
                                            <option>PUERTO SALGAR</option>
                                            <option>PUERTO SANTANDER</option>
                                            <option>PUERTO SANTANDER</option>
                                            <option>PUERTO TEJADA</option>
                                            <option>PUERTO TRIUNFO</option>
                                            <option>PUERTO WILCHES</option>
                                            <option>PULI</option>
                                            <option>PUPIALES</option>
                                            <option>PURACE</option>
                                            <option>PURIFICACIÓN</option>
                                            <option>PURÍSIMA</option>
                                            <option>QUEBRADANEGRA</option>
                                            <option>QUETAME</option>
                                            <option>QUIBDÓ</option>
                                            <option>QUIMBAYA</option>
                                            <option>QUINCHiA</option>
                                            <option>QUÍPAMA</option>
                                            <option>QUIPILE</option>
                                            <option>RAGONVALIA</option>
                                            <option>RAMIRIQUÍ</option>
                                            <option>RÁQUIRA</option>
                                            <option>RECETOR</option>
                                            <option>REGIDOR</option>
                                            <option>REMEDIOS</option>
                                            <option>REMOLINO</option>
                                            <option>REPELON</option>
                                            <option>RESTREPO</option>
                                            <option>RESTREPO</option>
                                            <option>RETIRO</option>
                                            <option>RICAURTE</option>
                                            <option>RICAURTE</option>
                                            <option>RÍO DE ORO</option>
                                            <option>RÍO FRÍO</option>
                                            <option>RIO QUITO</option>
                                            <option>RÍO VIEJO</option>
                                            <option>RIOBLANCO</option>
                                            <option>RIOFRIO</option>
                                            <option>RIOHACHA</option>
                                            <option>RIONEGRO</option>
                                            <option>RIONEGRO</option>
                                            <option>RIOSUCIO</option>
                                            <option>RIOSUCIO</option>
                                            <option>RISARALDA</option>
                                            <option>RIVERA</option>
                                            <option>ROBERTO PAYAN</option>
                                            <option>ROLDANILLO</option>
                                            <option>RONCESVALLES</option>
                                            <option>RONDÓN</option>
                                            <option>ROSAS</option>
                                            <option>ROVIRA</option>
                                            <option>SABANA DE TORRES</option>
                                            <option>Sabanagrande</option>
                                            <option>SABANALARGA</option>
                                            <option>SABANALARGA</option>
                                            <option>SABANALARGA</option>
                                            <option>SABANAS DE SAN ANGEL</
                                            <option>SABANETA</option>
                                            <option>SABOYÁ</option>
                                            <option>SÁCAMA</option>
                                            <option>SÁCHICA</option>
                                            <option>SAHAGÚN</option>
                                            <option>SALADOBLANCO</option>
                                            <option>SALAMINA</option>
                                            <option>SALAMINA</option>
                                            <option>SALAZAR</option>
                                            <option>SALDAÑA</option>
                                            <option>SALENTO</option>
                                            <option>SALGAR</option>
                                            <option>SAMACÁ</option>
                                            <option>SAMANÁ</option>
                                            <option>SAMANIEGO</option>
                                            <option>SAMPUÉS</option>
                                            <option>SAN AGUSTÍN</option>
                                            <option>SAN ALBERTO</option>
                                            <option>SAN ANDReS</option>
                                            <option>SAN ANDRÉS</option>
                                            <option>SAN ANDRÉS</option>
                                            <option>SAN ANDRÉS SOTAVENTO</
                                            <option>SAN ANTERO</option>
                                            <option>SAN ANTONIO</option>
                                            on>NTONIO DE TEQUENDAMA</option>
                                            <option>SAN BENITO</option>
                                            <option>SAN BENITO ABAD</option>
                                            <option>SAN BERNARDO</option>
                                            <option>SAN BERNARDO</option>
                                            tion> BERNARDO DEL VIENTO</option>
                                            <option>SAN CALIXTO</option>
                                            <option>SAN CARLOS</option>
                                            <option>SAN CARLOS</option>
                                            <option>SAN CARLOS GUAROA</option>
                                            <option>SAN CAYETANO</option>
                                            <option>SAN CAYETANO</option>
                                            <option>SAN CRISTOBAL</option>
                                            <option>SAN DIEGO</option>
                                            <option>SAN EDUARDO</option>
                                            <option>SAN ESTANISLAO</option>
                                            <option>SAN FELIPE</option>
                                            <option>SAN FERNANDO</option>
                                            <option>SAN FRANCISCO</option>
                                            <option>SAN GIL</option>
                                            <option>SAN JACINTO</option>
                                            <option>SAN JACINTO DEL CAUCA</option>
                                            <option>SAN JOSÉ</option>
                                            <option>MONTAÑA</option>
                                            <option>SAN JOSÉ DE MIRANDA</option>
                                            <option>SAN JOSÉ DE PARE</option>
                                            <option>SAN JOSE DEL FRAGUA</option>
                                            option>AN JOSÉ DEL GUAVIARE</option>
                                            <option>SAN JOSÉ DEL PALMAR</option>
                                            <option>SAN JUAN BETULIA</option>
                                            <option>SAN JUAN DE ARAMA</option>
                                            <option>SAN JUAN DE RÍO SECO</option>
                                            <option>SAN JUAN DE URABA</option>
                                            <option>SAN JUAN DEL CESAR</option>
                                            <option>SAN JUAN NEPOMUCENO</option>
                                            <option>SAN JUANITO</option>
                                            <option>SAN LORENZO</option>
                                            <option>SAN LUIS</option>
                                            <option>SAN LUIS</option>
                                            <option>SAN LUIS DE CUBARRAL</option>
                                            <option>SAN LUIS DE GACENO</option>
                                            <option>SAN LUIS DE PALENQUE</option>
                                            <option>SAN MARCOS</option>
                                            <option>SAN MARTÍN</option>
                                            <option>SAN MARTÍN</option>
                                            <option>SAN MARTIN DE LOBA</option>
                                            <option>SAN MATEO</option>
                                            <option>SAN MIGUEL</option>
                                            <option>SAN MIGUEL</option>
                                            <option>SAN MIGUEL DE SEMA</option>
                                            <option>SAN ONOFRE</option>
                                            <option>SAN PABLO</option>
                                            <option>SAN PABLO</option>
                                            <option>SAN PABLO BORBUR</option>
                                            <option>SAN PEDRO</option>
                                            <option>SAN PEDRO</option>
                                            <option>SAN PEDRO</option>
                                            <option>SAN PEDRO DE CARTAGO</option>
                                            <option>SAN PEDRO DE URABA</option>
                                            <option>SAN PELAYO</option>
                                            <option>SAN RAFAEL</option>
                                            <option>SAN ROQUE</option>
                                            <option>SAN ROSA VITERBO</option>
                                            <option>SAN SEBASTIAN</option>
                                            >ASTIAN DE BUENAVISTA</option>
                                            <option>SAN VICENTE</option>
                                            ption>N VICENTE DE CHUCURÍ</option>
                                            ption>N VICENTE DEL CAGUÁN</option>
                                            <option>SAN ZENON</option>
                                            <option>SANDONÁ</option>
                                            <option>SANTA ANA</option>
                                            <option>SANTA BaRBARA</option>
                                            <option>SANTA BaRBARA</option>
                                            <option>SANTA BÁRBARA</option>
                                            ption>NTA BARBARA DE PINTO</option>
                                            <option>SANTA CATALINA</option>
                                            <option>SANTA CRUZ</option>
                                            option>ANTA HELENA DEL OPÓN</option>
                                            <option>SANTA ISABEL</option>
                                            <option>SANTA LUCiA</option>
                                            <option>SANTA MARÍA</option>
                                            <option>SANTA MARÍA</option>
                                            <option>SANTA MARTA</option>
                                            <option>SANTA ROSA</option>
                                            <option>SANTA ROSA DE CABAL</option>
                                            <option>SANTA ROSA DE LIMA</option>
                                            <option>SANTA ROSA de osos</option>
                                            <option>SANTA ROSA DEL SUR</option>
                                            <option>SANTA ROSALÍA</option>
                                            <option>SANTA SOFÍA</option>
                                            <option>SANTAFÉ DE ANTIOQUIA</
                                            <option>SANTANA</option>
                                            <option>NTANDER DE QUILICHAO</option>
                                            <option>SANTIAGO</option>
                                            <option>SANTIAGO</option>
                                            <option>SANTIAGO DE TOLÚ</option>
                                            <option>SANTO DOMINGO</option>
                                            <option>Santo Tomas</option>
                                            <option>SANTUARIO</option>
                                            <option>SANTUARIO</option>
                                            <option>SAPUYES</option>
                                            <option>SARAVENA</option>
                                            <option>SARDINATA</option>
                                            <option>SASAIMA</option>
                                            <option>SATIVANORTE</option>
                                            <option>SATIVASUR</option>
                                            <option>SEGOVIA</option>
                                            <option>SESQUILÉ</option>
                                            <option>SEVILLA</option>
                                            <option>SIACHOQUE</option>
                                            <option>SIBATÉ</option>
                                            <option>SIBUNDOY</option>
                                            <option>SILOS</option>
                                            <option>SILVANIA</option>
                                            <option>Silvia</option>
                                            <option>SIMACOTA</option>
                                            <option>SIMIJACA</option>
                                            <option>SIMITÍ</option>
                                            <option>SINCÉ</option>
                                            <option>SINCELEJO</option>
                                            <option>SIPÍ</option>
                                            <option>SITIONUEVO</option>
                                            <option>SOACHA</option>
                                            <option>SOATÁ</option>
                                            <option>SOCHA</option>
                                            <option>SOCORRO</option>
                                            <option>SOCOTÁ</option>
                                            <option>SOGAMOSO</option>
                                            <option>SOLANO</option>
                                            <option>SOLEDAD</option>
                                            <option>SOLITA</option>
                                            <option>SOMONDOCO</option>
                                            <option>SONSON</option>
                                            <option>SOPETRaN</option>
                                            <option>SOPLAVIENTO</option>
                                            <option>SOPÓ</option>
                                            <option>SORA</option>
                                            <option>SORACÁ</option>
                                            <option>SOTAQUIRÁ</option>
                                            <option>SOTARA</option>
                                            <option>SUAITA</option>
                                            <option>SUAN</option>
                                            <option>SUAREZ</option>
                                            <option>SUÁREZ</option>
                                            <option>SUAZA</option>
                                            <option>SUBACHOQUE</option>
                                            <option>SUCRE</option>
                                            <option>SUCRE</option>
                                            <option>SUCRE</option>
                                            <option>SUESCA</option>
                                            <option>SUPATÁ</option>
                                            <option>SUPÍA</option>
                                            <option>SURATA</option>
                                            <option>SUSA</option>
                                            <option>SUSACÓN</option>
                                            <option>SUTAMARCHÁN</option>
                                            <option>SUTATAUSA</option>
                                            <option>SUTATENZA</option>
                                            <option>TABIO</option>
                                            <option>TADÓ</option>
                                            <option>TALAIGUA NUEVO</option>
                                            <option>TAMALAMEQUE</option>
                                            <option>TÁMARA</option>
                                            <option>TAME</option>
                                            <option>TÁMESIS</option>
                                            <option>TAMINANGO</option>
                                            <option>TANGUA</option>
                                            <option>TARAIRA</option>
                                            <option>TARAPACÁ</option>
                                            <option>TARAZÁ</option>
                                            <option>TARQUI</option>
                                            <option>TARSO</option>
                                            <option>TASCO</option>
                                            <option>TAURAMENA</option>
                                            <option>TAUSA</option>
                                            <option>TELLO</option>
                                            <option>TENA</option>
                                            <option>TENERIFE</option>
                                            <option>TENJO</option>
                                            <option>TENZA</option>
                                            <option>TEORAMA</option>
                                            <option>TERUEL</option>
                                            <option>TESALIA</option>
                                            <option>TIBACUY</option>
                                            <option>TIBANÁ</option>
                                            <option>TIBASOSA</option>
                                            <option>TIBIRITA</option>
                                            <option>TIBÚ</option>
                                            <option>TIERRALTA</option>
                                            <option>TIMANÁ</option>
                                            <option>TIMBIO</option>
                                            <option>TIMBIQUI</option>
                                            <option>TINJACÁ</option>
                                            <option>TIPACOQUE</option>
                                            <option>TIQUISIO</option>
                                            <option>TITIRIBÍ</option>
                                            <option>TOCA</option>
                                            <option>TOCAIMA</option>
                                            <option>TOCANCIPÁ</option>
                                            <option>TOGÜÍ</option>
                                            <option>TOLEDO</option>
                                            <option>TOLEDO</option>
                                            <option>TOLÚ VIEJO</option>
                                            <option>TONA</option>
                                            <option>TÓPAGA</option>
                                            <option>TOPAIPI</option>
                                            <option>TORIBIO</option>
                                            <option>TORO</option>
                                            <option>TOTA</option>
                                            <option>TOTORO</option>
                                            <option>TRINIDAD</option>
                                            <option>TRUJILLO</option>
                                            <option>TUBARA</option>
                                            <option>TULUÁ</option>
                                            <option>TUMACO</option>
                                            <option>TUNJA</option>
                                            <option>TUNUNGUÁ</option>
                                            <option>TUQUERRES</option>
                                            <option>TURBACO</option>
                                            <option>TURBANA</option>
                                            <option>TURBO</option>
                                            <option>TURMEQUÉ</option>
                                            <option>TUTA</option>
                                            <option>TUTAZÁ</option>
                                            <option>UBALÁ</option>
                                            <option>UBAQUE</option>
                                            <option>UBATE</option>
                                            <option>ULLOA</option>
                                            <option>UMBITA</option>
                                            <option>UNE</option>
                                            <option>UNGUÍA</option>
                                            <option>UNION PANAMERICANA</option>
                                            <option>URAMITA</option>
                                            <option>URIBIA</option>
                                            <option>URRAO</option>
                                            <option>URUMITA</option>
                                            <option>USIACURi</option>
                                            <option>ÚTICA</option>
                                            <option>VALDIVIA</option>
                                            <option>VALENCIA</option>
                                            <option>VALLE DE SAN JOSÉ</option>
                                            <option>VALLE DE SAN JUAN</option>
                                            <option>VALLE DEL GUAMUEZ</option>
                                            <option>VALLEDUPAR</option>
                                            <option>VALPARAISO</option>
                                            <option>VALPARAISO</option>
                                            <option>VEGACHÍ</option>
                                            <option>VÉLEZ</option>
                                            <option>VENADILLO</option>
                                            <option>VENECIA</option>
                                            <option>VENECIA</option>
                                            <option>VENTAQUEMADA</option>
                                            <option>VERGARA</option>
                                            <option>VERSALLES</option>
                                            <option>VETAS</option>
                                            <option>VIANÍ</option>
                                            <option>VICTORIA</option>
                                            <option>VIGÍA DEL FUERTE</option>
                                            <option>VIJES</option>
                                            <option>VILLA CARO</option>
                                            <option>VILLA DE LEYVA</option>
                                            <option>VILLA DEL ROSARIO</option>
                                            <option>VILLA GARZON</option>
                                            <option>VILLA RICA</option>
                                            <option>VILLAGOMEZ</option>
                                            <option>VILLAHERMOSA</option>
                                            <option>VILLAMARiA</option>
                                            <option>VILLANUEVA</option>
                                            <option>VILLANUEVA</option>
                                            <option>VILLANUEVA</option>
                                            <option>VILLANUEVA</option>
                                            <option>VILLAPINZÓN</option>
                                            <option>VILLARRICA</option>
                                            <option>VILLAVICENCIO</option>
                                            <option>VILLAVIEJA</option>
                                            <option>VILLETA</option>
                                            <option>VIOTÁ</option>
                                            <option>VIRACACHÁ</option>
                                            <option>VISTA HERMOSA</option>
                                            <option>VITERBO</option>
                                            <option>YACOPÍ</option>
                                            <option>YACUANQUER</option>
                                            <option>YAGUARÁ</option>
                                            <option>YALÍ</option>
                                            <option>YARUMAL</option>
                                            <option>YAVARATÉ</option>
                                            <option>YOLOMBÓ</option>
                                            <option>YONDÓ</option>
                                            <option>YOPAL</option>
                                            <option>YOTOCO</option>
                                            <option>YUMBO</option>
                                            <option>ZAMBRANO</option>
                                            <option>ZAPATOCA</option>
                                            <option>ZAPAYAN</option>
                                            <option>ZARAGOZA</option>
                                            <option>ZARZAL</option>
                                            <option>ZETAQUIRA</option>
                                            <option>ZIPACoN</option>
                                            <option>ZIPAQUIRÁ</option>
                                            <option>ZONA BANANERA</option>
                                          </select>
                                        </div>
                                    </div>
                                    <div class="col-8">
                                        <div class="form-group"><label for="telefono" class=" form-control-label">Telefono</label><input type="text" id="Telefono" placeholder="Telefono" class="form-control" required></div>
                                    </div>
                                </div>
                                <div class="form-group"><label for="country" class=" form-control-label">Correo electronico</label><input type="text" id="Cargo" placeholder="Correo electronico" class="form-control" required></div>
                                <button type="submit" class="btn btn-outline-info">GUARDAR</button>
                                <button type="submit" class="btn btn-outline-info">LIMPIAR</button>
                                <br>
                                <p>Todos los campos deben ser diligenciados</p>
                            </div>
                        </div>  

        </div>
    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets/js/main.js"></script>


    </body>
</html>
