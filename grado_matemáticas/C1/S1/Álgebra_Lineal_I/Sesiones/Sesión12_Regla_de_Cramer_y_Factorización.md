# Sesión 12: Regla de Cramer y Factorización LU

#### 1. La Regla de Cramer

##### A. Definición de Sistema Regular o de Cramer

Un sistema de ecuaciones lineales $AX = B$ con $n$ ecuaciones y $n$ incógnitas se denomina **sistema regular** o **sistema de Cramer** si la matriz de coeficientes $A \in M_n(\mathbb{K})$ es **regular** o **invertible**, es decir, si:

$\det(A) \neq 0 \quad (\text{o equivalentemente, } \operatorname{rg}(A) = n)$

Por el Teorema de Rouché-Frobenius, todo sistema de Cramer es **compatible determinado** y posee una **única solución**.

##### B. Teorema y Deducción de la Regla de Cramer

Dada la matriz de coeficientes $A$ con $\det(A) \neq 0$, el sistema $AX = B$ admite una única solución vectorial expresada por $X = A^{-1}B$. Recordando la fórmula de la matriz inversa mediante la adjunta:

$A^{-1} = \frac{1}{\det(A)} \operatorname{Adj}(A)^t$

Multiplicando por la columna de términos independientes $B = (b_1, b_2, \dots, b_n)^t$, la componente $j$-ésima $x_j$ de la solución viene dada por:

$x_j = \frac{1}{\det(A)} \sum_{i=1}^n A_{ij} b_i = \frac{\det(A_j)}{\det(A)}, \quad j = 1, 2, \dots, n$

donde $A_j$ representa la matriz resultante de **sustituir la columna $j$-ésima de $A$ por el vector columna $B$**.

##### C. Aplicación a Sistemas Compatibles Indeterminados

Si un sistema general $m \times n$ cumple $\operatorname{rg}(A) = \operatorname{rg}(A|B) = r < n$, se identifica un **menor básico** de orden $r$ no nulo en $A$. Prescindiendo de las $m - r$ ecuaciones no principales y pasando las $n - r$ incógnitas secundarias al miembro derecho tratándolas como **parámetros**, el sistema de $r$ ecuaciones con $r$ incógnitas principales se convierte en un sistema de Cramer y se resuelve aplicando la regla de Cramer en función de dichos parámetros.

---

#### 2. La Factorización LU

##### A. Motivación Computacional

En problemas aplicados de ingeniería y simulación es muy frecuente tener que resolver un sistema $AX = B$ donde la matriz $A \in M_n(\mathbb{K})$ permanece fija, pero la columna de términos independientes $B$ cambia constantemente ($B_1, B_2, \dots$).

Aplicar la eliminación de Gauss completa sobre la matriz ampliada $(A|B)$ requiere aproximadamente $\frac{2}{3}n^3$ operaciones elementales cada vez. La **factorización LU** permite descomponer $A$ una sola vez con un coste $O(n^3)$, y resolver posteriormente el sistema para cualquier vector $B$ en solo $O(n^2)$ operaciones mediante la resolución de dos sistemas triangulares sencillos.

##### B. Definición Teórica

Si una matriz $A \in M_n(\mathbb{K})$ se puede transformar en una matriz escalonada $U$ mediante operaciones elementales de fila **sin realizar intercambios de filas**, entonces $A$ admite la descomposición:

$A = LU$

donde:

- **$L$ (Lower):** Matriz **triangular inferior** regular con unos en su diagonal principal (matriz unitriangular inferior). Sus entradas por debajo de la diagonal corresponden a los multiplicadores $m_{ij}$ empleados en el algoritmo de Gauss.
- **$U$ (Upper):** Matriz **triangular superior** correspondiente a la forma escalonada resultante del proceso de Gauss.

If se requieren intercambios de filas durante el proceso de escalonamiento de Gauss, se utiliza una matriz de permutación $P$, obteniéndose la expresión general:

$PA = LU$

##### C. Algoritmo de Resolución en Dos Pasos

Para resolver $AX = B$ mediante $A = LU$:

1. **Paso 1 (Sustitución Progresiva / Hacia adelante):** Se resuelve el sistema triangular inferior $LY = B$ (o $LY = PB$ si existe permutación) despejando $y_1, y_2, \dots, y_n$ progresivamente de arriba a abajo.
2. **Paso 2 (Sustitución Regresiva / Hacia atrás):** Se resuelve el sistema triangular superior $UX = Y$ despejando $x_n, x_{n-1}, \dots, x_1$ de abajo a arriba. La solución $X$ obtenida es la solución exacta del sistema original $AX = B$.

---

#### 3. Ejemplo Práctico Resuelto

Resolver el siguiente sistema de ecuaciones lineales utilizando la **factorización LU**:

$\begin{cases} x_1 - 3x_2 + x_3 = 0 \ 3x_1 - 8x_2 + 5x_3 = 3 \ x_1 - 5x_2 - 2x_3 = -5 \end{cases}$

##### Paso 1: Obtención de las matrices $L$ y $U$ mediante Gauss

Escribimos la matriz de coeficientes $A$ y aplicamos operaciones de fila ($L_2 - 3L_1 \to L_2$ y $L_3 - L_1 \to L_3$):

$A = \begin{pmatrix} 1 & -3 & 1 \ 3 & -8 & 5 \ 1 & -5 & -2 \end{pmatrix} \xrightarrow[L_3 - 1L_1]{L_2 - 3L_1} \begin{pmatrix} 1 & -3 & 1 \ 0 & 1 & 2 \ 0 & -2 & -3 \end{pmatrix}$

Guardamos los multiplicadores empleando $l_{21} = 3$ y $l_{31} = 1$. A continuación realizamos $L_3 - (-2)L_2 \to L_3$:

$\begin{pmatrix} 1 & -3 & 1 \ 0 & 1 & 2 \ 0 & 0 & 1 \end{pmatrix} = U$

Guardamos $l_{32} = -2$. Construimos $L$ con unos en la diagonal y los multiplicadores anotados:

$L = \begin{pmatrix} 1 & 0 & 0 \ 3 & 1 & 0 \ 1 & -2 & 1 \end{pmatrix}, \quad U = \begin{pmatrix} 1 & -3 & 1 \ 0 & 1 & 2 \ 0 & 0 & 1 \end{pmatrix}$

##### Paso 2: Paso 1 de resolución — Sustitución Progresiva ($LY = B$)

$\begin{pmatrix} 1 & 0 & 0 \ 3 & 1 & 0 \ 1 & -2 & 1 \end{pmatrix} \begin{pmatrix} y_1 \ y_2 \ y_3 \end{pmatrix} = \begin{pmatrix} 0 \ 3 \ -5 \end{pmatrix} \implies \begin{cases} y_1 = 0 \ 3(0) + y_2 = 3 \implies y_2 = 3 \ 0 - 2(3) + y_3 = -5 \implies y_3 = 1 \end{cases}$

Por tanto, $Y = (0, 3, 1)^t$.

##### Paso 3: Paso 2 de resolución — Sustitución Regresiva ($UX = Y$)

$\begin{pmatrix} 1 & -3 & 1 \ 0 & 1 & 2 \ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} x_1 \ x_2 \ x_3 \end{pmatrix} = \begin{pmatrix} 0 \ 3 \ 1 \end{pmatrix} \implies \begin{cases} x_3 = 1 \ x_2 + 2(1) = 3 \implies x_2 = 1 \ x_1 - 3(1) + 1 = 0 \implies x_1 = 2 \end{cases}$

**Solución final única:** $(x_1, x_2, x_3) = (2, 1, 1)$.

---

#### 4. Apoyo Tecnológico

- **GeoGebra:** Permite verificar rápidamente determinantes mediante el comando `Determinante(A)` y resolver la regla de Cramer comprobando $x_i = \text{Determinante}(A_i) / \text{Determinante}(A)$.
- **WolframAlpha:** Se puede calcular directamente la descomposición de una matriz con el comando `LUDecomposition[{{1, -3, 1}, {3, -8, 5}, {1, -5, -2}}]`.

---

## Materiales de Apoyo Generados

He enviado a tu panel de **Studio** los dos artefactos correspondientes a esta sesión:

1. [**Presentación**](Sesión12_Regla_de_Cramer_y_Factorización.pptx)
    - Diseñada en formato accesible con acentos en azul institucional UNED, estructurada estrictamente según el **Manual de Estilo para Presentaciones** (numeración de la sesión, notación en LaTeX con matrices `\begin{pmatrix}`, límite de puntos por diapositiva, cuadro de nota de precaución sobre el coste computacional ineficiente de Cramer para $n > 3$ frente a Gauss/LU, y resumen ejecutivo).
2. [**Resumen de audio**](Sesión12_Regla_de_Cramer_y_Factorización.m4a)
    - Una discusión extensa entre dos docentes abordando la elegancia analítica de la Regla de Cramer (su prueba con la matriz inversa) frente a su baja aplicabilidad práctica en grandes sistemas, y la potencia de la Factorización LU en ingeniería para ahorrar cómputo al reutilizar la matriz $A$.

Ambos materiales están disponibles para tu revisión en el panel de la derecha.

¿Te gustaría que preparemos los ejercicios prácticos con parámetros de la **Sesión 13** o prefieres hacer alguna aclaración previa sobre la descomposición $PA = LU$?