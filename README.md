# Proyecto de Segundo Parcial

#Descripción del Proyecto
- Programa de chat que permite a un usuario comunicarse con dos o más usuarios que estén conectados a un canal siempre y cuando este usuario este también conectado al canal.
- El programa permite a los usuarios conectarse, ver los canales disponibles y conversar con texto y emoticones

#Descripción de Funcionalidades
- Conectarse : El Usuario se Conecta o  reconecta(El botón para enviar mensajes no funcionara así que debe dar clic en conectar de nuevo esto ocurre cuando pasan más de 5 minutos sin hacer nada referente a mensajes) y sele muestran todos los canales disponibles.
- Tiempo Inactivo: Es un reloj que le dice al usuario cuánto tiempo lleva sin editar su texto de mensaje o cuanto lleva sin enviar mensaje
- Crear canal: Crea un nuevo canal para que los usuarios se conecten y envíen sus mensajes.
- Asignación Canal: Al dar clic en el canal se cambiara una variable que cambie el nombre del canal en donde estamos conectados.
- Enviar Mensaje: se envía una cadena de texto y se publica en nuestra conversación dependiendo del canal serán los usuarios que lo puedan ver.
- Publicación: publica un mensaje enviado por un usuario.
- bloqueo de mensajes: si el tiempo en el reloj excede o 5 minutos se bloquea el botón de envió de mensaje entonces debe conectarse otra vez.
- Agregar Emoticones: se agregan emoticones pulsando clic en la imagen o agregándola directamente en el texto ("Ejemplo sasd:)"). 

#Manual de Usuario (Como Usar El Chat)
- 1) En la Sección Usuario Agregar Nombre de Usuario y Dar clic en conectar.
- 2) Mostrara los canales existentes.
- 3) Tiempo Inactivo Mostrara el tiempo que se lleva sin enviar mensajes o sin escribir en la sección de Escriba.
- 4) En Conversación tendremos el nombre del canal al que estamos conectados.
- 5) En la sección de Escriba Escribiremos nuestro mensaje y daremos clic en el botón enviar ("Hola", "Hola:)" <- envía un emoticón). También se pueden agregar emoticones dando clic en las imágenes mostradas en esa sección. 
- 6) En caso de querer crear un nuevo canal iremos  a la sección de canales y escribiremos el nombre del nuevo canal para finalizar damos clic en el botón "+" y listo.
- 7) Si queremos cambiar de canal solo damos clic en el nombre del canal que queramos.
- 8) Si pasan más de 5 minutos nuestra conexión se perdió por lo que no podremos enviar mensajes entonces debemos conectarnos otra vez.

#Manual de Instalación
- Contar con ApacheTomcat, jdk en la maquina y que este configurado para ejecutarse en nuestra dirección localhost:8080 o alguna otra.
- En la carpeta de ApacheTomcat/webapps
- Agregar el archivo [nombre].war
- Ir a consola 
- Entrar al diractorio ApacheTomcat/bin por consola
- Para iniciar nuestro servicio ejecutar startup.bat en consola
- Ir a nuestro navegador y agregar nuestra ruta 

-Otra Forma es Tener El NetBeans con todo Instalado y ejecutar nuestro Proyecto En El programa.
#Stack
- JavaScript
- Java (Servlets)
- HTML


