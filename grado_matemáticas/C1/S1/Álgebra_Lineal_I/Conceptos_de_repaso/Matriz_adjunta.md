Como tu tutor de **Álgebra Lineal I**, es un placer refrescarte este concepto, ya que la **matriz adjunta** es una pieza clave para el cálculo de la matriz inversa y tiene propiedades teóricas muy importantes en el Bloque 1 [guía de estudio].

Basándome en la bibliografía principal (Borobia y Estrada), aquí tienes la explicación detallada:

### 1. Definición de la Matriz Adjunta

Dada una matriz cuadrada $A$ de orden $n$, su **matriz adjunta**, denotada como $Adj(A)$, es aquella que se obtiene al sustituir cada elemento $a_{ij}$ de la matriz original por su correspondiente **adjunto** (o cofactor) $\alpha_{ij}$.

Formalmente: $Adj(A) = (\alpha_{ij})$.

### 2. ¿Qué es el "Adjunto" ($\alpha_{ij}$)?

Para calcular cada entrada de la matriz adjunta, debes hallar el adjunto del elemento que ocupa esa posición. El adjunto $\alpha_{ij}$ se define como: $$\alpha_{ij} = (-1)^{i+j} \det(A_{ij})$$ Donde:

- $A_{ij}$ es la **submatriz** que resulta de eliminar la fila $i$ y la columna $j$ de la matriz original $A$.
- El término $(-1)^{i+j}$ determina el **signo** (será positivo si la suma de la fila y columna es par, y negativo si es impar).

### 3. Utilidad: El cálculo de la Matriz Inversa

La aplicación más común de la matriz adjunta en tus exámenes de la UNED será el cálculo de la inversa mediante la fórmula: $$A^{-1} = \frac{1}{\det(A)} Adj(A)^t$$ Es **vital** que recuerdes que en esta fórmula se utiliza la **traspuesta** de la matriz adjunta.

_Nota terminológica:_ Algunos autores (como José Fernando o Juan de Burgos) definen directamente la "matriz adjunta" como la traspuesta de la matriz de cofactores. Sin embargo, siguiendo a Borobia y Estrada, primero calculamos la matriz de adjuntos y luego la trasponemos para hallar la inversa.

### 4. Propiedad Fundamental

Una propiedad que suele aparecer en preguntas de autoevaluación es que el producto de una matriz por la traspuesta de su adjunta siempre da como resultado la matriz identidad multiplicada por el determinante: $$A \cdot Adj(A)^t = \det(A) \cdot I_n$$.

**Consejo del tutor:** Si estás trabajando con una matriz de orden 2, hay un truco rápido: para hallar $Adj(A)^t$, simplemente intercambia los elementos de la diagonal principal y cambia el signo de los de la diagonal secundaria. Para matrices de orden 3 o superior, te recomiendo usar el método de **Gauss-Jordan** que vimos en la **Sesión 7**, ya que calcular 9 o 16 adjuntos manualmente es muy propenso a errores de cálculo.
