# Proyecto de Segundo Parcial

#Descripción del Proyecto
- Programa de chat que permite a un usuario comunicarse con dos o mas usuarios que estén conectados a un canal siempre y cuando este usuario este también conectado al canal.
- El programa permite a los usuarios conectarse, ver los canales disponibles y conversar con texto y emoticones

#Descripción de Funcionalidades
- Conectarse : El Usuario se Conecta o  reconecta(El boton para enviar mensages no funcionara asi que debe dar click en conectar de nuevo esto ocurre cuando pasan mas de 5 minutos sin hacer nada referente a mensages) y sele muestran todos los canales disponibles.
- Tiempo Inactivo : Es un reloj que le dice al usuario cuanto tiempo lleva sin editar su texto de mensage o cuanto lleva sin enviar mensage
- Crear canal : Crea un nuevo canal para que los usuarios se conecten y envien sus mensages.
- Asignación Canal : Al dar clic en el canal se cambiara una variable que cambie el nombre del canal en donde estamos conectados.
- Enviar Mensage: se envia una cadena de texto y se publica en nuestra conversación dependiendo del canal seran los usuarios que lo puedan ver.
- Publicacion: publica un mensage enviado por un usuario.
- bloqueo de mensages : si el tiempo en el reloj excede o 5 minutos se bloquea el boton de envio de mensage entonces debe conectarse otra vez.
- Agregar Emoticones: se agregan emoticones pulsaldo click en la imagen o agregandola directamente en el texto ("Ejemplo sasd:)"). 

#Manual de Usuario (Como Usar El Chat)
- 1) En la Seccion Usuario Agregar Nombre de Usuario y Dar click en conectar.
- 2) Mostrara los canales existentes.
- 3) Tiempo Inactivo Mostrara el tiempo que se lleva sin envir mensages o sin escribir en la seccion de Escriba.
- 4) En Conversacion tendremos el nombre del canal al que estamos conectados.
- 5) En la seccion de Escriba Escribiremos nuestro mensage y daremos click en el boton enviar.
- 6) En caso de querer crear un nuevo canal iremos  a la seccion de canales y escribiremos el nombre del nuevo canal para finalizar damos click en el boton "+" y listo.
- 7) Si queremos cambiar de canal solo damos click en el nombre del canal que queramos.
- 8) Si pasan mas de 5 minutos nuestra coneccion se perdio por lo que no podremos enviar mensages entonces debemos conectarnos otravez.

#Manual de Instalación
- Contar con ApacheTomcat, jdk en la maquina y que este configurado para ejecutarse en nuestra direccion localhost:8080 o alguna otra.
- En la carpeta de ApacheTomcat/webapps
- Agregar el archivo [nombre].war
- Ir a consola 
- Entrar al diractorio ApacheTomcat/bin por consola
- Para iniciar nuestro servicio ejecutar startup.bat en consola
- Ir a nuestro navegador y agregar nuestra ruta 

#Stack
- JavaScript
- Java (Servlets)
- HTML


