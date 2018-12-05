//Declaraciones
function btnGuardar_onClick(e){
  e.preventDefault();
  e.stopPropagation();
  var error = false;
  var txtNombre = document.getElementById('txtNombre');
  if(txtNombre.value){

    if((/^\s*$/).test(txtNombre.value)||!(/^[A-Za-z\sñÑáéíóúü']*$/).test(txtNombre.value)){

      document.getElementById('errorMsgNombre').innerHTML = "El nombre tiene caracteres no válidos."
      txtNombre.focus();
      txtNombre.classList.add("error");
      error= true;
    }
  }else{

    document.getElementById('errorMsgNombre').innerHTML = "El Nombre es Requerido";
    txtNombre.focus();
    txtNombre.classList.add("error");
    error=true;
  }



  if(txtEdad.value){

    if(!(/^[1-99]*$/).test(txtEdad.value)){

      document.getElementById('errorMsgEdad').innerHTML = "La Edad tiene caracteres no válidos."
      txtEdad.focus();
      txtEdad.classList.add("error");
      error= true;
    }
  }else{
    //alert('El Nombre es Requerido');
    document.getElementById('errorMsgEdad').innerHTML = "La Edad es Requerido";
    txtEdad.focus();
    txtEdad.classList.add("error");
    error=true;
  }
  //////////////////////////////////////////////////////////////////////
  if(txtTelefono.value){
    //https://regex101.com/
    if(!(/^[0-9]*$/).test(txtTelefono.value)){
      //alert("El nombre tiene caracteres no válidos.")
      document.getElementById('errorMsgTelefono').innerHTML = "El Teléfono tiene caracteres no válidos."
      txtTelefono.focus();
      txtTelefono.classList.add("error");
      error= true;
    }
  }else{
    //alert('El Nombre es Requerido');
    document.getElementById('errorMsgTelefono').innerHTML = "El Teléfono es Requerido";
    txtTelefono.focus();
    txtTelefono.classList.add("error");
    error=true;
  }
///////////////////////////////////////////////////////////////////////
  //Si No hay errores entonces enviar
  if(!error){
    var formulario = document.getElementById('');
    formulario.submit();
  }
}

// Vamos obtener la referecia al boton guardar

// DOM Documento Object Model
var btnGuardar = document.getElementById('btnGuardar');

//Binding del evento click al boton btnGuardar
btnGuardar.addEventListener('click',btnGuardar_onClick);
