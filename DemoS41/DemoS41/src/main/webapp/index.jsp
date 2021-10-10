<%-- 
    Document   : index
    Created on : 24/09/2021, 03:20:50 PM
    Author     : FERNANDO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>         
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

        <script src = "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>  

    </head>

    <body>

        <div class="container-fluid" ng-app="DemoS41" ng-controller="contactosController as cn">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container px-4 px-lg-5">
                    <a class="navbar-brand" href="#!">Easy parking</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">


                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
                                   data-bs-toggle="dropdown" aria-expanded="false">Clientes</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li class="nav-item">
                                        <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#ListaCliente" ng-click="cn.listarContactos()">Listar clientes</a>
                                    </li>
                                    <li>
                                        <hr class="dropdown-divider" />
                                    </li>
                                    <li class="nav-item">
                                        <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#eliminarCon" >Borrar cliente</a>
                                    </li>
                                    <li>
                                        <hr class="dropdown-divider" />
                                    </li>
                                    <li class="nav-item">
                                        <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#portfolioModal2" >Actualizar Datos de Cliente</a>
                                    </li>

                                </ul>
                            </li>

                        </ul>

                    </div>
                </div>
            </nav> 

            <header class="bg-dark py-5">
                <div class="container px-4 px-lg-5 my-5">
                    <div class="text-center text-white">
                        <h1 class="display-4 fw-bolder">Easy Parkig</h1>
                        <p class="lead fw-normal text-white-50 mb-0">Confiable y Seguro</p>
                    </div>
                </div>
            </header>    




            <section class="py-5">
                <div class="container px-4 px-lg-5 mt-5">
                    <div class="
                         row
                         gx-4 gx-lg-5
                         row-cols-2 row-cols-md-3 row-cols-xl-4
                         justify-content-center
                         ">
                        <div class="col mb-5">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top" src="./img/1.png"
                                     alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">Vehiculo</h5>
                                        <label for="">Usuario: </label>
                                        <label for="">{{cn.nombre}} </label>
                                        <br>
                                        <label for="">Apellido: </label>
                                        <label for="">{{cn.apellido}} </label>
                                        <br>
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        <a class="btn btn-outline-dark mt-auto" data-bs-toggle="modal"
                                           data-bs-target="#portfolioModal1">Ingreso</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col mb-5">
                            <div class="card h-100">
                                <!-- Sale badge-->
                                <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                                    libre
                                </div>
                                <!-- Product image-->
                                <img class="card-img-top"
                                     src="./img/2.png"
                                     alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">Vehiculo</h5>
                                        <label for="">Usuario: </label>
                                        <label for="" >{{cn.nombre}} </label>
                                        <br>
                                        <label for="">Apellido: </label>
                                        <label for="">{{cn.apellido}} </label>
                                        <br>

                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        <a class="btn btn-outline-dark mt-auto" data-bs-toggle="modal"
                                           data-bs-target="#portfolioModal1" id="puesto1">Ingreso</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col mb-5">
                            <div class="card h-100">
                                <!-- Sale badge-->
                                <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                                    libre
                                </div>
                                <!-- Product image-->
                                <img class="card-img-top" src="./img/3.png"
                                     alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">Vehiculo</h5>
                                        <label for="">Usuario: </label>
                                        <label for="">{{cn.nombre}} </label>
                                        <br>
                                        <label for="">Apellido: </label>
                                        <label for="">{{cn.apellido}} </label>
                                        <br>
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        <a class="btn btn-outline-dark mt-auto" data-bs-toggle="modal"
                                           data-bs-target="#portfolioModal1">Ingreso</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col mb-5">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top" src="./img/4.png" alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">Vehiculo</h5>
                                        <label for="">Usuario: </label>
                                        <label for="">{{cn.nombre}} </label>
                                        <br>
                                        <label for="">Apellido: </label>
                                        <label for="">{{cn.apellido}} </label>
                                        <br>
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        <a class="btn btn-outline-dark mt-auto" data-bs-toggle="modal"
                                           data-bs-target="#portfolioModal1">Ingreso</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col mb-5">
                            <div class="card h-100">
                                <!-- Sale badge-->
                                <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                                    Sale
                                </div>
                                <!-- Product image-->
                                <img class="card-img-top" src="./img/5.png" alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">Vehiculo</h5>
                                        <label for="">Usuario: </label>
                                        <label for="">{{cn.nombre}} </label>
                                        <br>
                                        <label for="">Apellido: </label>
                                        <label for="">{{cn.apellido}} </label>
                                        <br>
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        <a class="btn btn-outline-dark mt-auto" data-bs-toggle="modal"
                                           data-bs-target="#portfolioModal1">Ingreso</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col mb-5">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top" src="./img/6.png" alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">Vehiculo</h5>
                                        <label for="">Usuario: </label>
                                        <label for="">{{cn.nombre}} </label>
                                        <br>
                                        <label for="">Apellido: </label>
                                        <label for="">{{cn.apellido}} </label>
                                        <br>
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        <a class="btn btn-outline-dark mt-auto" data-bs-toggle="modal"
                                           data-bs-target="#portfolioModal1">Ingreso</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col mb-5">
                            <div class="card h-100">
                                <!-- Sale badge-->
                                <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                                    Sale
                                </div>
                                <!-- Product image-->
                                <img class="card-img-top" src="./img/7.png" alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">Vehiculo</h5>
                                        <label for="">Usuario: </label>
                                        <label for="">{{cn.nombre}} </label>
                                        <br>
                                        <label for="">Apellido: </label>
                                        <label for="">{{cn.apellido}} </label>
                                        <br>
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        <a class="btn btn-outline-dark mt-auto" data-bs-toggle="modal"
                                           data-bs-target="#portfolioModal1">Ingreso</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col mb-5">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top" src="./img/8.png" alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">Vehiculo</h5>
                                        <label for="">Usuario: </label>
                                        <label for="">{{cn.nombre}} </label>
                                        <br>
                                        <label for="">Apellido: </label>
                                        <label for="">{{cn.apellido}} </label>
                                        <br>
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        <a class="btn btn-outline-dark mt-auto" data-bs-toggle="modal"
                                           data-bs-target="#portfolioModal1">Ingreso</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>



            <div class="portfolio-modal modal fade" id="ListaCliente" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">

                    <div class="modal-content">
                        <div class="close-modal" data-bs-dismiss="modal">
                            <img src="assets/img/close-icon.svg" alt="Close modal" />
                        </div>   
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-12">
                                    <div class="col-lg-12">
                                        <h2 class="text-uppercase">LISTA DE CLIENTES</h2>
                                        <section class="page-section" id="contact">
                                            <div class="container">
                                                <div class="table-responsive-xl">

                                                    <table class="table table-striped ">
                                                        <thead class="thead-dark">
                                                            <tr>  
                                                                <th>Id</th>  
                                                                <th>Nombre</th>  
                                                                <th>Apellido</th>    
                                                                <th>Telefono</th>  
                                                                <th>Direccion</th>  
                                                                <th>Correo</th>  
                                                            </tr>  
                                                        </thead>
                                                        <tr class="table-dark"  ng-repeat = "contacto in cn.contactos" >  
                                                            <td>{{ contacto.identificacion}}</td>  
                                                            <td>{{ contacto.nombre}}</td>  
                                                            <td>{{ contacto.apellido}}</td>   
                                                            <td>{{ contacto.telefono}}</td>  
                                                            <td>{{ contacto.direccion}}</td>  
                                                            <td>{{ contacto.correo}}</td>  
                                                        </tr> 
                                                    </table>
                                                </div>



                                            </div>
                                        </section>
                                    </div>
                                </div>
                            </div>   
                        </div>

                    </div> 

                </div>


            </div>
            
 

            <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="close-modal" data-bs-dismiss="modal">
                            <img src="assets/img/close-icon.svg" alt="Close modal" />
                        </div>
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-12">
                                    <div class="col-lg-12">
                                        <!-- Project details-->
                                        <h2 class="text-uppercase">REGISTRO</h2>
                                        <p class="item-intro text-muted">
                                            Ingrese cada uno de los datos.
                                        </p>
                                        <!-- registro de datos-->
                                        <section class="page-section" id="contact">
                                            <div class="container">
                                                <div class="text-center">
                                                    <h2 class="section-heading text-uppercase">
                                                        CLIENTE
                                                    </h2>

                                                </div>
                                                <!-- formulario para cliente input-->
                                                <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                                                    <div class="row align-items-stretch mb-5">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <!-- Name input-->
                                                                <input  class="form-control" id="nombre" type="text"
                                                                        placeholder="Nombre *" ng-model="cn.nombre" ng-model-options="{updateOn: 'blur'}" required />

                                                            </div>
                                                            <div class="form-group">
                                                                <!-- correo input-->
                                                                <input class="form-control" id="email" type="email"
                                                                       placeholder="Correo *"
                                                                       data-sb-validations="required,email"  ng-model="cn.correo" ng-model-options="{updateOn: 'blur'}" required />

                                                            </div>
                                                            <div class="form-group mb-md-0">
                                                                <!-- Telefono   input-->
                                                                <input class="form-control" id="telefono" type="number"
                                                                       placeholder="Telefono *" data-sb-validations="required" ng-model="cn.telefono" ng-model-options="{updateOn: 'blur'}" required />

                                                            </div>

                                                        </div>
                                                        <!-- colmna dos-->
                                                        <div class="col-md-6">
                                                            <!-- apellido input-->
                                                            <div class="form-group">
                                                                <input class="form-control" id="apellido" type="text"
                                                                       placeholder="Apellido *" data-sb-validations="required" ng-model="cn.apellido" ng-model-options="{updateOn: 'blur'}" required />
                                                            </div>
                                                            <!-- identificacion input-->
                                                            <div class="form-group">
                                                                <input name="identificacion" placeholder="Identificacion * *" class="form-control" type="number" min="0" ng-model="cn.identificacion" ng-model-options="{updateOn: 'blur'}" required/>
                                                            </div>
                                                            <!-- direccion input-->
                                                            <div class="form-group">
                                                                <input class="form-control" id="direccion" type="text"
                                                                       placeholder="Direccion *" data-sb-validations="required" ng-model="cn.direccion" ng-model-options="{updateOn: 'blur'}" required/>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <h2 class="section-heading text-uppercase">
                                                        VEHICULO
                                                    </h2>
                                                    <div class="row align-items-stretch mb-5">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <!-- placa input-->
                                                                <input class="form-control" id="placa" type="text"
                                                                       placeholder="Placa *" data-sb-validations="required" />

                                                            </div>
                                                            <div class="form-group">
                                                                <!-- modelo input-->
                                                                <input class="form-control" id="modelo" type="number"
                                                                       placeholder="Modelo *"
                                                                       />

                                                            </div>


                                                        </div>
                                                        <!-- colmna dos-->
                                                        <div class="col-md-6">
                                                            <div class="form-group mb-md-0">
                                                                <!-- tipo vehiculo   input-->
                                                                <select name="" id="" class="form-select form-select-lg mb-3-">hola
                                                                    <option value=""  >Tipo de vehiculo</option>
                                                                    <option value="">Vehículos ligeros</option>
                                                                    <option value="">Vehículos pesados</option>
                                                                    <option value="">Vehículos dos ruedas</option>
                                                                </select>

                                                            </div>
                                                            <br>
                                                            <!-- fecha entrada input-->
                                                            <div class="form-group">
                                                                <button class="
                                                                        btn btn-success btn-xl
                                                                        text-uppercase
                                                                        form-control

                                                                        " id="submitButton" type="submit"
                                                                        ng-click="cn.guardarContacto()">
                                                                    GUARDAR VEHICULO
                                                                </button>
                                                            </div>
                                                            <!-- identificacion input-->
                                                            <div class="form-group">
                                                                <button class="
                                                                        btn btn-danger btn-xl
                                                                        text-uppercase
                                                                        form-control

                                                                        " id="submitButton" type="submit">
                                                                    Salida vehiculo
                                                                </button>
                                                            </div>
                                                         


                                                        </div>
                                                    </div>
                                            </div>
                                           
                                         
                                          
                                            </form>
                                    </div>
                                    </section>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
                       <div class="modal fade" id="eliminarCon" tabindex="-1" aria-labelledby="eliminarCon" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content  ">
                        <div class="modal-header bg-dark py-3 text-center text-white">
                            <h5 class="modal-title  " id="exampleModalLabel" >ELIMINAR CONTACTO</h5>
                            
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="mb-3">
                                    <label for="recipient-name" class="col-form-label">Documento:</label>
                                    <input type="text" class="form-control" ng-model="cn.identificacion1" ng-model-options="{updateOn: 'blur'}">
                                </div>
                            </form>
                            <div class="modal-footer">
                              <button type="button" class="btn btn-outline-secondary mt-auto" data-bs-dismiss="modal">Cancelar</button>
                                <button type="button" class="btn btn-outline-danger mt-auto" ng-click="cn.eliminarContacto()">Eliminar</button>
                            </div>
                        </div>
                    </div>

            </div>
        </div>
            <!--------------------------------------- actualizar cliente ------------------------------------------->
                        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="close-modal" data-bs-dismiss="modal">
                            <img src="assets/img/close-icon.svg" alt="Close modal" />
                        </div>
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-12">
                                    <div class="col-lg-12">
                                        <!-- Project details-->
                                        <h2 class="text-uppercase">ACTUALIZAR DATOS CLIENTE</h2>
                                        <p class="item-intro text-muted">
                                            Ingrese cada uno de los datos.
                                        </p>
                                        <!-- registro de datos-->
                                        <section class="page-section" id="contact">
                                            <div class="container">
                                                <div class="text-center">
                                                    <h2 class="section-heading text-uppercase">
                                                        CLIENTE
                                                    </h2>

                                                </div>
                                                <!-- formulario para cliente input-->
                                                <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                                                    <div class="row align-items-stretch mb-5">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <!-- Name input-->
                                                                <input  class="form-control" id="nombre" type="text"
                                                                        placeholder="Nombre *" ng-model="cn.nombre" ng-model-options="{updateOn: 'blur'}" required />

                                                            </div>
                                                            <div class="form-group">
                                                                <!-- correo input-->
                                                                <input class="form-control" id="email" type="email"
                                                                       placeholder="Correo *"
                                                                       data-sb-validations="required,email"  ng-model="cn.correo" ng-model-options="{updateOn: 'blur'}" required />

                                                            </div>
                                                            <div class="form-group mb-md-0">
                                                                <!-- Telefono   input-->
                                                                <input class="form-control" id="telefono" type="number"
                                                                       placeholder="Telefono *" data-sb-validations="required" ng-model="cn.telefono" ng-model-options="{updateOn: 'blur'}" required />

                                                            </div>

                                                        </div>
                                                        <!-- colmna dos-->
                                                        <div class="col-md-6">
                                                            <!-- apellido input-->
                                                            <div class="form-group">
                                                                <input class="form-control" id="apellido" type="text"
                                                                       placeholder="Apellido *" data-sb-validations="required" ng-model="cn.apellido" ng-model-options="{updateOn: 'blur'}" required />
                                                            </div>
                                                            <!-- identificacion input-->
                                                            <div class="form-group">
                                                                <input name="identificacion" placeholder="Identificacion * *" class="form-control" type="number" min="0" ng-model="cn.identificacion" ng-model-options="{updateOn: 'blur'}" required/>
                                                            </div>
                                                            <!-- direccion input-->
                                                            <div class="form-group">
                                                                <input class="form-control" id="direccion" type="text"
                                                                       placeholder="Direccion *" data-sb-validations="required" ng-model="cn.direccion" ng-model-options="{updateOn: 'blur'}" required/>
                                                            </div>
                                                            
                                                         

                                                        </div>
                                                           <div class="form-group">
                                                                <button class="
                                                                        btn btn-success btn-xl
                                                                        text-uppercase
                                                                        form-control

                                                                        " id="submitButton" type="submit"
                                                                        ng-click="cn.actualizarContacto()">
                                                                    ACTUALIZAR CLIENTE
                                                                </button>
                                                            </div>
                                                    </div>
                                                   
                                                    
                                                
                                            </div>
                                           
                                         
                                          
                                            </form>
                                    </div>
                                    </section>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
    </body>

    <script>
        //codigo Angular
        angular.module('DemoS41', [])
                .controller('contactosController', ['$scope', function ($scope) {

                        $scope.user = {};

                        $scope.update = function () {
                            console.log($scope.user);
                        };

                        $scope.reset = function (form) {
                            $scope.user = {};
                            if (form) {
                                form.$setPristine();
                                form.$setUntouched();
                            }
                        };

                        $scope.reset();

                    }]);

        var app = angular.module('DemoS41', []);
        app.controller('contactosController', ['$http', controladorContactos]);

        function validar() {
            return true;
        }

        function controladorContactos($http) {

            var cn = this;

            cn.listarContactos = function () {
                console.log('si ingresa al Angular lsitar');
                var url = "Peticiones.jsp";
                var params = {
                    proceso: "listarcontacto"
                };
                $http({
                    method: 'POST',
                    url: 'Peticiones.jsp',
                    params: params
                }).then(function (res) {
                    cn.contactos = res.data.Contactos;
                });
            };

            cn.guardarContacto = function () {
                var contacto = {
                    proceso: "guardarContacto",
                    identificacion: cn.identificacion,
                    nombre: cn.nombre,
                    apellido: cn.apellido,
                    telefono: cn.telefono,
                    direccion: cn.direccion,
                    correo: cn.correo
                };
                $http({
                    method: 'POST',
                    url: 'Peticiones.jsp',
                    params: contacto
                }).then(function (res) {
                    if (res.data.ok === true) {
                        if (res.data[contacto.proceso] === true) {
                            alert("Guardado con éxito");
                            //                                                            cn.listarContactos();
                        } else {
                            alert("Por favor vefifique sus datos");
                        }
                    } else {
                        alert(res.data.errorMsg);
                    }
                });

            };

            cn.eliminarContacto = function () {
                //let valor=prompt("ingrese la identificacion");
                var contacto = {
                    proceso: "eliminarcontacto",
                    identificacion: cn.identificacion1
                };
                $http({
                    method: 'POST',
                    url: 'Peticiones.jsp',
                    params: contacto
                }).then(function (res) {
                    if (res.data.ok === true) {
                        if (res.data[contacto.proceso] === true) {
                            alert("Eliminado con éxito");
                            //                                cn.listarContactos();
                        } else {
                            alert("Por favor vefifique sus datos");
                        }
                    } else {
                        alert(res.data.errorMsg);
                    }
                });

            };

            cn.actualizarContacto = function () {

                var contacto = {
                    proceso: "actualizarcontacto",
                    identificacion: cn.identificacion,
                    nombre: cn.nombre,
                    apellido: cn.apellido,
                    telefono: cn.telefono,
                    direccion: cn.direccion,
                    correo: cn.correo
                };
                $http({
                    method: 'POST',
                    url: 'Peticiones.jsp',
                    params: contacto
                }).then(function (res) {
                    if (res.data.ok === true) {
                        if (res.data[contacto.proceso] === true) {
                            alert("actualizarcontacto con éxito");
                            //                                cn.listarContactos();
                        } else {
                            alert("Por favor vefifique sus datos");
                        }
                    } else {
                        alert(res.data.errorMsg);
                    }
                });

            };

        }

    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</html>
