# Capítulo 2: Sistemas lineales

Una ecuación lineal con n incógnitas tiene la forma

$$a_1x_1 + a_2x_2 + \cdots + a_nx_n = b$$

donde el **término independiente** b y los **coeficientes**  $a_1, \ldots, a_n$  son elementos de  $\mathbb{K}$ , mientras que  $x_1, \ldots, x_n$  son las **incógnitas**. Una n-upla o lista ordenada

$$(s_1,\ldots,s_n)$$

de n elementos de  $\mathbb{K}$  es una **solución** de la ecuación lineal si la ecuación se cumple cuando sustituimos las incógnitas  $x_1, \ldots, x_n$  por los valores  $s_1, \ldots, s_n$ , esto es, si

$$a_1s_1 + a_2s_2 + \cdots + a_ns_n = b$$

Todas las ecuaciones lineales tienen solución salvo la ecuación incompatible

$$0x_1 + \dots + 0x_n = b \quad \text{con } b \neq 0 \quad \text{(o simplemente } 0 = b \text{ con } b \neq 0\text{)}$$

Otro caso extremo es la ecuación trivial

$$0x_1 + \cdots + 0x_n = 0$$
 (o simplemente  $0 = 0$ )

para la cual todos los valores posibles de las incógnitas son solución.

Un sistema lineal de m ecuaciones y n incógnitas es una colección de m ecuaciones lineales

$$\mathcal{A} \equiv \begin{cases} a_{11}x_1 + a_{12}x_2 + \dots + a_{1n}x_n = b_1 \\ a_{21}x_1 + a_{22}x_2 + \dots + a_{2n}x_n = b_2 \\ & \vdots \\ a_{m1}x_1 + a_{m2}x_2 + \dots + a_{mn}x_n = b_m \end{cases}$$

Es decir, un sistema lineal cumple que  $b_1, \ldots, b_m, a_{11}, \ldots, a_{1n}, \ldots a_{m1}, \ldots a_{mn}$  son elementos de  $\mathbb{K}$ . mientras que  $x_1, \ldots, x_n$  son las incógnitas. Una lista ordenada  $(s_1, \ldots, s_n)$  de n elementos de  $\mathbb{K}$  es una solución del sistema lineal  $\mathcal{A}$  si  $(s_1, \ldots, s_n)$  es solución de cada una de sus m ecuaciones lineales. La solución general del sistema es el conjunto formado por todas las soluciones del sistema.

El sistema lineal  $\mathcal{A}$  se dice que es **homogéneo** cuando los términos independientes de todas las ecuaciones lineales son iguales a cero, esto es,  $b_1 = \ldots = b_m = 0$ . Todo sistema lineal homogéneo tiene al menos una solución, la dada por  $x_1 = 0, \ldots, x_n = 0$ .

### Matrices asociadas a un sistema lineal

Dado el sistema lineal de m ecuaciones y n incógnitas:

$$\mathcal{A} \equiv \begin{cases} a_{11}x_1 + \dots + a_{1n}x_n = b_1 \\ \vdots \\ a_{m1}x_1 + \dots + a_{mn}x_n = b_m \end{cases}$$

definimos las siguientes matrices asociadas al sistema  $\mathcal{A}$ 

$$A = \begin{pmatrix} a_{11} & \cdots & a_{1n} \\ \vdots & \ddots & \vdots \\ a_{m1} & \cdots & a_{mn} \end{pmatrix} \qquad \text{matriz de coeficientes}$$
 
$$X = \begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix} \qquad \text{matriz de incógnitas}$$
 
$$B = \begin{pmatrix} b_1 \\ \vdots \\ b_m \end{pmatrix} \qquad \text{matriz de términos}$$
 independientes 
$$(A \mid B) = \begin{pmatrix} a_{11} & \cdots & a_{1n} & b_1 \\ \vdots & \ddots & \vdots & \vdots \\ a_{m1} & \cdots & a_{mn} & b_m \end{pmatrix} \qquad \text{matriz ampliada}$$

Utilizando la notación introducida, el sistema lineal A admite la expresión

$$AX = B$$

A la hora de resolver un sistema lineal trabajaremos con su matriz ampliada, ya que contiene toda la información del sistema y puede ser manipulada cómodamente.

#### Ejemplo 2.1

La matriz ampliada del sistema lineal

$$\mathcal{A} \equiv \begin{cases} 2x_3 = 6\\ 3x_1 + 6x_2 + x_3 = 2\\ 2x_1 + 4x_2 + 3x_3 = -1\\ x_1 + 2x_2 + 3x_3 = 6 \end{cases}$$

es

$$(A \mid B) = \begin{pmatrix} 0 & 0 & 2 \mid & 6 \\ 3 & 6 & 1 \mid & 2 \\ 2 & 4 & 3 \mid & -1 \\ 1 & 2 & 3 \mid & 6 \end{pmatrix}$$

El sistema se corresponde con la ecuación matricial AX = B, esto es,

$$\begin{pmatrix} 0 & 0 & 2 \\ 3 & 6 & 1 \\ 2 & 4 & 3 \\ 1 & 2 & 3 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} 6 \\ 2 \\ -1 \\ 6 \end{pmatrix} \qquad \Box$$

## 2.1. Sistemas lineales equivalentes

#### Definición 2.2

Dos sistemas lineales son equivalentes si coincide su solución general.

#### Teorema 2.3

Dos sistemas lineales con matrices ampliadas equivalentes por filas son sistemas equivalentes.

**Demostración:** Sean AX = B y A'X = B' dos sistemas lineales tales que la matriz ampliada (A'|B') se obtiene aplicando una operación elemental de filas a la matriz (A|B). Vamos a demostrar que ambos sistemas tienen las mismas soluciones. Distinguimos los tres casos posibles de operaciones:

- (1) El intercambio de dos filas de la matriz (A|B) produce un intercambio entre las ecuaciones del sistema lineal, por lo que se conservan las mismas ecuaciones y por tanto las mismas soluciones.
- (2) Si multiplicamos la fila  $F_i$  de (A|B) por un escalar  $\alpha$  no nulo, entonces la ecuación

$$a_{i1}x_1 + \dots + a_{in}x_n = b_i$$

del sistema AX = B se transforma en la ecuación

$$\alpha a_{i1}x_1 + \cdots + \alpha a_{in}x_n = \alpha b_i$$

del sistema A'X = B'. Ambas ecuaciones tienen las mismas soluciones y por lo tanto ambos sistemas tienen las misma soluciones.

(3) Si aplicamos a (A|B) la operación elemental  $f_i \to f_i + \alpha f_i$ , entonces la ecuación

$$a_{i1}x_1 + \dots + a_{in}x_n = b_i \tag{2.1}$$

del sistema AX = B se transforma en la ecuación

$$(a_{i1} + \alpha a_{j1})x_1 + \dots + (a_{in} + \alpha a_{jn})x_n = b_i + \alpha b_j$$
 (2.2)

del sistema A'X = B'. Ésta es la única ecuación distinta de ambos sistemas.

Veamos que si  $(s_1, \ldots, s_n)$  es solución de AX = B entonces también lo es de A'X = B'. Sólo es necesario estudiar qué sucede con la ecuación (2.2). Por ser  $(s_1, \ldots, s_n)$  solución de AX = B tenemos que

$$\begin{cases} a_{i1}s_1 + \dots + a_{in}s_n = b_i \\ a_{j1}s_1 + \dots + a_{jn}s_n = b_j \end{cases}$$

y por lo tanto  $(s_1, \ldots, s_n)$  es solución de la ecuación (2.2) puesto que

$$(a_{i1} + \alpha a_{j1})s_1 + \dots + (a_{in} + \alpha a_{jn})s_n = (a_{i1}s_1 + \dots + a_{in}s_n) + \alpha(a_{j1}s_1 + \dots + a_{jn}s_n) = b_i + \alpha b_j$$

Por otro lado, veamos que si  $(r_1, \ldots, r_n)$  es solución de A'X = B' entonces también lo es de AX = B. Sólo es necesario estudiar qué sucede con la ecuación (2.1). Por ser  $(r_1, \ldots, r_n)$  solución de A'X = B' tenemos que

$$\begin{cases} a_{j1}r_1 + \cdots + a_{jn}r_n = b_j \\ (a_{i1} + \alpha a_{j1})r_1 + \cdots + (a_{in} + \alpha a_{jn})r_n = b_i + \alpha b_j \end{cases}$$

y por lo tanto  $(r_1, \ldots, r_n)$  es solución de la ecuación (2.1) puesto que

$$a_{i1}r_1 + \dots + a_{in}r_n = (b_i + \alpha b_j) - \alpha(a_{j1}r_1 + \dots + a_{jn}r_n) = b_i + \alpha b_j - \alpha b_j = b_i$$

Finalmente, si  $(A \mid B)$  y  $(A' \mid B')$  son equivalentes por filas entonces existe una sucesión de matrices equivalentes

$$(A \mid B) = (A_1 \mid B_1) \longrightarrow (A_2 \mid B_2) \longrightarrow \cdots \longrightarrow (A_k \mid B_k) = (A' \mid B')$$

de manera que el paso de una a la siguiente se realiza mediante una operación elemental de filas. Según acabamos de ver, se corresponden con una sucesión de sistemas lineales equivalentes.  $\Box$ 

La estrategia general para la resolución de sistemas lineales será la de convertirlos en sistemas lineales equivalentes más sencillos de resolver: los sistemas escalonados.

#### Definición 2.4

Un sistema lineal es un sistema escalonado si su matriz ampliada es escalonada y es un sistema escalonado reducido si su matriz ampliada es escalonada reducida.

En un sistema escalonado hay dos tipos de ecuaciones que generan situaciones especiales:

- 1. Una ecuación del tipo 0 = b con  $b \neq 0$  que no tiene solución, y que es equivalente a tener un pivote en la última columna de la matriz ampliada. En tal caso el sistema es incompatible.
- 2. Una ecuación trivial del tipo 0 = 0 que siempre se cumple, y que es equivalente a tener una fila nula en la matriz ampliada. Las ecuaciones de este tipo las eliminaremos si aparecen pues no aportan ninguna información al sistema.

#### Eiemplo 2.5

(i) Consideramos el sistema lineal AX = B dado por

$$\begin{cases} x_1 + 2x_2 + 5x_3 = 5\\ 2x_1 + x_2 + 7x_3 = 4\\ x_1 - x_2 + 2x_3 = -1\\ -x_1 + x_2 - 2x_3 = 1 \end{cases}$$

Haciendo operaciones elementales escalonamos la matriz ampliada (A|B)

$$(A|B) = \begin{pmatrix} 1 & 2 & 5 & 5 \\ 2 & 1 & 7 & 4 \\ 1 & -1 & 2 & -1 \\ -1 & 1 & -2 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 5 & 5 \\ 0 & -3 & -3 & -6 \\ 0 & -3 & -3 & -6 \\ 0 & 3 & 3 & 6 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 5 & 5 \\ 0 & -3 & -3 & -6 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix} = (A'|B')$$

El sistema escalonado A'X = B' equivalente a AX = B es

$$\begin{cases} x_1 & +2x_2 & +5x_3 & = 5 \\ & -3x_2 & -3x_3 & = -6 \\ & 0 & = 0 \\ & 0 & = 0 \end{cases}$$

Podemos eliminar las ecuaciones lineales triviales y obtener el sistema equivalente

$$\begin{cases} x_1 +2x_2 +5x_3 = 5\\ -3x_2 -3x_3 = -6 \end{cases}$$

Según veremos más adelante este tipo de sistema es fácil de resolver.

(ii) Consideramos el sistema lineal AX = B dado por

$$\begin{cases} x_1 & +2x_2 & +3x_3 & = 6 \\ x_1 & +x_2 & +x_3 & = 3 \\ x_1 & -x_3 & = 1 \end{cases}$$

Haciendo operaciones elementales escalonamos la matriz ampliada (A|B)

$$(A|B) = \begin{pmatrix} 1 & 2 & 3 & 6 \\ 1 & 1 & 1 & 3 \\ 1 & 0 & -1 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 3 & 6 \\ 0 & -1 & -2 & -3 \\ 0 & -2 & -4 & -5 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 3 & 6 \\ 0 & -1 & -2 & -3 \\ 0 & 0 & 0 & 1 \end{pmatrix} = (A'|B')$$

El sistema escalonado A'X = B' equivalente a AX = B es

$$\begin{cases} x_1 & +2x_2 & +3x_3 & = 6\\ & -x_2 & -2x_3 & = -3\\ & 0 & = 1 \end{cases}$$

Se trata de un sistema que no tiene solución pues la ecuación 0 = 1 es incompatible.

## 2.2. Discusión y resolución de sistemas lineales

#### Teorema 2.6

Un sistema lineal puede tener cero, una o infinitas soluciones.

**Demostración:** Probaremos que si un sistema lineal tiene dos soluciones distintas entonces tiene infinitas soluciones. De hecho basta con probarlo para una ecuación lineal. Supongamos que  $(r_1, \ldots, r_n)$  y  $(s_1, \ldots, s_n)$  son soluciones distintas de la ecuación lineal

$$a_1x_1 + \dots + a_nx_n = b \tag{2.3}$$

entonces para todo  $\lambda \in \mathbb{K}$  veremos que

$$(\lambda r_1 + (1-\lambda)s_1, \ldots, \lambda r_n + (1-\lambda)s_n)$$

también es solución. Basta con sustituir  $x_i$  por  $\lambda r_i + (1 - \lambda)s_i$  en la Ecuación (2.3)

$$a_1(\lambda r_1 + (1-\lambda)s_1) + \dots + a_n(\lambda r_n + (1-\lambda)s_n) = b$$

y comprobar que la igualdad sigue siendo cierta. Reagrupando en la parte izquierda nos queda

$$\lambda(a_1r_1 + \dots + a_nr_n) + (1 - \lambda)(a_1s_1 + \dots + a_ns_n) = \lambda b + (1 - \lambda)b = b \qquad \Box$$

#### Definición 2.7

Un sistema lineal  $\mathcal{A}$  se caracteriza por el número de soluciones:

- A es incompatible si no tiene ninguna solución.
- A es compatible determinado si tiene una única solución.
- $\blacksquare$  A es compatible indeterminado si tiene infinitas soluciones.

**Resolver**  $\mathcal{A}$  es encontrar su solución general y **discutir**  $\mathcal{A}$  es determinar si es incompatible, compatible determinado o compatible indeterminado.

### Discusión y resolución de sistemas lineales escalonados

En el siguiente resultado se caracterizan los tres tipos de sistemas escalonados según la situación de los pivotes de su matriz ampliada.

#### Teorema 2.8

Sea AX = B un sistema lineal escalonado con n incógnitas

- I. Si  $(A \mid B)$  tiene un pivote en la última columna entonces el sistema es incompatible.
- II. Si  $(A \mid B)$  no tiene pivote en la última columna y si además
  - (a)  $(A \mid B)$  tiene n pivotes entonces el sistema es compatible determinado;
  - (b)  $(A \mid B)$  tiene menos de n pivotes entonces es compatible indeterminado.

**Demostración:** Sin pérdida de generalidad, podemos suponer que AX = B es un sistema lineal escalonado de m ecuaciones lineales no triviales en las incógnitas  $x_1, \ldots, x_n$  con  $m \le n+1$ . Si fuese m > n+1, entonces la matriz escalonada  $(A \mid B)$  de orden  $m \times n+1$  tendría filas nulas o lo que es lo mismo ecuaciones triviales que se pueden eliminar.

Entonces la matriz ampliada  $(A \mid B)$  es escalonada y no tiene filas nulas. Pueden darse dos situaciones:

I. (A|B) tiene un pivote en la última columna.

Entonces la última fila es de la forma (0...0|b) con  $b \neq 0$ . Una fila así se corresponde con una ecuación incompatible 0 = b por lo que el sistema sería incompatible.

II. (A|B) no tiene un pivote en la última columna.

En este caso  $m \leq n$ . Supongamos que los m pivotes están en las posiciones

$$(1, j_1), (2, j_2), \dots, (m, j_m)$$
 con  $1 \le j_1 \le j_2 \le \dots \le j_m \le n$ 

y sea el conjunto

$$\{k_1,\ldots,k_{n-m}\}=\{1,\ldots,n\}-\{j_1,\ldots,j_m\}$$

Llamaremos incógnitas principales a  $x_{j_1}, \ldots, x_{j_m}$  e incógnitas secundarias a las restantes  $x_{k_1}, \ldots, x_{k_m}$ . Para cada valor que asignemos a las incógnitas secundarias

$$x_{k_1} = \alpha_1, \dots, x_{k_{n-m}} = \alpha_{n-m}$$

podemos determinar un valor en función de  $\alpha_1,\ldots,\alpha_{n-m}$  para cada una de las incógnitas principales con el conocido como método de sustitución de incógnitas de abajo hacia arriba. Dicho método consiste en despejar en cada ecuación la incógnita principal, empezando por la incógnita  $x_{j_m}$  de la última ecuación, se sigue por la incógnita  $x_{j_{m-1}}$  de la penúltima ecuación. y así hasta llegar a la incógnita  $x_{j_1}$  de la primera ecuación. Con esto queda demostrado que el sistema AX = B es compatible. Se presentan dos posibilidades:

(a) (A|B) tiene m=n pivotes.

Todas las incógnitas son principales y al resolver el sistema por el método de sustitución de incógnitas de abajo hacia arriba cada una de las incógnitas obtendrá un único valor. El sistema es compatible determinado.

(b) (A|B) tiene m < n pivotes.

Hay incógnitas principales y secundarias. Para cada asignación de valores arbitrarios a las incógnitas secundarias se obtiene una solución. Por lo tanto el sistema es compatible indeterminado.  $\Box$ 

En los siguientes ejemplos se muestra cómo se aplica el método de resolución de sistemas escalonados descrito en la demostración de este teorema.

#### Ejemplo 2.9

Resuelva el sistema lineal escalonado:

$$\mathcal{A} \equiv \begin{cases} 3x_1 + 3x_2 + x_3 - x_4 + x_5 = -1\\ 2x_3 + x_4 + x_5 = 4\\ x_4 + x_5 = -2 \end{cases}$$

Solución: La matriz ampliada del sistema es escalonada

$$(A \mid B) = \begin{pmatrix} 3 & 3 & 1 & -1 & 1 & -1 \\ 0 & 0 & 2 & 1 & 1 & 4 \\ 0 & 0 & 0 & 1 & 1 & -2 \end{pmatrix}$$

El sistema es compatible indeterminado ya que el número de pivotes, 3, es menor que el número de incógnitas, 5, y ninguno de los pivotes está en la última columna. Los pivotes están en las columnas 1, 3 y 4. Por lo tanto las incógnitas  $x_1, x_3, x_4$  son principales y las incógnitas  $x_2, x_5$  son secundarias. Asignamos a las incógnitas secundarias valores genéricos o parámetros,  $x_2 = \beta$  y  $x_5 = \alpha$ , y aplicamos el método de sustitución de incógnitas de abajo hacia arriba:

• En la última ecuación despejamos la incógnita principal  $x_4$ :

$$x_4 = -2 - x_5 = -2 - \alpha$$

• En la segunda ecuación despejamos la incógnita principal  $x_3$ :

$$x_3 = \frac{1}{2}(4 - x_4 - x_5) = \frac{1}{2}(4 - (-2 - \alpha) - \alpha) = 3$$

• En la primera ecuación despejamos la incógnita principal  $x_1$ :

$$x_1 = \frac{1}{3}(-1 - 3x_2 - x_3 + x_4 - x_5) = \frac{1}{3}(-1 - 3\beta - 3 + (-2 - \alpha) - \alpha) = -2 - \beta - \frac{2}{3}\alpha$$

La solución general se puede presentar como

$$(x_1, x_2, x_3, x_4, x_5) = (-2 - \beta - \frac{2}{3}\alpha, \beta, 3, -2 - \alpha, \alpha)$$

donde  $\alpha$  y  $\beta$  recorren todos los valores de  $\mathbb{K}$ , o bien en forma de conjunto con el formato:

$$\{(-2-\beta-\frac{2}{3}\alpha,\,\beta,\,3,\,-2-\alpha,\,\alpha):\ \alpha,\beta\in\mathbb{K}\}$$

Ejemplo 2.10

Resuelva el sistema lineal escalonado reducido:

$$\mathcal{A} \equiv \begin{cases} x_1 + 3x_2 - 3x_4 &= 0\\ x_3 + 2x_4 &= 2\\ x_5 &= -2 \end{cases}$$

Solución: La matriz ampliada del sistema  $\mathcal{A}$  es escalonada reducida

$$(A \mid B) = \begin{pmatrix} 1 & 3 & 0 & -3 & 0 & 0 \\ 0 & 0 & 1 & 2 & 0 & 2 \\ 0 & 0 & 0 & 0 & 1 & -2 \end{pmatrix}$$

El sistema es compatible indeterminado ya que el número de pivotes, 3, es menor que el número de incógnitas, 5, y ninguno de los pivotes está en la última columna. Asignando parámetros a las incógnitas secundarias,  $x_2 = \alpha$  y  $x_4 = \beta$ , y despejando las incógnitas principales  $x_1$ ,  $x_3$  y  $x_5$  en función de las secundarias obtenemos la solución general:

$$x_5 = -2$$
  
 $x_3 = 2 - 2x_4 = 2 - 2\beta$   
 $x_1 = -3x_2 + 3x_4 = -3\alpha + 3\beta$ 

donde  $\alpha$  y  $\beta$  recorren todos los valores de  $\mathbb{K}$ . La solución general también se puede presentar como

$$(x_1, x_2, x_3, x_4, x_5) = (-3\alpha + 3\beta, \alpha, 2 - 2\beta, \beta, -2)$$
 con  $\alpha, \beta \in \mathbb{K}$ 

o bien en forma de conjunto con el formato:

$$\{(-3\alpha + 3\beta, \alpha, 2 - 2\beta, \beta, -2) : \alpha, \beta \in \mathbb{K}\}$$

La diferencia en la resolución de los sistemas escalonados reducidos y no reducidos es mínima. En los sistemas escalonados reducidos las incógnitas principales se despejan directamente sin verse afectadas por otras incógnitas principales y eso hace que el proceso de sustitución sea inmediato.

A continuación vamos a ver un último ejemplo, un sistema lineal en el que la matriz de coeficientes es triangular sin ceros en la diagonal principal. Este tipo de sistema se denomina **sistema triangular**. Los sistemas triangulares son sistemas compatibles determinados.

Ejemplo 2.11

Resuelva el sistema lineal triangular:

$$\mathcal{A} \equiv \begin{cases} x_1 + 4x_2 + 3x_3 = 1\\ 2x_2 - 2x_3 = 6\\ x_3 = -2 \end{cases}$$

Solución: La matriz ampliada del sistema es

$$(A \mid B) = \begin{pmatrix} 1 & 4 & 3 & 1 \\ 0 & 2 & -2 & 6 \\ 0 & 0 & 1 & -2 \end{pmatrix}$$

El sistema es compatible determinado ya que el número de pivotes (3) es igual al número de incógnitas (3) y ninguno de los pivotes está en la última columna. Aplicamos el método de sustitución de incógnitas de abajo hacia arriba:

$$x_3 = -2$$
  
 $x_2 = \frac{1}{2}(6 + 2x_3) = \frac{1}{2}(6 - 4) = 1$   
 $x_1 = 1 - 4x_2 - 3x_3 = 1 - 4 + 6 = 3$ 

Luego (3,1,-2) es la única solución de  $\mathcal{A}$ .

El método de transformación de los sistemas lineales en sistemas lineales escalonados se conoce como **método de eliminación gaussiana**. En el procedimiento de escalonamiento se van eliminando incógnitas: la primera incógnita de cada ecuación no aparece en las siguientes ecuaciones. El método surgió como algoritmo de resolución de sistemas lineales. El nombre se debe a Gauss, aunque hoy en día se sabe que era conocido por los matemáticos chinos muchos siglos antes.

### Discusión y resolución de los sistemas lineales

#### Teorema 2.12: Teorema de Rouché-Fröbenius[^1]

Sea AX = B un sistema lineal con n incógnitas y sea $( A \mid B )$ su matriz ampliada.

- 1. AX = B es incompatible si y sólo si  $rg(A) < rg(A \mid B)$ .
- 2. AX = B es compatible determinado si y sólo si  $rg(A) = rg(A \mid B) = n$ .
- 3. AX = B es compatible indeterminado si y sólo si  $rg(A) = rg(A \mid B) < n$ .

**Demostración:** Sea A'X = B' un sistema escalonado equivalente a AX = B, es decir tal que la matriz (A'|B') es escalonada y equivalente por filas a (A|B). Entonces, por el Teorema 2.8 se tiene que:

- 1. A'X = B' es incompatible si y sólo si (A'|B') tiene un pivote en la última columna, si y sólo si rg(A') < rg(A'|B'), si y sólo si rg(A) < rg(A|B).
- 2. A'X = B' es compatible determinado si y sólo si (A'|B') no tiene un pivote en la última columna y el número de pivotes es igual al número de incógnitas; lo que es equivalente a  $\operatorname{rg}(A') = \operatorname{rg}(A'|B') = n$ , es decir  $\operatorname{rg}(A) = \operatorname{rg}(A|B) = n$ .
- 3. A'X = B' es compatible determinado si y sólo si (A'|B') no tiene un pivote en la última columna y el número de pivotes es menor que el número de incógnitas; lo que es equivalente a rg(A') = rg(A'|B') < n, es decir rg(A) = rg(A|B) < n.  $\square$



En el caso particular de los sistemas lineales homogéneos, del tipo AX=0 con n incógnitas, siempre se cumple que  $\operatorname{rg}(A)=\operatorname{rg}(A\mid 0)$  y por lo tanto siempre son compatibles. Una solución trivial viene dada por

$$x_1 = \cdots = x_n = 0$$

El Teorema de Rouche-Fröbenius nos dice que un sistema homogéneo es compatible determinado si rg(A) = n y que es compatible indeterminado si rg(A) < n.

Para discutir y/o resolver un sistema lineal AX = B procedemos como sigue:

- 1. Aplicamos operaciones elementales por filas a su matriz ampliada ( $A \mid B$ ) hasta transformarla en una matriz escalonada equivalente ( $A' \mid B'$ ), y discutimos el sistema escalonado A'X = B' empleando el Teorema 2.8 o el Teorema de Rouché-Fröbenuis.
- 2. Si queremos resolver el sistema AX = B tenemos dos opciones:
  - i. Resolvemos A'X = B' por el método de sustitución de incógnitas de abajo hacia arriba.
  - ii. Continuamos aplicando operaciones elementales por filas a  $(A' \mid B')$  hasta llegar a la forma escalonada reducida equivalente  $(A'' \mid B'')$  y resolvemos el sistema escalonado reducido A''X = B''.

#### Ejemplo 2.13

Discuta v resuelva los siguientes sistemas lineales:

$$\mathcal{A}_1 \equiv \begin{cases} x_1 + 2x_2 + 3x_3 = 4 \\ x_1 + 2x_2 + 3x_3 = 7 \\ x_1 + 5x_2 + 2x_3 = 4 \end{cases} \qquad \mathcal{A}_2 \equiv \begin{cases} 2x_1 + 3x_2 + 5x_3 = 1 \\ 4x_1 + 8x_2 + 12x_3 = 0 \\ 6x_1 + 7x_2 + 13x_3 = 5 \end{cases} \qquad \mathcal{A}_3 \equiv \begin{cases} x_1 + 3x_2 + 5x_3 = 4 \\ x_2 + \lambda x_3 = 0 \\ 2x_1 - x_2 + 3x_3 = 1 \end{cases}$$

Solución: Para discutir cada sistema calcularemos una matriz escalonada equivalente a la matriz ampliada del sistema. Después, en el caso de que el sistema sea compatible, lo resolveremos por los métodos indicados.

Sistema  $A_1$ : Calculamos una matriz escalonada equivalente a la matriz ampliada de  $A_1$ 

$$\begin{pmatrix}
1 & 2 & 3 & | & 4 \\
1 & 2 & 3 & | & 7 \\
1 & 5 & 2 & | & 4
\end{pmatrix}
\xrightarrow{f_2 \to f_2 - f_1}
\begin{pmatrix}
1 & 2 & 3 & | & 4 \\
0 & 0 & 0 & | & 3 \\
1 & 5 & 2 & | & 4
\end{pmatrix}$$

Ya no seguimos. Nos ha aparecido una fila que se corresponde con la ecuación 0 = 3. El sistema asociado es incompatible, y por tanto  $A_1$  es incompatible.

Sistema  $A_2$ : Calculamos una matriz escalonada equivalente a la matriz ampliada de  $A_2$ 

$$(A|B) = \begin{pmatrix} 2 & 3 & 5 & | & 1 \\ 4 & 8 & 12 & | & 0 \\ 6 & 7 & 13 & | & 5 \end{pmatrix} \sim_f \begin{pmatrix} 2 & 3 & 5 & | & 1 \\ 0 & 2 & 2 & | & -2 \\ 6 & 7 & 13 & | & 5 \end{pmatrix} \sim_f \begin{pmatrix} 2 & 3 & 5 & | & 1 \\ 0 & 2 & 2 & | & -2 \\ 0 & -2 & -2 & | & 2 \end{pmatrix} \sim_f \begin{pmatrix} 2 & 3 & 5 & | & 1 \\ 0 & 2 & 2 & | & -2 \\ 0 & 0 & 0 & | & 0 \end{pmatrix} = (A'|B')$$

Esta última matriz es escalonada y tiene 2 pivotes, ninguno de ellos en la última columna. Sea  $\mathcal{A}'_2$  el sistema lineal asociado a (A'|B'). Como  $\mathcal{A}'_2$  tiene 3 incógnitas entonces se trata de un sistema compatible indeterminado. Y por tanto también  $\mathcal{A}_2$  es compatible indeterminado. Ya hemos discutido  $\mathcal{A}_2$ , ahora pasamos a resolverlo. Utilizaremos los dos métodos descritos:

Método 2.i: Tenemos el sistema escalonado

$$\mathcal{A}_2' \equiv \begin{cases} 2x_1 + 3x_2 + 5x_3 = 1\\ 2x_2 + 2x_3 = -2 \end{cases}$$

Vamos a resolverlo por el método de sustitución de incógnitas de abajo hacia arriba. Asignamos parámetros a la incógnita secundaria:  $x_3 = \alpha$  con  $\alpha \in \mathbb{K}$ . Así tenemos que:

$$\begin{cases} x_3 = \alpha \\ x_2 = \frac{1}{2}(-2 - 2x_3) = -1 - \alpha \\ x_1 = \frac{1}{2}(1 - 3x_2 - 5x_3) = \frac{1}{2} - \frac{3}{2}(-1 - \alpha) - \frac{5}{2}\alpha = 2 - \alpha \end{cases}$$

que es la solución de  $\mathcal{A}_2'$  y por tanto también de  $\mathcal{A}_2.$ 

**Método 2.ii:** Seguimos aplicando operaciones elementales por filas a (A'|B') hasta llegar a la escalonada reducida equivalente (la forma de Hermite por filas de (A|B))

$$\begin{pmatrix} 2 & 3 & 5 & 1 \\ 0 & 2 & 2 & -2 \\ 0 & 0 & 0 & 0 \end{pmatrix} \sim_f \begin{pmatrix} 2 & 3 & 5 & 1 \\ 0 & 1 & 1 & -1 \\ 0 & 0 & 0 & 0 \end{pmatrix} \sim_f \begin{pmatrix} 2 & 0 & 2 & 4 \\ 0 & 1 & 1 & -1 \\ 0 & 0 & 0 & 0 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 0 & 1 & 2 \\ 0 & 1 & 1 & -1 \\ 0 & 0 & 0 & 0 \end{pmatrix} = H_f(A|B)$$

El sistema lineal escalonado reducido cuya matriz ampliada es  $H_f(A|B)$  viene dado por

$$\mathcal{A}_2'' \equiv \begin{cases} x_1 & + x_3 = 2 \\ & x_2 + x_3 = -1 \end{cases}$$

que tiene incógnitas principales  $x_1, x_2$  e incógnita secundaria  $x_3$ . La solución general de  $\mathcal{A}_2''$  es:

$$\begin{cases} x_1 = 2 - x_3 = 2 - \alpha \\ x_2 = -1 - x_3 = -1 - \alpha \\ x_3 = \alpha \end{cases}$$

donde  $\alpha$  recorre todos los valores de  $\mathbb{K}$ . Es la misma solución general de  $\mathcal{A}_2$ .

Sistema  $A_3$ : Calculamos una matriz escalonada equivalente a la matriz ampliada de  $A_3$ 

$$(A|B) = \begin{pmatrix} 1 & 3 & 5 & | & 4 \\ 0 & 1 & \lambda & | & 0 \\ 2 & -1 & 3 & | & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 3 & 5 & | & 4 \\ 0 & 1 & \lambda & | & 0 \\ 0 & -7 & -7 & | & -7 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 3 & 5 & | & 4 \\ 0 & 1 & \lambda & | & 0 \\ 0 & 0 & -7 + 7\lambda & | & -7 \end{pmatrix} = (A'|B')$$

Esta última matriz es escalonada y dependiendo del valor que tome  $\lambda$  el sistema será de un tipo o de otro.

 $\lambda = 1$ . Entonces

$$(A'|B') = \begin{pmatrix} 1 & 3 & 5 & | & 4 \\ 0 & 1 & 1 & | & 0 \\ 0 & 0 & 0 & | & -7 \end{pmatrix}$$

v el sistema es incompatible ya que rg(A') = 2 < 3 = rg(A'|B').

 $\lambda \neq 1$ . Entonces el sistema es compatible determinado ya que  $\operatorname{rg}(A') = \operatorname{rg}(A'|B') = 3$ . Tenemos

$$\mathcal{A}_3' \equiv \begin{cases} x_1 + 3x_2 + 5x_3 = 4\\ x_2 + \lambda x_3 = 0\\ (-7 + 7\lambda)x_3 = -7 \end{cases}$$

El sistema carece de incógnitas secundarias, de manera que pasamos directamente a calcular el valor de las incógnitas principales por el método de sustitución de incógnitas de abajo hacia arriba. Tenemos que:

$$\begin{cases} x_3 = \frac{-7}{-7+7\lambda} = \frac{1}{1-\lambda} \\ x_2 = -\lambda x_3 = \frac{-\lambda}{1-\lambda} \\ x_1 = 4 - 3x_2 + 5x_3 = \frac{4-4\lambda}{1-\lambda} - \frac{3\lambda}{1-\lambda} - \frac{5}{1-\lambda} = \frac{-1-\lambda}{1-\lambda} \end{cases}$$

que es la solución de  $\mathcal{A}_3'$  y por tanto también de  $\mathcal{A}_3$ .  $\square$ 

Un sistema lineal AX = B es equivalente a distintos sistemas escalonados, de echo a cualquiera cuya matriz ampliada fuese escalonada y equivalente por filas a la matriz (A|B). Sin embargo, cada sistema lineal es equivalente a un único sistema escalonado reducido. Teniendo en cuenta que la forma de Hermite por filas de una matriz es única, el único sistema escalonado reducido equivalente a AX = B es aquél cuya matriz ampliada es  $H_f(A|B)$ . De esto se deduce el siguiente resultado práctico que nos permite comprobar si dos sistemas lineales dados son equivalentes sin necesidad de resolverlos.

#### Proposición 2.14

Dos sistemas lineales son equivalentes si y sólo si son equivalentes al mismo sistema escalonado reducido.

Ejemplo 2.15

Determine si son equivalentes los siguientes sistemas lineales:

$$\mathcal{A}_1 \equiv \begin{cases} 2x_1 + x_2 + 3x_3 = 3 \\ x_1 + x_2 + 2x_3 = 1 \end{cases} \qquad \mathcal{A}_2 \equiv \begin{cases} 2x_1 + 3x_2 + 5x_3 = 1 \\ 4x_1 + 8x_2 + 12x_3 = 0 \\ 6x_1 + 7x_2 + 13x_3 = 5 \end{cases}$$

Solución: Calculamos la forma escalonada reducida de la matriz ampliada del sistema  $\mathcal{A}_1$ 

$$(A_1|B_1) = \begin{pmatrix} 2 & 1 & 3 & 3 \\ 1 & 1 & 2 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 2 & 1 & 3 & 3 \\ 0 & 1 & 1 & -1 \end{pmatrix} \sim_f \begin{pmatrix} 2 & 0 & 2 & 4 \\ 0 & 1 & 1 & -1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 0 & 1 & 2 \\ 0 & 1 & 1 & -1 \end{pmatrix} = (A_1'|B_1')$$

y lo mismo para la matriz ampliada de  $\mathcal{A}_2$  (esto ya lo hicimos en el Ejemplo 2.13)

$$(A_2|B_2) = \begin{pmatrix} 2 & 3 & 5 & | 1 \\ 4 & 8 & 12 & | 0 \\ 6 & 7 & 13 & | 5 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 0 & 1 & | & 2 \\ 0 & 1 & 1 & | & | & -1 \\ 0 & 0 & 0 & | & 0 \end{pmatrix} = (A_2'|B_2')$$

Observamos que la diferencia entre las matrices escalonadas reducidas  $(A'_1|B'_1)$  y  $(A'_2|B'_2)$  es una fila de ceros. Ambas se corresponden con el mismo sistema lineal

$$\begin{cases} x_1 + x_3 = 2 \\ x_2 + x_3 = -1 \end{cases}$$

y por lo tanto los sistemas lineales  $A_1$  y  $A_2$  son equivalentes.  $\square$ 

Según el Teorema de Rouché-Fröbenius un sistema AX = B es compatible si y sólo si rg(A) = rg(A|B). En otras palabras, al añadir a la matriz A la columna B no aumenta el rango, es decir no aumenta el número de columnas linealmente independientes. Esto es lo que afirma el siguiente resultado

#### Corolario 2.16

El sistema AX = B tiene solución si y sólo si B es una combinación lineal de las columnas de A.

#### Ejemplo 2.17

El sistema

$$\mathcal{A} \equiv \begin{cases} x_1 + 3x_2 + x_3 = -2\\ 4x_2 + 3x_3 = 3\\ 2x_1 + x_2 - 2x_3 = -9 \end{cases}$$

lo podemos escribir como AX = B, esto es,

$$\begin{pmatrix} 1 & 3 & 1 \\ 0 & 4 & 3 \\ 2 & 1 & -2 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} -2 \\ 3 \\ -9 \end{pmatrix} \iff x_1 \begin{pmatrix} 1 \\ 0 \\ 2 \end{pmatrix} + x_2 \begin{pmatrix} 3 \\ 4 \\ 1 \end{pmatrix} + x_3 \begin{pmatrix} 1 \\ 3 \\ -2 \end{pmatrix} = \begin{pmatrix} -2 \\ 3 \\ -9 \end{pmatrix}$$

donde vemos que el sistema tiene solución si y sólo si B es combinación lineal de las columnas de A. Cada solución nos da una combinación lineal de las columnas de A que es igual a B. En concreto  $\mathcal A$  es compatible determinado ya que  $\operatorname{rg}(A)=\operatorname{rg}(A\mid B)=3$ , y su solución es

$$(x_1, x_2, x_3) = (2, -3, 5)$$

Luego

$$\begin{pmatrix} -2\\3\\-9 \end{pmatrix} = 2 \begin{pmatrix} 1\\0\\2 \end{pmatrix} - 3 \begin{pmatrix} 3\\4\\1 \end{pmatrix} + 5 \begin{pmatrix} 1\\3\\-2 \end{pmatrix} \qquad \Box$$

El Teorema 1.60 nos dice que una matriz A de orden n es invertible si y sólo si rg(A) = n. Luego una consecuencia inmediata del Teorema de Rouche-Fröbenius es el siguiente resultado.

#### Corolario 2.18

Un sistema lineal AX = B con A de orden n tiene solución única si y sólo si A es invertible. Además, si tiene solución ésta es  $X = A^{-1}B$ .

### Regla de Cramer

Un sistema lineal AX = B es un sistema regular de orden n o sistema de Cramer si A es una matriz de orden n invertible. El Corolario 2.18 dice que todo sistema regular admite una solución única. El siguiente resultado nos proporciona un método de cálculo de dicha solución, una alternativa a los procedimientos descritos. Es importante señalar que no es una alternativa competitiva computacionalmente, es decir, que es un método que conlleva más cálculos por el uso de determinantes. Esto se aprecia más en dimensiones altas.

#### Teorema 2.19: Regla de Cramer[^2]

La única solución de un sistema regular AX = B de orden n viene dada por

$$x_1 = \frac{\Delta_1}{\det(A)}, \ x_2 = \frac{\Delta_2}{\det(A)}, \dots, \ x_n = \frac{\Delta_n}{\det(A)}$$

donde  $\Delta_i$  es el determinante de la matriz que se obtiene cambiando la columna i de A por B.

**Demostración:** Dado que A es invertible entonces tiene inversa  $A^{-1}$ . Multiplicando ambos lados de AX = B por la izquierda por  $A^{-1}$  obtenemos  $X = A^{-1}B$ , que nos proporciona la solución del sistema. Utilizando la expresión de la inversa dada en la Sección 1.5. pág. 65. tenemos

$$\begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix} = \frac{1}{\det(A)} \begin{pmatrix} \alpha_{11} & \cdots & \alpha_{1n} \\ \vdots & \ddots & \vdots \\ \alpha_{n1} & \cdots & \alpha_{nn} \end{pmatrix}^t \begin{pmatrix} b_1 \\ \vdots \\ b_n \end{pmatrix} = \frac{1}{\det(A)} \begin{pmatrix} \alpha_{11}b_1 + \cdots + \alpha_{n1}b_n \\ \vdots \\ \alpha_{1n}b_1 + \cdots + \alpha_{nn}b_n \end{pmatrix} = \frac{1}{\det(A)} \begin{pmatrix} \Delta_1 \\ \vdots \\ \Delta_n \end{pmatrix}$$

tal v como buscábamos.

#### Ejemplo 2.20

El sistema lineal

$$\mathcal{A} \equiv \begin{cases} -x_1 + x_2 + x_3 = 3\\ x_1 + x_2 - x_3 = -1\\ x_1 - x_2 + x_3 = 1 \end{cases}$$

es un sistema regular de orden 3 puesto que

$$\det(A) = \begin{vmatrix} -1 & 1 & 1\\ 1 & 1 & -1\\ 1 & -1 & 1 \end{vmatrix} = -4 \neq 0$$

Podemos resolverlo por la Regla de Cramer:

$$x_{1} = \frac{\begin{vmatrix} 3 & 1 & 1 \\ -1 & 1 & -1 \\ 1 & -1 & 1 \end{vmatrix}}{-4} = 0, \quad x_{2} = \frac{\begin{vmatrix} -1 & 3 & 1 \\ 1 & -1 & -1 \\ 1 & 1 & 1 \end{vmatrix}}{-4} = 1, \quad x_{3} = \frac{\begin{vmatrix} -1 & 1 & 3 \\ 1 & 1 & -1 \\ 1 & -1 & 1 \end{vmatrix}}{-4} = 2 \qquad \Box$$

### Resolución de sistemas compatibles indeterminados con la Regla de Cramer

Si tenemos un sistema escalonado compatible indeterminado, y por lo tanto sabemos cuáles son las incógnitas principales y secundarias, podemos llevar las incógnitas secundarias junto con los términos independientes y resolver el sistema utilizando el método de Cramer como si se tratase de un sistema compatible determinado en las incógnitas principales. Veamos como proceder con el sistema del Ejemplo 2.9

$$\mathcal{A} \equiv \begin{cases} 3x_1 + 3x_2 + x_3 - x_4 + x_5 = -1\\ 2x_3 + x_4 + x_5 = 4\\ x_4 + x_5 = -2 \end{cases}$$

En primer lugar, a las incógnitas secundarias les asignamos valores genéricos o parámetros  $x_2 = \beta$  y  $x_5 = \alpha$  y las pasamos al otro lado de las ecuaciones junto con los términos independientes:

$$\mathcal{A}' \equiv \begin{cases} 3x_1 + x_3 - x_4 = -1 - 3\beta - \alpha \\ 2x_3 + x_4 = 4 - \alpha \\ x_4 = -2 - \alpha \end{cases}$$

y ahora resolvemos el sistema como un sistema regular con tres incógnitas  $x_1, x_3$  y  $x_4$  puesto que

$$\det(A') = \begin{vmatrix} 3 & 1 & -1 \\ 0 & 2 & 1 \\ 0 & 0 & 1 \end{vmatrix} = 6 \neq 0$$

Aplicando la Regla de Cramer tenemos:

$$x_{1} = \frac{\begin{vmatrix} -1 - 3\beta - \alpha & 1 & -1 \\ 4 - \alpha & 2 & 1 \\ -2 - \alpha & 0 & 1 \end{vmatrix}}{6} = -2 - \beta - \frac{2}{3}\alpha$$

$$x_{3} = \frac{\begin{vmatrix} 3 & -1 - 3\beta - \alpha & -1 \\ 0 & 4 - \alpha & 1 \\ 0 & -2 - \alpha & 1 \end{vmatrix}}{6} = 3,$$

$$x_{4} = \frac{\begin{vmatrix} 3 & 1 & -1 - 3\beta - \alpha \\ 0 & 2 & 4 - \alpha \\ 0 & 0 & -2 - \alpha \end{vmatrix}}{6} = -2 - \alpha$$

y tenemos la misma solución que en el Ejemplo 2.9.  $\Box$ 

## 2.3. Factorización LU

En situaciones prácticas interesa calcular las soluciones de aquellos sistemas lineales AX = B para los que la matriz de coeficientes  $A \in \mathfrak{M}_n(\mathbb{K})$  es fija e invertible mientras que la matriz de términos independientes  $B \in \mathfrak{M}_{n \times 1}(\mathbb{K})$  va variando. Un ejemplo sería el caso de una compañía que quiere calcular los valores de las variables  $x_1, \ldots, x_n$  necesarios para obtener ciertas cantidades de productos  $b_1, \ldots, b_n$  y dispone de una matriz fija e invertible A que determina las relaciones entre las variables y los productos. En un caso así resulta poco eficiente aplicar el método de Gauss a cada sistema con matriz ampliada (A|B) donde B va variando, ya que tendríamos que repetir las operaciones necesarias para el escalomnamiento de A, a B, cada vez. Es más adecuado realizar una manipulación previa de A que simplifique posteriormente la resolución de todos los sistemas.

Dicha manipulación consiste en una descomposición de la matriz conocida como factorización  LU[^3]. Supongamos que podemos descomponer la matriz invertible  $A \in \mathfrak{M}_n(\mathbb{K})$  como un producto

$$A = LU$$

donde  $L \in \mathfrak{M}_n(\mathbb{K})$  es una matriz invertible triangular inferior y  $U \in \mathfrak{M}_n(\mathbb{K})$  es una matriz invertible triangular superior. Tenemos por tanto

$$AX = B \Leftrightarrow LUX = B \Leftrightarrow LY = B \operatorname{con} UX = Y$$

Resolvemos ahora el sistema AX = B en dos pasos:

**Paso 1**: Se resuelve el sistema LY = B despejando las incógnitas de arriba hacia abajo. Como L es invertible el sistema es compatible determinado y tiene una única solución Y.

**Paso 2**: Se resuelve el sistema UX = Y despejando las incógnitas de abajo hacia arriba. Como U es invertible el sistema es compatible determinado y tiene una única solución X. La solución X es la solución del sistema AX = B.

#### Eiemplo 2.21

Queremos resolver el sistema AX = B dado por

$$\begin{cases} x_1 - 3x_2 + x_3 = 0 \\ 3x_1 - 8x_2 + 5x_3 = 3 \\ x_1 - 5x_2 - 2x_3 = -5 \end{cases}$$

cuva matriz ampliada es

$$(A|B) = \left(\begin{array}{ccc|c} 1 & -3 & 1 & 0 \\ 3 & -8 & 5 & 3 \\ 1 & -5 & -2 & -5 \end{array}\right)$$

Observamos que podemos descomponer

$$A = \begin{pmatrix} 1 & -3 & 1 \\ 3 & -8 & 5 \\ 1 & -5 & -2 \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 \\ 3 & 1 & 0 \\ 1 & -2 & 1 \end{pmatrix} \begin{pmatrix} 1 & -3 & 1 \\ 0 & 1 & 2 \\ 0 & 0 & 1 \end{pmatrix} = LU$$

como producto de una triangular inferior por una triangular superior. El sistema nos queda entonces de la forma LUX = B. Hacemos pues UX = Y y resolvemos el sistema LY = B dado por

$$\begin{cases} y_1 & = 0 \\ 3y_1 + y_2 & = 3 \\ y_1 - 2y_2 + y_3 & = -5 \end{cases}$$

sustituvendo de arriba hacia abajo:

$$y_1 = 0$$
  
 $y_2 = 3 - 3y_1 = 3$   
 $y_3 = -5 - y_1 + 2y_2 = 1$ 

Resolvemos ahora el sistema UX = Y dado por

$$\begin{cases} x_1 - 3x_2 + x_3 = 0 \\ x_2 + 2x_3 = 3 \\ x_3 = 1 \end{cases}$$

sustituyendo de abajo hacia arriba:

$$x_3 = 1$$
  
 $x_2 = 3 - 2x_3 = 1$   
 $x_1 = 3x_2 - x_3 = 2$ 

que es la solución del sistema AX = B.

¿Cualquier matriz invertible  $A \in \mathfrak{M}_n(\mathbb{K})$  admite una factorización LU? No. Entonces, ¿en qué casos A admite una factorización LU? Siempre que A se pueda transformar mediante operaciones elementales por filas en una matriz escalonada sin utilizar el intercambio de filas. ¿Y cómo calculamos de forma sistemática L y U? Procedemos a escalonar A de la forma habitual siguiendo el método de Gauss

$$A \xrightarrow{f_{i_1} \to \cdots} \xrightarrow{f_{i_2} \to \cdots} \cdots \xrightarrow{f_{i_k} \to \cdots} U$$

de manera que llegamos a una matriz escalonada U con pivotes no nulos en la diagonal principal, y si  $E_1, \ldots, E_k \in \mathfrak{M}_n$  son las matrices elementales asociadas a las operaciones elementales (todas ellas triangulares inferiores e invertibles) tendremos que

$$E_k \cdots E_1 A = U \quad \Rightarrow \quad A = (E_k \cdots E_1)^{-1} U$$

donde  $L = (E_k \cdots E_1)^{-1}$  es una matriz triangular inferior e invertible. Y se cumple A = LU.

Obsérvese que podemos calcular  $L^{-1}$  a la par que U, ya que partiendo de la matriz  $(A|I_n)$  y aplicando a sus filas las operaciones elementales  $E_1, \ldots, E_k$  tendremos

$$(A|I_n) \longrightarrow (E_k \cdots E_1 A|E_k \cdots E_1) = (U|L^{-1})$$

y después calcularemos L invirtiendo  $L^{-1}$ .

#### Teorema 2.22

Sea  $A \in \mathfrak{M}_n(\mathbb{K})$  una matriz invertible. Son equivalentes las afirmaciones:

- 1. A tiene una factorización LU.
- 2. A se puede transformar en una matriz escalonada mediante operaciones elementales por filas sin utilizar el intercambio de filas.

3. 
$$\Delta_i(A) = \det \begin{pmatrix} a_{11} & \cdots & a_{1i} \\ \vdots & \ddots & \vdots \\ a_{i1} & \cdots & a_{ii} \end{pmatrix} \neq 0$$
 para cada  $i = 1, \dots, n$ .

**Demostración:**  $2. \Rightarrow 1$ . Ya lo hemos demostrado antes.

 $1. \Rightarrow 3.$  Para cada  $i \in \{1, \dots, n\}$  consideramos las matrices L y U particionadas en bloques

$$L = \begin{pmatrix} L_{11} & 0 \\ L_{21} & L_{22} \end{pmatrix}, \qquad U = \begin{pmatrix} U_{11} & U_{12} \\ \hline 0 & U_{22} \end{pmatrix}$$

con  $L_{11}, U_{11} \in \mathfrak{M}_i(\mathbb{K})$ . Como L es triangular inferior e invertible entonces  $L_{11}$  es triangular inferior e invertible, y como U es triangular superior e invertible entonces  $U_{11}$  es triangular superior e invertible. Entonces

$$A = LU = \begin{pmatrix} L_{11} & 0 \\ L_{21} & L_{22} \end{pmatrix} \begin{pmatrix} U_{11} & U_{12} \\ 0 & U_{22} \end{pmatrix} = \begin{pmatrix} L_{11}U_{11} & * \\ * & * \end{pmatrix}$$

El resultado se sigue puesto que  $\det(L_{11}U_{11}) \neq 0$  por ser  $L_{11}$  y  $U_{11}$  invertibles.

 $3. \Rightarrow 2.$  Para todo  $i=1,\ldots,n$  tenemos que  $\Delta_i(A) \neq 0,$  entonces

$$\operatorname{rg}\begin{pmatrix} a_{11} & \cdots & a_{1i} \\ \vdots & \ddots & \vdots \\ a_{i1} & \cdots & a_{ii} \end{pmatrix} = i$$

por lo que dicha matriz nunca será equivalente por filas a una matriz del tipo

$$\begin{pmatrix} a'_{11} & \cdots & a'_{1i} \\ \vdots & \ddots & \vdots \\ a'_{i-1,1} & \cdots & a'_{i-1,i} \\ 0 & \cdots & 0 \end{pmatrix}$$

Podemos deducir que en ningún momento será necesario hacer un intercambio de filas para buscar el pivote que aparecerá en la posición (i,i).

#### Ejemplo 2.23

Encuentre una factorización LU de la matriz

$$A = \begin{pmatrix} 1 & -3 & 1 \\ 3 & -8 & 5 \\ 1 & -5 & -2 \end{pmatrix}$$

**Solución:** Se puede comprobar que los menores principales de A son distintos de 0, y por lo tanto admite una factorización LU. Escalonamos la matriz  $(A|I_3)$ :

$$\begin{pmatrix} 1 & -3 & 1 & 1 & 0 & 0 \\ 3 & -8 & 5 & 0 & 1 & 0 \\ 1 & -5 & -2 & 0 & 0 & 1 \end{pmatrix} \sim \begin{pmatrix} 1 & -3 & 1 & 1 & 0 & 0 \\ 0 & 1 & 2 & -3 & 1 & 0 \\ 0 & -2 & -3 & -1 & 0 & 1 \end{pmatrix} \sim \begin{pmatrix} 1 & -3 & 1 & 1 & 0 & 0 \\ 0 & 1 & 2 & -3 & 1 & 0 \\ 0 & 0 & 1 & -7 & 2 & 1 \end{pmatrix} \sim (U|L^{-1})$$

Calculamos L:

$$L = \begin{pmatrix} 1 & 0 & 0 \\ -3 & 1 & 0 \\ -7 & 2 & 1 \end{pmatrix}^{-1} = \begin{pmatrix} 1 & 0 & 0 \\ 3 & 1 & 0 \\ 1 & -2 & 1 \end{pmatrix}$$

Y comprobamos que A = LU a continuación

$$\begin{pmatrix} 1 & 0 & 0 \\ 3 & 1 & 0 \\ 1 & -2 & 1 \end{pmatrix} \begin{pmatrix} 1 & -3 & 1 \\ 0 & 1 & 2 \\ 0 & 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & -3 & 1 \\ 3 & -8 & 5 \\ 1 & -5 & -2 \end{pmatrix} \qquad \Box$$

Ventajas del método LU: En una primera impresión puede parecer que este método que supone resolver dos sistemas triangulares en lugar de uno no triangular, sobre todo en un ejemplo como el anterior con pocas incógnitas, no aporta grandes beneficios. Pero, si evaluamos el coste computacional[^4] de acuerdo al número de operaciones que hay que realizar para resolverlos se entiende mejor. Resolver un sistema de n ecuaciones y n incógnitas conlleva del orden de  $n^3/3$  operaciones (sumas y multiplicaciones) utilizando el método de Gauss. Mientras que resolver un sistema escalonado (inferior o superior) supone del orden de  $n^2/2$  operaciones. Cuando n es muy grande la diferencia sí es significativa.

 $\mathcal{L}$ Qué se puede hacer si A es invertible pero no admite una factorización LU? Vamos a dar una idea del proceso que se sigue en ese caso. El problema con el que nos encontramos es que para escalonar A es necesario intercambiar filas. De manera que en primer lugar se localizarían todos los intercambios de filas necesarios en el proceso de transformar A en una matriz escalonada. Entonces, previamente a comenzar el proceso de factorización LU, se multiplica A a la izquierda por la matriz P que hace estos intercambios de filas para posteriormente realizar la factorización LU de PA.

## 2.4. Ejercicios propuestos

**2.1.** Resuelva para todos los valores reales  $a \ y \ b$  el sistema lineal

$$\mathcal{A} \equiv \left\{ \begin{array}{l} ax_1 + bx_2 = 0\\ 3x_1 - 2x_2 = 2 \end{array} \right.$$

**2.2.** Decida para cada par de valores  $\alpha, \beta \in \mathbb{K}$  si el siguiente sistema lineal es compatible determinado, compatible indeterminado o incompatible

$$\begin{cases} x + \alpha y + \beta z = \alpha \\ x + \beta y + \alpha z = 0 \\ 3y + 2z = 1 \end{cases}$$

**2.3.** Discuta y resuelva, según los valores de los parámetros  $\alpha, \beta \in \mathbb{K}$ , el sistema

$$\mathcal{A} \equiv \begin{cases} \alpha x + y + z = 1\\ \alpha x + \alpha y + z = \beta\\ \alpha x + \alpha y + \alpha z = \beta\\ y + (\beta + 1)z = 1 \end{cases}$$

**2.4.** Resuelva el sistema

$$\begin{cases} 3x_1 + (-2-i)x_2 + ix_3 = 2i\\ ix_1 + x_2 + (1-i)x_3 = 1+2i\\ -2ix_1 - 2x_2 + 2x_3 = 1 \end{cases}$$

**2.5.** Discuta y resuelva el sistema AX = B dependiendo del valor de  $\alpha \in \mathbb{K}$ 

$$\begin{cases} x_1 - \alpha x_2 & -\alpha x_4 = 0\\ \alpha x_1 + 4x_2 & +4x_4 = 2\\ & 2x_3 - \alpha x_4 = 0\\ & \alpha x_3 + 2x_4 = 1 \end{cases}$$

**2.6.** Sean  $A, B \in \mathfrak{M}_n(\mathbb{K}), C \in \mathfrak{M}_{n \times 1}(\mathbb{K})$  con  $C \neq 0$ , y  $D \in \mathfrak{M}_{n \times k}(\mathbb{K})$  con  $D \neq 0$ . Demuestre que:
  - a) AC = BC implica que A B es singular.
  - b) AD = BD implica que A B es singular.
**2.7.** Sea A una matriz cuadrada de orden n tal que todos sus elementos son números enteros y tal que det(A)=1. Sea B una matriz de tamaño  $n\times 1$  tal que todos sus elementos son números enteros. De Teorema de Rouche-Fröbenius se sigue que el sistema lineal AX=B tiene una única solución  $(s_1,\ldots,s_n)$ . Demuestre que  $s_1,\ldots,s_n$  son números enteros.
**2.8.** Demuestre que si A es una matriz de orden n que verifica que la suma de las entradas que se encuentran en cada una de sus filas es igual a 0 entonces  $\det(A) = 0$ . Y demuestre que si B es una matriz de orden n que verifica que la suma de las entradas que se encuentran en cada una de sus columnas es igual a 0 entonces  $\det(B) = 0$ .
**2.9.** Calcule todas las matrices inversas por la derecha de la matriz

$$A = \begin{pmatrix} 1 & 2 & 1 \\ -1 & -1 & 2 \end{pmatrix}$$

**2.10.** Determine si existe algún valor a para el que tengan las mismas soluciones los sistemas
$$
\left\{
\begin{array}{rcrcrcrcl}
x_1 &+& x_2 &+& x_3 &+& ax_4 &=& -1\\
x_1 &+& x_2 &+& ax_3 &+& x_4 &=& 1\\
x_1 &+& ax_2 &+& x_3 &+& x_4 &=& -1\\
ax_1 &+& x_2 &+& x_3 &+& x_4 &=& 1
\end{array}
\right.
\qquad
\left\{
\begin{array}{rcrcrcrcl}
x_1 &+& x_2 &&-& x_3 &-& x_4 &=& 0\\
&& x_2 &&&&-& x_4 &=& 0\\
&&&&& x_3 &-& x_4 &=& -\dfrac12
\end{array}
\right.
$$

**2.11.** Sea AX = B un sistema lineal compatible indeterminado con  $A \in \mathfrak{M}_{m \times n}(\mathbb{K})$  y  $B \in \mathfrak{M}_{m \times 1}(\mathbb{K})$ . Sean  $C_1, \ldots, C_n$  las columnas de A. Determine la falsedad o veracidad de las afirmaciones:
  - a) El sistema AX = C con  $C = \alpha_1 C_1 + \ldots + \alpha_n C_n$ .  $\alpha_i \in \mathbb{K}$ , es compatible determinado.
  - b) Si AX=0 es compatible indeterminado y  $D=2C_1$ , entonces el sistema AX=D es compatible indeterminado.

## Notas
[^1]: Eugène Rouché (Sommières, 1832 Lunel, 1910). Ferdinand Georg Fröbenius (Charlottenburg, 1849 - Berlin, 1917).
[^2]: Gabriel Cramer (Ginebra, 1704 Bagnols-sur-Cèze, 1752).
[^3]: Del inglés: L de lower y U de upper.
[^4]: Strang, G. Álgebra Lineal y sus Aplicaciones.