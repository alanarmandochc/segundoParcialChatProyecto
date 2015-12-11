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
        
        <!-- Bootstrap core CSS -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap theme -->
        <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
        
        <script>
            activo = 0;
            canalesExistentes="";
            
            
            function cambiar(valor){
                //alert(valor);
                document.getElementById('canal').value=valor;
            }
            
            function agregarTexto(texto){
                document.getElementById("message").value+=texto;
            }
            
            function relojUsuario() {
                var segundos = document.getElementById("segundos").value;
                segundos++;
                document.getElementById("segundos").value = segundos;
                if(segundos>59){
                document.getElementById("segundos").value = 0;
                var minutos = document.getElementById("minutos").value;
                minutos++;
                document.getElementById("minutos").value = minutos;
            
                if(minutos >= 5){
                    activo = 0;
                    document.getElementById("message").value = "Se ha Desconectado";
                    botonEnviar.click();
                    document.getElementById("botonEnviar").disabled = true;
                }
            }
        }

        function reiniciarRelojUsuario(){
            document.getElementById("segundos").value = 0;
            document.getElementById("minutos").value = 0;
        }


        function myFunction(str, palabra, foto) {
    
            var n = str.search(palabra);
            var longitud = str.length;
            var i=0;
    
            var cadenaBusqueda = str;
            var res = "";
            var cadenaAux = "";
     
            cadenaFinal = "";
            n = cadenaBusqueda.search(palabra);
            while(n>-1){
                res = cadenaBusqueda.substring(0, n);
                res+=" <img src='"+foto+"' alt='"+palabra+"' height='15px' width='15px' /> ";
                cadenaFinal += res;
                i=n+(palabra.length)-1;
        
                cadenaAux = cadenaBusqueda.substring(i, cadenaBusqueda.length);
        
                cadenaBusqueda = cadenaAux;
                n = cadenaBusqueda.search(palabra);
            }
    
            if(cadenaBusqueda.length > 0){
                cadenaFinal+=cadenaBusqueda;
            }
            return cadenaFinal;
        }


        function evaluarCadena(cadena){
            var cadenaFinal = cadena;
            cadenaFinal = myFunction(cadenaFinal, ":\\)", 'iconos/cara1.jpg');
            cadenaFinal = myFunction(cadenaFinal, ":\\(", 'iconos/cara2.jpg');
            cadenaFinal = myFunction(cadenaFinal, "x\\)", 'iconos/cara3.jpg');
            cadenaFinal = myFunction(cadenaFinal, "E\\)", 'iconos/cara4.jpg');
            cadenaFinal = myFunction(cadenaFinal, ":\\°", 'iconos/cara5.jpg');
            
            cadenaFinal = myFunction(cadenaFinal, "\\<3", 'iconos/corazon.jpg');
            cadenaFinal = myFunction(cadenaFinal, "\\<z3", 'iconos/corazon2.jpg');
    
            return cadenaFinal;
        }

        myVar = setInterval(relojUsuario, 1000);
        
        
        </script>
        
        <!-- 
        _-------------------
        _-------------------
        -->
        
        
        
        
    </head>
    <body>
        
        
        <div class="container">
            
                <div class="col-xs-12">
                        <div class='panel panel-danger' style='border-color: #000000;'>
                                <div class='panel-heading' style='background: #000000; color:#ffffff;'>
                                        <h3 class='panel-title'>Conectar Usuario</h3>
                                </div>
                                <div class='panel-body'>
                                    <label>Usuario : </label>
                                    <input type="text" id="usuario" />
                                    <input type="button" id="btnUsuario" value="Conectar" />
                                </div>             
                        </div>
                </div>
            
            
                <div class="col-xs-12 col-sm-8">
                        <div class='panel panel-danger' style='border-color: #00ffff;'>
                                <div class='panel-heading' style='background: #00ffff;'>
                                    <p>
                                        <label class='panel-title'>Converzación</label>
                                        <label>Canal : </label>
                                        <input type="text" id="canal" value='General' />
                                    </p>
                                        <label>Tiempo Inactivo : </label>
                                        <label>Minutos: </label> <input type="text" id="minutos" value="0" size="1">
                                        <label>Segundos: </label> <input type="text" id="segundos" value="0" size="1">
                                </div>
                                <div class='panel-body'>
                                    <div id="contenedor" style="border: 1px solid blue;">
                                        
                                    </div>
                                    <p></p>
                                    <p>
                                        <img src="iconos/cara1.jpg" width="20px" height="20px" onclick="agregarTexto(':)')"/>
                                        <img src="iconos/cara2.jpg" width="20px" height="20px" onclick="agregarTexto(':(')"/>
                                        <img src="iconos/cara3.jpg" width="20px" height="20px" onclick="agregarTexto('x)')"/>
                                        <img src="iconos/cara4.jpg" width="20px" height="20px" onclick="agregarTexto('E)')"/>
                                        <img src="iconos/cara5.jpg" width="20px" height="20px" onclick="agregarTexto(':°')"/>
                                        
                                        <img src="iconos/corazon.jpg" width="20px" height="20px" onclick="agregarTexto('<3')"/>
                                        <img src="iconos/corazon2.jpg" width="20px" height="20px" onclick="agregarTexto('<z3')"/>
                                        
                                    </p>
                                    <p>
                                        <label>Escriba : </label> <input type="text" id="message">
                                        <button id="botonEnviar">enviar</button>
                                    </p>
                                </div>             
                        </div>
                    
                </div>
            
                <div id="sidebar" class="col-xs-6 col-sm-4 sidebar-offcanvas" role="navigation">
                        <div class='panel panel-danger'>
                                <div class='panel-heading'>
                                        <h3 class='panel-title'>Canales</h3>
                                </div>
                                <div class='panel-body'>
                                    <label>Usuario : </label>
                                    <input type="text" id="canalNuevo" />
                                    <input type="button" id="btnCanalNuevo" value="+" />
                                    <p></p>
                                    
                                    <!-- /.col-sm-4 -->
                                    <div class="col-sm-12">
                                        <div class="list-group" id="canalesUsuarios">
                                            <a href="#" class="list-group-item active">
                                              Canales
                                            </a>
                                            <div class="list-group-item" id="General" onclick="document.getElementById('canal').value='General';">
                                                    General
                                                    <!--<input type="text" id="minutosGeneral" value="-1" size="1"/>
                                                    <input type="text" id="segundosGeneral" value="-1" size="1"/>-->
                                                </div>
                                            
                                                <div class="list-group-item" id="canalesGenerados">
                                                    <p>Canales Alternos</p>
                                                </div>
                                            
                                        </div>
                                    </div>
                                    
                                </div>             
                        </div>
                </div>
        </div>
        <script>
            
            document.getElementById("botonEnviar").disabled = true;
        </script>
        
        
        <script>
            //--------------------------------
            var url = "http://localhost";
            var puerto = "8084";
            var carpeta = "/ChatCreacionDeCanales/chatServlet";
            url=url+":"+puerto+carpeta;
            //--------------------------
            var btnUsuario = document.getElementById("btnUsuario");
            var btnCanalNuevo = document.getElementById("btnCanalNuevo");
            var botonEnviar = document.getElementById("botonEnviar");
            var message = document.getElementById("message");
            var canalNuevo = document.getElementById("canalNuevo");
            var usuario = document.getElementById("usuario");
            var canal = document.getElementById("canal");
            
            //alert(usuario.value);
          //alert(canal.value+" "+usuario.value+" "+" "+message.value+" "+botonEnviar.value);
            //alert(canal.value);
            
            var evtSource = new EventSource(url);
            
                        
            evtSource.onmessage = function(e){
                console.log(e);
                var data = JSON.parse(e.data);
                console.log(data.user);
                var usuarioConectado = data.user;
                console.log(usuarioConectado);
                var contenidoTexto = data.content;
                
                var canalConectado = data.event;
                
                //alert(contenidoTexto);
                contenidoTexto = evaluarCadena(contenidoTexto);
                //document.getElementById("contenedor").innerHTML += "<div class='panel panel-primary'> <div class='panel-heading'>"+ texto01 + "</div> <div class='panel-body'>"+ contenidoTexto + "</div> </div>";
                
                
                if(canal.value == canalConectado){
                        if(activo > 0){
                                document.getElementById("contenedor").innerHTML += ""+
                                        "<div class='panel panel-success'>"+
                                        " <div class='panel-heading'>"+
                                        "   <h3 class='panel-title'>"+ usuarioConectado +"--"+canalConectado+" **** "+canal.value+"</h3>"+
                                        " </div>"+
                                        " <div class='panel-body'>"+
                                        contenidoTexto+
                                        " </div>"+
                                        "</div>";
                        }else{
                            
                                document.getElementById("contenedor").innerHTML += ""+
                                        "<div class='panel panel-danger'>"+
                                        " <div class='panel-heading'>"+
                                        "   <h3 class='panel-title'>"+ usuarioConectado +"--"+canalConectado+" **** "+canal.value+"</h3>"+
                                        " </div>"+
                                        " <div class='panel-body'>"+
                                        contenidoTexto+
                                        " </div>"+
                                        "</div>";
                        }
                }
            };
            
            
            
            botonEnviar.addEventListener('click', function(){
                reiniciarRelojUsuario();
            
                var request = new XMLHttpRequest(); 
                
                request.addEventListener('load', function(){
                    console.log('mensaje enviado');
                });
                
                
                //request.open('POST', 'http://localhost:8080/Ejemplo/chatServlet', true);
                request.open('POST', url, true);
                request.setRequestHeader('Content-type', 'application/x-www-form-urlencoded; charset=UTF-8');
                //request.send("text="+message.value+"&user="+usuario.value+"&event=ping");
                //request.send("canalesExistentes="+canalesExistentes);
                request.send("text="+message.value+"&user="+usuario.value+"&canales="+canal.value+"&event=mensage");
            });
            
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------            
            
            btnUsuario.addEventListener('click', function(){
                activo = 1;
                document.getElementById("botonEnviar").disabled = false;
                reiniciarRelojUsuario();
                
                var request = new XMLHttpRequest(); 
                
                request.addEventListener('load', function(){
                    console.log('mensaje enviado');
                });
                
                
                //request.open('POST', 'http://localhost:8080/Ejemplo/chatServlet', true);
                request.open('POST', url, true);
                request.setRequestHeader('Content-type', 'application/x-www-form-urlencoded; charset=UTF-8');
                //request.send("text="+message.value+"&user="+usuario.value+"&event=ping");
                request.send("canalesExistentes="+canalesExistentes+"&event=registroUusario");
            });
            
            btnCanalNuevo.addEventListener('click', function(){
            
                
            
                var request = new XMLHttpRequest(); 
                
                request.addEventListener('load', function(){
                    console.log('mensaje enviado');
                });
                
                console.log("Enviando");
                //request.open('POST', 'http://localhost:8080/Ejemplo/chatServlet', true);
                request.open('POST', url, true);
                request.setRequestHeader('Content-type', 'application/x-www-form-urlencoded; charset=UTF-8');
                //request.send("text="+message.value+"&user="+usuario.value+"&event=ping");
                request.send("canalNuevo="+canalNuevo.value+"&user="+usuario.value+"&event=crearNuevoCanal");
            });
            

//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
            
            message.addEventListener('change', function(e){
                reiniciarRelojUsuario();
            });
            
            message.addEventListener('keyup', function(e){
                reiniciarRelojUsuario();
            });
            
            
            function asignarCanales(){
                var segundosGeneral = document.getElementById("segundosGeneral");
                var request = new XMLHttpRequest(); 
                
                request.addEventListener('load', function(){
                    console.log('mensaje enviado');
                });
                
                request.open('POST', url, true);
                request.setRequestHeader('Content-type', 'application/x-www-form-urlencoded; charset=UTF-8');
                
                request.send("canalesExistentes="+canalesExistentes);
            }
            
            evtSource.addEventListener('pingReasignarCanal', function(e){
                
            });
            
            evtSource.addEventListener('pingCanal', function(e){
                console.log("Res: "+e.data);
                str=e.data;
                cadenaBusqueda = str;
                
                /*
                var nfinal = str.search("\\}");
                res = cadenaBusqueda.substring(1, nfinal);
                console.log(res);
                *
                */
               
               palabra = "\\}";
                n = cadenaBusqueda.search(palabra);
                document.getElementById("canalesGenerados").innerHTML = ""
            while(n>-1){
                res = cadenaBusqueda.substring(1, n);
                
                console.log(res);
                //res+=" <img src='"+foto+"' alt='"+palabra+"' height='10px' /> ";
                //cadenaFinal += res;
                
                var aa = "123";
                console.log("<div class='list-group-item' id='"+res+"' onclick=\"cambiar('"+res+"')\" >");
                
                document.getElementById("canalesGenerados").innerHTML += "<p></p>"
                +"                                <div class='list-group-item' id='"+res+"' onclick=\"cambiar('"+res+"')\" >"
                +res
                +"                                    <!--<input type='text' id='minutos"+res+"' value='-1' size='1'/>"
                +"                                    <input type='text' id='segundos"+res+"' value='-1' size='1'/>-->"
                +"                                </div>";
                
                
                
                
                
                
                
                
                
                
                
                
                i=n+(palabra.length)-1;
        
                cadenaAux = cadenaBusqueda.substring(i, cadenaBusqueda.length);
                cadenaBusqueda = cadenaAux;
                n = cadenaBusqueda.search(palabra);
            }
        //asignarCanales();
                
        
        /*numero=e.data;
                numero++;
                console.log(numero);
                document.getElementById("segundosGeneral").value = numero;
        
        .focusablear para manejar
          */      
                //botonEnviar.click();
                
                /*str = e.data;
                var ncomienzo = str.search("\\{");
                var nfinal = str.search("\\}");
                
                res = cadenaBusqueda.substring(1, nfinal);
                
                console.log(ncomienzo+" "+nfinal);
                */
            });
            
            
            
        </script>
        
        
        
        
        
    </body>
</html>


