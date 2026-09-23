El objetivo de la práctica: Instalar las herramientas que se ocuparan durante el semestre (Haskell, Git). Además crear un repositorio en GitHub, donde almacenaremos nuestras prácticas y el proyecto 

El tiempo requerido para realizar la práctica: En mi caso fue de alrededor de una hora y media

Problemas en la instalación con la solución que empleé:
Tras ingresar el comando de instalación de GHCup en la terminal , al final del proceso me salieron mensajes de error y la instalación no pudo concretarse. Busqué en la salida a qué se podía atribuir el error. Encontré que GHCup necesita el compilador g++ para poder configurar GHC. Por lo que realice la respectiva instalación y posteriormente volví a intentar instalar GHCup.

Esta vez la instalación salió bien, pero al escribir ghc –version, la terminal me arrojó “instrucción no encontrada”. Volví a intentar el comando después de haber cerrado la sesión de la terminal y en esta ocasión me arrojó “The Glorious Glasgow Haskell Compilation System, version 9.10.3”, por lo que la instalación salió correctamente.
