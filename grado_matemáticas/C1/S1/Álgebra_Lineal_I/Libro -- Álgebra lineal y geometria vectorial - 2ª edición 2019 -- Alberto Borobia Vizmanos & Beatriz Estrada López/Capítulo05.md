# Capítulo 5: Formas canónicas de endomorfismos

En este capítulo vamos a interesarnos por estudiar propiedades de los endomorfismos de un  $\mathbb{K}$ -espacio vectorial V de dimensión finita, con  $\mathbb{K} = \mathbb{R}$  o  $\mathbb{C}$ . Nos interesará poder comparar endomorfismos para saber qué parecidos y qué diferencias significativas tienen. Para ello vamos a obtener representaciones matriciales sencillas, en las que se puedan apreciar estas diferencias.

## 5.1. Invariantes lineales

Se denota por GL(V) al conjunto formado por los automorfismos de V o aplicaciones lineales biyectivas de V en V. Este conjunto tiene estructura de grupo no commutativo para la operación de composición de aplicaciones, y se denomina **Grupo general lineal** de V.

Dos endomorfismos $f$ y $g$ de V son linealmente equivalentes si existe un automorfismo  $h \in GL(V)$  tal que  $f = h^{-1} \circ g \circ h$ . En forma de diagrama:

$$\begin{array}{ccc} V & \xrightarrow{f} & V \\ h \downarrow & & \uparrow h^{-1} \\ V & \xrightarrow{g} & V \end{array}$$

En términos matriciales, si  $A = \mathfrak{M}_{\mathcal{B}}(f)$  y  $B = \mathfrak{M}_{\mathcal{B}}(g)$  son matrices de $f$ y g, entonces existe una matriz regular  $P = \mathfrak{M}_{\mathcal{B}}(h)$ , que es la matriz de h, tal que  $A = P^{-1}BP$ . Es decir, que dos endomorfismos son linealmente equivalentes si y sólo si sus matrices son semejantes.

Recordamos, del capítulo anterior, que también son semejantes las matrices de un endomorfismo $f$ en distintas bases y están relacionadas por la matriz de cambio de base:

$$\mathfrak{M}_{\mathcal{B}'}(f) = P^{-1} \mathfrak{M}_{\mathcal{B}}(f) P \quad \text{, con} \quad  P = \mathfrak{M}_{\mathcal{B}'\mathcal{B}} $$

Lo que queremos es estudiar propiedades que comparten los endomorfismos linealmente equivalentes, o lo que es lo mismo, que permanecen invariantes por cambios de base. En términos matriciales estudiaremos propiedades que comparten las matrices semejantes. Estas propiedades se denominan invariantes lineales.

En capítulos previos ya hemos estudiado algunos invariantes lineales, como por ejemplo: el rango, la traza y el determinante. Dos matrices semejantes tienen el mismo rango, la misma traza y el mismo determinante. Sin embargo, dos matrices pueden tener el mismo rango, la misma traza y el mismo determinante y no ser semejantes.

Nuestro objetivo será encontrar nuevos invariantes lineales que determinen de forma completa la equivalencia lineal de endomorfismos, o equivalentemente la semejanza entre matrices. A eso se le denominará un conjunto completo de invariantes.

En definitiva, vamos a estudiar geometría tal y como la definió el matemático F. Klein[^1] en el conocido como  *Programa de Erlangen*  elaborado con motivo de su ingreso en la Facultad de Filosofía de la Universidad de Erlangen (1872). Según Klein, la geometría es el estudio de las propiedades que permanecen invariantes en un conjunto cuando en él actúa un grupo de transformaciones. En nuestro caso, el grupo de transformaciones es el grupo $GL(V)$  que actúa en el espacio vectorial $V$, y el estudio de invariantes lineales es la geometría vectorial.

La equivalencia lineal de endomorfismos es una relación de equivalencia. Pretendemos encontrar propiedades que caractericen a todos los endomorfismos de la misma clase de equivalencia, y lo haremos obteniendo una representación matricial común a todos: la forma canónica de Jordan.

En todo el capítulo. $V$ será un  $\mathbb{K}$  –espacio vectorial de dimensión finita $n$ y $f$ un endomorfismo de $V$.
## 5.2. Autovalores y autovectores. Endomorfismos diagonalizables

Con el objetivo en mente de buscar representaciones matriciales sencillas de endomorfismos, observa-mos primero el caso más simple que es la matriz diagonal. Supongamos que un endomorfismo $f$ de un espacio vectorial tridimensional tiene la siguiente matriz diagonal respecto a una base  $\mathcal{B} = \{v_1, v_2, v_3\}$ 

$$\mathfrak{M}_{\mathcal{B}}(f) = \left( \begin{array}{ccc} 2 & 0 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & -1 \end{array} \right)$$

Teniendo en cuenta que las columnas de la matriz son las coordenadas en  $\mathcal{B}$  de los vectores  $f(v_1), f(v_2)$  y  $f(v_3)$ , se tiene que

$$
f(v_1) = 2v_1
, \quad
f(v_2) = 2v_2
, \quad
f(v_3) = -v_3 $$

Es decir, cada vector de la base se transforma en un múltiplo de sí mismo.

Siempre que podamos encontrar una base con vectores de este tipo, podremos encontrar una matriz diagonal del endomorfismo en cuestión. Esto nos lleva a introducir los conceptos de autovalor y autovector[^2].
#### Definición 5.1
> (1) Un escalar  $\lambda \in \mathbb{K}$  diremos que es un **autovalor o valor propio** de un endomorfismo $f$ si existe un vector no nulo  $v \in V$  tal que  $f(v) = \lambda v$ . Se denomina **espectro** de $f$ al conjunto formado por todos los autovalores de $f$.
> (2) Un vector  $v \in V$  se dice que es un **autovector o vector propio** asociado a un autovalor  $\lambda$  de $f$ si y sólo si  $f(v) = \lambda v$ . Al conjunto formado por todos los autovectores asociados a un autovalor  $\lambda$  se le denomina **subespacio propio** asociado a  $\lambda$  y lo denotamos por
>$$V_{\lambda} = \{ v \in V : f(v) = \lambda v \}$$

Nótese la importancia de exigir en la definición de autovalor la existencia de un autovector no nulo. Si no impusiéramos esa condición, entonces todo escalar  $\lambda$  sería autovalor puesto que  $f(0) = 0 = \lambda 0$ .
#### Proposición 5.2
>Sea  $\lambda$  un autovalor de un endomorfismo $f$ de V y A la matriz de $f$ respecto de una base  $\mathcal{B}$ > Entonces, se cumple:
>
> (1)  $V_{\lambda} = \text{Ker}(f \lambda \text{ Id})$  es un subespacio vectorial de V.
> (2) dim  $V_{\lambda} = n - \operatorname{rg}(A - \lambda I)$ .
> (3)  $\lambda$  es autovalor de $f$ si y sólo si  $\det(A - \lambda I) = 0$ .

**Demostración:** (1) Sea  $v \neq 0$ , entonces v es un autovector asociado a  $\lambda$ , es decir,  $v \in V_{\lambda}$  si y sólo si  $f(v) = \lambda v$ , equivalentemente  $f(v) - \lambda v = 0$ . Podemos escribir

$$f(v) - \lambda v = f(v) - \lambda \operatorname{Id}(v) = (f - \lambda \operatorname{Id})(v) = 0$$

por lo que v es un vector del núcleo de la aplicación lineal  $f - \lambda \operatorname{Id}$ . Así,  $V_{\lambda}$  es un subespacio vectorial por serlo el núcleo de cualquier aplicación lineal. Además, es un subespacio no trivial por ser  $v \neq 0$ .

- (2) Si A es la matriz de $f$ en la base  $\mathcal{B}$ , entonces  $A \lambda I$  es la matriz de la aplicación  $f \lambda \operatorname{Id}$ , por lo que unas ecuaciones implícitas de  $\operatorname{Ker}(f \lambda \operatorname{Id})$  son de la forma  $(A \lambda I)X = 0$  y la dimensión de este subespacio vectorial es igual a  $n \operatorname{rg}(A \lambda I)$ . Véase, pág. 139.
- (3)  $\lambda$  es autovalor de $f$ si y sólo si existe  $v \neq 0$  autovector  $v \in V_{\lambda}$ , es decir, dim  $V_{\lambda} > 0$ . Por la propiedad (2) es equivalente a decir  $\operatorname{rg}(A \lambda I) < n$  o bien  $\det(A \lambda I) = 0$ .  $\square$

En las condiciones del enunciado de la proposición, a veces se habla simplemente en términos matriciales, y se dice que  $\lambda \in \mathbb{K}$  es un autovalor de la matriz  $A \in \mathfrak{M}_n(\mathbb{K})$ .

#### Ejemplo 5.3

Comprobemos que el endomorfismo $f$ cuya matriz en una base  $\mathcal{B}$  es

$$A = \left(\begin{array}{rrr} 1 & 1 & 1 \\ 0 & 3 & 1 \\ 0 & 0 & 0 \end{array}\right)$$

tiene a  $\lambda = 3$  como autovalor. Para ello basta con ver que

$$\det(A - 3I) = \det\begin{pmatrix} -2 & 1 & 1\\ 0 & 0 & 1\\ 0 & 0 & -3 \end{pmatrix} = 0$$

En particular, dado que

$$\operatorname{rg}(A - 3I) = \operatorname{rg} \begin{pmatrix} -2 & 1 & 1 \\ 0 & 0 & 1 \\ 0 & 0 & -3 \end{pmatrix} = 2$$

se tiene que la dimensión del subespacio propio asociado  $V_3 = \text{Ker}(f - 3 \text{ Id})$  es

$$\dim V_3 = 3 - \operatorname{rg}(A - 3I) = 1$$

y unas ecuaciones implícitas vienen dadas por el sistema lineal (A-3I)X=0, donde X es la matriz columna formada por las coordenadas de un vector  $x \in V$  respecto a la base  $\mathcal{B}$ . Es decir:

$$
\begin{array}{rcl}
V_3 & = & \{x \in V : f(x) = 3x\} = \{x \in V : f(x) - 3x = 0\} = \{x \in V : (f - 3\operatorname{Id})(x) = 0\} \\
 & = &\{x \in V : (A - 3I)X = 0\} = \{(x_1, x_2, x_3)_{\mathcal{B}} \in V : \begin{pmatrix} -2 & 1 & 1 \\ 0 & 0 & 1 \\ 0 & 0 & -3 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix}\}
\end{array}
$$


de donde

$$V_3 \equiv \{ 2x_1 - x_2 = 0, x_3 = 0 \} \qquad \Box$$

### Cálculo de autovalores y autovectores

Como hemos visto en la proposición anterior,  $\lambda$  es un autovalor de $f$ si y sólo si  $\det(A - \lambda I) = 0$ . Si consideramos  $\lambda$  como una indeterminada, tenemos que

$$\det(A - \lambda I) = \det \begin{pmatrix} a_{11} - \lambda & a_{12} & \cdots & a_{1n} \\ a_{21} & a_{22} - \lambda & \cdots & a_{2n} \\ \vdots & & \ddots & \vdots \\ a_{n1} & a_{n2} & \cdots & a_{nn} - \lambda \end{pmatrix}$$

es un polinomio de grado n en la indeterminada  $\lambda$  y los autovalores de $f$ son precisamente las raíces de dicho polinomio, que son las soluciones de la ecuación  $\det(A - \lambda I) = 0$ . Vamos a ver que este polinomio no depende de la matriz de $f$ que tomemos. Sean A y B dos matrices de $f$ respecto de dos

bases  $\mathcal{B}$  y  $\mathcal{B}'$ . Sabemos que A y B son semejantes, ya que existe una matriz regular P -la matriz de cambio de coordenadas de  $\mathcal{B}'$  a  $\mathcal{B}$ - tal que  $B = P^{-1}AP$ . Entonces,

$$
\begin{array}{rcl}
\det(B - \lambda I) & = & \det(P^{-1}AP - \lambda P^{-1}P) = \det(P^{-1}(A - \lambda I)P) \\
& = & \det(P^{-1})\det(A - \lambda I)\det(P) = \frac{1}{\det(P)}\det(A - \lambda I)\det(P) \\
& = & \det(A - \lambda I)
\end{array}
$$
Esto nos lleva a la siguiente definición.
#### Definición 5.4
> Sea $f$ un endomorfismo de un  $\mathbb{K}$ -espacio vectorial $V$ de dimensión $n$ y $A$ una matriz de $f$ respecto a una base  $\mathcal{B}$ . Se denomina **polinomio característico** de $f$, o de $A$, al polinomio de grado n en la indeterminada  $\lambda$ 
> $$p_f(\lambda) = \det(A - \lambda I)$$

Hemos visto que el polinomio característico de un endomorfismo no depende de la base con respecto a la que representemos su matriz. Es decir, el polinomio característico es un invariante lineal.

#### Ejemplo 5.5
En el Ejemplo 5.3 comprobamos que  $\lambda = 3$  era un autovalor de la matriz A. Ahora podemos calcular las raíces del polinomio característico de $f$ y obtener todos los autovalores:

$$
\begin{array}{rcl}
p_f(\lambda) & = & \det(A - \lambda I) = \det\begin{pmatrix} 1 - \lambda & 1 & 1\\ 0 & 3 - \lambda & 1\\ 0 & 0 & 0 - \lambda \end{pmatrix} \\
& = & (1 - \lambda) \det\begin{pmatrix} 3 - \lambda & 1\\ 0 & 0 - \lambda \end{pmatrix} = (1 - \lambda)(3 - \lambda)(-\lambda)
\end{array}
$$

Las raíces de dicho polinomio son los autovalores  $\lambda_1 = 1$ ,  $\lambda_2 = 3$ ,  $\lambda_3 = 0$ . Y podemos observar que son los elementos de la diagonal de la matriz A. Esto pasará siempre que la matriz sea triangular (superior o inferior) por cómo se desarrolla el determinante que da lugar al polinomio característico. Vamos a calcular los subespacios propios y un autovector asociado a cada autovalor.

 - Unas ecuaciones implícitas del subespacio propio  $V_1 = \operatorname{Ker}(f - \operatorname{Id})$  vienen determinadas por

$$(A-I)X = 0 \implies \begin{pmatrix} 0 & 1 & 1 \\ 0 & 2 & 1 \\ 0 & 0 & -1 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \implies V_1 \equiv \{x_2 = 0, x_3 = 0\}$$

- Unas ecuaciones implícitas del subespacio propio  $V_0 = \text{Ker}(f - 0 \text{ Id}) = \text{Ker}(f)$  son:

$$(A - 0I)X = 0 \Rightarrow \begin{pmatrix} 1 & 1 & 1 \\ 0 & 3 & 1 \\ 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \Rightarrow V_0 \equiv \{x_1 + x_2 + x_3 = 0, 3x_2 + x_3 = 0\}$$

- Unas ecuaciones de  $V_3$  las habíamos calculado en el Ejemplo 5.3:  $V_3 \equiv \{2x_1 - x_2 = 0, x_3 = 0\}$ .

Si tomamos un vector no nulo de cada subespacio propio, por ejemplo:

$$v_1 = (1,0,0)_{\mathcal{B}} \in V_1, \quad v_2 = (1,2,0)_{\mathcal{B}} \in V_3, \quad v_3 = (2,1,-3)_{\mathcal{B}} \in V_0$$

podemos comprobar que son linealmente independientes y formar una base con los tres autovectores  $\mathcal{B}' = \{v_1, v_2, v_3\}$ . Teniendo en cuenta que  $f(v_1) = v_1$ ,  $f(v_2) = 3v_2$  y  $f(v_3) = 0v_3 = 0$ . entonces la matriz de $f$ en dicha base es diagonal

$$\mathfrak{M}_{\mathcal{B}'}(f) = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 3 & 0 \\ 0 & 0 & 0 \end{pmatrix} \qquad \Box$$
#### Definición 5.6
> Un endomorfismo $f$ se dice que es **diagonalizable** si existe una base  $\mathcal{B}$  tal que la matriz de $f$ en dicha base,  $\mathfrak{M}_{\mathcal{B}}(f)$ , es diagonal.
> Una **matriz** cuadrada $A$ se dice que es **diagonalizable** si es semejante a una matriz diagonal $D$, es decir si existe una matriz regular P tal que  $D = P^{-1}AP$ . Como definición alternativa podríamos decir que una matriz cuadrada A es diagonalizable si y sólo si el endomorfismo cuya matriz en cierta base es A es diagonalizable.

#### Proposición 5.7
> Un endomorfismo $f$ es diagonalizable si y sólo si existe una base de V formada por autovectores de $f$.

**Demostración:** El endomorfismo $f$ es diagonalizable si y sólo si existe una base  $\mathcal{B}' = \{v_1, \ldots, v_n\}$  tal que

$$\mathfrak{M}_{\mathcal{B}'}(f) = D = \begin{pmatrix} d_1 & 0 \\ & \ddots & \\ 0 & d_n \end{pmatrix}$$

Entonces se tiene que las coordenadas de  $f(v_1), \ldots, f(v_n)$  son

$$
\begin{array}{rcl}
f(v_1) & = & (d_1, 0, \dots, 0)_{\mathcal{B}'} \\
f(v_2) & = & (0, d_2, 0, \dots, 0)_{\mathcal{B}'} \\
& \dots & \\
f(v_n) & = & (0, \dots, 0, d_n)_{\mathcal{B}'}
\end{array}
$$

es decir  $f(v_1) = d_1v_1, \ldots, f(v_n) = d_nv_n$ . Por lo que los vectores de la base son autovectores, y los elementos de la diagonal principal de D son los autovalores de $f$.  $\square$ 

Además, si A es una matriz de $f$ respecto a otra base  $\mathcal{B}$  y  $\mathcal{B}'$  es la base de autovectores, se tiene

$$\mathfrak{M}_{\mathcal{B}'}(f) = \mathfrak{M}_{\mathcal{B}\mathcal{B}'} \, \mathfrak{M}_{\mathcal{B}}(f) \, \mathfrak{M}_{\mathcal{B}'\mathcal{B}}$$

o de forma abreviada

$$D = P^{-1}AP$$

siendo  $P = \mathfrak{M}_{\mathcal{B}'\mathcal{B}}$  la matriz de cambio de base de  $\mathcal{B}'$  a  $\mathcal{B}$ .

#### Ejemplo 5.8

En el ejemplo anterior teníamos

$$\mathfrak{M}_{\mathcal{B}}(f) = A = \begin{pmatrix} 1 & 1 & 1 \\ 0 & 3 & 1 \\ 0 & 0 & 0 \end{pmatrix}, \quad \mathfrak{M}_{\mathcal{B}'}(f) = D = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 3 & 0 \\ 0 & 0 & 0 \end{pmatrix}, \quad P = \begin{pmatrix} 1 & 1 & 2 \\ 0 & 2 & 1 \\ 0 & 0 & -3 \end{pmatrix}$$

Las columnas de P son las coordenadas en  $\mathcal{B}$  de los autovectores de $f$. Podemos comprobar que se cumple la relación de semejanza entre A y D:  $D = P^{-1}AP$ , o equivalentemente PD = AP. Con esta última ecuación evitamos el cálculo de la inversa

$$PD = \begin{pmatrix} 1 & 1 & 2 \\ 0 & 2 & 1 \\ 0 & 0 & -3 \end{pmatrix} \begin{pmatrix} 1 & 0 & 0 \\ 0 & 3 & 0 \\ 0 & 0 & 0 \end{pmatrix} = \begin{pmatrix} 1 & 3 & 0 \\ 0 & 6 & 0 \\ 0 & 0 & 0 \end{pmatrix} = \begin{pmatrix} 1 & 1 & 1 \\ 0 & 3 & 1 \\ 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} 1 & 1 & 2 \\ 0 & 2 & 1 \\ 0 & 0 & -3 \end{pmatrix} = AP$$

#### Proposición 5.9
> (1) Si  $\{v_1, \ldots, v_k\}$  son autovectores no nulos asociados a autovalores distintos, entonces son linealmente independientes.
> (2) Si  $\{\lambda_1,\ldots,\lambda_k\}$  son autovalores distintos, entonces se tiene la suma directa de subespacios
> $$V_{\lambda_1} \oplus \cdots \oplus V_{\lambda_k}$$

**Demostración:** (1) Sean  $v_1$  y  $v_2$  dos autovectores no nulos asociados a dos autovalores distintos  $\lambda_1$  y  $\lambda_2$  de un endomorfismo $f$. Supongamos que son linealmente dependientes, es decir  $v_1 = \mu v_2$ . Entonces:

$$f(v_1) = f(\mu v_2) = \mu f(v_2) = \mu \lambda_2 v_2 = \lambda_2(\mu v_2) = \lambda_2 v_1$$

Pero como  $v_1$  es un autovector asociado al autovalor  $\lambda_1$ , entonces  $f(v_1) = \lambda_1 v_1$ , de donde se deduce  $\lambda_1 = \lambda_2$ . Una contradicción con la hipótesis de partida.

Supongamos que el resultado es cierto para s autovectores asociados a autovalores distintos, y veamos que también se cumple para s+1. En efecto, sean  $\{v_1, \ldots, v_{s+1}\}$  autovectores no nulos asociados a autovalores distintos  $\{\lambda_1, \ldots, \lambda_{s+1}\}$ . Supongamos, sin pérdida de generalidad,  $\lambda_1 \neq 0$ . Si los vectores fuesen linealmente dependientes, entonces existiría una combinación lineal

$$\mu_1 v_1 + \dots + \mu_{s+1} v_{s+1} = 0 \tag{5.1}$$

donde no todos los  $\mu_i$  son nulos. Multiplicando por  $\lambda_1$  tenemos

$$\mu_1 \lambda_1 v_1 + \dots + \mu_{s+1} \lambda_1 v_{s+1} = 0 \tag{5.2}$$

Aplicamos $f$ a la combinación lineal (5.1) y obtenemos

$$
\begin{array}{rcl}
0 = f(\mu_1 v_1 + \dots + \mu_{s+1} v_{s+1}) & = & \mu_1 f(v_1) + \dots + \mu_{s+1} f(v_{s+1}) \\
& = & \mu_1 \lambda_1 v_1 + \dots + \mu_{s+1} \lambda_{s+1} v_{s+1}
\tag{5.3}
\end{array}
$$

Restando las ecuaciones (5.2) y (5.3) se tiene

$$\mu_2(\lambda_1 - \lambda_2)v_2 + \dots + \mu_{s+1}(\lambda_1 - \lambda_{s+1})v_{s+1} = 0$$

Por la hipótesis de inducción los vectores  $v_2, \ldots, v_{s+1}$  son linealmente independientes, por lo que  $\mu_i(\lambda_1 - \lambda_i) = 0$ , para  $i = 2, \ldots, s+1$ . Como los autovalores son todos distintos, entonces  $\mu_i = 0$  para  $i = 2, \ldots, s+1$ . Sustituyendo estos valores en (5.1) se tiene que también  $\mu_1 = 0$ . Una contradicción.

(2) Procediendo por reducción al absurdo, supongamos que la suma de subespacios no es directa. Sin pérdida de generalidad, podemos suponer  $V_{\lambda_1} \cap (\sum_{i=2}^k V_{\lambda_i}) \neq \{0\}$ . Sea v un vector no nulo de la intersección. Por un lado,  $v \in V_{\lambda_1}$  implica que es autovector asociado al autovalor  $\lambda_1$ : v por otro  $v \in \sum_{i=2}^k V_{\lambda_i}$ , implica  $v = \mu_2 v_2 + \dots + \mu_k v_k$ , con  $v_i \in V_{\lambda_i}$ , para  $i = 2, \dots, k$ . Es decir,  $\{v, v_2, \dots, v_k\}$  son linealmente dependientes. Pero eso contradice (1) ya que son autovectores asociados a autovalores distintos.  $\square$ 

#### Ejemplo 5.10 (SEGUIR AQUÍ)
En este ejemplo se muestra un caso en el que no se puede encontrar una base de autovectores, por lo que el endomorfismo correspondiente no es diagonalizable. Sea $f$ el endomorfismo cuya matriz respecto a una base  $\mathcal{B}$  es

$$A = \left(\begin{array}{ccc} 1 & 1 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & -1 \end{array}\right)$$

Por ser la matriz triangular, los autovalores están en la diagonal principal y son  $\lambda_1 = 1$ ,  $\lambda_2 = -1$ . Determinamos unas ecuaciones de los subespacios propios para buscar en ellos autovectores.

$$(A-I)X = 0 \Rightarrow \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & -2 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \Rightarrow V_1 \equiv \{ x_2 = 0, x_3 = 0 \}$$

$$(A+I)X = 0 \quad \Rightarrow \quad \left(\begin{array}{ccc} 2 & 1 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & 0 \end{array}\right) \left(\begin{array}{c} x_1 \\ x_2 \\ x_3 \end{array}\right) = \left(\begin{array}{c} 0 \\ 0 \\ 0 \end{array}\right) \Rightarrow V_{-1} \equiv \left\{ \, x_1 = 0, \, x_2 = 0 \, \right\}$$

Ambos subespacios tienen dimensión 1, por lo que será imposible obtener tres vectores linealmente independientes que sean autovectores. Determinamos una base de cada subespacio propio:

$$V_1 = L((1,0,0)_{\mathcal{B}}), \quad V_{-1} = L((0,0,1)_{\mathcal{B}})$$

y podemos tomar  $v_1 = (1, 0, 0)_{\mathcal{B}}$ ,  $v_2 = (0, 0, 1)_{\mathcal{B}}$ , pero un tercer vector linealmente independiente de  $v_1$  y  $v_2$  no podrá pertenecer a  $V_1$  ni a  $V_{-1}$ , es decir, no será un autovector.

El autovalor  $\lambda_1 = 1$  aparece dos veces en la diagonal, y veremos que para que el endomorfismo fuese diagonalizable tendríamos que poder obtener 2 autovectores asociados a dicho autovalor.

#### Definición 5.11
> Sean  $\lambda_1, \ldots, \lambda_r$  autovalores distintos de un endomorfismo $f$ de V, con dim V = n. Llamamos:
> (1) **Multiplicidad algebraica** del autovalor  $\lambda_i$  a su multiplicidad como raíz del polinomio característico, y la denotaremos por  $a_i$ .
> (2) **Multiplicidad geométrica** del autovalor  $\lambda_i$  a la dimensión del subespacio propio asociado  $V_{\lambda_i}$ , y la denotaremos por  $g_i$ . Es decir,  $g_i = \dim V_{\lambda_i} = n \operatorname{rg}(A \lambda_i I)$ .

En el ejemplo anterior el polinomio característico es  $\det(A - \lambda I) = (1 - \lambda)^2 (-1 - \lambda)$  y se tienen los autovalores  $\lambda_1 = 1$  con multiplicidad algebraica  $a_1 = 2$  y geométrica  $g_1 = \dim V_1 = 1$ ; y  $\lambda_2 = -1$  con multiplicidad algebraica  $a_2 = 1$  y geométrica  $g_2 = \dim V_{-1} = 1$ .

#### Proposición 5.12
> La multiplicidad algebraica de un autovalor es mayor o igual que la multiplicidad geométrica.

**Demostración:** Sea  $\alpha \in \mathbb{K}$  un autovalor de un endomorfismo $f$ con multiplicidades algebraica a y geométrica g. Sea  $\{v_1, \ldots, v_g\}$  una base de  $V_{\alpha}$ , el subespacio propio asociado. Por el Teorema de ampliación a una base, pág. 115, podemos encontrar n-g vectores  $v_{g+1}, \ldots, v_n$  tales que  $\mathcal{B} = \{v_1, \ldots, v_g, v_{g+1}, \ldots, v_n\}$  sea una base del espacio vectorial V. Dado que  $f(v_i) = \alpha v_i$ , para  $i = 1, \ldots, g$ ; las $g$ primeras columnas de la matriz del endomorfismo en dicha base serán de la forma
$$


A=\mathfrak{M}_{\mathcal{B}}(f)=
\left(
\begin{array}{cccc|c}
\alpha & 0      & \cdots & 0      & \cdots \\
0       & \alpha& \ddots & \vdots & \cdots \\
0       & 0      & \ddots & 0      & \cdots \\
\vdots  & \vdots &        & \alpha &        \\
        &        &        & \vdots &        \\
0       & 0      & \cdots & 0      & \cdots
\end{array}
\right)



$$


Así, desarrollando  $\det(A - \lambda I)$  por las $g$ primeras columnas, se obtiene que el polinomio característico es de la forma  $p_f(\lambda) = (\alpha - \lambda)^g \cdot q(\lambda)$ . Ahora bien, como la multiplicidad de  $\alpha$  como raíz del polinomio característico es a, entonces  $g \leq a$ . Como queríamos demostrar.  $\square$ 

Nuestro objetivo es estudiar bajo qué condiciones, para un endomorfismo dado  $f: V \to V$ , existe una base de autovectores. Si el polinomio característico de $f$ tiene todas sus raíces en  $\mathbb{K}$ , es decir tiene n

raíces no necesariamente distintas, entonces se factorizará de la forma:

$$p_f(\lambda) = (\lambda - \lambda_1)^{a_1} \cdots (\lambda - \lambda_k)^{a_k}$$
. con  $\lambda_i \in \mathbb{K}$ ,  $a_i \in \mathbb{N}$  y  $a_1 + \cdots + a_k = n = \dim V$ 

y para encontrar una base de autovectores necesitaremos encontrar  $a_i$  autovectores linealmente independientes, por cada autovalor  $\lambda_i$ .

Si el polinomio característico de $f$ no tiene todas sus raíces en  $\mathbb{K}$ , entonces no existirá una base de autovectores. Demostramos la caracterización de los endomorfismos diagonalizables en el siguiente resultado.

#### Teorema 5.13: Caracterización de endomorfismos diagonalizables
> Sean $f$ un endomorfismo de un  $\mathbb{K}$ -espacio vectorial V de dimensión n, y  $\lambda_1, \ldots, \lambda_k$  los autovalores distintos de $f$ con multiplicidades algebraicas  $a_1, \ldots, a_k$  y geométricas  $g_1, \ldots, g_k$  respectivamente. Entonces, $f$ es diagonalizable si y sólo si se cumplen las siguientes condiciones:
>
> (1)  $a_1 + \cdots + a_k = n$ .
> (2) Las multiplicidades algebraicas y geométricas de cada autovalor coinciden.

**Demostración:** Supongamos $f$ diagonalizable, entonces existe una base  $\mathcal{B} = \{v_1, \ldots, v_n\}$  de V formada por autovectores de $f$. Supongamos los vectores ordenados correspondiendo a los autovalores:

$$\mathcal{B} = \{v_{11}, \dots, v_{1s_1}; \dots; v_{k1}, \dots, v_{ks_k}\}$$

con  $v_{i1}, \ldots, v_{is_i} \in V_{\lambda_i}, i = 1, \ldots, k$ . Como dim  $V_{\lambda_i} = g_i$ , se tiene que  $s_i \leq g_i$ . Así

$$n = s_1 + \dots + s_k \le g_1 + \dots + g_k \le a_1 + \dots + a_k \le n$$

de donde deducimos  $a_1 + \cdots + a_k = n$  y  $a_i = g_i$ .

Ahora, supongamos ciertas las condiciones (1) y (2) y veamos que son suficientes para que $f$ sea diagonalizable. Dado que  $g_i = a_i$  y  $g_1 + \cdots + g_k = n$ , en virtud de la Proposición 5.9 el espacio total se descompone en suma directa  $V = V_{\lambda_1} \oplus \cdots \oplus V_{\lambda_k}$ . Si tomamos bases  $\mathcal{B}_i$  de cada uno de los subespacios propios  $V_{\lambda_i}$ , podemos unirlas para formar una base de V compuesta por autovectores. Así, $f$ es diagonalizable, como queríamos demostrar.  $\square$ 

Como consecuencia del Teorema de caracterización, si un endomorfismo de un espacio vectorial de dimensión n tiene n autovalores distintos, entonces todos tienen multiplicidad algebraica 1 y se cumple que  $1 \le g_i \le a_i = 1$  luego se cumple la igualdad entre dimensiones algebraicas y geométricas, por lo que se tiene el siguiente resultado.

#### Corolario 5.14
> Si un endomorfismo $f$ de un  $\mathbb{K}$  —espacio vectorial de dimensión $n$ tiene $n$ autovalores distintos, entonces es diagonalizable.

#### Ejemplo 5.15

(1) En el Ejemplo 5.10 se cumple la primera condición del Teorema de caracterización:  $a_1 + a_2 = 2 + 1 = 3$  lo que significa que el endomorfismo tiene 3 autovalores contados con su multiplicidad. Sin embargo, no se cumple la condición (2) pues la multiplicidad geométrica del autovalor  $\lambda_1 = 1$  es  $g_1 = 1$  menor que la multiplicidad algebraica  $a_1 = 2$ . Por ello no es diagonalizable.

(2) En el Ejemplo 5.5 vimos que era diagonalizable ya que conseguimos encontrar una base de autovectores. Ahora podemos afirmar que es diagonalizable, sin necesidad de calcular la base, simplemente aplicando el Corolario ya que el endomorfismo actúa en un espacio tridimensional y tiene 3 autovalores distintos.

#### Ejemplo 5.16
Sean  $f_a$  los endomorfismos de  $\mathbb{R}^4$  definidos por

$$f_a(x_1, x_2, x_3, x_4) = (ax_1, (a-1)x_1 + x_2, (a-1)x_1 + (1-a)x_2 + ax_3 + (1-a)x_4, x_4), \text{ con } a \in \mathbb{R}.$$

Estudiamos para qué valores de a es  $f_a$  diagonalizable. La matriz de $f$ en la base canónica es

$$M_a = \begin{pmatrix} a & 0 & 0 & 0 \\ a-1 & 1 & 0 & 0 \\ a-1 & 1-a & a & 1-a \\ 0 & 0 & 0 & 1 \end{pmatrix}$$

Calculamos el polinomio característico

$$
\begin{array}{rcl}
p_{f_a}(\lambda) & = & \det(M_a - \lambda I) = \det\begin{pmatrix} a - \lambda & 0 & 0 & 0\\ a - 1 & 1 - \lambda & 0 & 0\\ a - 1 & 1 - a & a - \lambda & 1 - a\\ 0 & 0 & 0 & 1 - \lambda \end{pmatrix} \\
& = & (a - \lambda) \det\begin{pmatrix} 1 - \lambda & 0 & 0\\ a - 1 & a - \lambda & 1 - a\\ 0 & 0 & 1 - \lambda \end{pmatrix} = (a - \lambda)(1 - \lambda) \det\begin{pmatrix} a - \lambda & 1 - a\\ 0 & 1 - \lambda \end{pmatrix} \\
& = & (a - \lambda)^2 (1 - \lambda)^2
\end{array}
$$


Entonces se tienen dos casos:

**Caso  $\mathbf{a} \neq \mathbf{1}$**  . El endomorfismo  $f_a$  tiene dos autovalores dobles:  $\lambda_1 = a$  con  $a_1 = 2$  y  $\lambda_2 = 1$  con  $a_2 = 2$ .

Para que  $f_a$  sea diagonalizable tiene que ocurrir que las multiplicidades geométricas sean igual a las algebraicas. Calculamos  $g_1$ :

$$g_1 = \dim V_a = \dim \operatorname{Ker}(f_a - a \operatorname{Id}) = 4 - \operatorname{rg}(M_a - a \operatorname{Id}) = 4 - \operatorname{rg}\begin{pmatrix} 0 & 0 & 0 & 0 \\ a - 1 & 1 - a & 0 & 0 \\ a - 1 & 1 - a & 0 & 1 - a \\ 0 & 0 & 0 & 1 - a \end{pmatrix} = 2$$

ya que  $M_a-a\,\mathrm{Id}$  sólo tiene dos filas independientes, pues la cuarta fila es igual la tercera menos la

segunda fila. Calculamos ahora  $g_2$ :

$$g_2 = \dim V_1 = \dim \operatorname{Ker}(f_a - \operatorname{Id}) = 4 - \operatorname{rg}(M_a - \operatorname{Id}) = 4 - \operatorname{rg}\begin{pmatrix} a - 1 & 0 & 0 & 0 \\ a - 1 & 0 & 0 & 0 \\ a - 1 & 1 - a & a - 1 & 1 - a \\ 0 & 0 & 0 & 0 \end{pmatrix} = 2$$

pues también se ve fácilmente que  $M_a$  – Id sólo tiene dos filas independientes. Se cumple que  $a_1 = g_1$  y  $a_2 = g_2$ .

**Caso  $\mathbf{a} = \mathbf{1}$** . El endomorfismo  $f_1$  tiene un autovalor cuádruple:  $\lambda_1 = 1$ .  $a_1 = 4$ .

Para que  $f_1$  sea diagonalizable tiene que ocurrir que

$$4 = g_1 = \dim V_1 = \dim \ker(f_1 - \mathrm{Id}) = 4 - \mathrm{rg}(M_1 - I) \iff \mathrm{rg}(M_1 - I) = 0$$

En efecto, si a = 1, entonces  $M_1 = I$ , luego  $M_1 - I = 0$  y tiene rango 0.

Así, se concluye que los endomorfismos  $f_a$  son diagonalizables para todo  $a \in \mathbb{R}$ .  $\square$ 

Finalmente, antes de acabar la sección vemos un resultado que relaciona los autovalores de una matriz con los de su traspuesta e inversa.

#### Proposición 5.17
> (1) El escalar  $\lambda$  es autovalor de A si y sólo si  $\lambda$  es autovalor de  $A^t$ .
> (2) Si A es una matriz regular,  $\lambda \neq 0$  es autovalor de A si y sólo si  $\frac{1}{\lambda}$  es autovalor de  $A^{-1}$ .

**Demostración:** (1) Un escalar  $\lambda \in \mathbb{K}$  es autovalor de A si y sólo si el sistema lineal  $(A - \lambda I)X = 0$  tiene solución no trivial, es decir  $\operatorname{rg}(A - \lambda I) < n$  o lo que es lo mismo  $\det(A - \lambda I) = 0$ . Por otro lado

$$\det(A - \lambda I) = \det((A - \lambda I)^t) = \det(A^t - \lambda I) = 0$$

lo que equivale a decir que  $\lambda$  es autovalor de  $A^t$ .

(2) Sea $f$ un endomorfismo de matriz A. Por ser A regular, $f$ es un isomorfismo y existe el inverso  $f^{-1}$ , cuya matriz es  $A^{-1}$ . Sea v un vector no nulo. Se tiene que v es autovector de $f$ asociado al autovalor  $\lambda$  si y sólo si  $f(v) = \lambda v$ , de donde

$$v = f^{-1} \circ f(v) = f^{-1}(\lambda v) = \lambda f^{-1}(v)$$

Es decir  $f^{-1}(v) = \frac{1}{\lambda}v$ , luego  $\frac{1}{\lambda}$  es autovalor de  $f^{-1}$  y por tanto de  $A^{-1}$ .  $\square$ 

## 5.3. Forma canónica de Jordan (SEGUIR AQUÍ)

Cuando no podemos diagonalizar un endomorfismo, nos interesa obtener una matriz sencilla del mismo, que sea parecida a una matriz diagonal, a la que llamaremos matriz de Jordan[^3] y a cuyo estudio dedicamos esta sección. Las matrices de Jordan se caracterizan por ser triangulares inferiores y tener todos sus elementos nulos salvo en la diagonal principal, donde aparecerán los autovalores, y en la subdiagonal[^4], donde sólo habrá ceros o unos estratégicamente situados. De forma precisa

#### Definición 5.18
> (1) Un **bloque de Jordan** de orden n es una matriz cuadrada de orden n, que denotaremos por  $B_n(\lambda)$ , tal que  $b_{ii} = \lambda$ , con  $\lambda \in \mathbb{K}$  para  $i = 1, \ldots, n$ ;  $b_{i,i-1} = 1$ , para  $i = 2, \ldots, n$ ; y el resto de elementos son iguales a 0.
> (2) Una **matriz de Jordan** es una matriz cuadrada diagonal por bloques de modo que los bloques de la diagonal son bloques de Jordan.

Un bloque de Jordan de orden 1 está formado por un único escalar. Los siguientes son algunos ejemplos de bloques de Jordan

$$B_1(\lambda) = (\lambda), \quad B_2(\lambda) = \begin{pmatrix} \lambda & 0 \\ 1 & \lambda \end{pmatrix}, \quad B_3(\lambda) = \begin{pmatrix} \lambda & 0 & 0 \\ 1 & \lambda & 0 \\ 0 & 1 & \lambda \end{pmatrix} \quad B_4(\sqrt{2}) = \begin{pmatrix} \sqrt{2} & 0 & 0 & 0 \\ 1 & \sqrt{2} & 0 & 0 \\ 0 & 1 & \sqrt{2} & 0 \\ 0 & 0 & 1 & \sqrt{2} \end{pmatrix}$$

Los siguientes son ejemplos de matrices de Jordan

$$
\left(
\begin{array}{c|cc}
1&0&0\\
0&1&0\\
\hline
0&0&0
\end{array}
\right)
$$
$$
A = \left(
\begin{array}{cc|c} 
1 & 0 & 0 \\ 
1 & 1 & 0 \\ 
\hline 0 & 0 & 1 
\end{array}
\right), 
\quad 
B = \left(
\begin{array}{c|cc}
1&0&0\\
0&1&0\\
\hline
0&0&0
\end{array}
\right), \quad 
C = \left(
\begin{array}{cc|ccc}
2 & 0 & 0 & 0 & 0 \\ 1 & 2 & 0 & 0 & 0 \\ \hline 0 & 0 & 3 & 0 & 0 \\ 0 & 0 & 1 & 3 & 0 \\ 0 & 0 & 0 & 1 & 3 \end{array}
\right)
$$

La matriz $B$ es diagonal y es un caso de matriz de Jordan cuyos bloques son todos de orden 1.

Para obtener una matriz diagonal por bloques de un endomorfismo dado $f$ resulta fundamental el concepto de subespacio invariante.

#### Definición 5.19
> Un subespacio vectorial U de V es **invariante** por un endomorfismo $f$ de V, o $f$-invariante, si se cumple  $f(U) \subseteq U$ . Es decir, si para todo  $u \in U$  se cumple  $f(u) \in U$ . Equivalentemente,  $U = L(v_1, \ldots, v_k)$  es un subespacio $f$-invariante si y sólo si  $f(v_1), \ldots, f(v_k) \in U$ .

#### Proposición 5.20
> Si U y W son subespacios invariantes de un endomorfismo $f$ de V, entonces los subespacios  $U \cap W$  y U + W también son invariantes por $f$.

La demostración de este resultado se propone como ejercicio al final del capítulo.

En el siguiente resultado veremos que si conseguimos obtener el espacio vectorial V descompuesto en suma directa de subespacios  $U_i$  invariantes por f, entonces eligiendo bases de cada uno de los subespacios  $U_i$  para formar una base completa de V, automáticamente la matriz de $f$ respecto a dicha base es diagonal por bloques.

#### Proposición 5.21
> Sean  $U_1, \ldots, U_k$  subespacios $f$-invariantes tales que dim  $U_i = n_i$  y  $V = U_1 \oplus \cdots \oplus U_k$ . Sea  $\mathcal{B}_i$  una base de  $U_i$ ,  $i = 1, \ldots, k$ . Entonces, la matriz de $f$ respecto a la base  $\mathcal{B} = \mathcal{B}_1 \cup \cdots \cup \mathcal{B}_k$  es una matriz diagonal por bloques.

**Demostración:** La demostración viene dada por la simple observación de cómo son las coordenadas de las imágenes de los vectores de la base. Comencemos viendo las imágenes de los vectores de  $\mathcal{B}_1 = \{v_{11}, \ldots, v_{1n_1}\}$ . Sea  $v_{1j} \in \mathcal{B}_1$ . como  $v_{1j} \in U_1$  que es $f$-invariante, entonces  $f(v_{1j}) \in U_1$ , así

$$f(v_{1j}) = a_{1j}v_{11} + \dots + a_{n_1j}v_{1n_1} + 0v_{21} + \dots + 0v_{kn_k} . \quad \text{para} \quad  j = 1, \dots, n_1 $$


Es decir,  $f(v_{1j}) = (a_{1j}, \dots, a_{n_1j}, 0, \dots, 0)_{\mathcal{B}}$ , para  $j = 1, \dots, n_1$ . Así, las primeras  $n_1$  columnas de la matriz de $f$ en la base  $\mathcal{B}$  son

$$
\left(
\begin{array}{ccc|c}
a_{11} & \cdots & a_{1n_1} & \cdots \\
\vdots & & \vdots & \ddots \\ a_{n_11} & \cdots & a_{n_1n_1} & \cdots \\
\hline
0 & \cdots & 0 & \cdots \\
\vdots & & \vdots & \ddots \\
0 & \cdots & 0 & \cdots 
\end{array}
	\right)
= 
\begin{pmatrix} 
A_1 & \cdots \\ 
0 & \cdots 
\end{pmatrix}$$

Procediendo con el mismo razonamiento para el resto de vectores de la base tenemos una matriz diagonal por bloques

$$\begin{pmatrix}
A_1 & 0 & \cdots & 0 \\
0 & A_2 & & \vdots \\
\vdots & & \ddots & 0 \\
0 & \cdots & 0 & A_k
\end{pmatrix} \quad \text{con } A_i \in \mathfrak{M}_{n_i}(\mathbb{K}) \qquad \square$$

El resultado anterior también se puede interpretar en sentido inverso. Es decir, a la vista de una matriz diagonal por bloques de un endomorfismo podemos extraer fácilmente subespacios invariantes. Veamos un ejemplo. Si $f$ y $g$ son dos endomorfismos de  $\mathbb{K}^4$  que, respecto a una base  $\mathcal{B} = \{v_1, v_2, v_3, v_4\}$ , tienen

las siguientes matrices

$$
M_{\mathcal{B}}(f) = 
\left(
\begin{array}{cc|cc}
1 & -1 & 0 & 0 \\
2 & -1 & 0 & 0 \\
\hline 0 & 0 & 1 & -1 \\
0 & 0 & 2 & -1 
\end{array}
\right)
, \quad 
M_{\mathcal{B}}(g) = 
\left(
\begin{array}{cc|cc} 
1 & -1 & 1 & 0 \\
2 & -1 & 0 & 1 \\
\hline 0 & 0 & 1 & -1 \\
0 & 0 & 2 & -1 
\end{array}
\right)
$$

Por la división en bloques de las matrices podemos observar que  $U = L(v_1, v_2)$  es un plano $f$-invariante y $g$-invariante ya que

$$
\begin{array}{rcl}
f(v_1) & = & v_1 + 2v_2 \in U, \ f(v_2) = -v_1 - v_2 \in U, \\
g(v_1) & = & v_1 + 2v_2 \in U, \ g(v_2) = -v_1 - v_2 \in U.
\end{array}
$$
  

Sin embargo, el plano  $W = L(v_3, v_4)$  es $f$-invariante:

$$f(v_3) = v_3 + 2v_4 \in W, \ f(v_4) = -v_3 - v_4 \in W,$$

pero no es $g$-invariante pues la imagen por $g$ de  $v_3$  cuyas coordenadas forman la tercera columna de la matriz de $g$ es

$$g(v_3) = v_1 + v_3 + 2v_4 \notin W$$

### Restricción de una aplicación lineal a un subespacio invariante

Dada una aplicación cualquiera  $f:A\to B$  entre dos conjuntos A y B, y S un subconjunto de A, entonces se llama **aplicación restricción de** $f$ **a** S, a la aplicación  $f|_S:S\to B$  definida por:

$$\begin{array}{rcl} f|_S: S & \longrightarrow & B \\ s & \mapsto & f(s) \end{array}$$

Se trata de la misma aplicación $f$ pero con un dominio restringido.

Si $f$ es un endomorfismo de un espacio vectorial V y U un subespacio invariante por f, como  $f(U) \subseteq U$ , entonces la aplicación restricción de $f$ a U es un endomorfismo de U:

$$\begin{array}{rcl} f|_U: U & \longrightarrow & U \\ u & \mapsto & f(u) \end{array}$$

Es la misma aplicación f, pero sólo miramos cómo transforma los vectores de U. Si  $\mathcal{B} = \{v_1, \ldots, v_n\}$  es una base de V y  $U = L(v_{i_1}, \ldots, v_{i_k})$  con  $\mathcal{B}_U = \{v_{i_1}, \ldots, v_{i_k}\} \subset \mathcal{B}$ , entonces se cumple que la matriz de  $f|_U$  respecto de  $\mathcal{B}_U$  es una submatriz de la matriz de $f$ respecto de  $\mathcal{B}$ :

$$\mathfrak{M}_{\mathcal{B}_U}(f|_U)$$
 es una submatriz de  $\mathfrak{M}_{\mathcal{B}}(f)$ .

#### Ejemplo 5.22

Sea $f$ un endomorfismo que respecto de una base  $\mathcal{B} = \{v_1, v_2, v_3\}$  tiene la

siguiente matriz

$$M_{\mathcal{B}}(f) = \left(\begin{array}{ccc} 1 & 1 & 3 \\ 0 & 2 & 0 \\ 1 & 1 & 1 \end{array}\right)$$

El subespacio  $U = L(v_1, v_3)$  es invariante por $f$ ya que

$$f(v_1) = (1, 0, 1)_{\mathcal{B}} = v_1 + v_3 \in U \text{ y } f(v_3) = (3, 0, 1)_{\mathcal{B}} = 3v_1 + v_3 \in U$$

La matriz de  $f|_U$  respecto de la base  $\mathcal{B}_U = \{v_1, v_3\} \subset \mathcal{B}$  es

$$M_{\mathcal{B}_U}(f|_U) = \left(\begin{array}{cc} 1 & 3\\ 1 & 1 \end{array}\right)$$

que es la submatriz que se obtiene eliminando en  $M_{\mathcal{B}}(f)$  la segunda fila y segunda columna.  $\square$ 

En lo sucesivo vamos a tratar de construir subespacios $f$-invariantes, uno por cada autovalor de $f$.

### Base asociada a un bloque de Jordan

En primer lugar, veamos qué condiciones debe cumplir una base para que la matriz de un endomorfismo esté formada por un bloque de Jordan. Comenzamos por un bloque de orden 3. Supongamos que la matriz de un endomorfismo $f$ de un espacio vectorial de dimensión 3, respecto a una base  $\mathcal{B} = \{v_1, v_2, v_3\}$ , es un bloque de Jordan de dimensión 3

$$\mathfrak{M}_{\mathcal{B}}(f) = \left( \begin{array}{ccc} \lambda & 0 & 0 \ 1 & \lambda & 0 \ 0 & 1 & \lambda \end{array} \right)$$

Entonces, las coordenadas de los vectores  $f(v_1)$ ,  $f(v_2)$ ,  $f(v_3)$  respecto a  $\mathcal{B}$  son

$$\begin{array}{lll} f(v_1) & = & (\lambda, 1, 0)_{\mathcal{B}} \\ f(v_2) & = & (0, \lambda, 1)_{\mathcal{B}} \\ f(v_3) & = & (0, 0, \lambda)_{\mathcal{B}} \end{array}$$

de donde se deducen las siguientes relaciones

$$\begin{array}{lll} f(v_1) & = & \lambda v_1 + v_2 & \Rightarrow & f(v_1) - \lambda \, v_1 = (f - \lambda \operatorname{Id})(v_1) = v_2 \\ f(v_2) & = & \lambda v_2 + v_3 & \Rightarrow & f(v_2) - \lambda \, v_2 = (f - \lambda \operatorname{Id})(v_2) = v_3 \\ f(v_3) & = & \lambda v_3 & \Rightarrow & f(v_3) - \lambda \, v_3 = (f - \lambda \operatorname{Id})(v_3) = 0 & \Rightarrow & v_3 \text{ es un autovector} \end{array}$$

Sustituvendo de arriba hacia abajo en las ecuaciones anteriores se tiene

$$0 \neq v_3 = (f - \lambda I)(v_2) = (f - \lambda I)^2(v_1) \tag{5.4}$$

y aplicando  $f - \lambda \operatorname{Id}$  en las equaciones anteriores obtenemos

$$0 = (f - \lambda \operatorname{Id})(v_3) = (f - \lambda \operatorname{Id})^2(v_2) = (f - \lambda \operatorname{Id})^3(v_1)
\tag{5.5}$$

De (5.4) v (5.5) se deduce

$$v_1 \in \operatorname{Ker}(f - \lambda \operatorname{Id})^3 - \operatorname{Ker}(f - \lambda \operatorname{Id})^2, \ v_2 \in \operatorname{Ker}(f - \lambda \operatorname{Id})^2 - \operatorname{Ker}(f - \lambda \operatorname{Id}), \ v_3 \in \operatorname{Ker}(f - \lambda \operatorname{Id}) = V_{\lambda}$$

Así, la base asociada a un bloque de Jordan de dimensión 3 resulta ser de la forma:

$$\mathcal{B} = \{v_1, (f - \lambda \operatorname{Id})(v_1), (f - \lambda \operatorname{Id})^2(v_1)\} \quad \text{con } v_1 \in \operatorname{Ker}(f - \lambda \operatorname{Id})^3 - \operatorname{Ker}(f - \lambda \operatorname{Id})^2(v_1)\}$$

En el caso n dimensional, si la matriz de un endomorfismo $f$ de un espacio vectorial de dimensión n es un bloque de Jordan de orden n

$$\mathfrak{M}_{\mathcal{B}}(f) = \begin{pmatrix} \lambda & 0 & & 0 \\ 1 & \lambda & \ddots & \\ & \ddots & \ddots & 0 \\ 0 & & 1 & \lambda \end{pmatrix} \quad \mathbf{y} \quad \mathcal{B} = \{v_1, \dots, v_n\}$$

entonces

$$f(v_1) = (\lambda, 1, 0, \dots, 0)_{\mathcal{B}}$$
  

$$f(v_2) = (0, \lambda, 1, 0, \dots, 0)_{\mathcal{B}}$$
  

$$\dots$$
  

$$f(v_n) = (0, \dots, 0, \lambda)_{\mathcal{B}}$$

de donde se deducen las siguientes relaciones

$$f(v_1) = \lambda v_1 + v_2 \Rightarrow (f - \lambda \operatorname{Id})(v_1) = v_2$$

$$\vdots$$

$$f(v_i) = \lambda v_i + v_{i+1} \Rightarrow (f - \lambda \operatorname{Id})(v_i) = v_{i+1} \text{ para } i = 1, \dots, n-1$$

$$\vdots$$

$$f(v_n) = \lambda v_n \Rightarrow (f - \lambda \operatorname{Id})(v_n) = 0 \Rightarrow v_n \text{ es un autovector}$$

Procediendo igual que en el caso tridimensional, sustituyendo de arriba hacia abajo en las ecuaciones anteriores se tiene

$$v_i = (f - \lambda \operatorname{Id})^{i-1}(v_1)$$
 y  $v_i \in \operatorname{Ker}(f - \lambda \operatorname{Id})^{n-i+1} - \operatorname{Ker}(f - \lambda \operatorname{Id})^{n-i}$  para  $i = 1, \dots, n$ 

Así, la base asociada a un bloque de Jordan de orden n es de la forma:

$$\mathcal{B} = \{v_1, (f - \lambda \operatorname{Id})(v_1), \dots, (f - \lambda \operatorname{Id})^{n-1}(v_1)\} \text{ con } v_1 \in \operatorname{Ker}(f - \lambda \operatorname{Id})^n - \operatorname{Ker}(f - \lambda \operatorname{Id})^{n-1}$$
 (5.6)

#### Definición 5.23
> Sean  $\lambda$  un autovalor de un endomorfismo $f$ de V y  $v \in \text{Ker}(f - \lambda \text{Id})^r - \text{Ker}(f - \lambda \text{Id})^{r-1}$ , con  $r \ge 1$ . Llamamos **subespacio** r-**cíclico** generado por v, asociado a  $f - \lambda \text{Id}$ , al subespacio

$$L(v, (f - \lambda \operatorname{Id})(v), \dots, (f - \lambda \operatorname{Id})^{r-1}(v)) \tag{5.7}$$

#### Proposición 5.24
> Sean  $\lambda$  un autovalor de un endomorfismo $f$ de V y  $v \in \text{Ker}(f - \lambda \operatorname{Id})^r - \text{Ker}(f - \lambda \operatorname{Id})^{r-1}$ , con  $r \geq 1$  y sea U el subespacio r-cíclico
> $$U = L(v, (f - \lambda \operatorname{Id})(v), \dots, (f - \lambda \operatorname{Id})^{r-1}(v))$$
> Entonces, U es un subespacio $f$-invariante de dimensión r. Además, la matriz de la aplicación restricción  $f|_U:U\to U$  respecto de la base
> $$\mathcal{B}_U = \{v, (f - \lambda \operatorname{Id})(v), \dots, (f - \lambda \operatorname{Id})^{r-1}(v)\}$$
> es el bloque de Jordan  $B_r(\lambda)$ .

**Demostración:** Vamos a demostrar por inducción que dim U = r viendo que los vectores de  $\mathcal{B}_U$  son linealmente independientes. Para r = 1 se tiene que  $v \in \text{Ker}(f - \lambda \operatorname{Id}) - \{0\}$  y, por tanto,  $\mathcal{B}_U = \{v\}$  es linealmente independiente.

Aunque no es necesario, demostramos también el caso r=2. Lo hacemos por reducción al absurdo. Sea  $v \neq 0$ .  $v \in \text{Ker}(f-\lambda \operatorname{Id})^2 - \text{Ker}(f-\lambda \operatorname{Id})$ , y supongamos que  $\{v, (f-\lambda \operatorname{Id})(v)\}$  son linealmente dependientes. Entonces,  $v=a(f-\lambda \operatorname{Id})(v)$  para algún  $a \in \mathbb{K}$ , de donde

$$(f - \lambda \operatorname{Id})(v) = (f - \lambda \operatorname{Id})(a(f - \lambda \operatorname{Id})(v)) = a(f - \lambda \operatorname{Id})^{2}(v) = a \cdot 0 = 0$$

Entonces  $v \in \text{Ker}(f - \lambda \text{ Id})$ , lo que contradice la hipótesis.

Hipótesis de inducción: si  $v \neq 0$ ,  $v \in \text{Ker}(f - \lambda \text{Id})^i - \text{Ker}(f - \lambda \text{Id})^{i-1}$  entonces los vectores

$$\{v.(f - \lambda \operatorname{Id})(v), \dots (f - \lambda \operatorname{Id})^{i-1}(v)\}$$

son linealmente independientes.

Caso r = i + 1: sea  $v \in \text{Ker}(f - \lambda \operatorname{Id})^{i+1} - \text{Ker}(f - \lambda \operatorname{Id})^{i}$ . Tenemos que demostrar que el siguiente conjunto de vectores es linealmente independiente

$$\mathcal{B}_U = \{v, (f - \lambda \operatorname{Id})(v), \dots, (f - \lambda \operatorname{Id})^i(v)\}$$

Llamemos  $u=(f-\lambda\operatorname{Id})(v).$  Por la hipótesis de inducción, los vectores

$$T = \{u.(f - \lambda \operatorname{Id})(u)....(f - \lambda \operatorname{Id})^{i-1}(u)\} = \{(f - \lambda \operatorname{Id})(v),...(f - \lambda \operatorname{Id})^{i}(v)\}$$

son linealmente independientes, por lo que si el conjunto  $\mathcal{B}_U = \{v\} \cup T$  fuera linealmente dependiente tendría que ocurrir

$$v = a_1(f - \lambda \operatorname{Id})(v) + \dots + a_i(f - \lambda \operatorname{Id})^i(v)$$
. para ciertos  $a_1, \dots, a_i \in \mathbb{K}$ 

Aplicando a los dos miembros de esta igualdad  $(f - \lambda \operatorname{Id})^i$  se obtiene:

$$(f - \lambda \operatorname{Id})^{i}(v) = a_{1}(f - \lambda \operatorname{Id})^{i+1}(v) + \dots + a_{i}(f - \lambda \operatorname{Id})^{2i}(v)$$

Como por hipótesis  $v \in \text{Ker}(f - \lambda \operatorname{Id})^{i+1}$  entonces todos los vectores del miembro derecho de la ecuación son 0, por lo que  $(f - \lambda \operatorname{Id})^i(v) = 0$  y de ahí obtenemos una contradicción con la hipótesis ya que  $v \notin \text{Ker}(f - \lambda \operatorname{Id})^i$ .

Nos falta demostrar que el subespacio r-cíclico U es invariante por $f$. Sea  $w \in U$  y veamos que f(w) también pertenece a U. En primer lugar,

$$w = b_0 v + b_1 (f - \lambda \operatorname{Id})(v) + \dots + b_{r-1} (f - \lambda \operatorname{Id})^{r-1}(v)$$
 para ciertos  $b_i \in \mathbb{K}$ 

por lo que, aplicando a ambos miembros de la igualdad  $(f - \lambda \operatorname{Id})$  tenemos

$$(f - \lambda \operatorname{Id})(w) = b_0(f - \lambda \operatorname{Id})(v) + b_1(f - \lambda \operatorname{Id})^2(v) + \dots + b_{r-2}(f - \lambda \operatorname{Id})^{r-1}(v) + b_{r-1}\underbrace{(f - \lambda \operatorname{Id})^r(v)}_{=0}$$

Así,

$$f(w) = \lambda w + b_0(f - \lambda \operatorname{Id})(v) + b_1(f - \lambda \operatorname{Id})^2(v) + \dots + b_{r-2}(f - \lambda \operatorname{Id})^{r-1}(v)$$

y f(w) resulta ser una combinación lineal de vectores de U, como queríamos demostrar.

Por último, que la matriz de  $f|_U$  en la base dada por el enunciado es un bloque de Jordan, se deduce directamente de (5.6).  $\square$ 

Cuando un autovalor  $\lambda$  tiene multiplicidad algebraica a, si su multiplicidad geométrica $g$ cumple $g$ = a, entonces podemos encontrar a autovectores en el subespacio propio  $V_{\lambda}$  para formar una base, y en la matriz correspondiente  $\lambda$  aparece repetido a veces en la diagonal principal:

$$
\left(
\begin{array}{c|cccc|c}
& 0 & 0 & \cdots & 0 & \\
& \cdots & & \cdots & & \\
& \lambda & 0 & \cdots & 0 & \cdots \\
& 0 & \lambda & \ddots & \vdots & \cdots \\
\cdots & 0 & 0 & \ddots & 0 & \cdots \\
& \vdots & \vdots & & \lambda & \\
& & & & \vdots &\\
& 0 & 0 & \cdots & 0 & \cdots
\end{array}
\right)
$$

Cuando  $g = \dim V_{\lambda} < a$ , el endomorfismo no será diagonalizable, pero en la matriz de Jordan, que vamos a construir, el autovalor  $\lambda$  tendrá que aparecer a veces repetido en la diagonal principal. Es decir, que en la base respecto a la cuál obtengamos la matriz de Jordan habrá a vectores -no todos autovectores- de alguna manera relacionados con el autovalor  $\lambda$ , en concreto pertenecientes a un subespacio invariante por $f$ relacionado con  $\lambda$ , que tiene que ver con los núcleos iterados  $\operatorname{Ker}(f-\lambda\operatorname{Id})^i$  que acabamos de manejar.

#### Definición 5.25
> Se denomina subespacio propio generalizado i-ésimo asociado a un autovalor  $\lambda$  de un endomorfismo f, al subespacio vectorial
> $$K^{i}(\lambda) = \operatorname{Ker}(f - \lambda \operatorname{Id})^{i}  \quad \text{para} \quad  i = 1, 2, \dots $$
> El subespacio propio generalizado primero coincide con el subespacio propio:  $K^1(\lambda) = V_{\lambda}$ .

#### Proposición 5.26: Propiedades de los subespacios propios generalizados
> Sea  $\lambda$  un autovalor de un endomorfismo $f$. Entonces, se cumplen las propiedades:
> 
> (1)  $K^i(\lambda) \subseteq K^{i+1}(\lambda)$ .
> (2)  $v \in K^i(\lambda)$  si y sólo si  $(f \lambda \operatorname{Id})(v) \in K^{i-1}(\lambda)$
> (3) Existe un entero k > 0 tal que se tiene la cadena ascendente de subespacios hasta alcanzar uno de dimensión máxima:
> $$V_{\lambda} = K^{1}(\lambda) \subsetneq K^{2}(\lambda) \subsetneq \cdots \subsetneq K^{k}(\lambda) = K^{k+1}(\lambda) = \cdots = K^{j}(\lambda) = \cdots  \quad \text{para todo} \quad j > k $$
> Se denomina subespacio máximo asociado a  $\lambda$  al subespacio
> $$M(\lambda) = K^k(\lambda) = \operatorname{Ker}(f - \lambda \operatorname{Id})^k$$
> (4) Los subespacios propios generalizados son $f$-invariantes.
> (5) Si  $d_i = \dim K^i(\lambda)$ , i = 1, 2, ..., se cumple que la diferencia en dimensiones entre subespacios propios generalizados consecutivos  $r_i = d_i d_{i-1}$ , i = 2, 3, ..., es decreciente. Es decir,
> $$r_2 \ge r_3 \ge \cdots \ge r_k$$

**Demostración:** Para simplificar la notación, como el autovalor  $\lambda$  de $f$ está fijado. llamaremos  $K^i$  a  $K^i(\lambda)$ .

- (1) Sea  $v \in K^i$ , entonces  $(f \lambda \operatorname{Id})^i(v) = 0$ , de donde  $(f \lambda \operatorname{Id})^{i+1}(v) = (f \lambda \operatorname{Id})(f \lambda \operatorname{Id})^i(v) = (f \lambda \operatorname{Id})(0) = 0$ , luego  $v \in K^{i+1}$ .
- (2)  $v \in K^i$  si y sólo si  $(f \lambda \operatorname{Id})^i(v) = 0$  si y sólo si  $(f \lambda \operatorname{Id})^{i-1}(f \lambda \operatorname{Id})(v) = 0$  si y sólo si  $(f \lambda \operatorname{Id})(v) \in K^{i-1}$ .
- (3) Por el apartado (1) se tiene que cada subespacio propio generalizado está contenido en el siguiente

$$K^1 \subseteq K^2 \subseteq \dots \subseteq K^i \subseteq \dots$$

Como todos ellos son subespacios de un espacio vectorial de dimensión finita, entonces, la cadena no puede crecer de forma estricta indefinidamente. Vamos a ver que si dos subespacios generalizados son iguales:  $K^k = K^{k+1}$ , entonces los sucesivos subespacios son todos iguales, es decir  $K^k = K^j$ , para todo  $j \geq k$ . Sea k el menor entero positivo para el cual el subespacio generalizado k-ésimo y el (k+1)-ésimo coinciden, y v un vector de  $K^{k+2}$ . Entonces

$$(f - \lambda \operatorname{Id})^{k+2}(v) = 0 \implies (f - \lambda \operatorname{Id})^{k+1}(f - \lambda \operatorname{Id})(v) = 0 \implies (f - \lambda \operatorname{Id})(v) \in K^{k+1}$$

v entonces, como  $K^{k+1} = K^k$ .

$$(f - \lambda \operatorname{Id})(v) \in K^k \implies (f - \lambda \operatorname{Id})^k (f - \lambda \operatorname{Id})(v) = 0 \implies v \in K^{k+1}$$

Así,  $K^{k+2} \subseteq K^{k+1}$ , y por tanto  $K^{k+2} = K^{k+1}$ . Procediendo de forma análoga se tiene la igualdad para los sucesivos subespacios generalizados.

(4) Tenemos que demostrar que si  $u \in K^i(\lambda)$ , entonces  $f(u) \in K^i(\lambda)$  es decir

$$(f - \lambda \operatorname{Id})^{i}(u) = 0 \implies (f - \lambda \operatorname{Id})^{i}(f(u)) = 0$$

Sea  $u \in K^i(\lambda)$ , entonces

$$f \circ (f - \lambda \operatorname{Id})^{i}(u) = f((f - \lambda \operatorname{Id})^{i}(u)) = f(0) = 0 \tag{a}$$

Es fácil demostrar (se deja como ejercicio al lector) que

$$f \circ (f - \lambda \operatorname{Id})^i = (f - \lambda \operatorname{Id})^i \circ f \tag{b}$$

v así podremos deducir que

$$(f - \lambda \operatorname{Id})^i \circ f(u) \stackrel{(b)}{=} f \circ (f - \lambda \operatorname{Id})^i(u) \stackrel{(a)}{=} 0$$

como queríamos.

(5) Tomamos tres subespacios generalizados consecutivos y distintos que, sin pérdida de generalidad, podemos suponer  $K^1 \subseteq K^2 \subseteq K^3$  con dimensiones  $d_1 < d_2 < d_3$ , y vamos a ver que  $r_2 = d_2 - d_1 \ge r_3 = d_3 - d_2$ . Consideremos una base  $\{v_1, \ldots, v_{d_2}\}$  de  $K_2$ . Podemos ampliarla añadiendo  $r_3$  vectores hasta obtener una base de  $K^3$ :  $\{v_1, \ldots, v_{d_2}, w_1, \ldots, w_{r_3}\}$  de modo que

$$K^3 = K^2 \oplus L(w_1, \dots, w_{r_3})$$

Como los vectores  $w_1, \ldots, w_{r_3} \in K^3 - K^2$ , entonces por la propiedad (2)

$$(f - \lambda \operatorname{Id})(w_1), \dots, (f - \lambda \operatorname{Id})(w_{r_3}) \in K^2 - K^1$$

si estos vectores fuesen linealmente independientes, entonces el resultado estaría probado. Veámoslo. Procedemos por reducción al absurdo, suponiendo que  $(f - \lambda \operatorname{Id})(w_1), \ldots, (f - \lambda \operatorname{Id})(w_{r_3})$  son linealmente dependientes, entonces existen escalares  $\alpha_1, \ldots, \alpha_{r_3}$ , no todos nulos, tales que

$$\alpha_1(f - \lambda \operatorname{Id})(w_1) + \dots + \alpha_{r_3}(f - \lambda \operatorname{Id})(w_{r_3}) = 0$$

Por linealidad se tiene  $(f - \lambda \operatorname{Id})(\alpha_1 w_1 + \dots + \alpha_{r_3} w_{r_3}) = 0$ , es decir  $\alpha_1 w_1 + \dots + \alpha_{r_3} w_{r_3} \in K^1 \subsetneq K^2$ , llegando a una contradicción.  $\square$ 

**Notación**: En muchas ocasiones, para simplificar, utilizaremos la notación  $A \subset B$  que significa lo mismo que  $A \subsetneq B$ . Es decir. A está contenido en B y  $A \neq B$ . También hemos denotado por A - B al conjunto formado por los elementos de A que no pertenecen a B.

#### Ejemplo 5.27: Cálculo de subespacios generalizados

Sea $f$ un endomorfismo de un  $\mathbb{K}$ -espacio vectorial V de dimensión 4, que respecto a una base dada  $\mathcal{B}$  tiene la siguiente matriz

$$A = \begin{pmatrix} 3/2 & -1/2 & 1 & 1\\ 1/2 & 1/2 & 0 & 0\\ 0 & 0 & 1 & 0\\ 0 & 0 & 0 & 1 \end{pmatrix}$$

El polinomio característico de $f$ es  $p_f(\lambda) = \det(A - \lambda I) = (\lambda - 1)^4$ , por lo que $f$ tiene un único autovalor  $\lambda = 1$  con multiplicidad algebraica a = 4. Vamos a calcular la cadena de subespacios propios generalizados:

$$
\begin{array}{rcrcl} 
V_1 & = & K^1(1) & = & \operatorname{Ker}(f - \operatorname{Id}) \equiv \{(A - I)X = 0\} \\ 
& & & = & \{(x_1, x_2, x_3, x_4)_{\mathcal{B}} : 
	\begin{pmatrix}
	1/2 & -1/2 & 1 & 1 \\ 
	1/2 & -1/2 & 0 & 0 \\ 
	0 & 0 & 0 & 0 \\
	0 & 0 & 0 & 0 
	\end{pmatrix} 
	\begin{pmatrix} 
	x_1 \\ 
	x_2 \\ 
	x_3 \\ 
	x_4 
	\end{pmatrix} 
	= 
	\begin{pmatrix}
	0 \\ 
	0 \\ 
	0 \\
	0 
	\end{pmatrix}
\} \\ 
& & K^1(1) & \equiv & \{\frac{1}{2}x_1 - \frac{1}{2}x_2 + x_3 + x_4 = 0, \frac{1}{2}x_1 - \frac{1}{2}x_2 = 0\} \\ 
& & K^2(1) & = & \operatorname{Ker}(f - \operatorname{Id})^2 \equiv \{(A - I)^2 X = 0\} \\ 
& & & = & \{(x_1, x_2, x_3, x_4)_{\mathcal{B}} : 
	\begin{pmatrix} 
	0 & 0 & 1/2 & 1/2 \\
	0 & 0 & 1/2 & 1/2 \\
	0 & 0 & 0 & 0 \\
	0 & 0 & 0 & 0 
	\end{pmatrix} 
	\begin{pmatrix}
	x_1 \\
	x_2 \\
	x_3 \\
	x_4 
	\end{pmatrix} 
= 
	\begin{pmatrix}
	0 \\
	0 \\
	0 \\
	0 
	\end{pmatrix}
\} \\
& & K^2(1) &\equiv & \{x_3 + x_4 = 0\} \\
& & K^3(1) & = & \operatorname{Ker}(f - \operatorname{Id})^3 \equiv \{(A - I)^3 X = 0\} \\ 
 & & & = & \{(x_1, x_2, x_3, x_4)_{\mathcal{B}} : 
 \begin{pmatrix}
 0 & 0 & 0 & 0 \\
 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 \\
 0 & 0 & 0 & 0
\end{pmatrix}
	\begin{pmatrix}
	x_1 \\
	x_2 \\
	x_3 \\
	x_4 
	\end{pmatrix}
=
	\begin{pmatrix}
	0 \\
	0 \\
	0 \\
	0 
	\end{pmatrix}
\} = V
\end{array}
$$

Puesto que  $(A-I)^3=0$ , entonces las potencias sucesivas también serán nulas  $(A-I)^j=0$  para  $j\geq 3$ , de donde se deduce que los subespacios generalizados se empiezan a repetir a partir del tercero:  $K^3(1)=K^4(1)=\ldots$  Así, podemos afirmar que el subespacio máximo asociado al autovalor  $\lambda=1$  es  $M(1)=K^3(1)$ . Resumimos estos datos en el siguiente esquema:

$$
\begin{array}{rcccl}
\hline \text{dimensiones:} & 2 & 3 & 4 & \\
\text{subespacios generalizados:}  & K^1(1) & \subset  K^2(1) & \subset  K^3(1) & = M(1)   \\
\hline
\end{array}
\qquad \square
$$

De los subespacios máximos asociados a cada autovalor de un endomorfismo es de donde extracremos los vectores para formar la base respecto a la cual se obtendrá la matriz de Jordan. El siguiente resultado es clave. Nos indica cómo determinar una base para el subespacio máximo.

#### Teorema 5.28: Base de Jordan de un subespacio máximo
> Sea  $\lambda$  un autovalor de un endomorfismo $f$ de un  $\mathbb{K}$ -espacio vectorial V de dimensión n. Entonces, existe una base  $\mathcal{B}$  del subespacio máximo  $M(\lambda)$  tal que la matriz del endomorfismo restricción de $f$ a  $M(\lambda)$  en la base  $\mathcal{B}$  es una matriz de Jordan.

**Demostración:** Sea  $K^1 \subset K^2 \subset \cdots \subset K^k = M(\lambda)$ , la secuencia de subespacios generalizados con dimensiones  $d_1 < d_2 < \cdots < d_k$ . Vamos a construir una base  $\mathcal{B}$  de  $M(\lambda)$  descomponiendo este subespacio en suma directa de subespacios r-cíclicos, cada uno de los cuales generará un bloque de Jordan, como en (5.6). Lo hacemos en k pasos.

**Paso k**: Comenzamos considerando el subespacio máximo  $K^k$  y el anterior  $K^{k-1}$ . La diferencia de dimensiones entre estos subespacios es  $r_k = d_k - d_{k-1}$ , y vamos a tomar  $r_k$  vectores linealmente independientes  $\{v_1, \ldots, v_{r_k}\}$  de  $K^k - K^{k-1}$  de modo que ninguna combinación lineal de ellos pertenezca a  $K^{k-1}$ . Es decir:  $\{v_1, \ldots, v_{r_k}\}$  son vectores que generan un subespacio suplementario de  $K^{k-1}$  en  $K^k$ 

$$K^k = K^{k-1} \oplus L(v_1, \dots, v_{r_k})$$

Entonces, añadimos a la base  $\mathcal{B}$  los vectores  $v_1, \ldots, v_{r_k}$  y sus imágenes sucesivas por las potencias de  $(f - \lambda \operatorname{Id})$ . En virtud de la Proposición 5.24 sabemos que todos estos vectores son linealmente independientes. Cada uno de los vectores añadidos y sus imágenes generan un subespacio k-cíclico:

$$
\begin{array}{rcl}
v_1 & \xrightarrow{\text{genera el subespacio } k\text{-cíclico}} & L(v_1, (f - \lambda \operatorname{Id})(v_1), \dots, (f - \lambda \operatorname{Id})^{k-1}(v_1))
\\
\cdots
\\
v_{r_k} & \xrightarrow{\text{genera el subespacio } k\text{-cíclico}} & L(v_{r_k}, (f - \lambda \operatorname{Id})(v_{r_k}), \dots, (f - \lambda \operatorname{Id})^{k-1}(v_{r_k}))
\end{array} \\
$$


**Paso k – 1:** consideramos la diferencia de dimensiones entre los subespacios generalizados (k-1)-ésimo y el anterior  $r_{k-1} = d_{k-1} - d_{k-2}$  y añadimos a la base  $l_{k-1} = r_{k-1} - r_k$  vectores, es decir, la diferencia en dimensiones menos los vectores de  $K^{k-1}$  que se añadieron en los pasos anteriores. Así, tomamos  $u_1, \ldots, u_{l_{k-1}}$  vectores de  $K^{k-1} - K^{k-2}$  de modo que

$$K^{k-1} = K^{k-2} \oplus L(u_1, \dots, u_{l_{k-1}}, \underbrace{(f - \lambda \operatorname{Id})(v_1), \dots, (f - \lambda \operatorname{Id})(v_{r_k})}_{\text{vectores de } K^{k-1} \text{ que se anadieron en el paso } k})$$

Hemos añadido a los vectores  $(f - \lambda \operatorname{Id})(v_1), \ldots, (f - \lambda \operatorname{Id})(v_{r_k})$ , que ya estaban en la base, los u's necesarios hasta completar una base de un suplementario de  $K^{k-2}$  en  $K^{k-1}$ . Cada uno de los vectores  $u_i$  genera un subespacio (k-1)-cíclico.

En la base incluimos los vectores  $u_1, \ldots, u_{l_{k-1}}$  y sus imágenes iteradas por  $(f - \lambda \operatorname{Id})$ :

$$
\begin{array}{rcl}
u_1 & \xrightarrow{\text{genera el subespacio } k\text{-cíclico}} & L(u_1, (f - \lambda \operatorname{Id})(u_1), \dots, (f - \lambda \operatorname{Id})^{k-1}(u_1))
\\
\cdots
\\
u_{l_{k-1}} & \xrightarrow{\text{genera el subespacio } k\text{-cíclico}} & L(u_{r_k}, (f - \lambda \operatorname{Id})(u_{l_{r_k}}), \dots, (f - \lambda \operatorname{Id})^{k-1}(u_{l_{r_k}}))
\end{array} \\
$$

Continuamos así hasta que en el último paso llegamos al subespacio propio  $K^1 = V_{\lambda}$ , en el que se procede de modo diferente:

**Paso 1:** Si con los vectores que se han añadido en los pasos anteriores ya hay una base de  $K^1$ , hemos terminado. Si no, añadimos los vectores  $w_1, \ldots, w_{l_1}$  que fueran necesarios hasta completar una base de  $K^1$  y habremos acabado.

Para que se visualice mejor el procedimiento, colocamos los vectores en una tabla según se van incluvendo en la base. La tabla se va completando por filas y de derecha a izquierda en cada fila:

$$
\begin{array}{rcccccl}
\hline \text{dimensiones:} & d_1 & \cdots & d_{k-1} & & d_k \\
\text{subespacios:} & K^{1} & \subset \cdots \subset  & K^{k-1} & \subset & K^k = M(\lambda) \\
\hline & (f - \lambda  \operatorname{Id})^{k-1}(v_1) & \cdots & (f - \lambda \operatorname{Id})(v_1) & & v_1 \\
& \vdots & & \vdots  & & \vdots & \leftarrow \text{vectores paso k} \\
& (f - \lambda \operatorname{Id})^{k-1}(v_{r_k}) & \cdots & (f - \lambda \operatorname{Id})(v_{r_k}) & & v_{r_k} \\
& (f - \lambda \operatorname{Id})^{k-2}(u_1) & \cdots & u_1 \\
& \vdots & & \vdots & & & \leftarrow \text{vectores paso k-1} \\
& (f - \lambda \operatorname{Id})^{k-2}(u_{l_{k-1}}) & \cdots & u_{l_{k-1}} \\
& \vdots \\
\hline
\end{array}
$$
En cada fila están un vector v y sus imágenes iteradas por  $f - \lambda \operatorname{Id}$ . Los vectores de cada fila de la tabla generan un subespacio cíclico.

En la columna correspondiente al subespacio  $K^i$ ,  $i=2,\ldots,k$ ; están los vectores de  $K^i$  que generan un suplementario de  $K^{i-1}$  en  $K^i$ , y hay exactamente  $d_i-d_{i-1}$ .

En la primera columna de la tabla hay una base de  $K^1$ , por lo que todos los vectores de esta columna son autovectores.

La base formada por todos los vectores de la tabla escritos de derecha a izquierda y de arriba hacia abajo:

$$\mathcal{B} = \{v_1, \dots, (f - \lambda \operatorname{Id})^{k-1}(v_1), \dots, v_{r_k}, \dots, (f - \lambda \operatorname{Id})^{k-1}(v_{r_k}), u_1, \dots, (f - \lambda \operatorname{Id})^{k-2}(u_1), \dots\}$$

forman una base del subespacio máximo  $M(\lambda)$ .

La tabla en la que se colocan los vectores se denomina **Tabla** o **esquema de la base de Jordan** y la base así construida se llama **base de Jordan del subespacio máximo**  $M(\lambda)$ .

Se cumple que  $\mathfrak{M}_{\mathcal{B}}(f|_{M(\lambda)})$  es una matriz de Jordan. En efecto, cada fila de la tabla, que determina un subespacio r-cíclico invariante, genera un bloque de Jordan de orden r en la matriz. Además, se tienen tantos bloques de orden r como vectores se hayan añadido en la columna correspondiente al subespacio  $K^r$  de la tabla en el paso r-ésimo. El número total de bloques coincide con la dimensión del subespacio propio  $V_{\lambda} = K^1$ , es decir, con la multiplicidad geométrica del autovalor.

El número total de vectores en la tabla es  $d_k$ , la dimensión de  $M(\lambda)$ , ya que en cada columna correspondiente a  $K^j$  para  $j=k,\ldots,2$ , se tienen  $d_j-d_{j-1}$  vectores y exactamente  $d_1$  en  $K^1$ .  $\square$ 

#### Ejemplo 5.29 Cálculo de la base de Jordan de un subespacio máximo

Sea  $f: V \to V$  el endomorfismo del ejemplo 5.27. Vamos a determinar la base de Jordan del subespacio máximo asociado al único autovalor de dicho endomorfismo  $\lambda = 1$ .

Los subespacios generalizados son:

$$\begin{split} K^1(1) &= V_1 \equiv \{ \frac{1}{2} x_1 - \frac{1}{2} x_2 + x_3 + x_4 = 0, \ \frac{1}{2} x_1 - \frac{1}{2} x_2 = 0 \}, & \dim K^1 = 2 \\ K^2(1) &\equiv \{ x_3 + x_4 = 0 \}, & \dim K^2 = 3 \\ K^3(1) &= M(\lambda) = V, & \dim K^3 = 4 \end{split}$$

Disponemos los datos en una tabla y vamos aplicando el algoritmo para encontrar la base de Jordan descrito en la demostración anterior.
$$
\begin{array}{rccccc}
\hline \text{dimensiones:} & 2 & & 3 & & 4 \\
\text{subespacios generalizados:} & K^{1}(1) & \subset & K^{2}(1) & \subset & K^3(1) = M(1) \\
\hline
\end{array}
$$

**Paso 3**: la diferencia de dimensiones entre  $K^3$  y  $K^2$  es  $d_3 - d_2 = 4 - 3 = 1$ , entonces en la columna de la tabla correspondiente a  $K^3$  habrá un vector. Tomamos  $v_1$  que genere un suplementario de  $K^2$  en  $K^3$ . Como sólo es un vector, basta con tomarlo de modo que  $v_1 \in K^3 - K^2$ . Fijándonos en las ecuaciones de  $K^3$  y  $K^2$  nos sirve  $v_1 = (0,0,0,1)_{\mathcal{B}}$ . Recordemos aquí que  $K^3$  no tiene ecuaciones pues es el espacio vectorial total.

Entonces, incluimos en la base de Jordan a  $v_1$  y sus imágenes

$$(f - \lambda \operatorname{Id})(v_1) = v_2 \in K^2 \quad \text{y} \quad  (f - \lambda \operatorname{Id})^2(v_1) = (f - \lambda \operatorname{Id})(v_2) = v_3 \in K^1 $$

y las escribimos en la tabla de modo que los vectores quedan colocados debajo del subespacio generalizado al que pertenecen.
$$
\begin{array}{rccccc}
\hline \text{dimensiones:} & 2 & & 3 & & 4 \\
\text{subespacios generalizados:} & K^{1} & \subset & K^{2}(1) & \subset& K^3(1) = M(1) \\
&  v_3 & & v_2 & & v_1 \\
\hline
\end{array}
$$

**Paso 2**: la diferencia de dimensiones entre  $K^2$  y  $K^1$  es  $d_2 - d_1 = 3 - 2 = 1$ , luego en la columna de la tabla correspondiente a  $K^2$  habrá un vector. Como en el paso anterior ya hemos añadido un vector a esa columna  $v_2 \in K^2 - K^1$ , entonces ya tenemos una base de un suplementario de  $K^1$  en  $K^2$ , por lo que en este paso no tendremos que añadir ningún vector nuevo.

**Paso 1**: la dimensión de  $K^1$  es 2, luego en la columna correspondiente a  $K^1$  habrá 2 vectores. Como en pasos anteriores sólo hemos añadido un vector a la columna de  $K^1$ :  $v_3$ , entonces tenemos que añadir otro:  $v_4$ , hasta completar una base  $v_3$ ,  $v_4$  de  $K^1$ . Lo añadimos a la tabla, y hemos terminado:

$$
\begin{array}{rcccccl}
\hline \text{dimensiones:} & 2 &  & 3 & & 4 \\      
\text{subespacios:} & K^{1}(1) & \subset & K^{2}(1) & \subset & K^{3}(1) = M(1) \\
& v_3 & & v_2 & & v_1 & \leftarrow$ \text{vectores añadidos en el paso 3} \\
& v_4 & & & & & \leftarrow$ \text{vectores añadidos en el paso 1} \\
\hline
\end{array}
$$
Finalmente, calculamos de forma explícita los vectores:

$$
\begin{align}
(f - \operatorname{Id})(v_1) &= v_2 \to 
\begin{pmatrix} 
1/2 & -1/2 & 1 & 1 \\
1/2 & -1/2 & 0 & 0 \\ 
0 & 0 & 0 & 0 \\ 
0 & 0 & 0 & 0
\end{pmatrix}
\begin{pmatrix} 0 \\ 0 \\0\\1 \end{pmatrix}
= \begin{pmatrix} 1 \\ 0 \\0\\0 \end{pmatrix} \to v_2 = (1, 0, 0, 0)_{\mathcal{B}}
\\
(f - \operatorname{Id})(v_2) &= v_3 \to \begin{pmatrix} 1/2 & -1/2 & 1 & 1\\ 1/2 & -1/2 & 0 & 0\\ 0 & 0 & 0 & 0\\ 0 & 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} 1\\0\\0\\0 \end{pmatrix} = \begin{pmatrix} \frac{1}{2}\\\frac{1}{2}\\0\\0 \end{pmatrix} \to v_3 = (\frac{1}{2}, \frac{1}{2}, 0, 0)_{\mathcal{B}}
\end{align}
$$

Y el último  $v_4$  será un vector de  $K^1$  linealmente independiente de  $v_3$ , por ejemplo

$$v_4 = (0, 0, -1, 1)_{\mathcal{B}}$$

Formamos la base de Jordan de M(1) escribiendo los 4 vectores de la tabla por filas de derecha a izquierda y de arriba hacia abajo, y se obtiene  $\mathcal{B}' = \{v_1, v_2, v_3, v_4\}$ . La matriz de $f$ respecto de  $\mathcal{B}'$  es

$$
\mathfrak{M}_{\mathcal{B}'}(f) = 
\left(
\begin{array}{ccc|c} 
1 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 \\ 0 & 1 & 1 & 0 \\
\hline 0 & 0 & 0 & 1 
\end{array}
\right)$$

Es una matriz de Jordan formada por dos bloques: uno por cada fila de la tabla. El primer bloque de tamaño  $3 \times 3$  se corresponde con los tres vectores  $v_1, v_2, v_3$  de la primera fila que generan un subespacio 3-cíclico invariante  $L(v_1, v_2 = (f - \operatorname{Id})(v_1), v_3 = (f - \operatorname{Id})^2(v_1))$ . El segundo bloque de tamaño  $1 \times 1$  se corresponde con el vector  $v_4$  de la segunda fila de la tabla, que genera un subespacio 1-cíclico invariante.

Hay tantos bloques como filas en la tabla y la dimensión de cada bloque es igual al número de vectores de la fila correspondiente.  $\Box$ 

**Observación:** Una base del subespacio propio generalizado *i*-ésimo,  $K^i$ , está formada por todos los vectores de las columnas 1 a la *i*. En el ejemplo que acabamos de ver, una base de  $K^1$  está formada por los vectores de la primera columna  $\{v_3, v_4\}$ . Una base de  $K^2$  está formada por los vectores de la primera y segunda columna  $\{v_2, v_3, v_4\}$ . Una base de  $K^3$  está formada por los vectores de las columnas 1, 2 y 3,  $\{v_1, v_2, v_3, v_4\}$ .

#### Proposición 5.30: Dimensión del subespacio máximo
> Sea $f$ un endomorfismo de un K-espacio vectorial V y  $\lambda$  un autovalor de $f$. Entonces, la dimensión del subespacio máximo  $M(\lambda)$  coincide con la multiplicidad algebraica de  $\lambda$ .

**Demostración:** Sea  $\mathcal{B}_1 = \{v_1, \dots, v_s\}$  una base de Jordan de  $M(\lambda)$  y ampliémosla con vectores  $\{v_{s+1}, \dots, v_n\}$  hasta formar una base  $\mathcal{B} = \{v_1, \dots, v_n\}$  de V. Los vectores  $\{v_{s+1}, \dots, v_n\}$  generan un suplementario de  $M(\lambda)$  en V, véase pág. 146. Por ser el subespacio máximo $f$-invariante, la matriz de $f$ en la base  $\mathcal{B}$  tiene la siguiente estructura en bloques

$$\mathfrak{M}_{\mathcal{B}}(f) = \begin{pmatrix} A_1 & B \\ 0 & A_2 \end{pmatrix}$$

donde  $A_1$  es la matriz de $f$ restringida a  $M(\lambda)$ . Por la estructura en bloques, tenemos que el polinomio característico de $f$ es de la forma  $p_f(t) = \det(A_1 - tI) \det(A_2 - tI)$ . Como  $A_1$  es la matriz de Jordan de  $f_{|M(\lambda)}$  respecto de  $\mathcal{B}_1$ , entonces  $\det(A_1 - tI) = (t - \lambda)^s$ . Así,  $p_f(t) = (t - \lambda)^s \det(A_2 - tI)$  y tenemos que  $\dim M(\lambda) = s < a$ , la multiplicidad algebraica.

Supongamos que s < a, entonces  $\lambda$  debe ser raíz de  $\det(A_2 - tI)$ , el polinomio característico de la matriz  $A_2$ . Vamos a determinar un endomorfismo relacionado con $f$ que tenga a  $A_2$  por matriz. Consideramos el espacio vectorial cociente  $V/M(\lambda)$ . Una base de dicho espacio cociente es  $\hat{\mathcal{B}} = \{v_{s+1} + M(\lambda), \dots, v_n + M(\lambda)\}$ , véase pág. 150. Consideramos la aplicación

$$
\begin{array}{ccc}
\hat{f}: V/M(\lambda) & \longrightarrow & V/M(\lambda) \\
\hat{f}(v+M(\lambda)) & \mapsto & f(v)+M(\lambda)
\end{array}
$$

que está bien definida por ser  $M(\lambda)$  invariante. La matriz de  $\hat{f}$  en la base  $\hat{\mathcal{B}}$  es  $A_2$ , y como  $\lambda$  es un autovalor de  $A_2$ , o equivalentemente de  $\hat{f}$ , existirá un autovector no nulo  $v + M(\lambda)$ , que es una clase no nula del cociente, es decir  $v \notin M(\lambda)$ , de modo que

$$
\left.
\begin{array}{lcl} 
\hat{f}(v+M(\lambda)) & = & \lambda(v+M(\lambda)) = \lambda v + M(\lambda) \\ \hat{f}(v+M(\lambda)) & = & f(v) + M(\lambda) 
\end{array}
\right\} 
\Rightarrow f(v) + M(\lambda) = \lambda v + M(\lambda) \Leftrightarrow f(v) - \lambda v \in M(\lambda)
$$

Ahora, como  $M(\lambda) = \text{Ker}(f - \lambda \text{Id})^k$ , entonces

$$(f - \lambda \operatorname{Id})^{k} (f(v) - \lambda v) = (f - \lambda \operatorname{Id})^{k+1} v = 0$$

de donde  $v \in K^{k+1} = K^k = M(\lambda)$ , con lo que llegamos a una contradicción.  $\square$ 

#### Teorema 5.31: Teorema de existencia

Sea $f$ un endomorfismo de un K-espacio vectorial V de dimensión n. Entonces, existe una base  $\mathcal{B}$  tal que la matriz  $\mathfrak{M}_{\mathcal{B}}(f)$  es una matriz de Jordan si y sólo si $f$ tiene n autovalores contados con su multiplicidad.

**Demostración:**  $\Rightarrow$  Si existe una base  $\mathcal{B}$  tal que la matriz  $\mathfrak{M}_{\mathcal{B}}(f)$  es una matriz de Jordan, dado que dicha matriz es triangular y todos los elementos de la diagonal principal son los autovalores de f, entonces el número de autovalores coincide con la dimensión del espacio V.

 $\Leftarrow$  Supongamos ahora que $f$ tiene n autovalores contados con su multiplicidad. Es decir, si los autovalores distintos de $f$ son  $\lambda_1, \ldots, \lambda_r$  con multiplicidades algebraicas  $a_1, \ldots, a_r$ , respectivamente, entones  $a_1 + \cdots + a_r = n$ . Vamos a demostrar que el espacio vectorial se descompone en suma directa de los subespacios máximos

$$V = M(\lambda_1) \oplus \cdots \oplus M(\lambda_r) \tag{5.8}$$

Por la Proposición 5.30 sabemos que dim  $M(\lambda_i) = a_i$ , por lo que basta demostrar que

$$V = M(\lambda_1) + \dots + M(\lambda_r)$$

Por la fórmula de dimensiones tenemos que

$$\dim(M(\lambda_1) + \dots + M(\lambda_r)) \le \dim M(\lambda_1) + \dots + \dim M(\lambda_r) = a_1 + \dots + a_n = n$$

Si se diera la igualdad se tendría la suma directa (5.8). Procedemos por reducción al absurdo. Supongamos  $U = M(\lambda_1) + \cdots + M(\lambda_r)$ , con dimU = p < n y consideremos  $\{v_1, \ldots, v_p\}$  una base de U. Ampliemos la base de U con vectores  $v_{p+1}, \ldots, v_n$  hasta formar una base de V

$$\mathcal{B}' = \{v_1, \dots, v_p; v_{p+1}, \dots, v_n\}$$

Por ser U un subespacio $f$-invariante, la matriz de $f$ respecto a la base  $\mathcal{B}$  es de la forma:

$$
\mathfrak{M}_{\mathcal{B}'}(f) = 
\left(
\begin{array}{c|c}
A & C \\ 
\hline 0 & B 
\end{array}
\right)
$$

donde A, de orden p, es la matriz de $f$ restringida a U, de modo que el polinomio característico de $f$ es  $p_f(t) = \det(A - tI) \det(B - tI)$ . Como A tiene p autovalores, entonces B tiene n - p autovalores, que a su vez son autovalores de $f$. Sea  $\lambda$  un autovalor de B, como también es autovalor de $f$ entonces  $\lambda = \lambda_i$  para algún  $i \in \{1, \ldots, r\}$ .

Vamos a construir otra base de V. Comenzamos con una base de Jordan de  $M(\lambda_i)$ 

$$\mathcal{B}_i = \{w_1, \dots, w_{a_i}\}$$

entonces la matriz de $f$ restringida a  $M(\lambda_i)$  respecto a  $\mathcal{B}_i$  es una matriz de Jordan que demotamos por  $J_i$ . Como  $M(\lambda_i) \subseteq U$ , podemos ampliar  $\mathcal{B}_i$  a una base de U

$$\mathcal{B}_{U} = \{w_1, \dots, w_{a_i}; w_{a_i+1}, \dots, w_p\}$$

que a su vez ampliamos a una base  $\mathcal{B}''$  de V

$$\mathcal{B}'' = \{w_1, \dots, w_{a_i}; w_{a_i+1}, \dots, w_p; v_{p+1}, \dots, v_n\}$$

con los mismos vectores  $v_{p+1}, \ldots, v_n$  que se añadieron para obtener la base  $\mathcal{B}'$ .

La matriz de $f$ respecto a  $\mathcal{B}''$  tiene la forma

$$
\mathfrak{M}_{\mathcal{B}''}(f) = 
\left(
\begin{array}{c|c|c}
J_i & A_1 & C_1 \\
\hline 0 & A_2 & C_2 \\ 
\hline 0 & 0 & B 
\end{array}
\right)
$$

Como  $\lambda_i$  es autovalor de  $J_i$  de multiplicidad  $a_i$  y, a su vez, es autovalor de B, entonces la multiplicidad algebraica del autovalor  $\lambda_i$  es mayor que  $a_i$ . Hemos llegado a una contradicción, luego dim U = n y así  $U = V = M(\lambda_1) \oplus \cdots \oplus M(\lambda_r)$ .

Finalmente, tomando una base de Jordan  $\mathcal{B}_j$  de cada subespacio máximo  $M(\lambda_j)$  para  $j=1,\ldots,r;$  podemos construir la base de V

$$\mathcal{B} = \mathcal{B}_1 \cup \cdots \cup \mathcal{B}_r$$

respecto a la cual la matriz de $f$ es una matriz de Jordan.

#### Ejemplo 5.32
Consideramos el endomorfismo $f$ de un espacio vectorial real V de dimensión 4 cuya matriz respecto de una base  $\mathcal{B}$  es

$$A = \begin{pmatrix} -1/2 & 3/2 & -1/2 & 1/2 \\ 0 & 1 & 1 & 0 \\ 0 & 0 & 1 & 0 \\ -1/2 & 1/2 & -1/2 & 1/2 \end{pmatrix}$$

El polinomio característico de $f$ es  $p_f(\lambda) = \lambda^2(\lambda - 1)^2$  que tiene dos raíces reales: 0 (doble) y 1 (doble). En total 4 raíces contando multiplicidades, número que coincide con la dimensión del espacio, por lo que aplicando el Teorema de existencia podemos afirmar que existe una base  $\mathcal{B}'$  tal que  $\mathfrak{M}_{\mathcal{B}'}(f)$  es una matriz de Jordan.

Los autovalores y sus multiplicidades algebraicas son:

$$\lambda_0 = 0, \ a_0 = 2; \qquad \lambda_1 = 1, \ a_1 = 2$$

por lo que tendremos la siguiente descomposición en subespacios máximos

$$V = M(0) \oplus M(1)$$

Para determinar la matriz de Jordan calculamos de forma independiente una base de Jordan de cada subespacio máximo. Para ello determinamos las multiplicidades geométricas y los subespacios generalizados.

Las multiplicidades geométricas son

$$
\begin{align}
	g_0 &= \dim \operatorname{Ker}(f) = 4 - \operatorname{rg}(A) = 4 - 3 = 1, \\
	g_1 &= \dim \operatorname{Ker}(f - \operatorname{Id}) = 4 - \operatorname{rg}(A - I) = 4 - 3 = 1
\end{align}
$$

La multiplicidad geométrica determina el número de bloques de Jordan asociados a cada autovalor. por lo que tendremos un solo bloque de orden dos asociado a cada autovalor. Así, la matriz de Jordan resulta:

$$
J = 
\left(
\begin{array}{cc|cc} 
0 & 0 & 0 & 0 \\ 
1 & 0 & 0 & 0 \\ 
\hline 0 & 0 & 1 & 0 \\ 
0 & 0 & 1 & 1 
\end{array}
\right)
$$

Los subespacios máximos tendrán dimensión igual a la multiplicidad algebraica (véase la Proposición 5.30). En ambos casos dim  $M(0) = \dim M(1) = 2$ . Dado que las dimensiones de los subespacios generalizados van creciendo hasta llegar al máximo, entonces sólo puede ser  $M(0) = K^2(0)$  y  $M(1) = K^2(1)$ .

Las tablas de las bases de Jordan de los subespacios máximos son
$$
\begin{array}{rcccccc}
\hline \text{dimensiones:} & 1 & & 2 &  1 & & 2 \\
\text{subespacios:} & K^{1}(0) & \subset & K^2(0) = M(0) & K^{1}(1) & \subset & K^2(1) = M(1) \\
& v_2 & \leftarrow & v_1 & v_{4} & \leftarrow & v_3 \\
\hline
\end{array}
$$
donde  $v_1 \in K^2(0) - K^1(0)$ .  $v_2 = f(v_1)$ ,  $v_3 \in K^2(1) - K^1(1)$ .  $v_4 = (f - \operatorname{Id})(v_3)$ . En estas condiciones, la base  $\mathcal{B}' = \{v_1, v_2, v_3, v_4\}$  cumple  $\mathfrak{M}_{\mathcal{B}'}(f) = J$ .

Nótese que para determinar la matriz de Jordan no hemos necesitado calcular de forma explícita los subespacios ni la base.  $\Box$ 

### Unicidad, salvo permutación de bloques, de la matriz de Jordan

Para determinar la matriz de Jordan de un endomorfismo $f$ se busca una base de Jordan de cada subespacio máximo. Los vectores de estas bases se escriben por filas, tal y como se indicó en pág. 223.

Podemos cambiar el orden de los vectores de la base, sin separar los vectores correspondientes a cada fila de la tabla, pero sí cambiando el orden de las filas, y obtendríamos una matriz de Jordan con los mismos bloques pero en otro orden.

Por ejemplo, supongamos un endomorfismo cuya matriz de Jordan es:

$$\mathfrak{M}_{\mathcal{B}}(f) = J = \begin{pmatrix} 1 & 0 & 0 & 0 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 & 0 & 0 & 0 \\ \hline 0 & 0 & 1 & 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 2 & 0 & 0 & 0 \\ 0 & 0 & 0 & 1 & 2 & 0 & 0 \\ 0 & 0 & 0 & 0 & 1 & 2 & 0 \\ 0 & 0 & 0 & 0 & 0 & 0 & 2 \end{pmatrix} \qquad \mathcal{B} = \{v_1, v_2 \mid v_3 \mid v_4, v_5, v_6 \mid v_7\}$$

que se corresponde con las siguientes tablas de Jordan para los subespacios máximos

$$
\begin{array}{ccl}
2 & & \quad 3\\
K^{2}(1) & \subset & K^{3}(1)=M(1)
\\[0.8em]
v_{2} & \leftarrow & v_{1}
\\[0.4em]
v_{3}
\end{array}
\qquad\qquad
\begin{array}{ccccl}
2 & & 3 & & \quad 4 \\
K^{2}(2) & \subset & K^{3}(2) & \subset & K^{4}(2)=M(2)
\\[0.8em]
v_{6} & \leftarrow & v_{5} & \leftarrow & v_{4}
\\[0.4em]
v_{7}
\end{array}
$$
Si permutamos los vectores sin separar los vectores que forman una fila de alguna de las dos tablas, entonces obtenemos una permutación en los bloques, obteniendo una matriz de Jordan distinta. Recuerde que cada fila determina un subespacio cíclico y un bloque de Jordan. Por ejemplo:

$$\mathfrak{M}_{\mathcal{B}'}(f) = J' = \begin{pmatrix} 1 & 0 & 0 & 0 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 & 0 & 0 & 0 \\ \hline 0 & 0 & 2 & 0 & 0 & 0 & 0 \\ 0 & 0 & 1 & 2 & 0 & 0 & 0 \\ 0 & 0 & 0 & 1 & 2 & 0 & 0 \\ 0 & 0 & 0 & 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 0 & 0 & 0 & 2 \end{pmatrix} \qquad \mathcal{B}' = \{v_1, v_2 \mid v_4, v_5, v_6 \mid v_3 \mid v_7\}$$

Las barras verticales en  $\mathcal{B}$  y  $\mathcal{B}'$  separan filas distintas de la tabla de la base de Jordan. Esta matriz J' también es una matriz de Jordan del endomorfismo $f$.

Este hecho se enuncia diciendo que la forma canónica de Jordan de un endomorfismo es única salvo permutación de bloques.

#### Definición 5.33
> Sea $f$ un endomorfismo de un  $\mathbb{K}$  –espacio vectorial V. Diremos que $f$ admite una forma canónica de Jordan si existe una base  $\mathcal{B}$  de V tal que la matriz de $f$ respecto a dicha base es una matriz de Jordan J. Llamamos **forma canónica de Jordan** de $f$ a la matriz J, que es única salvo permutación de bloques de Jordan.

#### Teorema 5.34: Teorema de Jordan
> Sean $f$ y $g$ dos endomorfismos de un  $\mathbb{K}$ -espacio vectorial V que admiten una forma canónica de Jordan y tales que sus polinomios característicos coinciden. Sean  $\lambda_1, \ldots, \lambda_r$  sus autovalores distintos y  $K_f^i(\lambda_j)$ ,  $K_g^i(\lambda_j)$  los subespacios propios generalizados de $f$ y $g$ respectivamente, es decir:
> $$K_f^i(\lambda_j) = \operatorname{Ker}(f - \lambda_j \operatorname{Id})^i, \quad K_g^i(\lambda_j) = \operatorname{Ker}(g - \lambda_j \operatorname{Id})^i$$
> Entonces, $f$ y $g$ son linealmente equivalentes si y solamente si
>$$\dim K_f^i(\lambda_j) = \dim K_g^i(\lambda_j) \quad \text{para todo} \quad   j = 1, \dots, r;\; i = 1, 2, \dots$$

**Demostración:** Basta observar que dos endomorfismos son linealmente equivalentes si y sólo si poseen matrices semejantes. Por lo que, una condición necesaria y suficiente para la equivalencia lineal es tener la misma forma canónica de Jordan (salvo permutación de bloques de Jordan). Y la construcción de la base de Jordan, en la demostración del Teorema 5.28, nos indica que la matriz de Jordan queda completamente determinada conociendo las dimensiones de todos los subespacios generalizados.

#### Ejemplo 5.35

Estudiamos si son linealmente equivalentes o no los endomorfismos $f$ y $g$ cuyas

matrices son:

$$\mathfrak{M}_{\mathcal{B}}(f) = A = \begin{pmatrix} 1 & 0 & 0 \\ 1 & 2 & 1 \\ -1 & -1 & 0 \end{pmatrix}. \quad \mathfrak{M}_{\mathcal{B}}(g) = B = \begin{pmatrix} 2 & 1 & 0 \\ 0 & 1 & 1 \\ -1 & -1 & 0 \end{pmatrix}$$

En primer lugar calculamos los polinomios característicos y comprobamos que coinciden

$$p_f(\lambda) = \det(A - \lambda I) = -\lambda^3 + 3\lambda^2 - 3\lambda + 1 = (1 - \lambda)^3, \quad p_g(\lambda) = \det(B - \lambda I) = p_f(\lambda)$$

Ambos endomorfismos tienen 3 autovalores (o un autovalor triple  $\lambda=1$ ), por lo que admiten una forma de Jordan. Para decidir si son linealmente equivalentes estudiamos las dimensiones de los subespacios generalizados:

$$\dim K_f^1(1) = 3 - \operatorname{rg}(A - I) = 3 - \operatorname{rg}\begin{pmatrix} 0 & 0 & 0 \\ 1 & 1 & 1 \\ -1 & -1 & -1 \end{pmatrix} = 2$$

$$\dim K_g^1(1) = 3 - \operatorname{rg}(B - I) = 3 - \operatorname{rg}\begin{pmatrix} 1 & 1 & 0 \\ 0 & 0 & 1 \\ -1 & -1 & -1 \end{pmatrix} = 1$$

Como no coinciden las dimensiones, entonces no son linealmente equivalentes. Recordando que el número de bloques de Jordan asociados a un autovalor coincide con su multiplicidad geométrica, se tiene que la forma canónica de Jordan de $f$ tiene dos bloques de Jordan, mientras que la de $g$ tiene sólo 1.

$$J(f) = \begin{pmatrix} 1 & 0 & 0 \\ 1 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}, \quad J(g) = \begin{pmatrix} 1 & 0 & 0 \\ 1 & 1 & 0 \\ 0 & 1 & 1 \end{pmatrix} \qquad \Box$$

### Notación triangular superior de la matriz de Jordan.

En otros textos se utiliza una notación distinta para la matriz de Jordan, que consiste en una matriz triangular superior con los unos de los bloques de Jordan por encima de la diagonal principal, en lugar de por debajo, como se ha hecho en este libro. La única diferencia entre ambas matrices consiste en cómo se colocan los vectores de la base de Jordan de cada subespacio máximo, una vez calculadas con el mismo método. Lo ilustramos con los datos del Ejemplo 5.29.

Si tenemos la tabla de la base de Jordan de un subespacio máximo y escribimos los vectores en la base "de derecha a izquierda y de arriba hacia abajo" obtenemos la base  $\mathcal{B}' = \{v_1, v_2, v_3, v_4\}$  y la matriz de Jordan

$$\mathfrak{M}_{\mathcal{B}'}(f) = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 \\ 0 & 1 & 1 & 0 \\ \hline 0 & 0 & 0 & 1 \end{pmatrix}$$

Mientras que si escribimos los vectores de la tabla de la base de Jordan "de izquierda a derecha y de arriba hacia abajo" obtenemos la base  $\mathcal{B}'' = \{v_3, v_2, v_1, v_4\}$  y la matriz traspuesta

$$\mathfrak{M}_{\mathcal{B}''}(f) = \begin{pmatrix} 1 & 1 & 0 & 0 \ 0 & 1 & 1 & 0 \ 0 & 0 & 1 & 0 \ 0 & 0 & 0 & 1 \end{pmatrix}$$

El Teorema de Jordan nos permite afirmar que las dimensiones de los subespacios generalizados, al igual que la forma canónica de Jordan, forman un conjunto completo de invariantes para la clasificación lineal de endomorfismos vectoriales que admiten una forma canónica de Jordan. En particular, si los endomorfismos actúan en espacios vectoriales complejos  $\mathbb{K} = \mathbb{C}$ , siempre se cumple el Teorema de Existencia, ya que el **Teorema Fundamental del Álgebra** afirma que todo polinomio complejo de grado n posee n raíces en  $\mathbb{C}$ . Entonces, se tiene la clasificación completa de todos los endomorfismos complejos. Nos queda por estudiar el caso de los endomorfismos reales que no admiten una forma canónica de Jordan, a los que dedicamos la siguiente sección.

## 5.4. Forma de Jordan Real

En esta sección $f$ denotará un endomorfismo de un espacio vectorial real V de dimensión n. Cuando el polinomio característico  $p_f(\lambda)$ , real, tienen raíces complejas, entonces no se cumplen las condiciones del Teorema de Existencia: el número de autovalores de $f$ contando multiplicidades es menor que n, por lo que no admiten una forma canónica de Jordan. En esta sección determinamos una matriz canónica real para estos endomorfismos.

Sea A la matriz (real) del endomorfismo $f$ respecto a una base  $\mathcal{B} = \{v_1, \ldots, v_n\}$ . Si  $\lambda = a + bi$  es una raíz compleja de  $p_f(\lambda)$ , entonces también el conjugado  $\overline{\lambda} = a - bi$  es raíz de  $p_f(\lambda)$ . En efecto, si llamamos  $\overline{A}$  a la matriz obtenida cambiando todos los elementos de A por sus conjugados, entonces se tiene que si la matriz A es real  $A = \overline{A}$ . Por otro lado, como det $(A - \lambda I) = 0$ , entonces

$$0 = \overline{\det(A - \lambda I)} = \det(\overline{A} - \overline{\lambda}I) = \det(A - \lambda I)$$

Cada vez que tengamos una pareja de raíces complejas conjugadas  $\lambda = a + bi$  y  $\overline{\lambda} = a - bi$ , en la matriz canónica real que vamos buscando aparecerá un bloque  $2 \times 2$  con las partes real e imaginaria de la forma

$$\begin{pmatrix} a & b \\ -b & a \end{pmatrix}$$

Para construir la matriz canónica real vamos a manejar la matriz A como matriz de un endomorfismo real $f$ y, a la vez, como matriz de un endomorfismo complejo.

Formalmente, sea

$$\hat{V} = \{u + wi : u, w \in V\}$$

un conjunto al que denominaremos **extensión compleja** de V o **complejificación** de V. El conjunto  $\hat{V}$  es un espacio vectorial complejo de la misma dimensión que V. En particular  $V \subset \hat{V}$  ya que  $V = \{u + 0i : u \in V\}$  y  $\mathcal{B}$  también es una base de  $\hat{V}$ .

#### Proposición 5.36
> Si  $\mathcal{B}$  es una base de V, entonces también es una base de  $\hat{V}$ .

**Demostración:** Sean  $\mathcal{B} = \{v_1, \ldots, v_n\}$  una base de V y  $u + wi \in \hat{V}$ . Como  $u, w \in V$ , entonces se pueden escribir como combinación lineal de los vectores de  $\mathcal{B}$ :

$$u = a_1v_1 + \cdots + a_nv_n \quad \text{y} \quad w = b_1v_1 + \cdots + b_nv_n$ , con  $a_i, b_i \in \mathbb{R} $$
 
Así

$$u + wi = a_1v_1 + \dots + a_nv_n + (b_1v_1 + \dots + b_nv_n)i = (a_1 + b_1i)v_1 + \dots + (a_n + b_ni)v_n$$

por lo que  $\mathcal{B}$  es un sistema generador de  $\hat{V}$ . Veamos que también son linealmente independientes en  $\hat{V}$ . Procediendo por reducción al absurdo, supongamos que  $\{v_1, \ldots, v_n\}$  son linealmente dependientes en  $\hat{V}$ . Sin pérdida de generalidad, podemos suponer que  $v_1$  es combinación lineal de  $v_2, \ldots, v_n$ , es decir  $v_1 = (a_2 + b_2 i)v_2 + \cdots + (a_n + b_n i)v_n$ . Pero en tal caso,

$$v_1 = a_2v_2 + \dots + a_nv_n + (b_2v_2 + \dots + b_nv_n)i$$

Así, la parte imaginaria del miembro derecho de la igualdad debe ser nula, de donde

$$v_1 = a_2 v_2 + \dots + a_n v_n$$

lo que contradice que  $v_1, \ldots, v_n$  sean linealmente independientes en V.  $\square$ 

Definimos el endomorfismo  $\hat{f}$  de  $\hat{V}$ , que denominamos extesión compleja de f, como sigue

$$\hat{f}(u+vi) = f(u) + f(v)i$$

Se cumple que las matrices de $f$ y  $\hat{f}$  respecto de la base  $\mathcal{B}$  son iguales:  $\mathfrak{M}_{\mathcal{B}}(\hat{f}) = \mathfrak{M}_{\mathcal{B}}(f) = A$ , por lo que $f$ y  $\hat{f}$  tienen el mismo polinomio característico:

$$p_f(\lambda) = p_{\hat{f}}(\lambda) = \det(A - \lambda \operatorname{Id})$$

Ahora, para el endomorfismo complejo  $\hat{f}$  de matriz A se cumple el Teorema de Existencia 5.31 y podemos obtener una matriz de Jordan compleja, la base de Jordan, y una descomposición de  $\hat{V}$  en suma directa de los subespacios máximos.

Sean  $\lambda = a + bi$  y  $\bar{\lambda} = a - bi$  dos raíces complejas conjugadas de  $p_f$ , que por tanto son autovalores complejos de  $\hat{f}$ . Si  $v \in \hat{V}$  es un autovector asociado a  $\lambda$ , se tiene  $\hat{f}(v) = \lambda v$ , y considerando conjugados  $\bar{f}(v) = \bar{\lambda} v$ . Por las propiedades de la conjugación compleja y por ser  $\hat{f}$  lineal se deduce que  $\hat{f}(\bar{v}) = \bar{\lambda} \bar{v}$ . Así, el vector  $\bar{v}$  es un autovector asociado al autovalor  $\bar{\lambda}$ . Más aún, como las ecuaciones de los subespacios generalizados:

$$(A - \lambda \operatorname{Id})^j X = 0  \quad \text{y} \quad  (A - \tilde{\lambda} \operatorname{Id})^j \bar{X} = 0  $$

son equivalentes, entonces las bases de los subespacios máximos  $M(\lambda)$  y  $M(\bar{\lambda})$  pueden elegirse conjugadas. Acabamos de demostrar el siguiente resultado

#### Proposición 5.37
> Si  $\mathcal{B} = \{v_1, \ldots, v_r\}$  es una base de  $M(\lambda)$ , entonces  $\bar{\mathcal{B}} = \{\bar{v}_1, \ldots, \bar{v}_r\}$  es una base de  $M(\bar{\lambda})$ .

Las bases de Jordan de  $M(\lambda)$  y  $M(\bar{\lambda})$  generan en la matriz de Jordan correspondiente a  $\hat{f}$  la misma estructura de bloques. Así, se tendrán el mismo número y tamaño de bloques de Jordan para el autovalor  $\lambda$  y  $\lambda$ . Sean  $B_j(\lambda)$  y  $B_j(\bar{\lambda})$  dos bloques de Jordan de tamaño  $j \times j$  de la matriz de Jordan compleja  $\hat{J}$  asociada a A:

$$B_{j}(\lambda) = \begin{pmatrix} \lambda & 0 & 0 & 0 \\ 1 & \lambda & 0 & 0 \\ 0 & \ddots & \ddots & 0 \\ 0 & 0 & 1 & \lambda \end{pmatrix}_{j \times j} \quad y B_{j}(\bar{\lambda}) = \begin{pmatrix} \bar{\lambda} & 0 & 0 & 0 \\ 1 & \bar{\lambda} & 0 & 0 \\ 0 & \ddots & \ddots & 0 \\ 0 & 0 & 1 & \bar{\lambda} \end{pmatrix}_{j \times j}$$
(5.9)

Entonces, se construye la matriz real de $f$ a la que llamaremos **forma de Jordan real**, y denotaremos por  $J_{\mathbb{R}}(f)$ , a partir de la forma de Jordan compleja  $\hat{J}$  de A cambiando las parejas de bloques complejos  $B_j(\lambda)$  y  $B_j(\hat{\lambda})$  por un bloque real de tamaño  $2j \times 2j$  de la forma

$$C_{2j}(\lambda) = \begin{pmatrix} C(\lambda) & 0 & 0 & 0 \\ I_2 & C(\lambda) & 0 & 0 \\ 0 & \ddots & \ddots & 0 \\ 0 & 0 & I_2 & C(\lambda) \end{pmatrix}_{2j \times 2j} \quad \text{con} \quad  C(\lambda) = \begin{pmatrix} a & b \\ -b & a \end{pmatrix}   \quad \text{e} \quad  I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}  $$

El bloque  $C_{2j}(\lambda)$  se obtiene sustituyendo en  $B_j(\lambda)$  cada 1 por  $I_2$  y cada  $\lambda$  por  $C(\lambda)$ . Ahora tenemos que encontrar la base adecuada en la que podamos llevarlo a cabo.

Vemos primero un ejemplo de esto y después lo demostramos formalmente.

#### Ejemplo 5.38

Sea $f$ un endomorfismo de un espacio vectorial real cuyo polinomio característico

$$p_f(\lambda) = (\lambda^2 - 4\lambda + 5)^2$$

tiene las raíces complejas

$$\lambda = 2 + i$$
 (doble) y  $\bar{\lambda} = 2 - i$  (doble)

Si la forma canónica de Jordan (compleja) de la extensión compleja $f$ es

$$
\mathfrak{M}_{\mathcal{B}}(\hat{f}) = A = 
\left(
\begin{array}{cc|cc} 
2+i & 0 & 0 & 0\\ 1 & 2+i & 0 & 0\\ \hline 0 & 0 & 2-i & 0\\ 0 & 0 & 1 & 2-i 
\end{array} \right) 
=
\left(
\begin{array}{c|c}
B_2(2+i) & 0\\ \hline 0 & B_2(2-i) 
\end{array}
\right)
$$

para cierta base  $\mathcal{B} = \{v, u, \bar{v}, \bar{u}\} = \{v, u = (\hat{f} - (2+i)\operatorname{Id})(v), v, \bar{u} = (\hat{f} - (2-i)\operatorname{Id})(\bar{v})\}.$ 

Entonces, la forma de Jordan real de $f$ será de la forma

$$J_{\mathbb{R}}(f) = 
\left(
\begin{array}{cc|cc} 2 & 1 & 0 & 0 \\ -1 & 2 & 0 & 0 \\ \hline 1 & 0 & 2 & 1 \\ 0 & 1 & -1 & 2 
\end{array} \right)= C_4(2+i)$$

Veamos que esta matriz real se tiene al considerar como base la formada por los vectores que son las partes real e imaginaria de los vectores  $\{v, u\}$  de la base de Jordan compleja. Si consideramos las partes real e imaginaria de los vectores  $v = v_1 + v_2 i$  y  $u = u_1 + u_2 i$ , entonces  $\mathcal{B}' = \{v_1, v_2, u_1, u_2\}$  son vectores linealmente independientes y forman una base de V y vamos a ver que  $\mathfrak{M}_{\mathcal{B}'}(f) = J_{\mathbb{R}}(f)$ .

Las partes real e imaginaria verifican

$$v_1 = \frac{1}{2}(v + \bar{v})   \quad \text{y} \quad   v_2 = \frac{-i}{2}(v - \bar{v})  $$


, lo que podemos utilizar para calcular sus imágenes por $f$.

$$
\begin{align}
f(v_1) &= \hat{f}(v_1) = \frac{1}{2} \left( \hat{f}(v) + \hat{f}(\bar{v}) \right) = \frac{1}{2} \left( (2+i)v + u + (2-i)\bar{v} + \bar{u} \right) \\
&= \frac{1}{2} \left( (2+i)(v_1 + v_2i) + (u_1 + u_2i) + (2-i)(v_1 - v_2i) + (u_1 - u_2i) \right) \\
&= 2v_1 - v_2 + u_1
\end{align}
$$

Así, las coordenadas de  $f(v_1)$  en  $\mathcal{B}'$  son (2, -1, 1, 0).

Análogamente se calculan las imágenes del resto de vectores de  $\mathcal{B}'$ 

$$
\begin{array}{rlll}
f(v_2) = \hat{f}(v_2) &=  \dfrac{-i}{2} \left( \hat{f}(v) - \hat{f}(\bar{v}) \right) & = v_1 + 2v_2 + u_2  & \Rightarrow f(v_2) = (1, 2, 0, 1)_{\mathcal{B}'} \\
f(u_1) &=  \dfrac{1}{2} \left( \hat{f}(u) + \hat{f}(\bar{u}) \right) &= 2u_1 - u_2 \quad & \Rightarrow  f(u_1) = (0, 0, 2, -1)_{\mathcal{B}'} \\
f(u_2) &= \dfrac{-i}{2} \left( \hat{f}(u) - \hat{f}(\bar{u}) \right) &= u_1 + 2u_2 \quad & \Rightarrow  f(u_2) = (0, 0, 1, 2)_{\mathcal{B}'}
\end{array}
$$

y se tiene la matriz deseada.

#### Proposición 5.39
> Sean $f$ un endomorfismo de un espacio vectorial real V y  $\lambda \in \mathbb{C}$  una raíz compleja del polinomio característico de $f$. Scan  $\{v_1, \ldots, v_r\}$  y  $\{\bar{v}_1, \ldots, \bar{v}_r\}$  dos conjuntos de vectores de  $\hat{V}$  que forman una línea de la tabla de la base de Jordan de  $M(\lambda)$  y  $M(\bar{\lambda})$  del endomorfismo  $\hat{f}$ , respectivamente. Y scan  $C = L(v_1, \ldots, v_r)$  y  $\bar{C} = L(\bar{v}_1, \ldots, \bar{v}_r)$  los subespacios r-cíclicos que generan. Entonces, los vectores
> $$\{u_1, w_1, \ldots, u_r, w_r\}  \quad \text{tales que} \quad  v_j = u_j + w_j i, u_j, w_j \in V 
$$
> son una base del subespacio  $U=C\oplus \bar{C}$ . Además, la matriz de $f$ restringida al subespacio invariante U respecto de dicha base es una matriz de orden  $2r\times 2r$  de la forma
> $$C_{2r}(\lambda) = \begin{pmatrix} C(\lambda) & 0 & \cdots & 0 \\ I_2 & C(\lambda) & & \vdots \\ \vdots & \ddots & \ddots & 0 \\ 0 & \cdots & I_2 & C(\lambda) \end{pmatrix}$$

**Demostración:** Para la primera parte supongamos una combinación lineal

$$\sum_{i=1}^{r} \alpha_i u_i + \sum_{i=1}^{r} \beta_i w_i = 0$$

Como  $u_i = \frac{1}{2}(v_i + \bar{v}_i)$  y  $w_i = \frac{-i}{2}(v_i - \bar{v}_i)$ , sustituyendo en la ecuación anterior se tiene

$$0 = \sum_{j=1}^{r} \frac{\alpha_j}{2} (v_j + \bar{v}_j) + \sum_{j=1}^{r} \frac{-i\beta_j}{2} (v_j - \bar{v}_j) = \sum_{j=1}^{r} (\frac{\alpha_j - i\beta_j}{2}) v_j + \sum_{j=1}^{r} (\frac{\alpha_j + i\beta_j}{2}) \bar{v}_j$$

Por ser  $\{v_1, \ldots, v_r, \bar{v}_1, \ldots, \bar{v}_r\}$  linealmente independientes, se tiene  $\alpha_j + i\beta_j = 0$  y  $\alpha_j - i\beta_j = 0$ , de donde  $\alpha_j = \beta_j = 0$ , para  $j = 1, \ldots, r$ . Luego  $\{u_1, w_1, \ldots, u_r, w_r\}$  son linealmente independientes. También son un sistema generador ya que si  $v \in U$ , entonces

$$
\begin{align}
v &= \alpha_1 v_1 + \cdots + \alpha_r v_r + \beta_1 \bar{v}_1 + \cdots + \beta_r \bar{v}_r \\
&= \alpha_1 (u_1 + w_1 i) + \cdots + \alpha_r (u_r + w_r i) + \beta_1 (u_1 - w_1 i) + \cdots + \beta_r (u_r - w_r i) \\
&= (\alpha_1 + \beta_1) u_1 + \cdots + (\alpha_r + \beta_r) u_r + (\alpha_1 i - \beta_1 i) w_1 + \cdots + (\alpha_r i - \beta_r i) w_r
\end{align}
$$ 
Sólo falta calcular la matriz de la restricción de $f$ a U en la base  $\mathcal{B}_U = \{u_1, w_1, \ldots, u_r, w_r\}$ . En primer lugar, observemos que dado que los vectores  $\{v_1, \ldots, v_r\}$  y  $\{\bar{v}_1, \ldots, \bar{v}_r\}$  forman dos filas de la base de Jordan que se corresponden con bloques como en (5.9) se tiene:

$$v_j = (\hat{f} - \lambda \operatorname{Id})^{j-1}(v_1), \ \bar{v}_j = (\hat{f} - \ddot{\lambda} \operatorname{Id})^{j-1}(v_1), \ j = 2, \dots, r$$
de donde
$$
\begin{align}
\hat{f}(v_j) &= v_{j+1} + \lambda v_j, \quad j = 1, \dots, r-1; \quad \hat{f}(v_r) = \lambda v_r \\
\hat{f}(\bar{v}_i) &= \bar{v}_{j+1} + \bar{\lambda} \bar{v}_j, \quad j = 1, \dots, r-1; \quad \hat{f}(\bar{v}_r) = \bar{\lambda} v_r \\
\end{align}
$$Utilizando estos datos, calculamos las imágenes por  $\hat{f}$  de los vectores  $v \in \mathcal{B}_U$ , que por ser todos reales cumplen  $\hat{f}(v) = f(v)$ . Para los casos  $j = 1, \dots, r-1$  se tiene

$$
\begin{align}
f(u_{j}) &= \frac{1}{2} \left( \hat{f}(v_{j}) + \hat{f}(\bar{v}_{j}) \right) = \frac{1}{2} \left( \lambda v_{j} + v_{j+1} + \bar{\lambda} \bar{v}_{j} + \bar{v}_{j+1} \right) \\
&= \frac{1}{2} \left[ (a + bi)(u_{j} + w_{j}i) + (u_{j+1} + w_{j+1}i) + (a - bi)(u_{j} - w_{j}i) + (u_{j+1} - w_{j+1}i) \right] \\
& = au_{j} - bw_{j} + u_{j+1}
\end{align}
$$
y un desarrollo análogo nos lleva a

$$f(w_j) = \frac{-i}{2} \left( \hat{f}(v_j) - \hat{f}(\bar{v}_j) \right) = bu_j + aw_j + w_{j+1}, \quad j = 1, \dots, r-1$$

Y para terminar se calculan las imágenes de  $u_r$  y  $w_r$ 

$$
\begin{align}
f(u_r) &= \frac{1}{2} \left( \hat{f}(v_r) + \hat{f}(\bar{v}_r) \right) [1mm] = \frac{1}{2} \left( \lambda v_r + \bar{\lambda} \bar{v}_r \right) \\
&= \frac{1}{2} \left[ (a+bi)(u_r + w_r i) + (a-bi)(u_r - w_r i) \right] = au_r - bw_r \\
f(w_r) &= \frac{-i}{2} \left( \hat{f}(v_r) - \hat{f}(\bar{v}_r) \right) = \frac{-i}{2} \left( \lambda v_r - \bar{\lambda} \bar{v}_r \right) \\
&= \frac{-i}{2} \left[ (a+bi)(u_r + w_r i) - (a-bi)(u_r - w_r i) \right] = bu_r + aw_r
\end{align}
$$

Hemos obtenido las siguientes coordenadas

$$
\begin{align}
f(u_j) &= (0, \dots, 0, \overbrace{a}^{j}, -b, 1, 0, \dots, 0)_{\mathcal{B}_U} \text{,} & f(w_j) &= (0, \dots, 0, \overbrace{b}^{j}, a, 0, 1, 0, \dots, 0)_{\mathcal{B}_U} \quad \text{,} \quad j = 1, \dots, r-1 \\
f(u_r) &= (0, \dots, 0, a, -b)_{\mathcal{B}_U}\text{,}&f(w_r) &= (0, \dots, 0, b, a)_{\mathcal{B}_U}
\end{align}
$$

Y así concluye la demostración.

### Construcción de la matriz canónica real a partir de la compleja

Para construir la forma de Jordan real de un endomorfismo real  $f: V \to V$  cuyo polinomio característico tiene raíces complejas y cuya matriz respecto de una base  $\mathcal{B}$  es  $A = \mathfrak{M}_{\mathcal{B}}(f)$ , se siguen los siguientes pasos:

1. Consideramos el endomorfismo complejo  $\hat{f}$  de  $\hat{V}$  cuya matriz es  $A = \mathfrak{M}_{\mathcal{B}}(\hat{f})$
2. Construimos la base de Jordan compleja  $\mathcal{B}'$  del endomorfismo complejo  $\hat{f}$  y su forma canónica de Jordan compleja  $J(\hat{f}) = \mathfrak{M}_{\mathcal{B}'}(\hat{f})$ .
3. Para cada par de autovalores complejos  $\lambda$  y  $\bar{\lambda}$  de  $\hat{f}$  cambiamos los 2r vectores complejos  $\{v_1, \ldots, v_r\}$  y  $\{\bar{v}_1, \ldots, \bar{v}_r\}$ , de  $\mathcal{B}'$ , correspondientes a cada par de bloques de Jordan  $r \times r$  por los 2r vectores reales:

$$\{u_1, w_1, \dots, u_r, w_r\}  \quad \text{con} \quad  v_j = u_j + i w_j $$

Se obtiene así una base  $\mathcal{B}''$  real de V tal que  $J_{\mathbb{R}}(f)=\mathfrak{M}_{\mathcal{B}''}(f)$ 

#### Ejemplo 5.40

Sea $f$ el endomorfismo de  $\mathbb{R}^4$  cuya matriz en una base  $\mathcal{B} = \{v_1, v_2, v_3, v_4\}$  es

$$A = \begin{pmatrix} 1 & 0 & 1 & 0 \\ -1 & 1 & 0 & 1 \\ -1 & 0 & 1 & 2 \\ 0 & 1 & -1 & 1 \end{pmatrix}$$

Calculamos el polinomio característico y los autovalores

$$p_f(\lambda) = \det(A - \lambda I) = \det\begin{pmatrix} 1 - \lambda & 0 & 1 & 0 \\ -1 & 1 - \lambda & 0 & 1 \\ -1 & 0 & 1 - \lambda & 2 \\ 0 & 1 & -1 & 1 - \lambda \end{pmatrix} = \lambda^4 - 4\lambda^3 + 8\lambda^2 - 8\lambda + 4 = (\lambda^2 - 2\lambda + 2)^2$$

El endomorfismo real $f$ no tiene ningún autovalor. Las raíces de su polinomio característico son  $\lambda = 1 + i$  doble y  $\bar{\lambda} = 1 - i$  doble.

Calculamos la base de Jordan  $\mathcal{B}'$  del endomorfismo complejo  $\hat{f}$  de  $\widehat{\mathbb{R}^4} = \mathbb{C}^4$  cuya matriz es  $A = \mathfrak{M}_{\mathcal{B}}(\hat{f})$ . Para ello escogemos uno de los dos subespacios máximos  $M(\lambda)$  o bien  $M(\bar{\lambda})$ . Nos quedamos con  $\lambda = 1 + i$  y calculamos los subespacios generalizados y la multiplicidad geométrica. Como dim  $V_{\lambda} = 4 - rg(A - (1+i)I)$ , comenzamos estudiando el rango de la matriz A - (1+i)I para lo cual vamos a proceder a escalonarla por el método de Gauss

$$A - (1+i)I = \begin{pmatrix} -i & 0 & 1 & 0 \\ -1 & -i & 0 & 1 \\ -1 & 0 & -i & 2 \\ 0 & 1 & -1 & -i \end{pmatrix} \quad \xrightarrow{f_2 \to f_2 + if_1} \quad \begin{pmatrix} -i & 0 & 1 & 0 \\ 0 & -i & i & 1 \\ 0 & 0 & 0 & 2 \\ 0 & 0 & 0 & -2i \end{pmatrix}$$

$$\xrightarrow{f_4 \to f_4 - if_2} \begin{pmatrix} -i & 0 & 1 & 0 \\ 0 & -i & i & 1 \\ 0 & 0 & 0 & 2 \\ 0 & 0 & 0 & -2i \end{pmatrix} \quad \xrightarrow{f_4 \to f_4 + if_3} \quad \begin{pmatrix} -i & 0 & 1 & 0 \\ 0 & -i & i & 1 \\ 0 & 0 & 0 & 2 \\ 0 & 0 & 0 & 0 \end{pmatrix}$$

Así, podemos afirmar que  $\operatorname{rg}(A-(1+i)I)=3$  y dim $V_{1+i}=1$ , por lo que sólo habría un bloque de Jordan asociado a 1+i, o lo que es lo mismo una única línea en la tabla de la base de Jordan y  $M(1+i)=K^2(1+i)$ . Los resultados son análogos para el autovalor conjugado.

La tabla de la base de Jordan de cada subespacio máximo es
$$
\begin{array}{rrclcl}
\hline \text{dimensiones:} & 1 \qquad & & \qquad 2 & 1 & & 2  \\ 
\text{subespacios:} & K^1(1+i) & \subset & K^2(1+i) = M(1+i) & K^1(1-i) & \subset & K^2(1-i) = M(1-i) \\
& v_2 & \leftarrow & v_1 & \bar{v_2} & \leftarrow & \bar{v_1} \\
\hline
\end{array}
$$
 
La matriz de Jordan compleja del endomorfismo complejo  $\hat{f}$  de matriz A respecto a la base  $\mathcal{B}'=\{v_1,v_2,\bar{v}_1,\bar{v}_2\}$  es

$$
J(\hat{f}) = \mathfrak{M}_{\mathcal{B}'}(\hat{f}) = 
\left(
\begin{array}{cc|cc} 
1+i & 0 & 0 & 0 \\ 
1 & 1+i & 0 & 0 \\ 
\hline 0 & 0 & 1-i & 0 \\
0 & 0 & 1 & 1-i 
\end{array}
\right)
$$

Si consideramos los vectores que forman las partes reales e imaginarias de  $v_1$  y  $v_2$ 

$$v_1 = u_1 + w_1 i \text{, }  v_2 = u_2 + w_2 i $$


y la base real  $\mathcal{B}'' = \{u_1, w_1, u_2, w_2\}$ , entonces  $\mathfrak{M}_{\mathcal{B}''}(\hat{f}) = \mathfrak{M}_{\mathcal{B}''}(f)$  y es la matriz de Jordan real de $f$

$$
J_{\mathbb{R}}(f) = 
\begin{pmatrix}
C(1+i) & 0 \\
I_2 & C(1+i) 
\end{pmatrix} = 
\begin{pmatrix} 
\begin{array}{cc|cc} 1 & 1 & 0 & 0 \\ -1 & 1 & 0 & 0 \\ \hline 1 & 0 & 1 & 1 \\ 0 & 1 & -1 & 1 
\end{array}
\end{pmatrix} 
= \mathfrak{M}_{\mathcal{B}''}(f)
$$

Para completar el ejercicio calculamos la base. Buscamos  $v_1 \in K^2(1+i) - K(1+i)$ , por lo que necesitamos unas ecuaciones de ambos subespacios.

$$K(1+i) = \{(x_1, \dots, x_n)_{\mathcal{B}} : (A - (1+i)I)X = 0\}$$

Tomamos el sistema equivalente que hemos obtenido al escalonar A - (1+i)I:

$$\begin{pmatrix} -i & 0 & 1 & 0 \\ 0 & -i & i & 1 \\ 0 & 0 & 0 & 2 \\ 0 & 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \\ x_4 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix}$$

de donde se tiene el sistema escalonado

$$\begin{cases}
-ix_1 & & +x_3 & &= 0 \\
& -ix_2 & +ix_3 & +x_4 & = 0 \\
& & &2x_4 &= 0
\end{cases}$$

del que despejando las variables principales de abajo hacia arriba, y llamando a la variable secundaria  $x_3 = \alpha$  se obtienen las soluciones  $x_1 = -i\alpha$ ,  $x_2 = \alpha$ ,  $x_3 = \alpha$ ,  $x_4 = 0$ , que son unas ecuaciones paramétricas de K(1+i). El subespacio generalizado segundo es

$$K^{2}(1+i) = \{(x_{1}, \dots, x_{n}) : (A-(1+i)I)^{2}X = 0\}$$

y unas ecuaciones implícitas quedan determinadas por el sistema lineal

$$\begin{pmatrix} -i & 0 & 1 & 0 \\ -1 & -i & 0 & 1 \\ -1 & 0 & -i & 2 \\ 0 & 1 & -1 & -i \end{pmatrix}^{2} \begin{pmatrix} x_{1} \\ x_{2} \\ x_{3} \\ x_{4} \end{pmatrix} = \begin{pmatrix} -2 & 0 & -2i & 2 \\ 2i & 0 & -2 & -2i \\ 2i & 2 & -4 & -4i \\ 0 & -2i & 2i & -2 \end{pmatrix} \begin{pmatrix} x_{1} \\ x_{2} \\ x_{3} \\ x_{4} \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix}$$

Escalonamos el sistema para simplificarlo

$$
(A - (1+i)I)^2 
\xrightarrow{
\begin{align}
f_2 \to f_2 + if_1 \\
f_3 \to f_3 + if_1
\end{align}
} 
\begin{pmatrix} -2 & 0 & -2i & 2 \\
0 & 0 & 0 & 0 \\
0 & 2 & -2 & -2i \\ 
0 & -2i & 2i & -2 
\end{pmatrix} 
\xrightarrow{f_4 \to f_4 + if_3} 
\begin{pmatrix}
-2 & 0 & -2i & 2 \\
0 & 0 & 0 & 0 \\
0 & 2 & -2 & -2i \\
0 & 0 & 0 & 0 
\end{pmatrix}
$$

y dividiendo por dos las filas tenemos las ecuaciones

$$
\begin{cases} 
x_1 & & +ix_3 & -x_4 & = & 0 \\ 
& x_2 & -x_3 & -ix_4 & = & 0 
\end{cases}
$$

y las soluciones nos dan las siguientes ecuaciones paramétricas de  $K^2(1+i)$ :

$$x_1 = -i\beta + \gamma \text{,} \quad  x_2 = \beta + i\gamma \text{,} \quad  x_3 = \beta \text{,} \quad  x_4 = \gamma $$

Para  $\beta = 0$  y  $\gamma = 1$  obtenemos el vector  $v_1 = (1, i, 0, 1) \in K^2(1+i) - K(1+i)$  y a continuación calculamos  $v_2 = (f - (1+i) \operatorname{Id})(v_1) = (-i, 1, 1, 0)$ .

Finalmente, escribiendo las partes real e imaginaria de  $v_1$  y  $v_2$  obtenemos la base deseada:

$$v_1 = u_1 + w_1 i = (1, 0, 0, 1) + (0, 1, 0, 0)i, \quad v_2 = u_2 + w_2 i = (0, 1, 1, 0) + (-1, 0, 0, 0)i$$

La matriz P del cambio de base de  $\mathcal{B}''$  a  $\mathcal{B}$  tendrá por columnas las coordenadas en  $\mathcal{B}$  de los vectores  $u_1, w_1, u_2, w_2, y$  podemos comprobar que el cambio de base está bien hecho:  $P^{-1}AP = J_{\mathbb{R}}$ , o lo que es lo mismo:  $AP = PJ_{\mathbb{R}}$ 

$$\begin{pmatrix} 1 & 0 & 1 & 0 \\ -1 & 1 & 0 & 1 \\ -1 & 0 & 1 & 2 \\ 0 & 1 & -1 & 1 \end{pmatrix} \begin{pmatrix} 1 & 0 & 0 & -1 \\ 0 & 1 & 1 & 0 \\ 0 & 0 & 1 & 0 \\ 1 & 0 & 0 & 0 \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 & -1 \\ 0 & 1 & 1 & 0 \\ 0 & 0 & 1 & 0 \\ 1 & 0 & 0 & 0 \end{pmatrix} 
\left(
\begin{array}{cc|cc} 1 & 1 & 0 & 0 \\ -1 & 1 & 0 & 0 \\ \hline 1 & 0 & 1 & 1 \\ 0 & 1 & -1 & 1 \end{array}
\right)
$$

**Observación**: Podemos intercambiar los papeles de los autovalores  $\lambda = a + bi$  y  $\bar{\lambda} = a - bi$  y obtener los bloques  $2 \times 2$  de la forma

$$\begin{pmatrix} a & -b \\ b & a \end{pmatrix}$$

Para ello basta considerar, en la demostración del Teorema anterior,  $\mathcal{B}_U = \{u_1, -w_1, \dots, u_r, -w_r\}$  que es la base resultante de tomar las partes real e imaginaria de los vectores complejos  $\{\bar{v}_1, \dots \bar{v}_r\}$  correspondientes a  $\bar{\lambda} = a - bi$ .

En el ejemplo anterior, si hubiésemos considerado el autovalor 1-i y la base de  $M(1-i)=L(\bar{v}_1=(1,-i,0,1), \bar{v}_2=(-i,1,1,0))$  tendríamos la base  $\mathcal{B}'''=\{u_1,-w_1,u_2,-w_2\}$  y la forma de Jordan real

$$\mathfrak{M}_{\mathcal{B}'''}(f) = 
\left(
\begin{array}{cc|cc} 1 & -1 & 0 & 0 \\ 1 & 1  & 0 & 0 \\ \hline 1 & 0 & 1 & -1 \\ 0 & 1  & 1 & 1 
\end{array} 
\right)
= \begin{pmatrix} C(1-i) & 0 \\ I_2 & C(1-i) \end{pmatrix}
$$

Ambas son válidas y son matrices semejantes.

Terminamos el Capítulo concluyendo que con la forma canónica de Jordan y la forma de Jordan real se resuelve de forma completa el problema de clasificación de endomorfismos reales: dos endomorfismos reales son linealmente equivalentes si y sólo si tienen la misma forma canónica (de Jordan o de Jordan real). Utilizaremos la forma de Jordan real en el Capítulo 9 para clasificar los endomorfismos entre espacios euclídeos: las isometrías vectoriales.

## 5.5. Ejercicios propuestos

**5.1.** Demuestre que los autovalores de una matriz triangular son los elementos de la diagonal principal.

**5.2.** Demuestre que si  $\lambda$  es autovalor de A, entonces  $\lambda^k$  es autovalor de  $A^k$ .

**5.3.** Demuestre que si A es diagonalizable, entonces también  $A^k$  es diagonalizable.

**5.4.** Demuestre que si A es regular y diagonalizable, entonces también  $A^{-1}$  es diagonalizable.

**5.5.** Demuestre que toda matriz cuadrada A, real o compleja, es semejante a su traspuesta.

**5.6.** Demuestre que si A es una matriz de orden n con polinomio característico  $p_A(\lambda) = (a \lambda)^n$ .  $a \in \mathbb{K}$ , entonces, A es diagonalizable si y sólo si es una matriz escalar, es decir  $A = aI_n$ .

**5.7.** Demuestre que si A es una matriz cuadrada tal que la suma de los elementos de cada fila es igual a k, entonces k es un autovalor de A.

**5.8.** Demuestre que no existe ningún valor  $\theta \in \mathbb{R}$  para el cual la siguiente matriz sea diagonalizable:

$$A_{\theta} = \begin{pmatrix} 0 & -\cos\theta & -\sin\theta \\ \cos\theta & 0 & 0 \\ \sin\theta & 0 & 0 \end{pmatrix}$$

**5.9.** Estudie para qué valores de a y b es diagonalizable el endomorfismo de  $\mathbb{R}^4$  cuya matriz es

$$A = \begin{pmatrix} 1 & a & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & b & 1 \\ 0 & 0 & -1 & -b \end{pmatrix}$$


**5.10.** Sea V un  $\mathbb{K}$  espacio vectorial y U, W subespacios propios de V tales que  $V = U \oplus W$ . Determine los autovalores y sus multiplicidades geométricas y algebraicas, de los endomorfismos:

a) proyección de base U y dirección W. y
b) simetría de base U y dirección W.

**5.11.** Sea  $f_a$  el endomorfismo de un espacio vectorial real de dimensión 3 cuya matriz respecto a la una base  $\mathcal B$  es

$$A = \left(\begin{array}{ccc} 1 & 0 & 0 \\ 6 & 3 & 0 \\ 14 + 3a & a & 3 \end{array}\right)$$

¿Para qué valores de  $a \in \mathbb{R}$  es  $f_a$  diagonalizable?

**5.12.** Determine la forma canónica de Jordan J del endomorfismo del ejercicio anterior en el caso no diagonalizable a=2. y una base  $\mathcal{B}'$  tal que  $\mathfrak{M}_{\mathcal{B}'}(f_2)=J$ .

**5.13.** Sea $f$ el endomorfismo de  $\mathbb{R}^4$  definido por

$$f(x_1, x_2, x_3, x_4) = (-2x_2 + x_3 - 2x_4, x_1 + 3x_2 - x_3 + x_4, 3x_1 + 4x_2 - x_3 + 3x_4, 2x_1 + 2x_2 - x_3 + 4x_4)$$

Demuestre que los subespacios vectoriales U y W son $f$-invariantes:

$$U \equiv \{x_1 - 2x_2 + x_3 = 0, x_1 + x_4 = 0\}, W \equiv \{x_1 - x_3 + x_4 = 0, x_2 = 0\}$$

Determine una base  $\mathcal{B}_U$  de U y otra base  $\mathcal{B}_W$  de W y compruebe que la matriz de $f$ respecto de la base  $\mathcal{B} = \mathcal{B}_U \cup \mathcal{B}_W$  es diagonal por bloques.

**5.14.** (\*) Demuestre que si una matriz A es semejante a una matriz que es un bloque de Jordan  $B_n(\lambda)$ , de orden n, entonces A también es semejante a  $B_n(\lambda)^t$ . Utilizando este resultado, demuestre que si A es semejante a una matriz de Jordan J, entonces también es semejante a  $J^t$ . Y como consecuencia A es semejante a  $A^t$ .

**5.15.** Obtenga las posibles matrices de Jordan de un endomorfismo $f$ de un espacio vectorial V real de dimensión 4 que satisface las siguientes condiciones:
  - a) $f$ no es diagonalizable
  - b)  $\dim \operatorname{Ker}(f 2\operatorname{Id}) = 2$ ,  $\dim \operatorname{Ker}(f + \operatorname{Id}) = 1$ .

**5.16.** Sea $f$ el endomorfismo de  $\mathbb{R}^4$  cuya matriz en la base canónica  $\mathcal{B}$  es

$$\mathfrak{M}_{\mathcal{B}}(f) = A = \begin{pmatrix} 2 & -1 & 1 & -1 \\ 1 & 0 & 1 & -1 \\ 0 & 0 & 2 & -1 \\ 0 & 0 & 1 & 0 \end{pmatrix}$$

Determine sus autovalores y subespacios propios asociados (dimensiones y ecuaciones). Encuentre la forma canónica de Jordan de $f$ y la base en la que se obtiene.

**5.17.** Sea $f$ un en endomorfismo de  $\mathbb{R}^4$  cuya matriz en la base canónica es

$$A = \begin{pmatrix} 3/2 & -1/2 & 1 & 1\\ 1/2 & 1/2 & 0 & 0\\ 0 & 0 & 1 & -1\\ 0 & 0 & 0 & 2 \end{pmatrix}$$

Encuentre las ecuaciones de una recta r y un hiperplano H, de  $\mathbb{R}^4$ , invariantes por $f$ y tales que  $r \cap H = \{0\}$ . El polinomio característico de A es  $p_f(\lambda) = (\lambda - 1)^3(\lambda - 2)$ .

**5.18.** Justifique razonadamente en qué casos existe algún endomorfismo $f$ de  $\mathbb{K}^6$  ( $\mathbb{K} = \mathbb{C}$  o  $\mathbb{R}$ ) que tenga un único autovalor  $\lambda \in \mathbb{K}$  de multiplicidad algebraica 6 tal que para cualquier matriz de A de $f$ se cumpla:

a)  $rg(A \lambda I) = 4$ ,  $rg(A \lambda I)^2 = 3$ ,  $rg(A \lambda I)^3 = 2$ ,  $rg(A \lambda I)^4 = 0$ .
b)  $rg(A \lambda I) = 4$ ,  $rg(A \lambda I)^2 = 3$ ,  $rg(A \lambda I)^3 = 1$ ,  $rg(A \lambda I)^4 = 0$ .
c)  $rg(A \lambda I) = 4$ ,  $rg(A \lambda I)^2 = 2$ ,  $rg(A \lambda I)^3 = 1$ ,  $rg(A \lambda I)^4 = 0$ .
d)  $rg(A \lambda I) = 3$ ,  $rg(A \lambda I)^2 = 2$ ,  $rg(A \lambda I)^3 = 1$ ,  $rg(A \lambda I)^4 = 0$ .

En los casos en los que exista tal endomorfismo, dar la matriz de Jordan.

**5.19.** Sea $f$ un endomorfismo de  $\mathbb{R}^4$  cuya matriz en la base canónica es

$$\mathfrak{M}_{\mathcal{B}}(f) = \begin{pmatrix} -1 & 0 & 0 & 0\\ a & -1 & 0 & 0\\ b & c & 1 & 0\\ 0 & d & e & 1 \end{pmatrix}, \quad \text{con } a, b, c, d, e \in \mathbb{R}$$


a) Determine para qué valores de  $a, b, c, d, e \in \mathbb{R}$  el endomorfismo es diagonalizable.
b) Para a=c=0 y b=e=d=1; encuentre la forma canónica de Jordan J de $f$ y una matriz P tal que  $J=P^{-1}\mathfrak{M}_B(f)P$ .

**5.20.** Sea  $\mathcal{B} = \{v_1, v_2, v_3\}$  una base de un espacio vectorial V y $f$ un endomorfismo tal que

$$Ker(f - Id) \equiv \{ x_1 = x_2 \}, Ker(f - 2 Id) \equiv \{ x_1 = 2x_2 = 2x_3 \}$$

Halle la matriz de $f$ en la base  $\mathcal{B}$ .

**5.21.** Sea  $\mathcal B$  la base canónica de  $\mathbb K^4$  y $f$ un endomorfismo tal que

$$\begin{aligned} \operatorname{Ker}(f - \operatorname{Id})^3 & \equiv \{x_1 - x_2 + x_3 - x_4 = 0\} \\ \operatorname{Ker}(f - \operatorname{Id})^2 & \equiv \{x_1 - x_2 + x_3 = 0, \ x_4 = 0\} \\ \operatorname{Ker}(f - \operatorname{Id}) & \equiv \{x_1 + x_3 = 0, \ x_4 = 0, \ x_2 = 0\} \\ \operatorname{Ker}(f) & \equiv \{x_1 = x_2 = x_3 = 0\} \end{aligned}$$

Determine una base  $\mathcal{B}'$  tal que  $\mathfrak{M}_{\mathcal{B}'}(f)$  sea la forma canónica de Jordan de un endomorfismo $f$ que cumpla las condiciones anteriores. Calcular la matriz de $f$ en la base  $\mathcal{B}$ .

**5.22.** Sea $f$ un endomorfismo de  $\mathbb{C}^n$  y  $A = \mathfrak{M}_{\mathcal{B}}(f)$  su matriz respecto a una base dada  $\mathcal{B}$ . Sabiendo que A es una matriz de rango 1, se pide:

a) Demostrar que A tiene como mucho un autovalor  $a \in \mathbb{C}$  no nulo.
b) Determinar la multiplicidad algebraica del autovalor 0.
c) ¿En qué casos es $f$ diagonalizable?
d) Determinar las posibles formas de Jordan de $f$.

**5.23.** Determine la forma de Jordan real, y la base correspondiente, del endomorfismo de  $\mathbb{R}^4$  cuya matriz en la base canónica es

$$A = \left(\begin{array}{rrrr} 1 & 0 & 1 & -1 \\ 0 & 1 & 2 & -1 \\ -1 & -1 & -1 & 0 \\ 2 & 1 & 0 & 3 \end{array}\right)$$

**5.24.** Determine las posibles formas de Jordan reales de un endomorfismo $f$ de  $\mathbb{R}^8$  cuyo polinomio característico tiene por raíz  $\lambda = 2i$  con multiplicidad 4 en los siguientes casos:
  - a) dim Ker $(\hat{f} 2i\operatorname{Id})^4 = 4$  y dim Ker $(\hat{f} 2i\operatorname{Id})^3 < 4$
  - b) dim Ker $(\hat{f} 2i \operatorname{Id})^2 = 3$  y dim Ker $(\hat{f} 2i \operatorname{Id}) = 2$ .

# Notas
[^1]: Félix Klein (Düsseldorf, 1849 - Gotinga, 1925).
[^2]: También se denominan valor y vector característico. En la literatura anglosajona eigenvalue y eigenvector.
[^3]: Camille Jordan, Francia 1838 -1922.
[^4]: En otros libros de texto la matriz de Jordan se define de forma que sea triangular superior y la superdiagonal es la que puede tener unos y ceros. Obtener un tipo de matriz u otro depende sólo del orden en el que se escriben los vectores de la base de Jordan, como veremos más adelante.
