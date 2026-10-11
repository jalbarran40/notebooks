¡Hola! Como tu tutor de **Álgebra Lineal I**, he preparado el contenido teórico y práctico correspondiente a la **Sesión 11**, dedicada al resultado central del **Bloque 2: Sistemas de Ecuaciones Lineales**: el **Teorema de Rouché-Frobenius**.

Este teorema proporciona el criterio algebraico definitivo para clasificar cualquier sistema de ecuaciones lineales sin necesidad de calcular explícitamente sus soluciones en primera instancia, comparando únicamente el rango de la matriz de coeficientes y el de la matriz ampliada.

A continuación dispón del desarrollo conceptual completo.

---

# Sesión 11: El Teorema de Rouché-Frobenius y Discusión de Sistemas

#### 1. Planteamiento Formal

Dado un sistema de $m$ ecuaciones lineales con $n$ incógnitas sobre un cuerpo $\mathbb{K}$ (habitualmente $\mathbb{R}$ o $\mathbb{C}$):

$AX = B$

donde:

- $A \in M_{m \times n}(\mathbb{K})$ es la **matriz de coeficientes**.
- $X \in M_{n \times 1}(\mathbb{K})$ es el **vector de incógnitas** $(x_1, x_2, \dots, x_n)^t$.
- $B \in M_{m \times 1}(\mathbb{K})$ es el **vector de términos independientes** $(b_1, b_2, \dots, b_m)^t$.
- $(A|B) \in M_{m \times (n+1)}(\mathbb{K})$ es la **matriz ampliada del sistema**.

Recordemos que el término independiente $B$ puede interpretarse como una combinación lineal de las columnas de $A$ cuyos coeficientes son precisamente los valores de las incógnitas $x_1, \dots, x_n$:

$x_1 C_1(A) + x_2 C_2(A) + \cdots + x_n C_n(A) = B$

---

#### 2. Enunciado del Teorema de Rouché-Frobenius

**Teorema (Rouché-Frobenius):** Un sistema de ecuaciones lineales $AX = B$ con $n$ incógnitas admite solución (es compatible) si y solo si el rango de la matriz de coeficientes es igual al rango de la matriz ampliada:

$\operatorname{rg}(A) = \operatorname{rg}(A|B)$

Asimismo, el sistema se clasifica según las siguientes tres situaciones excluyentes:

1. **Sistema Compatible Determinado (SCD):** $\operatorname{rg}(A) = \operatorname{rg}(A|B) = n$ Existe **una única solución**.
2. **Sistema Compatible Indeterminado (SCI):** $\operatorname{rg}(A) = \operatorname{rg}(A|B) = r < n$ Existen **infinitas soluciones**. El número de grados de libertad (parámetros independientes requeridos para describir la solución general) es: $\text{N.º de parámetros} = n - r$
3. **Sistema Incompatible (SI):** $\operatorname{rg}(A) < \operatorname{rg}(A|B)$ **No existe ninguna solución**.

---

#### 3. Metodología de Discusión de Sistemas con Parámetros

Cuando un sistema depende de uno o varios parámetros reales (por ejemplo, $a \in \mathbb{R}$), la discusión requiere un análisis por casos respetando el siguiente procedimiento:

1. **Cálculo del determinante o escalonamiento:** Si $A$ es una matriz cuadrada ($m = n$), se calcula $\det(A)$ en función del parámetro.
2. **Identificación de valores críticos:** Se hallan las raíces de $\det(A) = 0$.
    - **Caso General:** Para todo valor del parámetro distinto de las raíces halladas, $\operatorname{rg}(A) = n$ y el sistema es **Compatible Determinado**.
    - **Casos Particulares:** Se sustituye individualmente cada raíz crítica en la matriz ampliada $(A|B)$ y se analiza el rango mediante operaciones elementales de fila (método de Gauss) o mediante el cálculo de menores.

> ⚠️ **Nota de Precaución (Error común en exámenes UNED):** Nunca se debe dividir una fila o despejar una variable entre una expresión que contenga el parámetro (como por ejemplo dividir entre $a-1$) sin haber analizado previamente en un caso separado qué ocurre si dicha expresión es nula ($a=1$). La división por cero anula la validez del razonamiento algebraico.

---

#### 4. Ejemplo Práctico Resuelto

Discutir y resolver en función del parámetro real $a \in \mathbb{R}$ el siguiente sistema de 3 ecuaciones con 3 incógnitas:

$\begin{cases} x + y + az = 1 \ x + ay + z = 1 \ ax + y + z = 1 \end{cases}$

##### Paso 1: Matriz de coeficientes y determinante

La matriz del sistema y su determinante son:

$A = \begin{pmatrix} 1 & 1 & a \ 1 & a & 1 \ a & 1 & 1 \end{pmatrix}, \quad (A|B) = \begin{pmatrix} 1 & 1 & a & \mid & 1 \ 1 & a & 1 & \mid & 1 \ a & 1 & 1 & \mid & 1 \end{pmatrix}$

Calculamos $\det(A)$:

$\det(A) = \begin{vmatrix} 1 & 1 & a \ 1 & a & 1 \ a & 1 & 1 \end{vmatrix} = (a + 2)(1 - a)^2 = -(a - 1)^2 (a + 2)$

Igualando a cero, obtenemos los valores críticos: **$a = 1$** y **$a = -2$**.

---

##### Paso 2: Análisis por casos

- **Caso 1: $a \neq 1$ y $a \neq -2$** Como $\det(A) \neq 0$, el rango de $A$ es máximo: $\operatorname{rg}(A) = 3$. Como la matriz ampliada $(A|B)$ no puede tener rango superior a 3, se cumple: $\operatorname{rg}(A) = \operatorname{rg}(A|B) = 3 = n \implies \text{\textbf{Sistema Compatible Determinado}}$ Sumando las tres ecuaciones obtenemos $(a+2)(x+y+z) = 3$, de donde $x+y+z = \frac{3}{a+2}$. Restando cada ecuación a esta suma se obtiene la **solución única**: $x = y = z = \frac{1}{a+2}$
    
- **Caso 2: $a = 1$** Sustituyendo $a = 1$ en la matriz ampliada: $(A|B) = \begin{pmatrix} 1 & 1 & 1 & \mid & 1 \ 1 & 1 & 1 & \mid & 1 \ 1 & 1 & 1 & \mid & 1 \end{pmatrix} \xrightarrow{L_2-L_1, L_3-L_1} \begin{pmatrix} 1 & 1 & 1 & \mid & 1 \ 0 & 0 & 0 & \mid & 0 \ 0 & 0 & 0 & \mid & 0 \end{pmatrix}$ Se observa que $\operatorname{rg}(A) = \operatorname{rg}(A|B) = 1 < 3 \implies \text{\textbf{Sistema Compatible Indeterminado}}$ con $3 - 1 = 2$ parámetros libres. **Solución general:** Tomando $y = \lambda$ y $z = \mu$: $(x, y, z) = (1 - \lambda - \mu, \lambda, \mu), \quad \lambda, \mu \in \mathbb{R}$
    
- **Caso 3: $a = -2$** Sustituyendo $a = -2$ en la matriz ampliada: $(A|B) = \begin{pmatrix} 1 & 1 & -2 & \mid & 1 \ 1 & -2 & 1 & \mid & 1 \ -2 & 1 & 1 & \mid & 1 \end{pmatrix} \xrightarrow[L_3+2L_1]{L_2-L_1} \begin{pmatrix} 1 & 1 & -2 & \mid & 1 \ 0 & -3 & 3 & \mid & 0 \ 0 & 3 & -3 & \mid & 3 \end{pmatrix} \xrightarrow{L_3+L_2} \begin{pmatrix} 1 & 1 & -2 & \mid & 1 \ 0 & -3 & 3 & \mid & 0 \ 0 & 0 & 0 & \mid & 3 \end{pmatrix}$ En la matriz reducida aparece la ecuación incompatible $0 = 3$. Por tanto, $\operatorname{rg}(A) = 2$ y $\operatorname{rg}(A|B) = 3$. $\operatorname{rg}(A) < \operatorname{rg}(A|B) \implies \text{\textbf{Sistema Incompatible}}$
    

---

#### 5. Apoyo Tecnológico

- **GeoGebra:** Úsalo para interpretar geométricamente los tres planos del ejemplo:
    - Para $a \neq 1, -2$, los tres planos se cortan en un único punto $( \frac{1}{a+2}, \frac{1}{a+2}, \frac{1}{a+2} )$.
    - Para $a = 1$, los tres planos son coincidentes (un plano de soluciones).
    - Para $a = -2$, los tres planos forman un prisma triangular sin puntos comunes a los tres a la vez.
- **WolframAlpha:** Se puede introducir directamente `solve {x + y + a*z = 1, x + a*y + z = 1, a*x + y + z = 1}` para verificar la discusión por casos y la solución en términos de $a$.

---

### Materiales de Apoyo Generados

1. [**Presentación**](Sesión11_Teorema_de_Rouché-Frobenius.pptx)
    - Confeccionada siguiendo el **Manual de Estilo para Presentaciones** (acabado minimalista, acentos en azul UNED, LaTeX riguroso con matrices `\begin{pmatrix}`, regla de 5-6 puntos por diapositiva, cuadro de advertencia sobre división por parámetros y resumen final).
2. [**Resumen de audio**](Sesión11_Teorema_de_Rouché-Frobenius.m4a)
    - Una conversación entre dos docentes que profundizan en el significado intuitivo del rango, por qué los rangos determinan si las ecuaciones "chocan" (incompatibilidad) o "se solapan" (indeterminación) y los mejores consejos tácticos para el examen de la UNED.

