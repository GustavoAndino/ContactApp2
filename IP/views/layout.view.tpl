<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
  <link rel="stylesheet" href="public/css/estilo.css">

  <title>Instituto Polivalente Nuevo Paraiso</title>
</head>
<body>
  <header>
    <div class="contenedor">
      <h1 class="icon-school"> IPNP</h1>
      <input type="checkbox" id="menu-bar">
      <label class="fontawesome-align-justify" for="menu-bar"></label>
      <nav class="menu">
        <a href="index.php?page=home">Inicio</a>
        <a href="index.php?page=historia">Historia</a>
        <a href="index.php?page=matricula">Matricula</a>
        <a href="index.php?page=participaciones">Paticipaciones</a>
        <a href="index.php?page=login">Login</a>

      </nav>
    </div>
  </header>

  <div class="contenido">
      {{{page_content}}}
  </div>

            <footer class="footer">
              <div class="contenedor">
                <p class="copy">Instituto Polivalente Nuevo Paraiso &copy; 2018</p>
                <div class="sociales">
                  <a class="fontawesome-facebook-sign" href="#"></a>
                  <a class="fontawesome-twitter" href="#"></a>
                  <a class="fontawesome-camera-retro" href="#"></a>
                  <a class="fontawesome-google-plus-sign" href="#"></a>
                </div>
              </div>
            </footer>
        </body>
    </html>
