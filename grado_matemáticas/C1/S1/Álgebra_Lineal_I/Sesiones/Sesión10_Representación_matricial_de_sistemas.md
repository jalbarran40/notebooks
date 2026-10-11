# Sesión 10: Representación Matricial de Sistemas y Sistemas Homogéneos

#### 1. Representación Matricial de un Sistema de Ecuaciones Lineales

Un sistema de $m$ ecuaciones lineales con $n$ incógnitas sobre un cuerpo $\mathbb{K}$ (que habitualmente será $\mathbb{R}$ o $\mathbb{C}$) se expresa de forma general como:

$\begin{cases} a_{11}x_1 + a_{12}x_2 + \cdots + a_{1n}x_n = b_1 \ a_{21}x_1 + a_{22}x_2 + \cdots + a_{2n}x_n = b_2 \ \quad \vdots \ a_{m1}x_1 + a_{m2}x_2 + \cdots + a_{mn}x_n = b_m \end{cases}$

Mediante el producto de matrices, este sistema se representa de manera compacta mediante la **ecuación matricial**:

$AX = B$

donde:

- **Matriz de coeficientes ($A$):** Matriz de tamaño $m \times n$ formada por los coeficientes $a_{ij}$.
- **Vector (o columna) de incógnitas ($X$):** Matriz de tamaño $n \times 1$ formada por las variables $(x_1, x_2, \dots, x_n)^t$.
- **Vector (o columna) de términos independientes ($B$):** Matriz de tamaño $m \times 1$ formada por las constantes $(b_1, b_2, \dots, b_m)^t$.

Para operar sistemáticamente mediante el método de eliminación de Gauss, se define la **matriz ampliada del sistema**, denotada por $(A|B) \in M_{m \times (n+1)}(\mathbb{K})$, que reúne en una sola tabla toda la información numérica relevante:

$(A|B) = \begin{pmatrix} a_{11} & a_{12} & \cdots & a_{1n} & \mid & b_1 \ a_{21} & a_{22} & \cdots & a_{2n} & \mid & b_2 \ \vdots & \vdots & \ddots & \vdots & \mid & \vdots \ a_{m1} & a_{m2} & \cdots & a_{mn} & \mid & b_m \end{pmatrix}$

---

#### 2. Sistemas Homogéneos vs. No Homogéneos

##### A. Sistemas Homogéneos ($AX = \mathbf{0}$)

Un sistema se califica como **homogéneo** cuando todos sus términos independientes son nulos ($B = \mathbf{0}$):

$AX = \mathbf{0}$

**Propiedades fundamentales de los sistemas homogéneos:**

1. **Compatibilidad garantizada:** Todo sistema homogéneo es **compatible**, ya que admite siempre al menos la solución $x_1 = 0, x_2 = 0, \dots, x_n = 0$, denominada **solución trivial** o nula ($X = \mathbf{0}$).
2. **Clasificación de soluciones:**
    - Si $\operatorname{rg}(A) = n$ (el rango iguala al número de incógnitas), la solución trivial es la **única solución** (sistema compatible determinado).
    - Si $\operatorname{rg}(A) < n$ (el rango es menor que el número de incógnitas), existen **infinitas soluciones** distintas de la nula (sistema compatible indeterminado).
3. **Consecuencia dimensional:** Si un sistema homogéneo tiene menos ecuaciones que incógnitas ($m < n$), necesariamente $\operatorname{rg}(A) \le m < n$, por lo que **siempre tendrá infinitas soluciones no nulas**.

##### B. Sistemas No Homogéneos ($AX = B$, con $B \neq \mathbf{0}$)

En un sistema no homogéneo, la existencia de solución depende de si el vector $B$ pertenece a la imagen de la matriz $A$. Pueden ser compatibles (determinados e indeterminados) o incompatibles.

---

#### 3. Estructura Algebraicadel Conjunto de Soluciones

##### A. El Subespacio de Soluciones de $AX = \mathbf{0}$

El conjunto de todas las soluciones de un sistema homogéneo $AX = \mathbf{0}$ satisface las condiciones de cerradura bajo la suma de vectores y el producto por escalares:

- Si $X_1$ y $X_2$ son soluciones ($AX_1 = \mathbf{0}$ y $AX_2 = \mathbf{0}$), entonces $A(X_1 + X_2) = AX_1 + AX_2 = \mathbf{0} + \mathbf{0} = \mathbf{0}$.
- Si $\lambda \in \mathbb{K}$, entonces $A(\lambda X_1) = \lambda (AX_1) = \lambda \mathbf{0} = \mathbf{0}$.

Por tanto, el conjunto de soluciones del sistema homogéneo constituye un **subespacio vectorial** de $\mathbb{K}^n$ (equivalente al núcleo o kernel de la aplicación lineal $X \mapsto AX$).

**Dimensión del subespacio de soluciones:** La dimensión de este subespacio vectorial viene dada por la diferencia entre el número de incógnitas y el rango de la matriz de coeficientes:

$\dim(\operatorname{Sol}(AX=\mathbf{0})) = n - \operatorname{rg}(A)$

---

##### B. Estructura de la Solución General de $AX = B$

Para un sistema no homogéneo compatible $AX = B$, si conocemos una solución concreta $X_p$ (llamada **solución particular**), la **solución general** $X$ de $AX = B$ se puede expresar como la suma de esa solución particular más la solución general $X_h$ del **sistema homogéneo asociado** ($AX = \mathbf{0}$):

$X = X_p + X_h \quad \text{donde } AX_p = B \text{ y } AX_h = \mathbf{0}$

Geométricamente, el conjunto de soluciones de $AX = B$ forma una **variedad afín** paralela al subespacio vectorial de soluciones del sistema homogéneo asociado.

---

#### 4. Ejemplo Práctico

Consideremos el siguiente sistema no homogéneo en $\mathbb{R}^3$:

$\begin{cases} x_1 + 2x_2 + 3x_3 = 6 \ x_1 + x_2 + x_3 = 3 \ x_1 - x_3 = 1 \end{cases}$

Construimos la matriz ampliada $(A|B)$ y aplicamos operaciones elementales de fila ($L_2 - L_1 \to L_2$ y $L_3 - L_1 \to L_3$):

$(A|B) = \begin{pmatrix} 1 & 2 & 3 & \mid & 6 \ 1 & 1 & 1 & \mid & 3 \ 1 & 0 & -1 & \mid & 1 \end{pmatrix} \xrightarrow{\text{Gauss}} \begin{pmatrix} 1 & 2 & 3 & \mid & 6 \ 0 & -1 & -2 & \mid & -3 \ 0 & -2 & -4 & \mid & -5 \end{pmatrix}$

Realizando $L_3 - 2L_2 \to L_3$:

$\begin{pmatrix} 1 & 2 & 3 & \mid & 6 \ 0 & -1 & -2 & \mid & -3 \ 0 & 0 & 0 & \mid & 1 \end{pmatrix}$

Al aparecer la fila $[0 \quad 0 \quad 0 \mid 1]$, correspondiente a la ecuación imposible $0 = 1$, concluimos que el sistema es **incompatible** (no tiene solución).

Si cambiamos el término independiente de la tercera ecuación a $1 - 1 = 0$ de modo que la matriz ampliada resulte escalonada con rango 2, obtendríamos un sistema compatible indeterminado cuyas soluciones se expresarían en términos de $n - \operatorname{rg}(A) = 3 - 2 = 1$ parámetro libre.

---

#### 5. Apoyo Tecnológico

- **GeoGebra:** Permite visualizar cómo las soluciones de un sistema homogéneo de 3 variables con rango 2 representan una recta que pasa por el origen $(0,0,0)$, mientras que las soluciones del sistema no homogéneo compatible representan una recta paralela desplazada fuera del origen por la solución particular $X_p$.
- **WolframAlpha:** Se pueden utilizar los comandos `solve {x + 2y + 3z = 6, x + y + z = 3, x - z = 1}` o `nullspace {{1,2,3},{1,1,1},{1,0,-1}}` para calcular el subespacio de soluciones de la parte homogénea.

---

### Materiales de apoyo generados

1. [**Presentación**](Sesión10_Representación_matricial_de_sistemas.pptx)
    - Diseñada siguiendo rigurosamente el **Manual de Estilo para Presentaciones**: fondo claro, acentos en azul UNED, tipografía matemática limpia en LaTeX con entornos `\begin{pmatrix}`, notación explícita de filas $L_i \pm kL_j \to L_i$, límite de 5-6 puntos por diapositiva, cuadro de advertencia sobre errores de signo y resumen ejecutivo final.
2. [**Resumen de audio**](Sesión10_Representación_matricial_de_sistemas.m4a)
    - Una conversación detallada entre dos profesores sobre la importancia de la representación matricial, por qué el sistema homogéneo siempre es compatible y cómo la estructura $X = X_p + X_h$ conecta el álgebra de matrices con la geometría afín.
