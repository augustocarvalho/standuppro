<?php
require_once "config.php";
?>

<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
     <title><?=$titulo?></title>
   <link rel="stylesheet" href="css/bootstrap.css">
     <script src="js/jquery.js"></script>
     <script src="js/jquery_mask.js"></script>
<<<<<<< HEAD
   <script src="js/bootstrap.js"></script>
=======
	 <script src="js/bootstrap.js"></script>
>>>>>>> 78a8c1f1ce2873b7af7e23a6e004503b67184111
   <script src="js/bootstrap-select.js"></script>
   <script type="text/javascript">
    $(document).ready(function(){
      $('.time').mask('00:00:00');
    })
   </script>
</head>
<body>
    


<div class="navbar" id="menu">
  <div class="navbar-inner">
    <ul class="nav">
      <li><a href="index.php">HOME</a></li>
      <li class="dropdown">
<<<<<<< HEAD
		   <a href="#" class="dropdown-toggle" data-toggle="dropdown">ATLETA</a>
          <ul class="dropdown-menu">
		        <li><a href="novo_atleta.php">NOVO </a></li>
            <li class="divider"></li>
            <li><a href="listar_atleta.php">LISTAR ATLETAS</a></li>
            <li class="divider"></li>
            <li><a href="filiados.php">FILIADOS 2018</a></li>
=======
		   <a href="#" class="dropdown-toggle" data-toggle="dropdown">ATLETA<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
		        <li><a href="novo_atleta.php">NOVO </a></li>
            <li class="divider"></li>
            <li><a href="listar_atleta.php">INSCRIÇÂO</a></li>
>>>>>>> 78a8c1f1ce2873b7af7e23a6e004503b67184111
          </ul>
	    </li>

      <li class="dropdown">
<<<<<<< HEAD
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">ETAPA</span></a>
          <ul class="dropdown-menu">
                 <li><a href="inscritos.php?id=19">INSCRITOS</a></li>
                 <li><a href="reg_chegada.php?id=19">CHEGADA LONGA</a></li>
                 <li><a href="reg_chegada_tecnica.php?id=19">CHEGADA TECNICA</a></li>
         </ul>
=======
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">ETAPA<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li class="dropdown-submenu">
               <a tabindex="-1" href="#">BAHIA SUP ECO 2016</a>
                      <ul class="dropdown-menu">
                        <li><a href="inscritos.php?id=5">INSCRITOS</a></li>
                        <li><a href="reg_chegada.php?id=5">CHEGADA</a></li>
                      </ul>
            </li>
       <!--     
            <li class="divider"></li>  
            
              <li class="dropdown-submenu">
                <a tabindex="-1" href="#">2015</a>
                          <ul class='dropdown-menu'>
                             <li class="dropdown-submenu">
                                 <a tabindex="-1" href="#">REGATA MARCILIO DIAS</a>
                                    <ul class="dropdown-menu">
                                      <li><a href="inscritos.php?id=3">INSCRITOS</a></li>
                                      <li><a href="reg_chegada.php?id=3">CHEGADA</a></li>
                                    </ul>
                             </li>
                             
                            
                            <li class="divider"></li>
                            
                              <li class="dropdown-submenu">
                                 <a tabindex="-1" href="#">MAX FORCE</a>
                                        <ul class="dropdown-menu">
                                          <li><a href="inscritos.php?id=2">INSCRITOS</a></li>
                                          <li><a href="reg_chegada.php?id=2">CHEGADA</a></li>
                                        </ul>
                              </li>
                                             
                          <li class="divider"></li>
                          
                            <li class="dropdown-submenu">
                             <a tabindex="-1" href="#">DESAFIO DOS FORTES</a>
                                    <ul class="dropdown-menu">
                                      <li><a href="inscritos.php?id=1">INSCRITOS</a></li>
                                      <li><a href="reg_chegada.php?id=1">CHEGADA</a></li>
                                    </ul>
                            </li>
                        </ul> 
              </li>         
           -->         
          </ul>
>>>>>>> 78a8c1f1ce2873b7af7e23a6e004503b67184111
      </li>

      <li class="dropdown">
       <a href="classifica.php">RESULTADOS</a> </li>
      </li> 
<<<<<<< HEAD
      <li class="dropdown">
       <a href="ranking_categoria.php">RANKING 2017</a> </li>
      </li> 
=======
     
>>>>>>> 78a8c1f1ce2873b7af7e23a6e004503b67184111
      
      </li>   
    </ul>
   </div>
   </div>
  </div> 
  </div>
 </div>
</body>
</html>
