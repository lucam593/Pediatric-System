﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="Pediatric_System.IniciarSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Inicio de Sesión</title>

    <%-- Bootstrap ultima version --%>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="CSS/IniciarSesion.css" />

</head>
<body>

    <div class="wrapper fadeInDown">
        <div id="formContent">
            <!-- Tabs Titles -->

            <!-- Icon -->
            <br />
            <div id="fadeIn first">
                <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            </div>

            <!-- Login Form -->
            <form>

                <div class="form-group col-md-12">
                    <input type="email" id="email" class="form-control form-control-lg bg-light text-center" name="login" placeholder="Correo Electrónico" />
                </div>

                <div class="form-group col-md-12">
                    <input type="password" id="password" class="form-control form-control-lg bg-light text-center" name="login" placeholder="Contraseña" />
                </div>

                
                <input type="submit" class="fadeIn fourth" value="INGRESAR" />
            </form>

            <div id="formFooter">
                <a class="underlineHover" href="#">Olvidé mi contraseña</a>
            </div>

            <!-- Remind Passowrd -->

        </div>
    </div>

</body>
</html>
