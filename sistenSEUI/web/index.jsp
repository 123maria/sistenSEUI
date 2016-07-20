<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Allerta">
      <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
         <div class="col-md-14">
       <div class="login-panel panel panel-primary">
           
                    <div class="panel-heading">
                        <div id="imagenlogin"><img src="image/login.png"></div> <h2>Bienvenidov al Sistema Educativo Unidad Integrar(SEUI)</h2>
                        <h3>Para inicia, favor ingrese:</h3>
                    </div>
       </div>
         </div>
        <br><br><br>
    <center>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Login</h3>
                    </div>
                    <div class="panel-body">
                       <form action="iniciar" method="post">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Usuario" name="user" required type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Clave" name="pw" required type="password" value="">
                                </div>
                            
                                <!-- Change this to a button or input when using this as a form -->
                                
                               <td colspan="2" align="center">
                                   <a>Olvido la clave?</a>
                                   <br>
			<button type="submit" class="btn btn-lg btn-primary btn-block">Entrar</button>
								
			
                               	
                            </fieldset>

                            
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>

 <!-- jQuery -->
    </center>
    </body>


</html>
