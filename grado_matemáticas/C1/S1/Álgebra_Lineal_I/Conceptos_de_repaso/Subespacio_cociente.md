El concepto de **espacio vectorial cociente** es, como bien indica la bibliografía de la asignatura, uno de los más abstractos pero a la vez más potentes del Álgebra Lineal, ya que permite "simplificar" un espacio eliminando la información contenida en uno de sus subespacios.

A continuación, te explico qué es y cómo se opera con él siguiendo la metodología de la UNED.

### 1. ¿Qué es un espacio vectorial cociente (\(V/U\))?

Sea \(V\) un espacio vectorial y \(U\) un subespacio de \(V\). El espacio cociente \(V/U\) se construye a partir de una **relación de equivalencia** definida en \(V\):

- **Definición de la relación:** Decimos que dos vectores \(v, w \in V\) están relacionados (denotado \(v \sim w\)) si su diferencia pertenece al subespacio \(U\). Es decir: \(v \sim w \iff v - w \in U\).
- **Clase de equivalencia (\([v]\)):** Cada elemento del espacio cociente es una clase, que visualmente es una **variedad afín**. Representa al vector \(v\) "más cualquier cosa que esté en \(U\)": \([v] = v + U = {v + u \mid u \in U}\).
- **Significado geométrico:** Por ejemplo, si \(V\) es el plano \(\mathbb{R}^2\) y \(U\) es una recta que pasa por el origen, los elementos de \(V/U\) son todas las **rectas paralelas** a \(U\).

En este nuevo espacio, el **vector nulo** no es el cero de \(V\), sino el propio subespacio \(U\) (es decir, \( = 0 + U = U\)).

### 2. Estructura y Dimensión

El conjunto \(V/U\) tiene estructura de espacio vectorial con las operaciones heredadas de \(V\):

- Suma: \([v] + [w] = [v + w]\).
- Producto por escalar: \(\lambda[v] = [\lambda v]\).

**La Regla de Oro (Dimensión):** Si \(V\) es de dimensión finita, la dimensión del cociente es la diferencia de dimensiones (también llamada **codimensión** de \(U\) en \(V\)): \[\dim(V/U) = \dim(V) - \dim(U)\]

### 3. ¿Cómo se calcula una base del cociente?

Para calcular una base de \(V/U\), el procedimiento práctico es el siguiente:

1. **Hallar una base de \(U\):** Supongamos que es \({u_1, \dots, u_k}\).
2. **Completar la base:** Aplicamos el **Teorema de ampliación de la base** para encontrar vectores \({v_{k+1}, \dots, v_n}\) tales que el conjunto total \({u_1, \dots, u_k, v_{k+1}, \dots, v_n}\) sea una base de \(V\).
3. **Identificar la base del cociente:** La base de \(V/U\) estará formada exactamente por las **clases de los vectores añadidos**: \[\mathcal{B}_{V/U} = {[v_{k+1}], \dots, [v_n]}\].

### 4. Ejemplo Práctico de Cálculo de Coordenadas

Si tenemos un vector \(x \in V\) y queremos saber sus coordenadas en la base del cociente:

1. Expresas \(x\) en la base completa de \(V\): \(x = (\alpha_1 u_1 + \dots + \alpha_k u_k) + (\beta_{k+1} v_{k+1} + \dots + \beta_n v_n)\).
2. Como los términos en \(u_i\) pertenecen a \(U\), desaparecen al tomar clases (se convierten en el "cero" del cociente).
3. El resultado es: \([x] = \beta_{k+1} [v_{k+1}] + \dots + \beta_n [v_n]\).
4. Por tanto, las coordenadas de la clase en el cociente son simplemente los coeficientes de los vectores que **no** pertenecen a \(U\).

¿Te gustaría que aplicáramos este proceso paso a paso con un subespacio concreto de \(\mathbb{R}^4\) para ver cómo se hace el escalonamiento y la ampliación de base?.