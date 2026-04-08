

### Sesión 1: Introducción al Lenguaje Matricial

#### 1. ¿Qué es una matriz?

Una matriz de tamaño $m \times n$ es una tabla rectangular compuesta por $m \cdot n$ números (escalares de un cuerpo $\mathbb{K}$, generalmente $\mathbb{R}$ o $\mathbb{C}$), organizados en $m$ filas y $n$ columnas.

Para referirnos a un elemento específico, usamos la notación $a_{ij}$, donde el primer índice $i$ indica la fila y el segundo índice $j$ indica la columna donde se encuentra el número. Por ejemplo, en una matriz de tamaño $3 \times 4$, el elemento $a_{23}$ es el que está en la segunda fila y la tercera columna.

#### 2. Clasificación según su forma y elementos

Es fundamental que domines estos nombres, ya que los usaremos constantemente:

- **Matriz Cuadrada:** Tiene el mismo número de filas que de columnas ($m = n$).
- **Matriz Fila y Matriz Columna:** Son matrices que tienen una sola fila ($1 \times n$) o una sola columna ($m \times 1$), respectivamente.
- **Matriz Nula:** Es aquella donde todos sus elementos son cero.
- **Matriz Identidad ($I_n$):** Es una matriz cuadrada con unos en su diagonal principal y ceros en el resto.
- **Matrices Triangulares:** Una matriz es **triangular superior** si todos los elementos por debajo de la diagonal principal son cero, y **triangular inferior** si ocurre lo contrario (ceros por encima).
- **Traza de una matriz:** Es la suma de los elementos de la diagonal principal de una matriz cuadrada.

#### 3. Simetría y Trasposición

La **matriz traspuesta** de $A$ (denotada como $A^t$) se obtiene intercambiando sus filas por sus columnas. A partir de esto, definimos:

- **Matriz Simétrica:** Si coincide con su traspuesta ($A = A^t$).
- **Matriz Antisimétrica:** Si su traspuesta es igual a la matriz original cambiada de signo ($A^t = -A$).

#### 4. Operaciones Básicas: Suma y Producto por Escalar

- **Suma ($A + B$):** Solo puedes sumar matrices que tengan exactamente el mismo tamaño. Se suman los elementos que ocupan la misma posición: $(a_{ij} + b_{ij})$.
- **Producto por un Escalar ($\lambda A$):** Se multiplica cada elemento de la matriz por el número real o complejo $\lambda$.

**Propiedades importantes:** Estas operaciones cumplen leyes que te resultarán familiares de la aritmética común, como la **asociativa**, la **conmutativa** (solo para la suma) y la **distributiva** del escalar respecto a la suma de matrices.

---

### Ejercicios
- Como apoyo analítico, puedes usar **WolframAlpha** para generar matrices aleatorias y practicar la identificación de sus tipos o para calcular trazas rápidamente.

- ¿Te ha quedado clara la diferencia entre una matriz simétrica y una antisimétrica, o prefieres que veamos un ejemplo numérico de cada una?

### Material de apoyo
- [Presentación](Sesión01_Introducción_al_Lenguaje_Matricial.pptx)
- [Audio](Sesión01_Introducción_al_Lenguaje_Matricial.m4a)