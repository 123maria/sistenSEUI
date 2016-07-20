<%@page contentType="text/html"  pageEncoding="UTF-8" %>

<% 
    HttpSession objsesion= request.getSession(false);
    String usuario= (String)objsesion.getAttribute("usuario");
    if(usuario.equals("")){
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>SEUI</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Allerta">
         <link rel="stylesheet" href="css/estilo.css"/>
         <script src="javascript/validar.js"></script>
    </head>
    <body>
        <h1>hola usuario <% out.println(usuario); %></h1>
        <section id="cotainer">
              <header class="header">
                <ul class="nav nav-tabs"></ul>
                    
            </header>
            <form method="post" name="sistemaSEUI" class="form-horizontal" >
                <div  id="informaciong">
                    <div id="estudiante">
                        <h5>Estudiante</h5>
                        <div id="contenidos1">
                         <div class="form-group">
                      <label for="codigo" class="col-sm-1 control-label">Codigo</label>
                      <div class="col-sm-2">
                          <input type="text" class="form-control" id="codigo" placeholder="Codigo">
                      </div>
                      <div id="boton"><button>...</button></div>
                      <div id="nombres">
                           <label for="nombre" class="col-sm-2 control-label">Nombre:</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre" style="margin: 5px;" onkeypress="return soloparaletras(event)">
                        
                      </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="padreotutor" class="col-sm-2 control-label" style="width:25%; ">Nombre Padres o Tutores:</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" id="padreotutor" name="padreotutor" placeholder="Padres O Tutores" size="2" onkeypress="return soloparaletras(event)">
                        <input type="text" class="form-control" id="padreotutores" name="padreotutores" placeholder="Padres O Tutores" size="2" onkeypress="return soloparaletras(event)">
                      </div>
                    </div>
                      
                        <div class="form-group">
                      <label for="fecha" class="col-sm-2 control-label" style="width:25%; ">Fecha de Nacimiento:</label>
                      <div class="col-sm-3">
                        <input type="date" class="form-control" id="fecha" name="fecha">
                        
                      </div>
                    </div>
                   
                    </div>
                        <div onclick="return abrir('foto.html')">
                                    
                        <img src="image/foto1.png">       
                        </div>
                        
                        
                        
                </div>
                </div>
                <div id="evaluacion" >
                    
                    <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#docente">Docente</a></li>
                    <li><a data-toggle="tab" href="#evaluacionm">Evaluacioin Medica</a></li>
                    <li><a data-toggle="tab" href="#evaluaciono">Evaluacion Odontologica</a></li>
                    <li><a data-toggle="tab" href="#evaluacionps">Evaluacion Psico-social</a></li>
                  </ul>
                    <br>

                  <div class="tab-content">
                    <div id="docente" class="tab-pane fade in active">
                        <div class="form-group">
                            <label for="codigod" class="col-sm-1 control-label">Codigo</label>
                            <div class="col-sm-2">
                                <input type="text" class="form-control" id="codigod" name="codigod" placeholder="Codigo" size="2" onkeypress="return soloparanumeros(event)">
                            </div>
                            <div id="boton"><button>...</button></div>
                            <div>
                                 <label for="nombred" class="col-sm-2 control-label">Nombre:</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="nombred" name="nombred" placeholder="Nombre" style="margin: 3px;" size="2" onkeypress="return soloparaletras(event)">

                            </div>
                            </div>
                          </div>
                        
                            <div class="form-group">
                                <label for="fechad" class="col-sm-1 control-label" style="width:21%; ">Fecha de Nacimiento:</label>
                                <div class="col-sm-3">
                                  <input type="date" class="form-control" id="fechad" name="fechad">

                                </div>
                              </div>
                        
                                
                            <div class="form-group">
                                <label for="razones" class="col-sm-3 control-label" style="width:25%; ">Razones o Observaciones:</label>
                                <div class="col-sm-12">
                              
                                      <textarea class="form-control" id="razones"></textarea>
                                </div>
                              </div>
                      
                    </div>
 

                    <div id="evaluacionm" class="tab-pane fade">
                        <br>
                        <div class="form-group">
                                <label for="posiblec" class="col-sm-3 control-label" style="width:15%; ">Posible Causa:</label>
                                <div class="col-sm-12">
                              
                                      <textarea class="form-control" id="posiblec"></textarea>
                                </div>
                              </div> 
                        
                         <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#infoactal">Informacion Actual</a></li>
                        <li><a data-toggle="tab" href="#sneuro">SeÃ±ales Neurologicas</a></li>
                        <li><a data-toggle="tab" href="#infoadicional">Informacion Adicional</a></li>
                      </ul>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
      <br>
     <div  class="form-group">
                           <label for="pesoa"  style="width: 10%; float: left; margin-left: 10px;">Peso Actual(Lbs):</label>
                             <div class="col-sm-2">
                             <input type="text" class="form-control" id="pesoa" placeholder="Peso Actual" >
                        
                        </div>
                    
                        
                           <label for="ccefalica"  style="width: 10%; float: left; margin-left: 10px;">Circunferencia Cefalica(cm):</label>
                             <div class="col-sm-2">
                             <input type="text" class="form-control" id="ccefalica" placeholder="Circunferencia Cefalica" >
                        
                        </div>
                  
                       
                           <label for="estatura" style="width:10%; float: left;">Estatura(cm):</label>
                             <div class="col-sm-2">
                             <input type="text" class="form-control" id="estatura" placeholder="Estatura" >
                        
                        </div>
                           
                            <label for="ncalzado" style="width:8%; float: left;"># de calzado:</label>
                             <div class="col-sm-1">
                             <input type="number" class="form-control" id="ncalzado"  >
                        
                        </div>
                    
                    </div>
  </div>
  <div id="sneuro" class="tab-pane fade">
    <div id="contenido1">
                           <div  class="form-group">
                           <label id="tonomuscular"  style="width:90%; float: left; margin-left: 15px;">Tono muscula:</label>
                           <div id="radio2"> 
         
                           </div>
                        
                        </div>
                       
                        <div  class="form-group">
                           <label id="cvisual"  style="width: 90%; float: left; margin-left: 15px;">Coordinacion visual motora y manip.objetos:</label>
                           <div id="radio2"> 
                           
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="tics"  style="width: 90%; float: left; margin-left: 15px;">Tics y movimiento involuntario:</label>
                           <div id="radio2"> 
                             
                           </div>
                        
                        </div>
            
            <div  class="form-group">
                           <label id="articulacion"  style="width: 90%; float: left; margin-left: 15px;">Problema en articulacion-exp.lenguaje:</label>
                           <div id="radio2"> 
                                
                               
                           </div>
                        
                        </div>
            <div  class="form-group">
                           <label id="exprecion"  style="width: 90%; float: left; margin-left: 15px;">incluye exprecion:</label>
                           <div id="radio2"> 
                            
                           </div>
                        
                        </div>
                   
        </div>         
   
      <div id="contenido2">
            
                        <div  class="form-group">
                          
                           <div id="radio2"> 
                             
                               <input type="radio" id="normal" >
                                
                           </div>
                         <label id="normal"  style="width:50%; float: left; margin-left: 10px;">Normal:</label>
                        </div>
                        <div  class="form-group">
                           
                           <div id="radio2"> 
                                
                               <input type="radio" id="buena" >
                               
                           </div>
                        <label id="buena"  style="width: 50%; float: left; margin-left: 10px;">Bueno:</label>
                        </div>
                        <div  class="form-group">
                           
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="leve" >
                                
                           </div>
                            <label id="leve"  style="width: 50%; float: left; margin-left: 10px;">Leve:</label>
                        
                        </div>
                        <div  class="form-group">
                           
                           <div id="radio2"> 
                                
                               <input type="radio" id="si" >
                               
                           </div>
                        <label id="si"  style="width: 50%; float: left; margin-left: 10px;">si:</label>
                        </div>
            
            <div  class="form-group">
                           
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="facial" >
                               
                           </div>
                        <label id="faciel"  style="width: 50%; float: left; margin-left: 10px;">Facial:</label>
                        </div>
           
                     
      </div>
        <div id="contenido3">
             <div  class="form-group">
                          
                           <div id="radio2"> 
                             
                               <input type="radio" id="disminuido" >
                                
                           </div>
                         <label id="disminuido"  style="width:50%; float: left; margin-left: 10px;">Disminuido:</label>
                        </div>
                        <div  class="form-group">
                           
                           <div id="radio2"> 
                                
                               <input type="radio" id="mala" >
                               
                           </div>
                        <label id="mala"  style="width: 50%; float: left; margin-left: 10px;">Malo:</label>
                        </div>
                        <div  class="form-group">
                           
                           <div id="radio2"> 
                                
                               <input type="radio" id="moderado" >
                                
                           </div>
                        <label id="moderado"  style="width: 50%; float: left; margin-left: 10px;">Libros de lectura:</label>
                        </div>
                        <div  class="form-group">
                           
                           <div id="radio2"> 
                                
                               <input type="radio" id="no" >
                               
                           </div>
                        <label id="no"  style="width: 50%; float: left; margin-left: 10px;">No:</label>
                        </div>
            
           
            <div  class="form-group">
                           
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="postura" >
                               
                           </div>
                        <label id="postura"  style="width: 50%; float: left; margin-left: 10px;">Postura:</label>
                        </div>
        </div>
        <div id="contenido4">
            <div  class="form-group">
                          
                           <div id="radio2"> 
                             
                               <input type="radio" id="aumentado" >
                                
                           </div>
                         <label id="aumentado"  style="width:50%; float: left; margin-left: 10px;">Aumentado:</label>
                        </div>
            <br><br>
                   <div  class="form-group">
                          
                           <div id="radio2"> 
                             
                               <input type="radio" id="severo" >
                                
                           </div>
                         <label id="severo"  style="width:50%; float: left; margin-left: 10px;">Severo:</label>
                        </div>     
            <br><br>
            <div  class="form-group">
                           
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="vocalizacion" >
                               
                           </div>
                        <label id="vocalizacion"  style="width: 50%; float: left; margin-left: 10px;">Vocallizacion:</label>
                        </div>
        </div> 
  
  </div>
    <label>......</label>
  <div id="infoadicional" class="tab-pane fade">
     <div  class="form-group">
                           <label for="sintomad"  style="width: 20%; float: left; margin-left: 10px;">Sintomas dermatologicos:</label>
                             <div class="col-sm-9">
                             <input type="text" class="form-control" id="sintomad" placeholder="Sintoma dermatologico" onkeypress="return soloparaletras(event)">
                        
                        </div>
                    
                        
                           <label for="snutricionales"  style="width: 20%; float: left; margin-left: 10px;">Sintomas nutricionales:</label>
                             <div class="col-sm-9">
                             <input type="text" class="form-control" id="snutricionales" placeholder="Cintomas Nutricionales" onkeypress="return soloparaletras(event)">
                        
                        </div>
                  
                       
                           <label for="vision" style="width:22%; float: left;">Test de vision(Con alteracion):</label>
                             <div class="col-sm-2">
                             <input type="radio"  id="vision" >Si  <input type="radio"  id="vision" >No
                        
                        </div>
                          
                           
                    </div>
                         <div class="form-group">
                           <label for="auditivo" style="width:23%; float: left; margin-left: 10px;">Test de auditivo(Con alteracion):</label>
                             <div class="col-sm-2">
                             <input type="radio"  id="vision" >Si  <input type="radio"  id="auditivo" >No
                             </div>
                        </div>   
                    </div> 
  </div>

                  </div>
 
                   <div id="evaluaciono" class="tab-pane fade">
                       <ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#evaluacionodontologica">Evaluacion  Odontologica</a></li>
  <li><a data-toggle="tab" href="#sdentales">Servicios Dentales</a></li>
  
</ul>
                       <br>
<div class="tab-content">
  <div id="evaluacionodontologica" class="tab-pane fade in active">
     <div  class="form-group">
                           <label   style="width: 45%; float: left; margin-left: 10px;">Muestra higiene oral por buen cuidado en su hogar :</label>
                           <div id="radio1"> 
                               <label style="margin-right: 3px;"><input type="radio" id="higiene"> Si</label><label style="margin-left:3px;"><input type="radio" id="higiene" > No</label>
                           </div>
                        
                        </div>
                           
                            
                           <div  class="form-group">
                           <label   style="width: 45%; float: left; margin-left: 10px;">Necesita atencion dental urgente :</label>
                           <div id="radio1"> 
                               <label style="margin-right: 3px;"><input type="radio" id="atenciond"> Si</label><label style="margin-left:3px;"><input type="radio" id="atenciond" > No</label>
                           </div>
                        
                        </div>
                           
                            
                           <div  class="form-group">
                           <label   style="width: 45%; float: left; margin-left: 10px;">Hay seÃ±ales clara de un diente roto, infecion u otro problema:</label>
                           <div id="radio1"> 
                               <label style="margin-right: 3px;"><input type="radio" id="dienter"> Si</label><label style="margin-left:3px;"><input type="radio" id="dienter" > No</label>
                           </div>
                        
                        </div>
                            
                           <div  class="form-group">
                           <label   style="width: 45%; float: left; margin-left: 10px;">Le sugerimos que empiece tratamiento de forma externa :</label>
                           <div id="radio1"> 
                               <label style="margin-right: 3px;"><input type="radio" id="tratamientoex"> Si</label><label style="margin-left:3px;"><input type="radio" id="tratamientoex" > No</label>
                           </div>
                        
                        </div>
                            
                           <div  class="form-group">
                           <label   style="width: 45%; float: left; margin-left: 10px;">Se le dara atencion dental dentro de la escuela :</label>
                           <div id="radio1"> 
                               <label style="margin-right: 3px;"><input type="radio" id="atencionescuela"> Si</label><label style="margin-left:3px;"><input type="radio" id="atencionescuela" > No</label>
                           </div>
                        
                        </div>
                            
                           <div  class="form-group">
                           <label   style="width: 45%; float: left; margin-left: 10px;">Hay precencia de caries u otros problemas dentales :</label>
                           <div id="radio1"> 
                               <label style="margin-right: 3px;"><input type="radio" id="higiene"> Si</label><label style="margin-left:3px;"><input type="radio" id="higiene" > No</label>
                           </div>
                            </div>
  </div>
  <div id="sdentales" class="tab-pane fade">
      <br>
    <div  class="form-group">
                           
                        
                  
                       
                           <label for="seaplicaronselladores" style="width:30%; float: left;">Se aplicaron selladores dentales:</label>
                             <div class="col-sm-2">
                             <input type="radio"  id="seaplicaronselladores" >Si  <input type="radio"  id="seaplicaronselladores" >No
                        
                        </div>
                          
                           <label for="selladores"  style="width: 15%; float: left; margin-left: 10px;"># de selladores:</label>
                             <div class="col-sm-2">
                             <input type="number" class="form-control" id="selladores" placeholder="Cintomas Nutricionales" onkeypress="return soloparanumeros(event)">
                        
                        </div>
                           
                    </div>
                         <div class="form-group">
                           <label for="higienevocal" style="width:30%; float: left; margin-left: 10px;">Se dio educacion de higiene vocal:</label>
                             <div class="col-sm-2">
                             <input type="radio"  id="visihigienevocalon" >Si  <input type="radio"  id="higienevocal" >No
                             </div>
                        </div> 
                         <div class="form-group">
                           <label for="enjuaguevocal" style="width:30%; float: left; margin-left: 10px;">Se dio enjuague  vocal fluorado:</label>
                             <div class="col-sm-2">
                             <input type="radio"  id="enjuaguevocal" >Si  <input type="radio"  id="enjuaguevocal" >No
                             </div>
                        </div>    
                          <div class="form-group">
                           <label for="barniz" style="width:30%; float: left; margin-left: 10px;">Se aplico barniz de fluoruro debido a la presencia o riesgo de caries dental o enfermedaes de las ancias:</label>
                             <div class="col-sm-2">
                             <input type="radio"  id="barniz" >Si  <input type="radio"  id="barniz" >No
                             </div>
                        </div>
  </div>
 
</div>
                   </div>    
                       
                      
 
                   <div id="evaluacionps" class="tab-pane fade">
                       <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#descrip">Descripcion</a></li>
                        <li><a data-toggle="tab" href="#sintomas">Sintomas</a></li>
                        <li><a data-toggle="tab" href="#consecuencias">Consecuencias</a></li>
                        <li><a data-toggle="tab" href="#causas">Causas</a></li>
                        <li><a data-toggle="tab" href="#preciones">Preciones</a></li>
                         <li><a data-toggle="tab" href="#aspectocog">Aspecto cognitivo</a></li>
                         <li><a data-toggle="tab" href="#fortaleza">Fortaleza</a></li> 
                          <li><a data-toggle="tab" href="#bienes">Bienes</a></li>
                         <li><a data-toggle="tab" href="#sugerenciafami">Sugerencia f</a></li> 
                       
                      </ul>
                      

<div class="tab-content">
  <div id="descrip" class="tab-pane fade in active">
      <div class="form-group">
          <div>
              <center>
            <label  >Descripcion clara de lo que el niÃ±o(a)hace, a quien lo hace,como,donde y cuando lo hace. Desde cuando es un problema:</label>
              </center>
          </div>
            <br>
            <div class="col-sm-12">
                                 
            <textarea class="form-control" id="descripcion"></textarea>
           </div>
      </div>
  </div>
 
  <div id="sintomas" class="tab-pane fade">
      <div>
                 <label >Marque o escriba su nivel de intencidad con: Si es leve(L), moderado(M), severo(S).Debilidades:</label>
      </div>
                 <br>
      <div id="parte1">
                           <div  class="form-group">
                           <label id="provocacion"  style="width:50%; float: left; margin-left: 10px;">Provocacion a CompaÃ±eros:</label>
                           <div id="radio2"> 
                             
                               <input type="text" id="provocacion" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="dificultad"  style="width: 50%; float: left; margin-left: 10px;">Dificultad con el desempeÃ±o escolar :</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="dificultad" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="bromas"  style="width: 50%; float: left; margin-left: 10px;">Bromas Pesadas:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="bromas" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="difiapre"  style="width: 50%; float: left; margin-left: 10px;">Dificultad de apredizaje:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="difiapre" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="muevemucho"  style="width: 50%; float: left; margin-left: 10px;">Se mueve mucho:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="muevemucho" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                              
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="desafiante"  style="width: 50%; float: left; margin-left: 10px;">Actitu desafiante:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="desafiante" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="romper"  style="width: 50%; float: left; margin-left: 10px;">Rompe reglas:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="romper" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="mandatos"  style="width: 50%; float: left; margin-left: 10px;">No sigue intruciones/mandatos:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="mandatos" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
      </div>
      <div id="parte2">
            
                           <div  class="form-group">
                           <label id="perdidaa"  style="width: 45%; float: left; margin-left: 10px;">Perdida atencion:</label>
                           <div id="radio2"> 
                             
                               <input type="text" id="perdidaa" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="violencia"  style="width: 45%; float: left; margin-left: 10px;">Violencia :</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="violencia" class="form-control" style="width: 20%; " onkeypress="return solounaletra(event)" >
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="burlador"  style="width: 45%; float: left; margin-left: 10px;">Se burla de los demas:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="burlador" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="interumpe"  style="width: 45%; float: left; margin-left: 10px;">Interumpe:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="interumpe" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="distrae"  style="width: 45%; float: left; margin-left: 10px;">Se distrae facilmente:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="distrae" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                              
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="impulsivo"  style="width: 45%; float: left; margin-left: 10px;">Impulsividad:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="impulsivo" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="dessobediencia"  style="width: 45%; float: left; margin-left: 10px;">Dessobediencia:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="dessobediencia" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="otro"  style="width: 20%; float: left; margin-left: 10px;">Otro:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="otro" class="form-control" style="width: 95%;" onkeypress="return soloparaletras(event)">
                               
                           </div>
                        
                        </div>
                     
      </div>
      <label>&nbsp;</label>
  </div>
 
  <div id="consecuencias" class="tab-pane fade">
      <div>
      <label>Marque o escriba su nivel de intencidad con: Si es leve(L), moderado(M), severo(S).Riesgo:</label>
      </div>
      <br>
   <div id="parte1">
                    <div  class="form-group">
                           <label id="permisojugar"  style="width:50%; float: left; margin-left: 10px;">No permiso para jugar:</label>
                           <div id="radio2"> 
                             
                               <input type="text" id="permisojugar" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="obligatarea"  style="width: 50%; float: left; margin-left: 10px;">se le obliga a hacer tareas:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="obligatarea" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="sentarsesinmover"  style="width: 50%; float: left; margin-left: 10px;">Sentarse sin moverse:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="sentarsesinmover" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="prohibirenfrentamiento"  style="width: 50%; float: left; margin-left: 10px;">Prohibirle enfrentamiento:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="prohibirenfrentamiento" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="vergueza"  style="width: 50%; float: left; margin-left: 10px;">Humillacion/vergueza:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="vergueza" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                              
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="amonestacion"  style="width: 50%; float: left; margin-left: 10px;">Amonestacin del profesor:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="amonestacion" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="malacalificacion"  style="width: 50%; float: left; margin-left: 10px;">Malas Calificaciones:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="malacalificacion" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                       
      </div>        
      <div id="parte2">
            
                           <div  class="form-group">
                           <label id="estasolo"  style="width: 45%; float: left; margin-left: 10px;">Esta solo, aislado:</label>
                           <div id="radio2"> 
                             
                               <input type="text" id="estasolo" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="castigof"  style="width: 45%; float: left; margin-left: 10px;">Castigo fisico :</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="castigof" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="prohibiramigos"  style="width: 45%; float: left; margin-left: 10px;">Prohibirle juntarse con amigos:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="prohibiramigos" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="tareaextra"  style="width: 45%; float: left; margin-left: 10px;">Tarea Extra para la casa:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="tareaextra" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="perderrecreo"  style="width: 45%; float: left; margin-left: 10px;">Perder el recreo:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="perderrecreo" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                              
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="n"  style="width: 45%; float: left; margin-left: 10px;">Supencion de clase:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="notasmalacoducta" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="notasmalacoducta"  style="width: 45%; float: left; margin-left: 10px;">Notas de mala conductad:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="notasmalacoducta" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="otro"  style="width: 20%; float: left; margin-left: 10px;">Otro:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="otro" class="form-control" style="width: 95%;" onkeypress="return soloparaletras(event)">
                               
                           </div>
                        
                        </div>
                     
      </div>
      <label>&nbsp;</label>
  </div>
  
    <div id="causas" class="tab-pane fade">
        <div>
        <label >Marque o escriba su nivel de intencidad con: Si es leve(L), moderado(M), severo(S).Riesgo:</label> 
        </div>
        <br>
        <div id="parte1">
            
                           <div  class="form-group">
                           <label id="buscaatencion"  style="width:50%; float: left; margin-left: 10px;">Busca atencion:</label>
                           <div id="radio2"> 
                             
                               <input type="text" id="buscaatencion" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="deficitsn"  style="width: 50%; float: left; margin-left: 10px;">Deficits nutricionales:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="deficitsn" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="problemamedico"  style="width: 50%; float: left; margin-left: 10px;">Problema medico:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="problemamedico" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="precinessociales"  style="width: 50%; float: left; margin-left: 10px;">Precines sociales:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="precinessociales" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="influenciacomp"  style="width: 50%; float: left; margin-left: 10px;">Influencia de compaÃ±ros:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="influenciacomp" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                              
                           </div>
                        
                        </div>
      </div>
      <div id="parte2">
            
                           <div  class="form-group">
                           <label id="problemaemoc"  style="width: 45%; float: left; margin-left: 10px;">Problemas emocionales:</label>
                           <div id="radio2"> 
                             
                               <input type="text" id="problemaemoc" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="desconoce"  style="width: 45%; float: left; margin-left: 10px;">Se desconoce:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="desconoce" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="estres"  style="width: 45%; float: left; margin-left: 10px;">Estras y ansiedad:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="estres" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="problemafami"  style="width: 45%; float: left; margin-left: 10px;">Problemas Familiares:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="problemafami" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="problemaapren"  style="width: 45%; float: left; margin-left: 10px;">Problemas de aprendizaje:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="problemaapren" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                              
                           </div>
                        
                        </div>
                        
                        <div  class="form-group">
                           <label id="otro"  style="width: 20%; float: left; margin-left: 10px;">Otro:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="otro" class="form-control" style="width: 95%;" onkeypress="return soloparaletras(event)">
                               
                           </div>
                        
                        </div>
                      
      </div>
        <label>&nbsp;</label>
    </div>
 
                                    
   
    <div id="preciones" class="tab-pane fade">
        <div>
        <label>Contete verdadero(V) o falso(F)</label>
        </div>
         <br>
         <div id="parte1">
                           <div  class="form-group">
                           <label id="problemadesarrollo"  style="width:50%; float: left; margin-left: 10px;">Problema del desarrollo:</label>
                           <div id="radio2"> 
                             
                               <input type="text" id="problemadesarrollo" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="cambiocole"  style="width: 50%; float: left; margin-left: 10px;">Cambio de colegio :</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="cambiocole" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="cambiodomi"  style="width: 50%; float: left; margin-left: 10px;">Cambio de domicilio:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="cambiodomi" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="enfermedad"  style="width: 50%; float: left; margin-left: 10px;">Enfermedades:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="enfermedad" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
            <br>
            <br><br><br>
            <div  class="form-group">
                           <label id="otro"  style="width: 20%; float: left; margin-left: 10px;">Otro:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="otro" class="form-control" style="width: 100%;" onkeypress="return soloparaletras(event)">
                               
                           </div>
                        
                        </div>
        </div>         
   
      <div id="parte2">
            
                           <div  class="form-group">
                           <label id="desempleo"  style="width: 45%; float: left; margin-left: 10px;">Desempleo:</label>
                           <div id="radio2"> 
                             
                               <input type="text" id="desempleo" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="accidentes"  style="width: 45%; float: left; margin-left: 10px;">Accidentes :</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="accidentes" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="muertes"  style="width: 45%; float: left; margin-left: 10px;">Perdidas/muertes:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="muertes" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="cambiofamilia"  style="width: 45%; float: left; margin-left: 10px;">Cambio familiares</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="cambiofamilia" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="religion"  style="width: 45%; float: left; margin-left: 10px;">Religion:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="religion" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                              
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="economico"  style="width: 45%; float: left; margin-left: 10px;">Economico:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="economico" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="tratamientos"  style="width: 45%; float: left; margin-left: 10px;">Tratamientos:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="tratamientos" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        
                     
      </div>
         <label>&nbsp;.</label>
    </div>
    
    <div id="aspectocog" class="tab-pane fade">
        <div>
    <label >Conteste en verdadero(V) o falso(F):</label>
        </div>
         <br>
         <div id="parte1">
                           <div  class="form-group">
                           <label id="problematico"  style="width:50%; float: left; margin-left: 10px;">Muy Problematico:</label>
                           <div id="radio2"> 
                             
                               <input type="text" id="problematico" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="desobediente"  style="width: 50%; float: left; margin-left: 10px;">Desobediente :</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="desobediente" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="dificircontrolar"  style="width: 50%; float: left; margin-left: 10px;">Dificir de controlar:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="dificircontrolar" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        
            <br>
            <br><br><br><br><br><br>
            <div  class="form-group">
                           <label id="otro"  style="width: 20%; float: left; margin-left: 10px;">Otro:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="otro" class="form-control" style="width: 100%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
        </div>         
   
      <div id="parte2">
            
                           <div  class="form-group">
                           <label id="influencianegativa"  style="width: 45%; float: left; margin-left: 10px;">Influye negativamente en el ambiente comunitario:</label>
                           <div id="radio2"> 
                             
                               <input type="text" id="influencianegativa" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="esraro"  style="width: 45%; float: left; margin-left: 10px;">Su comportamiento es muy diferente o raro en comparaciobn con los demas :</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="esraro" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="infeliz"  style="width: 45%; float: left; margin-left: 10px;">Se muestra infeliz, insatifecho con lo que tiene(cosas materiales):</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="infeliz" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="notieneamigos"  style="width: 45%; float: left; margin-left: 10px;">Se le dificurta su integracion social, no tiene amigos:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="notieneamigos" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="integadogrupo"  style="width: 45%; float: left; margin-left: 10px;">El niÃ±o/a esta integrado a grupos:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="integadogrupo" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)">
                              
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="agresividad"  style="width: 45%; float: left; margin-left: 10px;">Predipuesto a comportamiento inadecuados(violencia,agrsividad):</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="agresividad" class="form-control" style="width: 20%;" onkeypress="return solounaletra(event)" >
                               
                           </div>
                        
                        </div>
                        
                        
                     
      </div>
         <label>&nbsp;</label>
  </div>
    
    <div id="fortaleza" class="tab-pane fade">
        <div>
        <label >Que le agrada hacer al  niÃ±o/a? Marque con un cotejo :</label>
        </div>
        <br>
       
       <div id="contenido1">
                           <div  class="form-group">
                           <label id="escribir"  style="width:50%; float: left; margin-left: 10px;">Escribir:</label>
                           <div id="radio2"> 
                             
                               <input type="checkbox" id="escribir" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="recortar"  style="width: 50%; float: left; margin-left: 10px;">Recortar :</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="recortar" class="form-control">
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="aprender"  style="width: 50%; float: left; margin-left: 10px;">Aprender:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="aprender" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="instrumentom"  style="width: 50%; float: left; margin-left: 10px;">Instrumento Musicales:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="instrumentom" >
                               
                           </div>
                        
                        </div>
            
            <div  class="form-group">
                           <label id="deportes"  style="width: 50%; float: left; margin-left: 10px;">Deportes:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="deportes" >
                               
                           </div>
                        
                        </div>
            <div  class="form-group">
                           <label id="jugardentro"  style="width: 50%; float: left; margin-left: 10px;">Jugar dentro:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="jugardentro" >
                               
                           </div>
                        
                        </div>
            <div  class="form-group">
                           <label id="jugarfuera"  style="width: 50%; float: left; margin-left: 10px;">Jugar fuera:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="jugarfuera" >
                               
                                            </div>
       </div>
            <div  class="form-group">
                           <label id="modelarmasilla"  style="width: 50%; float: left; margin-left: 10px;">Modelar con masilla:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="deportes" >
                               
                           </div>
                        
                        </div>
                        
        </div>         
   
      <div id="contenido2">
            
                        <div  class="form-group">
                           <label id="cuidar"  style="width:50%; float: left; margin-left: 10px;">Cuidar:</label>
                           <div id="radio2"> 
                             
                               <input type="checkbox" id="cuidar" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="copiar"  style="width: 50%; float: left; margin-left: 10px;">Copiar :</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="copiar" >
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="investigar"  style="width: 50%; float: left; margin-left: 10px;">Investigar:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="investigar" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="musica"  style="width: 50%; float: left; margin-left: 10px;">Musica:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="musica" >
                               
                           </div>
                        
                        </div>
            
            <div  class="form-group">
                           <label id="bailar"  style="width: 50%; float: left; margin-left: 10px;">Bailar:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="bailatr" >
                               
                           </div>
                        
                        </div>
            <div  class="form-group">
                           <label id="repartir"  style="width: 50%; float: left; margin-left: 10px;">Repartir:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="repartir" >
                               
                           </div>
                        
                        </div>
            <div  class="form-group">
                           <label id="curiosear"  style="width: 50%; float: left; margin-left: 10px;">Curiosear:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="curiosear" >
                               
                                            </div>
       </div>
            <div  class="form-group">
                           <label id="tocar"  style="width: 50%; float: left; margin-left: 10px;">Tocar/manipular:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="tocar" >
                               
                           </div>
                        
                        </div>
                        
                     
      </div>
        <div id="contenido3">
             <div  class="form-group">
                           <label id="dibujar"  style="width:50%; float: left; margin-left: 10px;">Dibujar:</label>
                           <div id="radio2"> 
                             
                               <input type="checkbox" id="dibujar" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="colorear"  style="width: 50%; float: left; margin-left: 10px;">Colorear :</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="colorear" >
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="observar"  style="width: 50%; float: left; margin-left: 10px;">Observar:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="observar" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="amar"  style="width: 50%; float: left; margin-left: 10px;">Amar:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="amar" >
                               
                           </div>
                        
                        </div>
            
           
            <div  class="form-group">
                           <label id="organizar"  style="width: 50%; float: left; margin-left: 10px;">Organizar:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="organizar" >
                               
                           </div>
                        
                        </div>
            <div  class="form-group">
                           <label id="salirpasear"  style="width: 50%; float: left; margin-left: 10px;">Salir a pasear:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="salirpasear" >
                               
                                            </div>
       </div>
            <div  class="form-group">
                           <label id="explorar"  style="width: 50%; float: left; margin-left: 10px;">Explorar</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="explorar" >
                               
                           </div>
                        
                        </div>
            <div  class="form-group">
                           <label id="trabajrgrupo"  style="width:50%; float: left; margin-left: 10px;">Trabajar en grupo:</label>
                           <div id="radio2"> 
                             
                               <input type="checkbox" id="trabajrgrupo" >
                                
                           </div>
                        
                        </div>
                        
        </div>
        <div id="contenido4">
            <div  class="form-group">
                           <label id="leer"  style="width:50%; float: left; margin-left: 10px;">Leer:</label>
                           <div id="radio2"> 
                             
                               <input type="checkbox" id="leer" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="trabajarindepen"  style="width: 50%; float: left; margin-left: 10px;">Trabajar independiente :</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="trabajarindepen" >
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="transformar"  style="width: 50%; float: left; margin-left: 10px;">Transfornar:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="transformar" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="crear"  style="width: 50%; float: left; margin-left: 10px;">Crear:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="crear" >
                               
                           </div>
                        
                        </div>
            
            <div  class="form-group">
                           <label id="ejercitarce"  style="width: 50%; float: left; margin-left: 10px;">Ejercitarce:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="ejercitarce" >
                               
                           </div>
                        
                        </div>
            <div  class="form-group">
                           <label id="daropiniones"  style="width: 50%; float: left; margin-left: 10px;">Dar opiniones constructiva:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="daropiniones" >
                               
                           </div>
                        
                        </div>
            <div  class="form-group">
                           <label id="participar"  style="width: 50%; float: left; margin-left: 10px;">Participar:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="participar" >
                               
                                            </div>
       </div>
            <div  class="form-group">
                           <label id="dirigir"  style="width: 50%; float: left; margin-left: 10px;">Dirigir:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="dirigir">
                               
                           </div>
                        
                        </div>
                        
        </div>
       <label>&nbsp;</label>
  </div>
 
    <div id="bienes" class="tab-pane fade">
        <div>
         <label >Que le gustaria al niÃ±o/a poseer?, En bienes materiales que no tiene o se le dificulta tener por falta de recursos :</label>
        </div>
         <br>
   <div id="contenido1">
                           <div  class="form-group">
                           <label id="computadora"  style="width:50%; float: left; margin-left: 10px;">Computadora:</label>
                           <div id="radio2"> 
                             
                               <input type="checkbox" id="computadora" >
                                
                           </div>
                        
                        </div>
                       
                        <div  class="form-group">
                           <label id="consolavideoj"  style="width: 50%; float: left; margin-left: 10px;">Consola de video juegos:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="consolavideoj" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="tv"  style="width: 50%; float: left; margin-left: 10px;">T.V.:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="tv" >
                               
                           </div>
                        
                        </div>
            
            <div  class="form-group">
                           <label id="impresora"  style="width: 50%; float: left; margin-left: 10px;">Impresora:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="impresora" >
                               
                           </div>
                        
                        </div>
            <div  class="form-group">
                           <label id="juguetes"  style="width: 50%; float: left; margin-left: 10px;">Juguetes:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="juguetes" >
                               
                           </div>
                        
                        </div>
            <div  class="form-group">
                           <label id="uniformes"  style="width: 50%; float: left; margin-left: 10px;">Uniformes:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="uniformes" >
                               
                                            </div>
       </div>
            <div  class="form-group">
                           <label id="zapato"  style="width: 50%; float: left; margin-left: 10px;">Zapatos:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="zapato" >
                               
                           </div>
                        
                        </div>
                        
        </div>         
   
      <div id="contenido2">
            
                        <div  class="form-group">
                           <label id="calzadodeportivo"  style="width:50%; float: left; margin-left: 10px;">Carzado deportivo:</label>
                           <div id="radio2"> 
                             
                               <input type="checkbox" id="calzadodeportivo" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="uniformedrpor"  style="width: 50%; float: left; margin-left: 10px;">Uniforme deportivo:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="uniformedepor" >
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="ropaformal"  style="width: 50%; float: left; margin-left: 10px;">Ropa fornar:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="ropaformal" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="bicicleta"  style="width: 50%; float: left; margin-left: 10px;">Bicicleta:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="bicicleta" >
                               
                           </div>
                        
                        </div>
            
            <div  class="form-group">
                           <label id="patines"  style="width: 50%; float: left; margin-left: 10px;">Patines:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="patines" >
                               
                           </div>
                        
                        </div>
            <div  class="form-group">
                           <label id="pelota"  style="width: 50%; float: left; margin-left: 10px;">Pelotas:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="pelota" >
                               
                           </div>
                        
                        </div>
            <div  class="form-group">
                           <label id="guantes"  style="width: 50%; float: left; margin-left: 10px;">Guante:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="guantes" >
                               
                                            </div>
       </div>
            
                        
                     
      </div>
        <div id="contenido3">
             <div  class="form-group">
                           <label id="bate"  style="width:50%; float: left; margin-left: 10px;">Bate:</label>
                           <div id="radio2"> 
                             
                               <input type="checkbox" id="bate" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="materialesescolar"  style="width: 50%; float: left; margin-left: 10px;">Materiales escolares:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="materialesescolar" >
                               
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="libroslectura"  style="width: 50%; float: left; margin-left: 10px;">Libros de lectura:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="libroslectura" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="biblia"  style="width: 50%; float: left; margin-left: 10px;">Biblia:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="biblia" >
                               
                           </div>
                        
                        </div>
            
           
            <div  class="form-group">
                           <label id="celular"  style="width: 50%; float: left; margin-left: 10px;">Celular:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="celular" >
                               
                           </div>
                        
                        </div>
            <div  class="form-group">
                           <label id="animales"  style="width: 50%; float: left; margin-left: 10px;">Animales/mascota:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="animales" >
                               
                                            </div>
       </div>
            <div  class="form-group">
                           <label id="dulce"  style="width: 50%; float: left; margin-left: 10px;">Golosina/dulce</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="dulce" >
                               
                           </div>
                        
                        </div>
            
                        
        </div>
        <div id="contenido4">
            <div  class="form-group">
                           <label id="comidarapida"  style="width:50%; float: left; margin-left: 10px;">Comida rapida:</label>
                           <div id="radio2"> 
                             
                               <input type="checkbox" id="comidarapida" >
                                
                           </div>
                        
                        </div>
                        <div  class="form-group">
                           <label id="paseos"  style="width: 50%; float: left; margin-left: 10px;">PaseosMaje/escurciones:</label>
                           <div id="radio2"> 
                                
                               <input type="checkbox" id="paseos" >
                               
                           </div></div>
            <br><br><br><br><br>
                        <div  class="form-group">
                           <label id="otro"  style="width: 20%; float: left; margin-left: 10px;">Otro:</label>
                           <div id="radio2"> 
                                
                               <input type="text" id="otro" class="form-control" style="width: 95%;">
                               
                           </div>
                        
                        </div>
          
        </div>          
       <label>&nbsp;</label>
  </div>
    
    <div id="sugerenciafami" class="tab-pane fade">
     <div class="form-group">
         <div>
            <label> Que la familia sugiere para resolver el problema del niÃ±o/a? :</label>
         </div>
            <br>
            <div class="col-sm-12">
                <br>                 
            <textarea class="form-control" id="sugierefami"></textarea>
           </div>
      </div>
  </div>
    
    <div id="sugerenciamaestro" class="tab-pane fade">
     <div class="form-group">
            <label for="sugieremaestra" class="col-sm-1 control-label" style="width:95%; ">Que la Maestra sugiere para resolver el problema del niÃ±o/a? :</label>
            <div class="col-sm-12">
                <br>                 
            <textarea class="form-control" id="sugieremaestra"></textarea>
           </div>
      </div>
  </div>
</div>
                              
                       </div>
 
               
                  </div>      
                    
                </div>
           
              
                    <br>
                <div id="botones">
                  <button class="btn btn-default" onclick="return validar()">Guardar</button><button class="btn btn-default">Nuevo</button><button class="btn btn-default">Salir</button>
                </div>
            </form>
        </section> 
        
    </body>
</html>
