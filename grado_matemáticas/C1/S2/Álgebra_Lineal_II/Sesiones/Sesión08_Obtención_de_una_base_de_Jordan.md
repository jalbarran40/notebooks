# Sesión 8 (P): Obtención práctica de una base de Jordan

El objetivo de esta sesión de 45 minutos es dominar la técnica de selección de vectores en la cadena de subespacios propios generalizados $K^i(\lambda) = \ker(f - \lambda \text{Id})^i$, la confección de la **Tabla de Jordan** y la ordenación adecuada de la base para obtener la forma canónica con los unos en la subdiagonal.

---

### 1. Esquema del Algoritmo de Construcción

Para un autovalor $\lambda$ con multiplicidad algebraica $m_a$:

1. **Cálculo de la cadena de núcleos:** $K^1(\lambda) \subsetneq K^2(\lambda) \subsetneq \dots \subsetneq K^k(\lambda) = M(\lambda)$ Obtenemos sus ecuaciones implícitas y sus dimensiones $d_i = \dim K^i(\lambda) = n - \text{rg}(A - \lambda I)^i$.
2. **Construcción de la Tabla de Jordan:**
    - Las **columnas** representan las cadenas de vectores (cada columna corresponde a un bloque de Jordan).
    - Las **filas** representan los subespacios $K^i(\lambda)$.
    - El número de vectores en la fila $i$ es $r_i = d_i - d_{i-1}$.
3. **Selección de vectores generadores (de arriba abajo):**
    - Se eligen vectores $v \in K^k(\lambda)$ que sean linealmente independientes módulo $K^{k-1}(\lambda)$.
    - Se aplican iterativamente la transformación $g = f - \lambda \text{Id}$ para descender de nivel: $g(v), g^2(v), \dots, g^{k-1}(v)$.
    - Si en algún nivel $i$ las imágenes que descienden del nivel superior no completan la dimensión $r_i$, se seleccionan vectores adicionales en $K^i(\lambda)$ linealmente independientes con los anteriores.
4. **Ordenación por columnas (Convención UNED):** Para que los unos de los bloques de Jordan aparezcan en la **subdiagonal**, los vectores de la base de Jordan $B'$ deben colocarse en la matriz de cambio de base $P = \mathcal{M}_{B' B}$ leyendo la tabla **por columnas, de izquierda a derecha y de arriba abajo**.

---

### 2. Ejercicio Práctico Resuelto Paso a Paso

#### Enunciado

Dada la matriz $A \in \mathcal{M}_4(\mathbb{R})$ asociada a un endomorfismo $f$ en la base canónica $B$: $A = \begin{pmatrix} 2 & 0 & 0 & 0 \ 1 & 2 & 0 & 0 \ -2 & 1 & 2 & 0 \ -4 & 2 & 0 & 2 \end{pmatrix}$ Determine su forma canónica de Jordan $J$ y construya una base de Jordan $B'$ tal que $\mathcal{M}_{B'}(f) = J$.

---

#### Paso 1: Polinomio característico y autovalores

Al ser $A$ una matriz triangular inferior, sus autovalores coinciden con la diagonal principal. $P(\lambda) = \det(A - \lambda I) = (\lambda - 2)^4$ Existe un único autovalor $\lambda = 2$ con multiplicidad algebraica $m_a(2) = 4$.

---

#### Paso 2: Subespacios propios generalizados y dimensiones $d_i$

- **Subespacio $K^1(2) = \ker(f - 2\text{Id})$:** $A - 2I = \begin{pmatrix} 0 & 0 & 0 & 0 \ 1 & 0 & 0 & 0 \ -2 & 1 & 0 & 0 \ -4 & 2 & 0 & 0 \end{pmatrix}$ El rango es $\text{rg}(A - 2I) = 2$. Por tanto, $d_1 = \dim K^1(2) = 4 - 2 = 2$ (Multiplicidad geométrica $m_g = 2$, luego habrá **2 bloques de Jordan**).
    
    Las ecuaciones implícitas de $K^1(2)$ se obtienen de $(A - 2I)X = 0$: $K^1(2) \equiv \begin{cases} x_1 = 0 \ x_2 = 0 \end{cases}$
    
- **Subespacio $K^2(2) = \ker(f - 2\text{Id})^2$:** $(A - 2I)^2 = \begin{pmatrix} 0 & 0 & 0 & 0 \ 0 & 0 & 0 & 0 \ 1 & 0 & 0 & 0 \ 2 & 0 & 0 & 0 \end{pmatrix}$ El rango es $\text{rg}(A - 2I)^2 = 1$. Por tanto, $d_2 = \dim K^2(2) = 4 - 1 = 3$.
    
    La ecuación implícita de $K^2(2)$ es: $K^2(2) \equiv { x_1 = 0 }$
    
- **Subespacio $K^3(2) = \ker(f - 2\text{Id})^3$:** $(A - 2I)^3 = \begin{pmatrix} 0 & 0 & 0 & 0 \ 0 & 0 & 0 & 0 \ 0 & 0 & 0 & 0 \ 0 & 0 & 0 & 0 \end{pmatrix} = 0_4$ El rango es $0$, por lo que $d_3 = \dim K^3(2) = 4 = m_a$. Aquí se estabiliza la cadena; $K^3(2) = M(2) = \mathbb{R}^4$.
    

---

#### Paso 3: Confección de la Tabla de Jordan

Calculamos las diferencias de dimensión $r_i = d_i - d_{i-1}$:

- $r_3 = d_3 - d_2 = 4 - 3 = 1$ (1 vector en el nivel 3).
- $r_2 = d_2 - d_1 = 3 - 2 = 1$ (1 vector en el nivel 2).
- $r_1 = d_1 - 0 = 2$ (2 vectores en el nivel 1).

|Dimensiones|$1$|$2$|$3$|
|:-:|:-:|:-:|:-:|
|**Subespacios**|$K^1(2)$|$\subset K^2(2)$|$\subset K^3(2) = M(2)$|
|**Cadenas**|$v_3 = (f - 2\text{Id})^2(v_1)$|$\leftarrow v_2 = (f - 2\text{Id})(v_1)$|$\leftarrow v_1$|
||$v_4$|||

- **Bloque 1:** Tamaño $3 \times 3$ (formado por la cadena de $v_1$).
- **Bloque 2:** Tamaño $1 \times 1$ (formado por $v_4 \in K^1(2)$).

La **Forma Canónica de Jordan** es: $J = \begin{pmatrix} 2 & 0 & 0 & 0 \ 1 & 2 & 0 & 0 \ 0 & 1 & 2 & 0 \ 0 & 0 & 0 & 2 \end{pmatrix}$

---

#### Paso 4: Elección de vectores y construcción de la base

1. **Elección de $v_1 \in K^3(2) \setminus K^2(2)$:** Como $K^2(2) \equiv {x_1 = 0}$, buscamos un vector con $x_1 \neq 0$. Tomamos $v_1 = (1, 0, 0, 0)_B^t$.
    
2. **Descenso por la cadena de $v_1$:**
    
    - $v_2 = (A - 2I) v_1 = \begin{pmatrix} 0 & 0 & 0 & 0 \ 1 & 0 & 0 & 0 \ -2 & 1 & 0 & 0 \ -4 & 2 & 0 & 0 \end{pmatrix} \begin{pmatrix} 1 \ 0 \ 0 \ 0 \end{pmatrix} = \begin{pmatrix} 0 \ 1 \ -2 \ -4 \end{pmatrix}_B \in K^2(2) \setminus K^1(2)$
    - $v_3 = (A - 2I) v_2 = \begin{pmatrix} 0 & 0 & 0 & 0 \ 1 & 0 & 0 & 0 \ -2 & 1 & 0 & 0 \ -4 & 2 & 0 & 0 \end{pmatrix} \begin{pmatrix} 0 \ 1 \ -2 \ -4 \end{pmatrix} = \begin{pmatrix} 0 \ 0 \ 1 \ 2 \end{pmatrix}_B \in K^1(2)$
3. **Elección de $v_4 \in K^1(2)$ para completar la base:** Necesitamos un vector en $K^1(2) \equiv {x_1 = 0, x_2 = 0}$ que sea linealmente independiente de $v_3 = (0, 0, 1, 2)^t$. Tomamos $v_4 = (0, 0, 0, 1)_B^t$.
    

---

#### Paso 5: Matriz de cambio de base y verificación

Ordenamos la base de Jordan leyendo la tabla por columnas: $B' = {v_1, v_2, v_3, v_4}$. La matriz de paso $P$ es: $P = \mathcal{M}_{B' B} = \begin{pmatrix} 1 & 0 & 0 & 0 \ 0 & 1 & 0 & 0 \ 0 & -2 & 1 & 0 \ 0 & -4 & 2 & 1 \end{pmatrix}$

Podemos verificar la relación de semejanza $A P = P J$: $A P = \begin{pmatrix} 2 & 0 & 0 & 0 \ 1 & 2 & 0 & 0 \ -2 & 1 & 2 & 0 \ -4 & 2 & 0 & 2 \end{pmatrix} \begin{pmatrix} 1 & 0 & 0 & 0 \ 0 & 1 & 0 & 0 \ 0 & -2 & 1 & 0 \ 0 & -4 & 2 & 1 \end{pmatrix} = \begin{pmatrix} 2 & 0 & 0 & 0 \ 1 & 2 & 0 & 0 \ 0 & 0 & 2 & 0 \ 0 & 0 & 4 & 2 \end{pmatrix}$ $P J = \begin{pmatrix} 1 & 0 & 0 & 0 \ 0 & 1 & 0 & 0 \ 0 & -2 & 1 & 0 \ 0 & -4 & 2 & 1 \end{pmatrix} \begin{pmatrix} 2 & 0 & 0 & 0 \ 1 & 2 & 0 & 0 \ 0 & 1 & 2 & 0 \ 0 & 0 & 0 & 2 \end{pmatrix} = \begin{pmatrix} 2 & 0 & 0 & 0 \ 1 & 2 & 0 & 0 \ 0 & 0 & 2 & 0 \ 0 & 0 & 4 & 2 \end{pmatrix}$

Se cumple $A P = P J \implies J = P^{-1} A P$, confirmando que la base calculada es correcta.

---

### 3. Consejos para la Evaluación UNED

- **Errores de ordenación:** Leer los vectores por filas en lugar de por columnas colocará los unos en lugares incorrectos de la matriz $J$.
- **Dependencia lineal:** Al elegir vectores complementarios en niveles inferiores, asegúrate siempre de que no sean combinación lineal de los vectores que descienden de niveles superiores.
- **Verificación rápida:** Comprueba siempre que el último vector de cada cadena es un autovector (debe cumplir $(A - \lambda I) v_{\text{último}} = 0$).

---

## Materiales multimedia solicitados

He generado los recursos de apoyo solicitados para acompañar el estudio de esta sesión:

1. **Presentación (Slides):** Se ha elaborado el soporte visual estructurado según el **Manual de Estilo UNED**. Incluye la ficha técnica del algoritmo, el caso práctico resuelto paso a paso con su tabla de Jordan y la comprobación matricial $A P = P J$.
[[Sesión08_Obtención_de_una_base_de_Jordan.pptx]]
2. **Podcast (Audio Overview):** He activado un resumen en formato de conversación en profundidad entre dos expertos. En él se comentan los aspectos más delicados de la práctica, como el método para evitar la dependencia lineal al completar bases en $K^1(\lambda)$ y la razón matemática por la cual la lectura por columnas coloca los unos en la subdiagonal.
[[Sesión08_Obtención_de_una_base_de_Jordan.m4a]]

