### Sesión 2: El Principio de Inducción Matemática (45 minutos)

#### 1\. Del Axioma a la Herramienta (5 minutos)

En la Sesión 1 vimos el tercer Axioma de Peano. Hoy lo aplicaremos como el **Principio de Inducción Matemática (PIM)**. Este principio establece que si una propiedad $P(n)$ se cumple para el 1 y, suponiendo que se cumple para un número $n$, logramos demostrar que se cumple para su siguiente $s(n)$, entonces se cumple para todo $\mathbb{N}$.

#### 2\. Los dos pasos fundamentales (10 minutos)

Para realizar una demostración por inducción, debemos seguir este esquema rígido pero efectivo 4, 5:

* **Paso 1 (Base de Inducción):** Comprobar que $P(1)$ es cierta. Es "empujar la primera ficha del dominó" 6, 7\.  
* **Paso 2 (Paso Inductivo):** Suponer que la propiedad es cierta para un número natural $n$ (esto se llama **Hipótesis de Inducción**) y, a partir de ahí, demostrar que $P(n+1)$ también es cierta 5, 8\.

#### 3\. Práctica: Suma de los primeros $n$ cuadrados (20 minutos)

Vamos a demostrar la famosa fórmula 2, 9:$$1^2 + 2^2 + 3^2 + \dots + n^2 = \frac{n(n+1)(2n+1)}{6}$$

* **Base ($n=1$):** $1^2 = \frac{1(1+1)(2(1)+1)}{6} \Rightarrow 1 = \frac{6}{6} = 1$. ¡Cierto! .  
* **Hipótesis:** Asumimos que la fórmula vale para $n$.  
* **Demostración para $n+1$:** Debemos probar que sumando $(n+1)^2$ al lado izquierdo, obtenemos la fórmula evaluada en $n+1$.  
* Sumamos: $\frac{n(n+1)(2n+1)}{6} + (n+1)^2$.  
* Factorizamos $(n+1)$ y operamos: $\frac{(n+1)}{6} n(2n+1) + 6(n+1) = \frac{(n+1)(2n^2 + 7n + 6)}{6}$.  
* Esto equivale a $\frac{(n+1)(n+2)(2n+3)}{6}$, que es exactamente la fórmula para $n+1$.

#### 4\. Reflexión y Errores Comunes (10 minutos)

Un error típico es intentar demostrar $P(n+1)$ sin usar la Hipótesis de Inducción. Recuerda: la inducción es como una cadena; si no conectas el eslabón $n$ con el $n+1$, la cadena se rompe. También es vital no olvidar la base ($n=1$), pues podrías intentar demostrar algo que es "lógicamente consistente" pero falso para todos los números.

### Recursos de apoyo generados:

* **Presentación de soporte:** He creado un conjunto de diapositivas que esquematizan los pasos de la inducción y el ejemplo de la suma de cuadrados para que visualices mejor el proceso algebraico.  
* **Resumen de audio (Podcast):** He generado una conversación entre dos expertos que discuten la lógica del "dominó" y por qué la hipótesis de inducción no es un razonamiento circular, sino una implicación lógica fundamental.



