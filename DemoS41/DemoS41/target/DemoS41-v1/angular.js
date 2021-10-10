/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
                    genero: cn.genero,
                    tipoIdentificacion: cn.tipoIdentificacion,
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
                var contacto = {
                    proceso: "eliminarcontacto",
                    identificacion: cn.identificacion
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
                    genero: cn.genero,
                    tipoIdentificacion: cn.tipoIdentificacion,
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