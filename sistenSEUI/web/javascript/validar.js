function validar (sistemaSEUI) {
       
 
    if(document.sistemaSEUI.codigo.value==""){
        alert("El Campo codigo esta vacio");
        document.sistemaSEUI.codigo.focus() 
        return false;
    }
    else if( document.sistemaSEUI.nombre.value=="" ){
        alert("El Campo Nombre esta vacio");
        return false;
    }
     else if( document.sistemaSEUI.padreotutor.value=="" ){
        alert("El Campo Padres o tutores esta vacio");
        return false;
    }
     else if( document.sistemaSEUI.padreotutores.value=="" ){
        alert("El Campo Padres o tutores esta vacio");
        return false;
    }
    else if( document.sistemaSEUI.fecha.value=="" ){
        alert("El Campo Segundo fecha esta vacio");
        return false;
    }
    else if( document.sistemaSEUI.codigod.value==""  ){
        alert("El Campo cofigo de docente esta vacio");
        return false;
    }
    else if( document.sistemaSEUI.nombred.value==""){
        alert("El Campo Nombre de docente  esta vacio");
        return false;
    }

    else if(  document.sistemaSEUI.fechad.value=="selecionadopordefeto" ){
        alert("El Campo fecha de nacimiento del docente  esta vacia");
        return false;
    }
   
    else{
        return true;
    }
  
 
  
}

function soloparaletras(e){

    key = e.KeyCode || e.which;
    teclado = String.fromCharCode(key).toLowerCase();
    letras = "abcdefghijklmnopqrstuvwxyz";
    especiales = "8-37-38-46-164";
    teclado_especial = false;

    for(var i in especiales){
        if (key==especiales[i]){
           teclado_especial=true;
        }
    }
    if(letras.indexOf(teclado)==-1 && !teclado_especial){
   return false;
   }
}


function soloparanumeros(e){

    key = e.KeyCode || e.which;
    teclado = String.fromCharCode(key);
    numero = "0123456789";
    especiales = "8-37-38-46";
    teclado_especial = false;

    for(var i in especiales){
        if (key==especiales[i]){
           teclado_especial=true;
        }
    }
    if(numero.indexOf(teclado)==-1 && !teclado_especial){
   return false;
   }
}


function solounaletra(e){
  
    key = e.KeyCode || e.which;
    teclado = String.fromCharCode(key).toLowerCase();
    letras = "lms";
    especiales = "8-37-38-46-164";
    teclado_especial = false;

    for(var i in especiales){
        if (key==especiales[i]){
           teclado_especial=true;
        }
    }
    if(letras.indexOf(teclado)==-1 && !teclado_especial){
   return false;
   }
}

function abrir(url){
    window.open(url,"foto","width=500,height=300,top=200,left=200")
}