1. ¿Cuáles son las principales diferencias entre Haskell y Rust?

R= Haskell es un lenguaje de programación puramente funcional, es mucho más preciso, exacto y específico que la mayoría de lenguajes de programación.  Mientras que Rust es un lenguaje de programación multiparadigma.

Una diferencia importante entre Haskell y Rust es la ejecución de los programas. Cuando se ejecuta un programa en Haskell, el runtime gestiona la memoria y administra la concurrencia creando “green threads”, por lo que el programa gasta mayores recursos. Mientras tanto Rust, no tiene nada que administre la memoria ni las tareas, por lo que consume menos recursos y tiene una mayor velocidad. Para tareas de alta concurrencia depende de librerías externas (como Tokio).


2. ¿Por qué Haskell no ha alcanzado una adopción significativa en la industria del software?

R= Principalmente a su curva de aprendizaje, que tiene una mayor dificultad. Haskell está basada en la programación funcional y en la evaluación perezosa (aplaza los cálculos hasta que son necesarios), está característica va en contra de otros lenguajes de programación, por lo que puede ser más difícil de aprender para los programadores. 

Otra razón importante son las actualizaciones del compilador, ya que pueden cambiar la sintaxis y el comportamiento del lenguaje. Por lo que el código existente puede ya no ser compatible con las nuevas versiones que surjan del compilador, por lo que hay que modificarlo para que pueda volver a funcionar en la nueva actualización.

3. Si tuvieras que explicarle a una persona que no es de CC la función que cumple Git frente a la de GitHub, ¿cómo se lo explicarías?

R= Git nos sirve para poder guardar cada cambio que le hacemos a  nuestro proyecto, es como el historial de Word o Google Docs, solo que sin la necesidad de crear una copia por cada cambio que le hacemos a nuestro proyecto; si me equivoqué, puedo regresar a una versión anterior en cualquier momento. Funciona desde mi computadora y no necesito de internet para poder usarlo. 

En cambio GitHub, es como Google Drive, puedo subir a la nube mis proyectos hechos en git  y mantenerlos a salvo de cualquier pérdida, o para compartirlo con otras personas.


Referencias: 

Installation - GHCup. (n.d.). Haskell.org. Retrieved September 23, 2026, from https://www.haskell.org/ghcup/install/

Haskell and Rust. (n.d.). FP Complete. Retrieved September 23, 2026, from https://academy.fpblock.com/blog/2018/11/haskell-and-rust/

Brutti, F. (2023, August 29). Haskell: descubre el lenguaje de programación funcional del momento. Thepower.education. https://thepower.education/blog/tech/haskell-lenguaje-de-programacion

Rust, el lenguaje de programación de Mozilla. (2020, September 16). ionos Digital Guide. https://www.ionos.mx/digitalguide/paginas-web/desarrollo-web/rust-lenguaje-de-programacion/

¿Qué es Haskell? Todo sobre el lenguaje de programación. (2020, October 9). ionos Digital Guide. https://www.ionos.mx/digitalguide/paginas-web/desarrollo-web/que-es-haskell/

