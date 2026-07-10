En esta sesión teórica nos centraremos en la operación más importante del álgebra matricial: el producto de matrices, sus leyes algebraicas y el concepto de matriz transpuesta.

---
### Sesión 2: Producto de Matrices y Transposición

#### 1. El Producto de Matrices

A diferencia de la suma, el producto de matrices no se realiza elemento a elemento y tiene restricciones de tamaño estrictas. Para que el producto $AB$ tenga sentido, el número de **columnas de la primera matriz (A)** debe coincidir con el número de **filas de la segunda (B)**.

- **Definición:** Si $A$ es de tamaño $m \times p$ y $B$ es de $p \times n$, la matriz resultante $C = AB$ tendrá tamaño $m \times n$.
- **Cálculo:** El elemento $c_{ij}$ que ocupa la fila $i$ y la columna $j$ del resultado se obtiene multiplicando la fila $i$ de $A$ por la columna $j$ de $B$ y sumando los productos resultantes.
- **Interpretación:** El producto $AB$ también puede verse como una combinación lineal de las columnas de $A$ con coeficientes dados por las columnas de $B$.

#### 2. Propiedades Algebraicas

El producto de matrices cumple leyes similares a la aritmética común, pero con excepciones críticas:

- **Asociativa:** $(AB)C = A(BC)$.
- **Distributiva:** El producto es distributivo respecto a la suma, tanto por la izquierda como por la derecha.
- **Elemento Neutro:** La matriz identidad $I$ actúa como el número 1; es decir, $AI = A$ e $IA = A$.

#### 3. ¡Cuidado! Diferencias con la aritmética escalar

Como futuro matemático de la UNED, debes tener muy presentes estos dos fenómenos que no ocurren con los números reales:

1. **Falta de Conmutatividad:** En general, $AB \neq BA$. El orden de los factores altera el producto radicalmente.
2. **Divisores de Cero:** Es posible que el producto de dos matrices no nulas sea igual a la matriz nula ($AB = 0$ con $A, B \neq 0$).

#### 4. La Matriz Transpuesta

La **matriz transpuesta** de $A$ (denotada como $A^t$) es aquella que resulta de intercambiar sus filas por sus columnas.

- **Propiedad fundamental del producto:** $(AB)^t = B^t A^t$. Nota cómo el orden de las matrices se invierte al transponer un producto.
- **Otras propiedades:** $(A^t)^t = A$ y $(\lambda A)^t = \lambda A^t$.

---

### Apoyo Analítico con WolframAlpha

Para practicar el producto y verificar las propiedades, puedes usar estos comandos:

- **Producto:** `{{1, 2}, {3, 4}} . {{5, 6}, {7, 8}}` (usa el punto `.` para multiplicar).
- **Transpuesta:** `transpose {{1, 2, 3}, {4, 5, 6}}`.
- **Verificar conmutatividad:** Prueba a calcular `A.B - B.A` para dos matrices aleatorias y verás que rara vez da cero.

¿Deseas que pasemos a realizar algunos ejercicios prácticos del libro de **Beatriz Estrada** para consolidar el cálculo del producto?

He preparado los materiales adicionales para esta **Sesión 2**:

1. [**Resumen en Audio (Podcast):**](Sesión02_Producto_de_Matrices_y_Transposición.m4a) He generado un "Deep Dive" en formato de conversación donde se analizan en detalle las particularidades del producto de matrices, haciendo especial énfasis en por qué no es conmutativo y qué significa realmente que existan divisores de cero.
2. [**Presentación (Slide Deck):**](Sesión02_Producto_de_Matrices_y_Transposición.pptx) He creado una guía visual que resume los requisitos de tamaño para el producto, las leyes algebraicas y las propiedades de la matriz transpuesta.

Como hemos cubierto la base teórica del producto y la transposición, **¿te gustaría realizar ahora algunos ejercicios de cálculo de Beatriz Estrada para dominar la técnica antes de pasar a la siguiente sesión?**![[Sesión02_Producto_de_Matrices_y_Transposición.m4a]]