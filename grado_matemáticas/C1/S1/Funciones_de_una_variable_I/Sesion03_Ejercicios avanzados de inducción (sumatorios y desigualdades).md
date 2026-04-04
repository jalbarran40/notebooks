### Sesión 3: Inducción Avanzada (45 minutos)

#### 1\. Calentamiento: Divisibilidad (10 minutos)

La inducción no solo sirve para sumas, sino también para propiedades de divisibilidad.

**Problema:** Demuestra que $3^n - 1$ es divisible por 2 para todo $n \in \mathbb{N}$.

* **Base ($n=1$):** $3^1 - 1 = 2$, que es divisible por 2.  
* **Paso Inductivo:** Suponemos que $3^n - 1 = 2k$ (Hipótesis).  
* **Para $n+1$:** $3^{n+1} - 1 = 3 \cdot 3^n - 1$.  
* Truco algebraico: Escribimos $3$ como $(2+1)$.  
* $(2+1)3^n - 1 = 2 \cdot 3^n + (3^n - 1)$.  
* Por hipótesis, $3^n - 1$ es $2k$, así que tenemos $2 \cdot 3^n + 2k = 2(3^n + k)$. ¡Es divisible por 2!

#### 2\. Sumatorios con Potencias (15 minutos)

Vamos a trabajar con progresiones geométricas, que aparecerán mucho en el Bloque 3 de Series.

**Problema:** Demuestra que $1 + 2 + 2^2 + \dots + 2^{n-1} = 2^n - 1$.

* **Base ($n=1$):** $2^0 = 2^1 - 1 \Rightarrow 1 = 1$.  
* **Paso Inductivo:** Suponemos la igualdad para $n$.  
* **Para $n+1$:** Sumamos el siguiente término, $2^n$, a ambos lados:  
* $(2^n - 1) + 2^n = 2 \cdot 2^n - 1 = 2^{n+1} - 1$.  
* La igualdad se mantiene. Esto confirma que la suma de una progresión geométrica de razón 2 sigue este patrón.

#### 3. Desigualdades: El reto mayor (15 minutos)

Las desigualdades suelen ser más difíciles porque requieren "acotar" expresiones.

**Problema:** Demuestra que $2^n > n$ para todo $n \in \mathbb{N}$.

* **Base ($n=1$):** $2^1 \> 1$. Cierto.  
* **Paso Inductivo:** Suponemos $2^n > n$.  
* **Para $n+1$:** Queremos ver si $2^{n+1} > n+1$.  
* $2^{n+1} = 2 \cdot 2^n$.  
* Por hipótesis: $2 \cdot 2^n > 2n$.  
* Sabemos que para $n \geq 1$, $2n = n + n \geq n + 1$.  
* Por transitividad: $2^{n+1} > n+1$.

#### 4. Cierre: Estrategias de examen (5 minutos)

Como habrás notado en el libro de Javier Pérez, "trabajar hacia atrás" (analizar qué necesitas obtener en el paso $n+1$) ayuda a ver qué truco algebraico aplicar. En los exámenes de la UNED, es común que te pidan identificar el paso erróneo en una demostración inductiva, así que fíjate bien en cómo se usa la hipótesis.

**Sugerencia del Tutor:** Para practicar, intenta resolver por tu cuenta el Ejercicio de Autocomprobación 9 de Fernández Novoa: demuestra que $9^{n+1} - 8n + 55$ es múltiplo de 64. Es un reto excelente para cerrar este tema.
 
