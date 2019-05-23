﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="FichaBaseExpediente.aspx.cs" Inherits="Pediatric_System.FichaBaseExpediente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="CSS/expediente.css" />
    <script type="text/javascript" src="JS/expediente.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <br />

        <div class="col-xs-12 col-sm-6 col-md-8 col-md-offset-2">
            <div class="page-header">
                <h2 class="text-info">Expediente</h2>
            </div>
        </div>


        <div class="row">
            <div class="col-md-12" style="margin-top: 20px; padding:0px">
                <div class="progress-bar-container">
                    <div class="progress-bar"></div>
                </div>
            </div>
        </div>

        <br />
        <br />

        <form runat="server">

            <!-- Confirmar para guardar el formulario !-->

            <div class="boxSave row ">
                <div class="col-md-4 offset-md-4 bg-light border border-info rounded">
                    <div class="form-row text-center">
                        <div class="form-group col-md-12">
                            <asp:Label runat="server" Text="Guardar Informacion de Expediente" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>
                            <br />
                            <br />
                            <button class="btn btn-primary">Guardar</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ----------------------------------------------------------- !-->

            <br />

            <!-- Datos para la Informacion Personal del Paciente !-->

            <div class="step1">

                <div class="container-fluid col-md-10 col-md-offset-1">
                    <asp:Label class="container" runat="server" Text="Informacion Personal del Paciente" Style="font-size: 24px; font-weight: bold; color: dimgray"> </asp:Label>
                </div>

                <br />

                <div class="container-fluid col-md-8 col-md-offset-2 bg-light border border-info rounded">

                    <br />

                    <asp:Label runat="server" Text="Nombre Completo" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>

                    <br />

                    <div class="form-row justify-content-center">

                        <div class="form-group col-md-4 col-lg-3 ">
                            <input type="text" class="form-control" placeholder="Nombre">
                        </div>

                        <div class="form-group col-md-4 col-lg-3">
                            <input type="text" class="form-control" placeholder="Primer Apellido">
                        </div>

                        <div class="form-group col-md-4 col-lg-3">
                            <input type="text" class="form-control" placeholder="Segundo Apellido">
                        </div>

                    </div>

                </div>

                <br />

                <div class="container-fluid col-md-8 col-md-offset-2 bg-light border border-info rounded">

                    <br />

                    <div class="form-row justify-content-center">
                        <div class="form-group col-md-4  col-lg-3">
                            <asp:Label runat="server" Text="Cedula" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>
                            <input type="text" class="form-control" placeholder="1-0234-0456">
                        </div>

                        <div class="form-group col-md-4  col-lg-3">
                            <asp:Label runat="server" Text="Sexo" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>
                            <select class="browser-default custom-select">
                                <option value="" disabled selected>Seleccionar Sexo</option>
                                <option value="Femenino">Femenino</option>
                                <option value="Maculino">Masculino</option>
                                <option value="Otro">Otro</option>
                            </select>
                        </div>

                        <div class="form-group col-md-4  col-lg-3">
                            <asp:Label runat="server" Text="Fecha de Nacimiento" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>
                            <input id="datepicker" placeholder="31/12/2018" />
                        </div>

                    </div>

                </div>

                <br />

                <div class="container-fluid col-md-8 col-md-offset-2 bg-light border border-info rounded">

                    <br />

                    <asp:Label runat="server" Text="Direccion" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>

                    <br />

                    <div class="form-row justify-content-center">

                        <div class="form-group col-md-3">
                            <select class="browser-default custom-select">
                                <option value="" disabled selected>Provincia</option>
                            </select>
                        </div>

                        <div class="form-group col-md-3">
                            <select class="browser-default custom-select">
                                <option value="" disabled selected>Canton</option>
                            </select>
                        </div>

                        <div class="form-group col-md-3">
                            <select class="browser-default custom-select">
                                <option value="" disabled selected>Distrito</option>
                            </select>
                        </div>

                    </div>

                </div>

                <br />

                <div class="container-fluid col-md-4 col-md-offset-4 bg-light border border-info rounded">

                    <br />

                    <div class="form-row ">

                        <div class="form-group col-md-10">
                            <asp:Label runat="server" Text="Foto del Paciente" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>

                            <br />
                            <br />

                            <asp:Image ID="Image1" Width="200" runat="server" />

                            <br />
                            <br />

                            <div>
                                <asp:FileUpload CssClass="form-control" ID="fuploadImagen" accept=".jpg" runat="server" />
                            </div>

                        </div>

                    </div>

                </div>

                <div class="text-center">
                    <br />
                    <input class="btn btn-primary next" type="button" onclick="siguienteStep1()" value="Siguiente" />
                </div>

            </div>

            <!-- ----------------------------------------------------------- !-->

            <!-- Datos para Informacion Personal del Encargado del Paciente !-->

            <div class="step2">

                <div class="container-fluid col-md-10 col-md-offset-1  ">
                    <asp:Label class="container" runat="server" Text="Informacion Personal del Encargado del Paciente" Style="font-size: 24px; font-weight: bold; color: dimgray"> </asp:Label>
                </div>

                <br />

                <div class="container-fluid col-md-8 col-md-offset-2 bg-light border border-info rounded">

                    <br />

                    <asp:Label runat="server" Text="Nombre Completo" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>

                    <br />

                    <div class="form-row justify-content-center">

                        <div class="form-group col-md-4 col-lg-3 ">
                            <input type="text" class="form-control" placeholder="Nombre">
                        </div>

                        <div class="form-group col-md-4 col-lg-3">
                            <input type="text" class="form-control" placeholder="Primer Apellido">
                        </div>

                        <div class="form-group col-md-4 col-lg-3">
                            <input type="text" class="form-control" placeholder="Segundo Apellido">
                        </div>

                    </div>

                </div>

                <br />

                <div class="container-fluid col-md-8 col-md-offset-2 bg-light border border-info rounded">

                    <br />

                    <div class="form-row justify-content-center">

                        <div class="form-group col-md-4  col-lg-3">
                            <asp:Label runat="server" Text="Cedula" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>
                            <input type="text" class="form-control" placeholder="1-0234-0456">
                        </div>

                        <div class="form-group col-md-4  col-lg-3">
                            <asp:Label runat="server" Text="Telefono" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>
                            <input type="text" class="form-control" placeholder="12345678">
                        </div>

                        <div class="form-group col-md-4  col-lg-3">
                            <asp:Label runat="server" Text="Correo Electronico" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>
                            <input type="text" class="form-control" placeholder="ejm@gmail.com">
                        </div>

                        <div class="form-group col-md-4  col-lg-3">
                            <asp:Label runat="server" Text="Parentezco" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>
                            <input type="text" class="form-control" placeholder="Padre, Madre, Encargado(a)...">
                        </div>

                    </div>

                </div>

                <br />

                <div class="container-fluid col-md-8 col-md-offset-2 bg-light border border-info rounded">

                    <br />

                    <asp:Label runat="server" Text="Direccion" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>

                    <br />

                    <div class="form-row justify-content-center">

                        <div class="form-group col-md-3">
                            <select class="browser-default custom-select">
                                <option value="" disabled selected>Provincia</option>
                            </select>
                        </div>

                        <div class="form-group col-md-3">
                            <select class="browser-default custom-select">
                                <option value="" disabled selected>Canton</option>
                            </select>
                        </div>

                        <div class="form-group col-md-3">
                            <select class="browser-default custom-select">
                                <option value="" disabled selected>Distrito</option>
                            </select>

                        </div>

                    </div>

                    <div class="form-row justify-content-center">

                        <div class="form-row col-md-12">
                            <input type="text" class="form-control" placeholder="Otras Señas">
                        </div>

                    </div>

                    <br />

                </div>

                <div class="text-center">
                    <br />
                    <a class="btn btn-primary" role="button" href="javascript:;" onclick="anteriorStep2()">Anterior</a>
                    <a class="btn btn-primary" role="button" href="javascript:;" onclick="siguienteStep2()">Siguiente</a>
                </div>

            </div>

            <!-- Datos para Informacion Personal del Destinatario de la Factura!-->

            <div class="step3">

                <div class="container-fluid col-md-10 col-md-offset-1  ">
                    <asp:Label class="container" runat="server" Text="Informacion Personal del Destinatario de la Factura" Style="font-size: 24px; font-weight: bold; color: dimgray"> </asp:Label>
                </div>

                <br />

                <div class="container-fluid col-md-8 col-md-offset-2 bg-light border border-info rounded">

                    <br />

                    <asp:Label runat="server" Text="Nombre Completo" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>

                    <br />

                    <div class="form-row justify-content-center">

                        <div class="form-group col-md-4 col-lg-3 ">
                            <input type="text" class="form-control" placeholder="Nombre">
                        </div>

                        <div class="form-group col-md-4 col-lg-3">
                            <input type="text" class="form-control" placeholder="Primer Apellido">
                        </div>

                        <div class="form-group col-md-4 col-lg-3">
                            <input type="text" class="form-control" placeholder="Segundo Apellido">
                        </div>

                    </div>

                </div>

                <br />

                <div class="container-fluid col-md-8 col-md-offset-2 bg-light border border-info rounded">

                    <br />

                    <div class="form-row justify-content-center">

                        <div class="form-group col-md-4  col-lg-3">
                            <asp:Label runat="server" Text="Cedula" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>
                            <input type="text" class="form-control" placeholder="1-0234-0456">
                        </div>

                        <div class="form-group col-md-4  col-lg-3">
                            <asp:Label runat="server" Text="Telefono" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>
                            <input type="text" class="form-control" placeholder="12345678">
                        </div>

                        <div class="form-group col-md-4  col-lg-3">
                            <asp:Label runat="server" Text="Correo Electronico" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>
                            <input type="text" class="form-control" placeholder="ejm@gmail.com">
                        </div>

                    </div>

                </div>

                <br />

                <div class="container-fluid col-md-8 col-md-offset-2 bg-light border border-info rounded">

                    <br />

                    <asp:Label runat="server" Text="Direccion" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>

                    <br />

                    <div class="form-row justify-content-center">

                        <div class="form-group col-md-3">
                            <select class="browser-default custom-select">
                                <option value="" disabled selected>Provincia</option>
                            </select>
                        </div>

                        <div class="form-group col-md-3">
                            <select class="browser-default custom-select">
                                <option value="" disabled selected>Canton</option>
                            </select>
                        </div>

                        <div class="form-group col-md-3">
                            <select class="browser-default custom-select">
                                <option value="" disabled selected>Distrito</option>
                            </select>
                        </div>

                    </div>

                    <div class="form-row justify-content-center">

                        <div class="form-row col-md-12">
                            <input type="text" class="form-control" placeholder="Otras Señas">
                        </div>

                    </div>

                    <br />

                </div>

                <div class="text-center">
                    <br />
                    <a class="btn btn-primary" role="button" href="javascript:;" onclick="anteriorStep3()">Anterior</a>
                    <a class="btn btn-primary" role="button" href="javascript:;" onclick="siguienteStep3()">Siguiente</a>
                </div>

            </div>

            <!-- Datos para Historia Clinica Pediatrica !-->

            <div class="step4">

                <div class="container-fluid col-md-10 col-md-offset-1  ">
                    <asp:Label class="container" runat="server" Text="Historia Clinica Pediatrica" Style="font-size: 24px; font-weight: bold; color: dimgray"> </asp:Label>
                </div>

                <br />

                <div class="container-fluid col-md-8 col-md-offset-2 bg-light border border-info rounded">

                    <br />

                    <asp:Label runat="server" Text="Antecedentes Perinatales" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>

                    <br />

                    <div class="form-row justify-content-center">

                        <div class="form-group col-md-4 col-lg-3 ">
                            <input type="text" class="form-control" placeholder="Nombre">
                        </div>

                        <div class="form-group col-md-4 col-lg-3">
                            <input type="text" class="form-control" placeholder="Primer Apellido">
                        </div>

                        <div class="form-group col-md-4 col-lg-3">
                            <input type="text" class="form-control" placeholder="Segundo Apellido">
                        </div>

                    </div>

                </div>

                <br />

                <div class="container-fluid col-md-8 col-md-offset-2 bg-light border border-info rounded">

                    <br />

                    <div class="form-row justify-content-center">

                        <div class="form-group col-md-4  col-lg-3">
                            <asp:Label runat="server" Text="Cedula" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>
                            <input type="text" class="form-control" placeholder="1-0234-0456">
                        </div>

                        <div class="form-group col-md-4  col-lg-3">
                            <asp:Label runat="server" Text="Telefono" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>
                            <input type="text" class="form-control" placeholder="12345678">
                        </div>

                        <div class="form-group col-md-4  col-lg-3">
                            <asp:Label runat="server" Text="Correo Electronico" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>
                            <input type="text" class="form-control" placeholder="ejm@gmail.com">
                        </div>

                    </div>

                </div>

                <br />

                <div class="container-fluid col-md-8 col-md-offset-2 bg-light border border-info rounded">

                    <br />

                    <asp:Label runat="server" Text="Direccion" Style="font-size: 16px; font-weight: bold; color: dimgray"> </asp:Label>

                    <br />

                    <div class="form-row justify-content-center">

                        <div class="form-group col-md-3">
                            <select class="browser-default custom-select">
                                <option value="" disabled selected>Provincia</option>
                            </select>
                        </div>

                        <div class="form-group col-md-3">
                            <select class="browser-default custom-select">
                                <option value="" disabled selected>Canton</option>
                            </select>
                        </div>

                        <div class="form-group col-md-3">
                            <select class="browser-default custom-select">
                                <option value="" disabled selected>Distrito</option>
                            </select>
                        </div>

                    </div>

                    <div class="form-row justify-content-center">

                        <div class="form-row col-md-12">
                            <input type="text" class="form-control" placeholder="Otras Señas">
                        </div>

                    </div>

                    <br />

                </div>

                <div class="text-center">
                    <br />
                    <a class="btn btn-primary" role="button" href="javascript:;" onclick="anteriorStep4()">Anterior</a>
                </div>

            </div>

            <!-- Fin del fromulario para expediente !-->

        </form>

    </div>

</asp:Content>