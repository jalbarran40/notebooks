### [Tema 2. Conjuntos](https://agora.uned.es/course/view.php?id=16327&sectionid=232621#)

Hoy en día prácticamente todos los conceptos matemáticos se definen en términos de conjuntos. Las propiedades de los números, las relaciones de orden y de equivalencia o las funciones se formulan en este lenguaje. En este tema los conjuntos se tratan de forma intuitiva, sin entrar en su axiomática formal, y se pone el acento en su estrecha conexión con la lógica del tema anterior.

**2.1. Algunas ideas sobre conjuntos. Predicados.** Un conjunto es una colección de objetos, llamados elementos. Dos conjuntos son iguales cuando tienen exactamente los mismos elementos. Un conjunto B está incluido en A, o es un subconjunto de A, cuando todo elemento de B pertenece a A. La pertenencia y la inclusión pueden visualizarse mediante diagramas de Venn. Un conjunto puede describirse por extensión, enumerando sus elementos, o por comprensión, mediante una propiedad que los caracteriza.

La lógica proposicional no basta para expresar frases como "los números naturales son pares o impares", porque no se refieren a un objeto concreto sino a toda una colección. Para ello se introduce la lógica de predicados. Un predicado P(x) es una expresión que depende de una variable que recorre un conjunto, llamado universo. Al dar a x un valor concreto, el predicado se convierte en una proposición verdadera o falsa. Cada predicado determina el subconjunto de los elementos que lo cumplen, de modo que definir un conjunto por comprensión equivale a dar un predicado. Dos predicados son equivalentes sobre un universo cuando determinan el mismo subconjunto, y a los predicados se les puede aplicar todo el cálculo de proposiciones. El conjunto vacío es el definido por un predicado que nunca se cumple. Hay que distinguirlo de {∅}, que es un conjunto con un único elemento.

En este contexto se presentan de manera informal los axiomas de Peano, que caracterizan los números naturales (aquí se incluye el 0 en N, aunque es una cuestión de convenio). El quinto axioma da lugar al principio de inducción, que sirve para demostrar propiedades de todos los naturales y para dar definiciones recurrentes, como la del factorial. También se habla, de momento de forma intuitiva, de conjuntos finitos e infinitos.

A continuación se introducen los cuantificadores. El cuantificador universal (∀) afirma que todos los elementos del universo cumplen un predicado. El existencial (∃) afirma que al menos uno lo cumple. Pueden verse como generalizaciones de la conjunción y la disyunción, respectivamente. Se estudian las relaciones entre ambos y la negación de predicados cuantificados. Negar que "todos cumplen P" equivale a afirmar que "alguno no cumple P", y ese elemento es precisamente un contraejemplo. Por último se definen el complementario de un subconjunto respecto de un universo y el conjunto de las partes P(A), formado por todos los subconjuntos de A. P(A) nunca es vacío, porque siempre contiene al conjunto vacío.

**2.2. Operaciones con conjuntos.** Se definen la unión y la intersección de dos conjuntos. Ambas son conmutativas y asociativas, cada una es distributiva respecto de la otra, y se relacionan de forma natural con la inclusión. Dos conjuntos son disjuntos si su intersección es vacía. Estas operaciones aparecen constantemente en otras áreas, por ejemplo al estudiar la intersección de planos o al calcular el dominio de definición de una función real. Gracias a la propiedad asociativa, la unión y la intersección se extienden a familias arbitrarias de conjuntos indexadas por un conjunto de índices, como las familias de intervalos encajados. Se estudian también la diferencia de conjuntos, que coincide con la intersección con el complementario, y la diferencia simétrica, formada por los elementos que están en uno de los dos conjuntos pero no en ambos. La técnica central para demostrar igualdades entre conjuntos es la doble inclusión: se prueba que cada conjunto está contenido en el otro.

**2.3. Álgebra de conjuntos.** Trabajando con subconjuntos de un universo U, la unión, la intersección y el complementario cumplen una serie de propiedades: leyes de idempotencia, conmutativas, asociativas, distributivas, de identidad, del complementario y de De Morgan. Cada una se corresponde exactamente con una ley lógica para los predicados que definen los conjuntos: la unión se corresponde con la disyunción, la intersección con la conjunción y el complementario con la negación. Razonar sobre conjuntos o sobre las propiedades que los definen es, en el fondo, lo mismo. Con estas leyes se pueden demostrar igualdades de conjuntos de manera algebraica, sin necesidad de razonar elemento a elemento.

**2.4. Producto de dos conjuntos.** Para expresar propiedades que relacionan dos objetos hace falta un universo formado por parejas. Un par ordenado (a, b) es una pareja en la que el orden importa, y dos pares son iguales solo si coinciden componente a componente. El producto cartesiano A × B es el conjunto de todos los pares (a, b) con a en A y b en B. El ejemplo fundamental son los puntos del plano, vistos como R × R, y los productos admiten una representación gráfica muy útil. Se estudia cómo se comporta el producto con la unión y la intersección. El concepto se generaliza a tres conjuntos, con ternas ordenadas, y a n conjuntos, con n-uplas, como los puntos del espacio tridimensional.

**2.5. Relaciones entre conjuntos.** Una relación lógica es un predicado de dos variables, como "x es menor que y", y el conjunto de pares que la cumplen es su grafo. De ahí surge la definición formal: una relación o correspondencia entre A y B es cualquier subconjunto de A × B. Cuando A = B se habla de una relación en A. Para cada relación se definen la relación inversa, el conjunto original, el conjunto imagen, y la imagen y el original de un elemento concreto. Son ejemplos las relaciones numéricas como "menor o igual", la inclusión entre subconjuntos o curvas del plano vistas como grafos, como la circunferencia. Dos relaciones pueden componerse para obtener una nueva. Por último, en los enunciados con relaciones se usa un cuantificador para cada variable. Cuando los cuantificadores son distintos, cambiar su orden cambia el significado del enunciado, y hay que saber negar correctamente expresiones con varios cuantificadores. Todo esto prepara el tema siguiente, dedicado a las relaciones de equivalencia, las relaciones de orden y las aplicaciones.

**Complementos.** El principio de inducción permite también construir sucesiones recurrentes, como la de Fibonacci o las progresiones aritméticas y geométricas. Tiene además una variante, la inducción completa, en la que para probar el caso n + 1 se supone cierta la propiedad para todos los valores anteriores. Desde el punto de vista histórico, la teoría de conjuntos fue desarrollada por Cantor en el siglo XIX. La noción ingenua de conjunto como "cualquier colección" lleva a contradicciones, como las paradojas de Cantor y de Russell. Por eso se hizo necesario axiomatizar la teoría, y de ahí surgieron sistemas como el de Zermelo-Fraenkel, hoy la base de las matemáticas.

#### Plan de trabajo  

- Se recomiendo seguir (en la medida de lo posible) el siguiente plan de trabajo.
    
    - Sesión 1 (2 h)  
	    - Estudiar: 2.1 Algunas ideas sobre conjuntos. Predicados, primera parte: igualdad e inclusión de conjuntos, conjuntos definidos por extensión y por comprensión, predicados y universo, conjunto vacío, axiomas de Peano e inducción, conjuntos finitos e infinitos, y cuantificadores universal y existencial.  
	    - Ejercicios del texto: 2.6 (inducción).  
	    - Ejercicios propuestos: 1, 2 y 3.
    
    - Sesión 2 (1,5 h)  
	    - Estudiar: 2.1, segunda parte: relaciones entre los cuantificadores, negación de predicados con cuantificadores y contraejemplos (ejemplo 2.10), complementario y conjunto de las partes.  
	    - Ejercicios del texto: 2.13 y 2.14.  
	    - Ejercicios propuestos: 4 y 5.
    
    Sesión 3 (2 h)  
    Estudiar: 2.2 Operaciones con conjuntos: unión, intersección, conjuntos disjuntos, propiedades distributivas, diferencia y diferencia simétrica. Practicar la demostración por doble inclusión.  
    Ejercicios del texto (rehacer sin mirar la solución): 2.18, 2.20 y 2.26.  
    Ejercicios propuestos: 6, 7, 9, 12 y 15.
    
    Sesión 4 (1,5 h)  
    Estudiar: familias de conjuntos (final de 2.2) y 2.3 Álgebra de conjuntos, con el cuadro 2.1 de propiedades y su correspondencia con las leyes lógicas.  
    Ejercicios del texto: 2.24 (intervalos encajados), 2.28 y 2.29.  
    Ejercicios propuestos: 8, 10, 11, 13 y 14.
    
    Sesión 5 (1 h)  
    Estudiar: 2.4 Producto de dos conjuntos: pares ordenados, producto cartesiano y su representación gráfica, ternas y n-uplas.  
    Ejercicios del texto: 2.33.  
    Ejercicios propuestos: 16, 17 y 23.
    
    Sesión 6 (2 h)  
    Estudiar: 2.5 Relaciones entre conjuntos: relaciones lógicas y grafo, relación entre A y B, relación inversa, conjunto original e imagen, composición de relaciones y lógica relacional (orden de los cuantificadores y negación con varios cuantificadores, ejemplos 2.47 y 2.48). Lectura de los Comentarios del capítulo (inducción completa, sucesiones recurrentes, historia de la teoría de conjuntos y paradojas).  
    Ejercicios propuestos: 18, 19, 20, 21, 22 y 24.
    
     **El tiempo previsto para estudiar este tema es de 10 horas.**