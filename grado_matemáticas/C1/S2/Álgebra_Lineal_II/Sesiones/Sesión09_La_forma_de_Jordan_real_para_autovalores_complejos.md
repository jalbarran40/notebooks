# Sesión 9: La Forma de Jordan Real para Autovalores Complejos

## La Forma de Jordan Real para Autovalores Complejos

### 1. Introducción y Motivación

Cuando un endomorfismo real $f: V \to V$ no posee todas sus raíces en $\mathbb{R}$, el Teorema de Existencia de la Forma Canónica de Jordan en $\mathbb{R}$ no se cumple en sentido estricto, ya que no podemos diagonalizar ni obtener bloques de Jordan sobre $\mathbb{R}$ con números imaginarios.

Sin embargo, en el espacio vectorial real $V$ de dimensión $n$, es posible encontrar una representación matricial lo más sencilla posible denominada **Forma Canónica de Jordan Real** ($J_R$), en la cual los autovalores complejos conjugados $\lambda = a + bi$ y $\bar{\lambda} = a - bi$ (con $b \neq 0$) se representan mediante bloques reales de dimensión $2 \times 2$.

---

### 2. Complejificación del Espacio Vectorial

Para analizar autovalores complejos de una matriz real $A \in \mathcal{M}_n(\mathbb{R})$, se recurre a la **complejificación** o extensión compleja del espacio vectorial $V$, denotada por $\hat{V} = V + iV = {u + iw : u, w \in V}$.

1. **Endomorfismo extendido $\hat{f}$:** Se define $\hat{f}: \hat{V} \to \hat{V}$ como $\hat{f}(u + iw) = f(u) + i f(w)$.
2. **Propiedad de Simetría Conjugada:** Las raíces complejas del polinomio característico $P_f(\lambda)$ siempre aparecen en parejas conjugadas $\lambda = a + bi$ y $\bar{\lambda} = a - bi$ con la misma multiplicidad algebraica ($m_a$) y geométrica ($m_g$).
3. **Bases Conjugadas:** Si ${v_1, \dots, v_r}$ es una base de Jordan del subespacio máximo $M(\lambda)$ en $\hat{V}$, entonces sus vectores conjugados ${\bar{v}_1, \dots, \bar{v}_r}$ forman una base de Jordan de $M(\bar{\lambda})$.

---

### 3. Definición de los Bloques de Jordan Reales

En la Forma Canónica de Jordan Real $J_R$:

1. Los autovalores reales $\lambda \in \mathbb{R}$ mantienen sus bloques de Jordan habituales $B_k(\lambda)$.
2. Cada pareja de autovalores complejos conjugados $\lambda = a + bi$ y $\bar{\lambda} = a - bi$ da lugar a un bloque real $C(\lambda)$ de orden 2: $C(\lambda) = \begin{pmatrix} a & b \ -b & a \end{pmatrix}$
3. Si un autovalor complejo posee un bloque de Jordan complejo de orden $k$, en la matriz de Jordan real $J_R$ este se sustituye por un bloque de orden $2k \times 2k$ de la forma: $C_{2k}(\lambda) = \begin{pmatrix} C(\lambda) & 0 & \dots & 0 \ I_2 & C(\lambda) & \dots & 0 \ \vdots & \ddots & \ddots & \vdots \ 0 & \dots & I_2 & C(\lambda) \end{pmatrix}, \quad \text{donde } I_2 = \begin{pmatrix} 1 & 0 \ 0 & 1 \end{pmatrix}$

---

### 4. Algoritmo para la Construcción de la Base de Jordan Real

Para construir la matriz de paso $P$ y la base real $\mathcal{B}''$:

1. **Cálculo Complejo:** Se determina la base de Jordan compleja $\mathcal{B}'$ para el autovalor $\lambda = a + bi$ en $\hat{V}$, formada por vectores $v_j = u_j + i w_j$, donde $u_j = \text{Re}(v_j)$ y $w_j = \text{Im}(v_j)$.
2. **Sustitución por Partes Reales e Imaginarias:** Para cada bloque complejo generado por $v_1, \dots, v_k$, se reemplaza la pareja de bases complejas por el conjunto ordenado de $2k$ vectores reales: $\mathcal{B}'' = {u_1, w_1, u_2, w_2, \dots, u_k, w_k}$
3. **Paso Matricial:** Con esta base ordenada por parejas $(\text{Re}, \text{Im})$, la matriz del endomorfismo en la base $\mathcal{B}''$ adopta la forma de Jordan real $J_R = P^{-1} A P$.

---

### 5. Ejemplo Práctico Ilustrativo

Sea $f: \mathbb{R}^2 \to \mathbb{R}^2$ el endomorfismo con matriz en la base canónica: $A = \begin{pmatrix} -1 & 3 \ -6 & 5 \end{pmatrix}$

1. **Polinomio característico:** $P(\lambda) = \det(A - \lambda I) = \lambda^2 - 4\lambda + 13 = 0 \implies \lambda = 2 \pm 3i$
2. **Autovector complejo para $\lambda = 2 + 3i$:** $(A - (2 + 3i)I)X = 0 \implies \begin{pmatrix} -3 - 3i & 3 \ -6 & 3 - 3i \end{pmatrix} \begin{pmatrix} x_1 \ x_2 \end{pmatrix} = \begin{pmatrix} 0 \ 0 \end{pmatrix}$ De la primera ecuación: $x_2 = (1 + i)x_1$. Tomando $x_1 = 1$, el autovector es $v = \begin{pmatrix} 1 \ 1 + i \end{pmatrix} = \begin{pmatrix} 1 \ 1 \end{pmatrix} + i \begin{pmatrix} 0 \ 1 \end{pmatrix}$.
3. **Base Real y Matriz de Jordan Real:** Separando parte real e imaginaria: $u = \begin{pmatrix} 1 \ 1 \end{pmatrix}$, $w = \begin{pmatrix} 0 \ 1 \end{pmatrix}$. La base real es $\mathcal{B}'' = {u, w}$, la matriz de cambio de base es $P = \begin{pmatrix} 1 & 0 \ 1 & 1 \end{pmatrix}$ y la **Forma Canónica de Jordan Real** resulta: $J_R = \begin{pmatrix} 2 & 3 \ -3 & 2 \end{pmatrix}$

---


## Material adicional
### [Presentación](Presentaciones/Sesión09_La_forma_de_Jordan_real_para_autovalores_complejos.pptx)

Diseñado conforme al Manual de Estilo de Presentaciones UNED (Colores corporativos, rigor formal y notación LaTeX)._

---

#### Diapositiva 1: Portada

- **Título:** Sesión 9: La Forma Canónica de Jordan Real
- **Subtítulo:** Clasificación de Endomorfismos con Autovalores Complejos Conjugados
- **Asignatura:** Álgebra Lineal II — Grado en Matemáticas (UNED)
- **Texto de Referencia:** Borobia, A. & Estrada, B. (Capítulo 5)

---

#### Diapositiva 2: Objetivos de la Sesión

- **Comprender** la necesidad de la Forma de Jordan Real cuando el polinomio característico posee raíces no reales en $\mathbb{R}$.
- **Definir** la estructura de los bloques reales $C(\lambda) = \begin{pmatrix} a & b \ -b & a \end{pmatrix}$ y las matrices identidades $I_2$ de acoplamiento.
- **Aprender** el algoritmo de separación de partes reales e imaginarias para obtener la base de Jordan real $\mathcal{B}''$.
- **Validar** la relación de semejanza $J_R = P^{-1} A P$ mediante la matriz de paso $P$.

---

#### Diapositiva 3: La Necesidad de la Forma Real

> **Definición (Complejificación):** Dado un espacio vectorial real $V$, su complejificación es el espacio vectorial complejo $\hat{V} = V + iV$. Toda matriz real $A \in \mathcal{M}_n(\mathbb{R})$ define un endomorfismo complejo $\hat{f}: \hat{V} \to \hat{V}$.

- Si $P_f(\lambda)$ tiene raíces complejas, estas aparecen en parejas conjugadas $\lambda = a + bi$ y $\bar{\lambda} = a - bi$.
- La matriz $J$ sobre $\mathbb{C}$ contiene entradas complejas. Para trabajar exclusivamente en $\mathbb{R}$, se reemplaza cada par de bloques complejos por un bloque real.

---

#### Diapositiva 4: Estructura del Bloque de Jordan Real

- **Bloque de orden 2 para raíz simple $\lambda = a + bi$:** $C(\lambda) = \begin{pmatrix} a & b \ -b & a \end{pmatrix}$
- **Bloque de orden $2k \times 2k$ para caja de Jordan de tamaño $k$:** $C_{2k}(\lambda) = \begin{pmatrix} C(\lambda) & 0 & \dots & 0 \ I_2 & C(\lambda) & \dots & 0 \ \vdots & \ddots & \ddots & \vdots \ 0 & \dots & I_2 & C(\lambda) \end{pmatrix}$ _Donde $I_2 = \begin{pmatrix} 1 & 0 \ 0 & 1 \end{pmatrix}$ actúa como el conector en la subdiagonal_.

---

#### Diapositiva 5: Algoritmo de Construcción de la Base Real

1. Obtener la base de Jordan compleja para $\lambda = a + bi$: $v_j = u_j + i w_j \quad (u_j = \text{Re}(v_j), w_j = \text{Im}(v_j))$
2. Formar la base real seleccionando alternadamente parte real e imaginaria: $\mathcal{B}'' = {u_1, w_1, u_2, w_2, \dots, u_k, w_k}$
3. Colocar estos vectores como columnas de la matriz de cambio de base $P = \mathcal{M}_{\mathcal{B}'' \mathcal{B}}$.

---

#### Diapositiva 6: Ejemplo Práctico Resuelto

- **Matriz:** $A = \begin{pmatrix} -1 & 3 \ -6 & 5 \end{pmatrix}$
- **Autovalores:** $\lambda = 2 \pm 3i$
- **Autovector Complejo:** $v = \begin{pmatrix} 1 \ 1+i \end{pmatrix} = \begin{pmatrix} 1 \ 1 \end{pmatrix} + i \begin{pmatrix} 0 \ 1 \end{pmatrix}$
- **Base Real:** $u = \begin{pmatrix} 1 \ 1 \end{pmatrix}$, $w = \begin{pmatrix} 0 \ 1 \end{pmatrix} \implies P = \begin{pmatrix} 1 & 0 \ 1 & 1 \end{pmatrix}$
- **Forma Canónica Real:** $J_R = P^{-1} A P = \begin{pmatrix} 2 & 3 \ -3 & 2 \end{pmatrix}$

> **Precaución en Exámenes (Error Frecuente):** No inviertas el orden de la parte real e imaginaria al construir la base. Poner $w$ antes que $u$ alterará los signos de la subdiagonal y superdiagonal en el bloque $C(\lambda)$.

---

#### Diapositiva 7: Resumen Ejecutivo

- **Raíces Reales:** Generan bloques de Jordan estándar con $\lambda$ en la diagonal e $1$s en la subdiagonal.
- **Raíces Complejas Conjugadas:** Generan bloques $2 \times 2$ del tipo $C(\lambda) = \begin{pmatrix} a & b \ -b & a \end{pmatrix}$ y bloques $I_2$ de acoplamiento.
- **Base Real:** Se obtiene extrayendo ${\text{Re}(v_j), \text{Im}(v_j)}$ de la base compleja de Jordan.

---

### [Resumen de Audio](Audios/Sesión09_La_forma_de_Jordan_real_para_autovalores_complejos.m4a)

**Título del Episodio:** _Descifrando la Forma de Jordan Real: Cuando los Números Complejos Vuelven a Casa_ **Interlocutores:** Profesor Carlos (Tutor UNED) y Dra. Elena (Especialista en Álgebra Lineal)

**Carlos:** ¡Hola a todos y bienvenidos a una nueva entrega de nuestro podcast sobre Álgebra Lineal II para el Grado en Matemáticas de la UNED! Hoy abordamos la Sesión 9 del plan de trabajo, un tema que suele generar muchas preguntas en el foro de la asignatura: la **Forma Canónica de Jordan Real**. Elena, ¿por qué necesitamos una "versión real" de Jordan?

**Elena:** ¡Hola Carlos! Pues la razón es muy clara: cuando nos enfrentamos a una matriz con coeficientes reales pero cuyo polinomio característico tiene raíces complejas, como por ejemplo $\lambda = 2 \pm 3i$, si aplicamos el teorema de Jordan estándar obtenemos una matriz con entradas complejas. Sin embargo, si nuestro espacio vectorial original es real (como $\mathbb{R}^4$), queremos una matriz asociada representativa que contenga únicamente números reales.

**Carlos:** Claro, el espacio real no "entiende" de la unidad imaginaria $i$. Y ahí es donde entra el concepto de **complejificación** del espacio vectorial, ¿verdad?

**Elena:** Exactamente. Extendemos nuestro espacio vectorial real $V$ a $\hat{V} = V + iV$. En este espacio ampliado, las raíces complejas siempre aparecen por parejas conjugadas, $\lambda = a + bi$ y $\bar{\lambda} = a - bi$, y los autoespacios máximos tienen exactamente la misma estructura y dimensiones.

**Carlos:** Y al construir la matriz de Jordan real, ¿cómo representamos esa pareja de autovalores complejos?

**Elena:** En lugar de poner los números complejos en la diagonal, cada pareja conjugada se traduce en un bloque de tamaño $2 \times 2$ de la forma $\begin{pmatrix} a & b \ -b & a \end{pmatrix}$, donde $a$ es la parte real y $b$ es la parte imaginaria. Geométricamente, este bloque actúa como una rotación combinada con una homotecia o escalado en ese plano.

**Carlos:** ¡Qué elegante! Y si el autovalor complejo tiene multiplicidad y da lugar a cajas de Jordan complejas de tamaño superior, ¿cómo se encadenan estos bloques $2 \times 2$?

**Elena:** Se encadenan usando matrices identidad de orden 2, es decir $I_2 = \begin{pmatrix} 1 & 0 \ 0 & 1 \end{pmatrix}$, situadas debajo de la diagonal de bloques $C(\lambda)$, sustituyendo al clásico $1$ de la subdiagonal de Jordan.

**Carlos:** ¿Y cuál es el procedimiento práctico para construir la base de Jordan real? Esto es justo lo que se pide en los ejercicios de examen de la UNED.

**Elena:** El truco está en calcular primero la base de Jordan compleja para uno de los autovalores, digamos $v_j = u_j + i w_j$. Luego, en lugar de usar los vectores complejos, extraemos sus partes reales e imaginarias, ordenándolas parejas por parejas: ${u_1, w_1, u_2, w_2, \dots}$. Esas columnas forman directamente nuestra matriz de cambio de base real $P$.

**Carlos:** Un consejo vital para nuestros estudiantes: ¡atención al orden de la parte real e imaginaria! Cambiar $u$ por $w$ modifica la posición de los signos en la subdiagonal del bloque.

**Elena:** Totalmente de acuerdo, Carlos. Recomiendo siempre comprobar al final que se cumple la ecuación matricial $A P = P J_R$ para evitar sorpresas.

**Carlos:** Excelente resumen, Elena. Con esto cerramos la teoría de la Forma de Jordan Real. En la próxima sesión nos centraremos en resolver ejercicios prácticos de transformación. ¡Nos escuchamos en el próximo episodio!
