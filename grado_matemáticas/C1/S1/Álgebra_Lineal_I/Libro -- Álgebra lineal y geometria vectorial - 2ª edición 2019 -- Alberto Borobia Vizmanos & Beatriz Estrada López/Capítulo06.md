# Capítulo 6: Subespacios invariantes

Hasta ahora hemos estudiado distintas propiedades que son comunes entre endomorfismos linealmente equivalentes, a lo que nos hemos referido también diciendo que son propiedades que permanecen invariantes por cambios de base, y las hemos llamado invariantes lineales. Por ejemplo: el determinante, el rango, el polinomio característico, la forma canónica de Jordan etc.

En este capítulo, seguimos interesados en la Geometría Vectorial y estudiaremos los subespacios invariantes de un endomorfismo. Dos endomorfismos linealmente equivalentes tienen la misma configuración de subespacios invariantes: por configuración nos referimos al número de subespacios de cada dimensión e intersecciones entre ellos. Dicha configuración aporta mucha información geométrica y, en algunos casos, será suficiente para clasificar endomorfismos. Nos resultará muy útil cuando estudiemos geometría vectorial euclídea en el capítulo 8.

#### Proposición 6.1
> Sea  $h \in GL(V)$  un automorfismo de un  $\mathbb{K}$ -espacio vectorial $V$ y sean $f$ y  $g = h \circ f \circ h^{-1}$  dos endomorfismos linealmente equivalentes de $V$. Un subespacio vectorial  $U \subseteq V$  es $f$-invariante si y sólo si $h(U)$ es $g$-invariante.

**Demostración:** Un subespacio vectorial $U$ de $V$ es $f$-invariante si y sólo si  $f(U) \subseteq U$ . Por ser h un isomorfismo, existe la aplicación inversa  $h^{-1}$  y podemos hacer

$$f(U) = f \circ \underbrace{(h^{-1} \circ h)}_{\text{Id}}(U) = (f \circ h^{-1})(h(U)) \subseteq U$$

Aplicando h por la izquierda en la expresión anterior se tiene la condición equivalente

$$(h \circ f \circ h^{-1})(h(U)) \subseteq h(U)$$

que equivale a decir que h(U) es un subespacio invariante por el endomorfismo  $g = h \circ f \circ h^{-1}$ .  $\square$ 

Este resultado, junto con las propiedades de las aplicaciones lineales respecto de los subespacios vectoriales, establece una biyección entre los subespacios invariantes de dos endomorfismos linealmente equivalentes $f$ y g, y de modo que se mantienen las relaciones de incidencia entre ellos. Así, por ejemplo, si $f$ es un endomorfismo que tiene una única recta invariante r que está contenida en un único plano invariante P, entonces $g$ tendrá una única recta invariante h(r) que estará contenida en el único plano invariante h(P).

Para estudiar los subespacios invariantes de un endomorfismo dado consideraremos la representación matricial del mismo que más nos interese. Dicha representación va a ser la matriz canónica de Jordan, cuando exista, o la matriz de Jordan real. De hecho, con estas matrices, ya tenemos identificados muchos subespacios invariantes: todos los subespacios generalizados y los subespacios r-cíclicos que se corresponden con bloques de Jordan de tamaño  $r \times r$ . Recordamos ahora la Proposición 5.21, pág. 212. que pone de manifiesto la importancia de los subespacios invariantes para la obtención de una representación matricial sencilla: diagonal por bloques.

#### Definición 6.2
> Sea $f$ un endomorfismo de un espacio vectorial real $V$ y $U$ un subespacio $f$—invariante. Diremos que $U$ es **reducible** si se puede descomponer en suma directa  $U = U_1 \oplus U_2$ , con  $U_1$  y  $U_2$  subespacios $f$—invariantes no triviales. En caso contrario diremos que $U$ es un subespacio vectorial invariante **irreducible** 

**Observación:** Nótese que toda recta invariante es irreducible.

Como consecuencia de la existencia de la forma de Jordan real para todo endomorfismo real y forma canónica de Jordan para todo endomorfismo complejo se obtiene el siguiente resultado

#### Proposición 6.3
> Sea $f$ un endomorfismo de un espacio vectorial V. Si  $\dim V \geq 2$ , entonces $f$ admite un plano invariante.

**Demostración:** Sea  $\mathcal{B} = \{v_1, \dots, v_n\}$  una base tal que  $\mathfrak{M}_{\mathcal{B}}(f)$  sea la forma canónica de Jordan $J$, si existe, o la forma de Jordan real  $J_{\mathbb{R}}$ . Nos fijamos en las dos últimas columnas de dicha matriz. y tenemos las siguientes posibilidades:

$$
(1) 
\left( 
\begin{array}{c|c} 
& 0 & 0 \\ 
& \vdots & \vdots \\ 
\cdots & 0 & 0 \\ 
\hline  & a & b \\ 
& -b & a 
\end{array} 
\right) 
\qquad 
(2) 
\left( 
\begin{array}{c|c} 
& 0 & 0 \\ 
& \vdots & \vdots \\ 
\cdots &0 & 0 \\ 
\hline & \lambda & 0 \\ 
& 0 & \mu 
\end{array} 
\right) 
\qquad 
(3) 
\left( 
\begin{array}{c|c} 
& 0 & 0 \\ 
& \vdots & \vdots \\ 
\cdots & 0 & 0 \\ 
\hline & \lambda & 0 \\ 
& 1 & \lambda 
\end{array} 
\right) 
\qquad 
(4) 
\left( 
\begin{array}{c|c} 
& 0 & 0 \\ 
& \vdots & \vdots \\ 
\cdots &0 & 0 \\ 
\hline & \lambda & 0 \\ 
& 0 & \lambda 
\end{array} 
\right)
$$

En cualquier caso, el plano  $U = L(v_{n-1}, v_n)$  es $f$-invariante. En efecto, se comprueba fácilmente que  $f(v_{n-1}), f(v_n) \in U$ , sin más que observar las dos últimas columnas de la matriz que se corresponden con las coordenadas de  $f(v_{n-1})$  y  $f(v_n)$  en  $\mathcal{B}$ .  $\square$ 

## 6.1. Rectas e hiperplanos invariantes

En esta primera sección vemos varios resultados que nos permiten calcular de modo sistemático los subespacios invariantes de dimensión 1 (rectas) y dimensión n-1 (hiperplanos).

#### Proposición 6.4: Hiperplanos y rectas invariantes
> Sea $f$ un endomorfismo de $V$ y $A$ su matriz respecto de una base dada  $\mathcal{B}$ .
> (1) L(v) es una recta invariante por $f$ si y sólo si $v$ es un autovector de $f$ (o de A).
> (2) El hiperplano de ecuación  $u_1x_1 + \cdots + u_nx_n = 0$  es invariante por $f$ si y sólo si  $(u_1, \ldots, u_n)_{\mathcal{B}}$  es un autovector no nulo del endomorfismo  $f^t$  (cuya matriz respecto de  $\mathcal{B}$  es  $A^t$ ).

**Demostración:** (1) L(v) es una recta invariante por $f$ si y sólo si  $f(v) \in L(v)$  si y sólo si  $f(v) = \lambda v$ , con  $\lambda \in \mathbb{K}$ . Es decir, si y sólo si $v$ es autovector de $f$.

(2) Sean $H$ el hiperplano de ecuación  $u_1x_1 + \cdots + u_nx_n = 0$ ,  $u = (u_1, \dots, u_n)_{\mathcal{B}} \in V$  con  $u \neq 0$  y  $x = (x_1, \dots, x_n)_{\mathcal{B}}$  un vector genérico de $V$. Denotemos por $U$ y X a las matrices columna formadas por las coordenadas de $u$ y $x$ respectivamente:

$$U = \begin{pmatrix} u_1 \\ \vdots \\ u_n \end{pmatrix}, \quad X = \begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix}$$

Entonces  $x \in H$  si y sólo si  $u_1x_1 + \cdots + u_nx_n = U^tX = 0$ , y $u$ es autovector de  $f^t$  si y sólo si  $A^tU = \lambda U$ , para algún  $\lambda \in \mathbb{K}$ . El hiperplano H es invariante si y sólo si para todo  $x \in H$  se cumple  $f(x) \in H$ . Teniendo en cuenta que las coordenadas de f(x) son las que forman la matriz columna AX, resulta

$$f(x) \in H \iff U^t(AX) = 0 \underset{trasponiendo}{\Leftrightarrow} X^t A^t U = 0$$

La última ecuación se cumple para todo  $x \in H$  si y sólo si  $X^tA^tU = 0$  es una ecuación implícita de H, si y sólo si  $A^tU$  es proporcional a U. Es decir, existe  $\lambda \in \mathbb{K}$  tal que  $A^tU = \lambda U$ , lo que equivale a decir que $u$ es autovector de  $f^t$ .  $\square$ 

Observando que una matriz y su traspuesta son semejantes, y por tanto tienen la misma forma canónica de Jordan (si existe) o la misma forma de Jordan real (véase el Ejercicio 5.5., pág. 240), entonces dos endomorfismos $f$ y  $f^t$  tienen los mismos autovalores y las mismas dimensiones para los subespacios generalizados. Así, el número de rectas invariantes de $f$ es igual al número de rectas invariantes de $f^t$ y éste igual al número de hiperplanos invariantes de $f$. Este hecho se recoge en el siguiente resultado.

#### Corolario 6.5
> Para todo endomorfismo $f$ se cumple:
> (1) Todas las rectas $f$-invariantes son las contenidas en los subespacios propios  $V_{\lambda}$ , con  $\lambda$  autovalor de $f$.
> (2) El número de rectas $f$-invariantes es igual al número de hiperplanos $f$-invariantes.

Estos resultados nos permiten calcular fácilmente todos los subespacios invariantes de los endomorfismos de espacios vectoriales de dimensión 2 y 3. Para ello, consideraremos las matrices de Jordan.

#### 6.1.1 Subespacios invariantes en dimensión 2

Sea $f$ un endomorfismo de un  $\mathbb{K}$ -espacio vectorial $V$ de dimensión 2. Los posibles subespacios invariantes distintos de $V$ y  $\{0\}$  son rectas. Las posibles matrices de Jordan de $f$ respecto a una base  $\mathcal{B} = \{v_1, v_2\}$  son:

**Caso 2.1.** Si $f$ tiene dos autovalores reales distintos, entonces su forma canónica de Jordan es

$$\begin{pmatrix} \lambda_1 & 0 \\ 0 & \lambda_2 \end{pmatrix} \operatorname{con} \lambda_1 \neq \lambda_2$$

Tiene dos rectas invariantes:  $L(v_1) = V_{\lambda_1}$  y  $L(v_2) = V_{\lambda_2}$ . Los dos subespacios propios.

**Caso 2.2.** Si $f$ tiene un único autovalor  $\lambda$  y dim  $V_{\lambda}=2$ , entonces la matriz de Jordan es

$$\begin{pmatrix} \lambda & 0 \\ 0 & \lambda \end{pmatrix}$$

El subespacio propio es todo el plano vectorial V. Todos los vectores de $V$ son autovectores, por lo que todas las rectas de $V$ son invariantes.

**Caso 2.3.** Si $f$ tiene un único autovalor  $\lambda$  y dim  $V_{\lambda} = 1$ , entonces la matriz de Jordan es

$$\begin{pmatrix} \lambda & 0 \\ 1 & \lambda \end{pmatrix}$$

y $f$ tiene una única recta invariante  $L(v_2) = V_{\lambda}$ .

**Caso 2.4.** Si  $\mathbb{K} = \mathbb{R}$  y $f$ no tiene autovalores, entonces no tiene rectas invariantes y su polinomio cracterístico tendrá dos autovalores complejos conjugados  $a \pm bi$ . No admite una forma canónica de Jordan, y su forma de Jordan real es del tipo:

$$\begin{pmatrix} a & b \\ -b & a \end{pmatrix}$$

#### 6.1.2 Subespacios invariantes en un espacio tridimensional

Sea $f$ un endomorfismo de un  $\mathbb{K}$  espacio vectorial $V$ de dimensión 3. Estudiamos todas las posibles matrices de Jordan, que supondremos referidas a una base  $\mathcal{B} = \{v_1, v_2, v_3\}$ , y tendremos en cuenta que el número de planos invariantes es igual al de rectas invariantes.

**Caso 3.1.** Si $f$ tiene tres autovalores distintos en  $\mathbb{K}$ :  $\lambda_1$ ,  $\lambda_2$  y  $\lambda_3$ .

$$J_1 = \begin{pmatrix} \lambda_1 & 0 & 0 \\ 0 & \lambda_2 & 0 \\ 0 & 0 & \lambda_3 \end{pmatrix} \text{ con } \lambda_1 \neq \lambda_2 \neq \lambda_3$$

Entonces, tiene exactamente tres rectas invariantes:  $L(v_i) = V_{\lambda_i}$  con i = 1, 2, 3; que se corresponden con los tres subespacios propios.

Como hay tres rectas invariantes, entonces hay tres planos invariantes. Para obtenerlos, se calculan los autovectores de la matriz  $J_1^t$ , tal y como indica la Proposición 6.4. En este caso  $J_1^t = J_1$ , y los autovectores no nulos tienen coordenadas

$$v_1 = (a, 0, 0)_{\mathcal{B}} \text{ con } a \neq 0; \ v_2 = (0, b, 0)_{\mathcal{B}} \text{ con } b \neq 0; \ v_3 = (0, 0, c)_{\mathcal{B}} \text{ con } c \neq 0$$

que dan lugar a los tres hiperplanos de ecuaciones

$$H_1 \equiv \{ ax_1 + 0x_2 + 0x_3 = 0 \} \equiv \{ x_1 = 0 \}, \quad H_2 \equiv \{ x_2 = 0 \} \quad \text{y} \quad H_3 \equiv \{ x_3 = 0 \}$$

Los tres son reducibles y se corresponden con las combinaciones de las sumas de las tres rectas invariantes.

$$H_1 = L(v_2) \oplus L(v_3), \ H_2 = L(v_1) \oplus L(v_3), \ H_3 = L(v_1) \oplus L(v_2)$$

**Caso 3.2.** $f$ tiene dos autovalores distintos:  $\lambda_1$  con  $a_1=g_1=2$  y  $\lambda_2$  con  $a_2=g_2=1$ ; entonces su matriz de Jordan es

$$J_2 = \begin{pmatrix} \lambda_1 & 0 & 0 \\ 0 & \lambda_1 & 0 \\ 0 & 0 & \lambda_2 \end{pmatrix} \text{ con } \lambda_1 \neq \lambda_2$$

**Rectas** invariantes: Todas las contenidas en el plano  $V_{\lambda_1} = \text{Ker}(f - \lambda_1 \text{Id}) \equiv \{x_3 = 0\}$ . Cada autovector de este plano es de la forma  $av_1 + bv_2$  y genera la recta invariante  $r_{a,b} = L(av_1 + bv_2)$ . Para obtener las ecuaciones de estas rectas tenemos que verificar la condición

$$\operatorname{rg}\begin{pmatrix} a & b & 0 \\ x_1 & x_2 & x_3 \end{pmatrix} = 1$$

Si suponemos  $a \neq 0$  se obtiene  $r_{a,b} \equiv \{bx_1 - ax_2 = 0, x_3 = 0\}$ . Si a = 0, entonces  $b \neq 0$  y  $r_{0,b} \equiv \{x_1 = 0, x_3 = 0\}$ .

Además se tiene la recta asociada al segundo autovalor  $V_{\lambda_2} = L(v_3) \equiv \{x_1 = x_2 = 0\}.$ 

**Planos** invariantes: Calculamos los autovectores de  $J_2^t$ , que por coincidir con  $J_2$  son todos los mencionados anteriormente. Sus coordenadas son (a, b, 0) y (0,0,c) con  $(a, b) \neq (0,0)$ ,  $c \neq 0$ ;  $a, b, c \in \mathbb{K}$  por lo que se obtienen las ecuaciones de los planos invariantes:

$-H \equiv \{x_3 = 0\} \Rightarrow H = L(v_1, v_2) = L(v_1) \oplus L(v_2)$  (el subespacio propio  $V_{\lambda_1}$ ).
$-H_{a,b} \equiv \{ax_1 + bx_2 = 0\} \Rightarrow H_{a,b} = L(bv_1 av_2, v_3) = L(bv_1 av_2) \oplus L(v_3).$

Todos son planos reducibles.

**Caso 3.3.** Si $f$ tiene dos autovalores distintos:  $\lambda_1$  con  $a_1 = 2$ ,  $g_1 = 1$  y  $\lambda_2$  con  $a_2 = g_2 = 1$ : entonces su matriz de Jordan es

$$J_3 = \begin{pmatrix} \lambda_1 & 0 & 0 \\ 1 & \lambda_1 & 0 \\ 0 & 0 & \lambda_2 \end{pmatrix} \text{ con } \lambda_1 \neq \lambda_2$$

Rectas invariantes: exactamente dos  $V_{\lambda_1} = L(v_2)$  y  $V_{\lambda_2} = L(v_3)$ .

Planos invariantes: habrá el mismo número de planos invariantes que de rectas, por lo tanto. 2. Podemos calcularlos obteniendo los autovectores de  $J_3^t$ , o si somos capaces de localizarlos observando los bloques de la matriz y combinando las rectas invariantes, acortaremos el proceso. Para ilustrarlo lo hacemos por los dos métodos.

Método 1: El primer bloque  $2 \times 2$  de la matriz se corresponde con un subespacio invariante  $P_1 = L(v_1, v_2)$ . La matriz de la restricción de $f$ a dicho plano invariante.  $f|_P$  es

$$\begin{pmatrix} \lambda_1 & 0 \\ 1 & \lambda_1 \end{pmatrix}$$

Se trata de un plano invariante que contiene a una única recta invariante (igual que en el caso 2.3), y por tanto irreducible.

El otro plano lo podemos obtener sumando las dos rectas invariantes:  $P_2 = L(v_2) \oplus L(v_3)$ . Método 2: Los subespacios propios de  $J_3^t$  son

$$V_{\lambda_1} \equiv (J_3^t - \lambda_1 I)X = 0 \Rightarrow \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & \lambda_2 - \lambda_1 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \Rightarrow V_{\lambda_1} \equiv \{x_2 = 0, x_3 = 0\}$$

$$V_{\lambda_2} \equiv (J_3^t - \lambda_2 I)X = 0 \Rightarrow \begin{pmatrix} \lambda_2 - \lambda_1 & 1 & 0 \\ 0 & \lambda_2 - \lambda_1 & 0 \\ 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \Rightarrow V_{\lambda_2} \equiv \{x_1 = 0, x_2 = 0\}$$

Así las coordenadas de los autovectores no nulos son de la forma (a,0,0) y (0,0,b) con  $a,b \in \mathbb{K}$ .  $a \neq 0$ .  $b \neq 0$ , de donde se obtienen los hiperplanos de ecuaciones

$$H_1 \equiv \{x_1 = 0\}. \ \ {\rm y} \ H_2 \equiv \{x_3 = 0\}. \ \ {\rm con} \ \ H_1 = P_2. \ H_2 = P_1$$

**Caso 3.4.** Si $f$ tiene un único autovalor:  $\lambda$  con multiplicidades  $a_{\lambda}=3$  y  $g_{\lambda}=1$ , entonces la matriz de Jordan es

$$J_4 = \begin{pmatrix} \lambda & 0 & 0 \\ 1 & \lambda & 0 \\ 0 & 1 & \lambda \end{pmatrix}$$

Rectas invariantes: sólo una  $V_{\lambda} = L(v_3)$  de ecuaciones  $x_1 = 0$ .  $x_2 = 0$ .

Planos (hiperplanos) invariantes: Las coordenadas de los autovectores no nulos de  $J_4^t$  son de la forma (a,0,0),  $a \neq 0$ , luego el único plano invariante es  $H \equiv \{ax_1 = 0\} \equiv \{x_1 = 0\}$ . Se trata del plano que podríamos observar viendo la submatriz  $2 \times 2$  inferior derecha que es un bloque de Jordan de orden 2. En efecto, si consideramos el plano  $H = L(v_2, v_3)$  generado por los vectores de ese bloque, podemos afirmar que es invariante ya que es un subespacio 2-cíclico, y la matriz de  $f|_H$  es

$$\begin{pmatrix} \lambda & 0 \\ 1 & \lambda \end{pmatrix}$$

por lo que se trata de un plano irreducible que sólo contiene una recta invariante.

**Caso 3.5.** Si $f$ tiene un único autovalor  $\lambda$  con  $a_{\lambda} = 3$  y  $g_{\lambda} = 2$ , entonces la matriz de Jordan es

$$J_5 = \begin{pmatrix} \lambda & 0 & 0 \\ 1 & \lambda & 0 \\ 0 & 0 & \lambda \end{pmatrix}$$

Rectas invariantes: todas las contenidas en el plano  $V_{\lambda} = L(v_2, v_3)$ . Cada una de ellas está generada por un autovector de la forma  $av_2 + bv_3$  y tiene ecuaciones:

$$r_{a,b} \equiv \{bx_2 - ax_3 = 0, x_1 = 0\}, a, b \in \mathbb{K}, (a,b) \neq (0,0)$$

Planos invariantes: los autovectores de  $J_5^t$  son todos los contenidos en el subespacio propio asociado a  $\lambda$  de ecuaciones:

$$(J_5^t - \lambda I)X = 0 \Rightarrow \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \Rightarrow V_\lambda \equiv \{x_2 = 0\}$$

Por lo tanto, las coordenadas en  $\mathcal{B}$  de los autovectores  $cv_1 + dv_3$  de  $J_5^t$  son (c, 0, d) y las ecuaciones de los hiperplanos (planos) asociados

$$H_{c,d} \equiv \{ cx_1 + dx_3 = 0 \}, c, d \in \mathbb{K}, (c, d) \neq (0, 0)$$

Obteniendo una base de estos planos vemos que  $H_{c,d} = L(v_2, dv_1 - cv_3)$ . Todos son irreducibles salvo en el caso d = 0 ya que el hiperplano  $H_{c,0} = L(v_2, v_3) = L(v_2) \oplus L(v_3)$  se corresponde con el subespacio propio  $V_{\lambda}$ .

Igual que en el resto de casos el número de rectas invariantes coincide con el número de hiperplanos invariantes, tenemos la familia de rectas invariantes  $r_{a,b}$  y la familia de hiperplanos invariantes  $H_{c,d}$ .

**Caso 3.6.** Si $f$ tiene un único autovalor  $\lambda$  con  $a_{\lambda} = 3$  y  $g_{\lambda} = 3$ , entonces su matriz de Jordan es

$$J_6 = \begin{pmatrix} \lambda & 0 & 0 \\ 0 & \lambda & 0 \\ 0 & 0 & \lambda \end{pmatrix}$$

Este endomorfismo es una homotecia. El subespacio propio es el espacio total V, por lo que todos los vectores de $V$ son autovectores y todos los subespacios son invariantes.

**Caso 3.7.** Si  $\mathbb{K} = \mathbb{R}$  y $f$ tiene un único autovalor  $\lambda$  con  $a_{\lambda} = g_{\lambda} = 1$ , entonces su polinomio característico tiene dos raíces complejas conjugadas  $a \pm bi$  y su matriz de Jordan real es

$$J_7 = \left(\begin{array}{ccc} \lambda & 0 & 0 \\ 0 & a & b \\ 0 & -b & a \end{array}\right)$$

Se tienen una única recta invariante:  $V_{\lambda} = L(v_1)$  y, por tanto, un único plano invariante  $L(v_2, v_3)$  que es irreducible. Rectas y planos se identifican por la división en bloques de la matriz.

En espacios de dimensión 4 o mayor, el estudio de los subespacios invariantes de dimensiones intermedias, es decir, que no sean rectas o hiperplanos, ya no es tan automático. Lo motivamos con el siguiente ejemplo.

#### Ejemplo 6.6: Un ejemplo de estudio en dimensión 4 (SEGUIR AQUÍ)

Sea $f$ un endomorfismo de un espacio vectorial $V$ de dimensión 4 cuya matriz en una base  $\mathcal{B} = \{v_1, v_2, v_3, v_4\}$  es

$$J = \mathfrak{M}_{\mathcal{B}}(f) = 
\left(
\begin{array}{cc|cc} 
1 & 0 & 0 & 0 \\ 
0 & 1 & 0 & 0 \\ 
\hline 0 & 0 & 2 & 0 \\ 
0 & 0 & 1 & 2 
\end{array}
\right)
$$

**Rectas invariantes**. Todas las contenidas en los subespacios propios  $V_1 = L(v_1, v_2)$  y  $V_2 = L(v_4)$ . Las rectas en el plano  $V_1$  están generadas por los autovectores asociados a dicho autovalor

$$R_{a,b} = L(av_1 + bv_2) \equiv \{bx_1 - ax_2 = 0, x_3 = x_4 = 0\}$$

Más la recta  $V_2 = L(v_4) \equiv \{ x_1 = x_2 = x_3 = 0 \}.$ 

**Hiperplanos invariantes**. Los subespacios propios de  $J^t$  son:

$$
\begin{align}
V_1 &\equiv (J^t - I_4)X = 0 \Rightarrow V_1 \equiv \{x_3 = x_4 = 0\} \\
V_2 &\equiv (J^t - 2I_4)X = 0 \Rightarrow V_2 \equiv \{x_1 = x_2 = x_4 = 0\}
\end{align}
$$  
por lo tanto las coordenadas en  $\mathcal{B}$  de los autovectores de  $J^t$  son  $(a, b, 0, 0)_{\mathcal{B}}$  y  $(0, 0, c, 0)_{\mathcal{B}}$  con  $a, b, c \in \mathbb{K}$  y de ellos se obtienen los hiperplanos:

$$
\begin{align}
H_{a,b} \equiv \{ax_1 + bx_2 = 0\}  \quad &\text{con} \quad  H_{a,b} = L(-bv_1 + av_2, v_3, v_4) \\
H \equiv \{x_3\}  \quad &\text{con} \quad  H = L(v_1, v_2, v_4)
\end{align}
$$


**Planos reducibles:** Los planos reducibles invariantes son suma de dos rectas invariantes distintas. Las posibles combinaciones son:

$$V_1 = L(v_1) \oplus L(v_2)  \quad \text{y} \quad  P_{a,b} = R_{a,b} \oplus V_2 = L(av_1 + bv_2) \oplus L(v_4) \equiv \{bx_1 - ax_2, x_3 = 0\} $$
**Planos irreducibles:** Identificamos uno asociado al bloque de Jordan  $2 \times 2$  del autovalor 2:

$$M(2) = \text{Ker}(f - 2 \text{Id})^2 = L(v_3, v_4)$$

El plano $M(2)$ es irreducible pues sólo contiene una recta invariante ya que la matriz de la aplicación  $f|_{M(2)}$  es un bloque de Jordan  $(\frac{2}{1}\frac{0}{2})$ , que se corresponde con el caso 2.3. La única recta invariante contenida en $M(2)$ es  $L(v_4) = V_2$ .

Este endomorfismo no tiene más planos invariantes irreducibles, aunque ahora todavía no tenemos herramientas para demostrarlo. En la siguiente seción vemos un modo sistemático para calcular subespacios invariantes irreducibles.  $\Box$ 

## 6.2. Descomposición de subespacios invariantes

En esta sección vamos a ver un método para obtener subespacios invariantes que no sean rectas o hiperplanos. El resultado en el que se basará el método es el hecho de que los subespacios invariantes se pueden descomponer como suma directa de subespacios invariantes, de dimensión menor, contenidos en los subespacios máximos  $M(\lambda_i)$ . Veámoslo.

Sean $f$ un endomorfismo que admite una forma canónica de Jordan $J$, y

$$V = M(\lambda_1) \oplus \cdots \oplus M(\lambda_k)$$

la descomposición del espacio total $V$ en suma directa de los subespacios máximos asociados a los autovalores de $f$. Sea $U$ un subespacio vectorial $f$-invariante y consideremos la aplicación restricción de $f$ a U,  $f|_U$ . Vamos a ver que los autovalores de  $f|_U$  también son autovalores de $f$. En efecto, si $v$ es un autovector de  $f|_U$  en U, entonces  $f|_U(v) = \lambda v$ ; pero  $f|_U(v) = f(v)$  por lo que $v$ es también un autovector de $f$. Podemos suponer -sin pérdida de generalidad, si no los reordenaríamos- que  $\lambda_1, \ldots, \lambda_s$  con  $s \leq k$  son los autovalores de  $f|_U$ . Así, para  $f|_U: U \to U$  tenemos la descomposición

$$U = M'(\lambda_1) \oplus \cdots \oplus M'(\lambda_s)$$

donde  $M'(\lambda_i)$  son los subespacios máximos de  $f|_U$  en U.

Veamos cómo son los subespacios propios generalizados  $K^{\prime j}(\lambda_i)$  de  $f|_U$ :

$$
\begin{align}
K'^{j}(\lambda_{i}) &= \operatorname{Ker}(f|_{U} - \lambda_{i}\operatorname{Id}|_{U})^{j} \\
&= \operatorname{Ker}(f - \lambda_{i}\operatorname{Id})^{j}|_{U} \\
&= \operatorname{Ker}(f - \lambda_{i}\operatorname{Id}) \cap U \\
&= K^{j}(\lambda_{i}) \cap U
\end{align} 
$$
Así,  $K^{\prime j}(\lambda_i)$  es un subespacio f—invariante contenido en  $K^j(\lambda_i)$ , por serlo  $K^j(\lambda_i)$  y U. Teniendo en cuenta que algunos de los subespacios  $M(\lambda_i) \cap U$  pueden ser triviales, entonces hemos demostrado el siguiente resultado:

#### Proposición 6.7: Descomposición de subespacios invariantes
> Sean $f$ un endomorfismo que admite una forma canónica de Jordan $J$ y $U$ un subespacio $f$-invariante. Entonces, $U$ se descompone en suma directa de subespacios invariantes  $U_i$  contenidos en los subespacios máximos  $M(\lambda_i)$ :
> $$U = U_1 \oplus \cdots \oplus U_k \text{,} \quad \text{con} \quad  U_i = M(\lambda_i) \cap U $$

#### Corolario 6.8
> Todo subespacio invariante irreducible está contenido en un subespacio máximo.

**Observación:** Estos dos resultados serán útiles para obtener todos los subespacios invariantes de un endomorfismo. En efecto, si calculamos todos los subespacios irreducibles de un endomorfismo, que estarán contenidos en los subespacios máximos, entonces el resto de subespacios invariantes se obtendrán considerando todas las combinaciones posibles de sumas directas de aquéllos.

Los subespacios invariantes irreducibles habrá que buscarlos dentro de los subespacios máximos pero, ¡cuidado!, dentro de los subespacios máximos también puede haber subespacios reducibles, como hemos visto en ejemplos anteriores.

### Subespacios invariantes asociados a un bloque de Jordan

Escogiendo las bases de Jordan adecuadas  $\mathcal{B}_i$  en cada subespacio máximo  $M(\lambda_i)$ , tenemos que la matriz de $f$ referida a la base  $\mathcal{B} = \mathcal{B}_1 \cup \cdots \cup \mathcal{B}_k$  es diagonal por bloques

$$\mathfrak{M}_{\mathcal{B}}(f) = \begin{pmatrix} A_1 & 0 & 0 & 0 \\ 0 & A_2 & 0 & 0 \\ 0 & 0 & \ddots & 0 \\ 0 & 0 & 0 & A_k \end{pmatrix}$$

Donde cada submatriz  $A_i$  es. a su vez, una matriz diagonal por bloques, que son los bloques de Jordan  $B_{i_1}(\lambda_i), \ldots, B_{i_{g_i}}(\lambda_i)$  asociados al autovalor  $\lambda_i$ . Recordemos que hay tantos bloques como multiplicidad geométrica  $g_i$  tenga el autovalor  $\lambda_i$ . Sea  $B_i(\lambda_i)$  uno de tales bloques

$$B_{j}(\lambda_{i}) = \begin{pmatrix} \lambda_{i} & 0 & \dots & 0 \\ 1 & \ddots & \ddots & \vdots \\ & \ddots & \ddots & 0 \\ 0 & & 1 & \lambda_{i} \end{pmatrix}_{j \times j}$$

Los vectores asociados a este bloque son los correspondientes a una fila de la tabla de construcción de la base de Jordan

$$
\begin{array}{ccccccc}
K^1 & \subset & \cdots & \subset & K^{j-1} & \subset & K^j \\
v_j & \leftarrow & & & v_2 & \leftarrow & v_1
\end{array}
$$

Es decir,  $v_1, v_2 = (f - \lambda_i \operatorname{Id})(v_1), \ldots, v_j = (f - \lambda_i \operatorname{Id})^{j-1}(v_1)$ , con  $v_1 \in K^j(\lambda_i) - K^{j-1}(\lambda_i)$ ; y generan el subespacio $j$-cíclico  $L(v_1, \ldots, v_j)$ . Este subespacio contiene exactamente $j$ subespacios invariantes irreducibles (uno de cada dimensión) que son los siguientes:

 $L(v_j)$  una recta invariante, por ser  $v_j$  un autovector
 $L(v_{j-1},v_j)$  un plano irreducible invariante
 ...  
 $L(v_s,\ldots,v_{j-1},v_j)$  un subespacio invariante irreducible de dimensión $j-s+1$
...

Y no hay ningún subespacio invariante más contenido en  $L(v_1, \ldots, v_i)$ . Véase el Ejercicio 6.17.

#### Ejemplo 6.9

Consideremos el endomorfismo $f$ de  $\mathbb{K}^5$  con matriz de Jordan

$$

J = \mathfrak{M}_{\mathcal{B}}(f) = 
\left(
\begin{array}{ccc|cc}
2 & 0 & 0 & 0 & 0 \\ 1 & 2 & 0 & 0 & 0 \\ 0 & 1 & 2 & 0 & 0 \\ \hline 0 & 0 & 0 & 2 & 0 \\ 0 & 0 & 0 & 1 & 2 
\end{array}
\right)
$$

La base de Jordan  $\mathcal{B} = \{v_1, v_2, v_3, v_4, v_5\}$  se corresponde con la siguiente tabla:

$$
\begin{array}{ccccl}
2 & & 4 & & \quad 5 \\
K^1(2) & \subset & K^2(2) & \subset & K^3(2)=M(2) \\
v_3 & \leftarrow & v_2 & \leftarrow & v_1 \\
v_5 & \leftarrow & v_4
\end{array}
$$

La primera fila contiene los vectores  $v_1$ ,  $v_2$ ,  $v_3$ , correspondientes al bloque  $3\times3$ . El subespacio 3–cíclico  $L(v_1, v_2, v_3)$  contiene los siguientes subespacios invariantes irreducibles:

Recta:  $R_1 = L(v_3)$ 
Plano:  $P_1 = L(v_2, v_3)$ 
Dimensión 3:  $F_1 = L(v_1, v_2, v_3)$ 

La segunda línea contiene los vectores  $v_4$ ,  $v_5$ , correspondientes al bloque  $2 \times 2$ . El subespacio 2-cíclico  $L(v_4, v_5)$  contiene los subespacios invariantes:

Recta:  $R_2 = L(v_5)$ 
Plano:  $P_2 = L(v_4, v_5)$ .

La matriz de la aplicación restricción de $f$ a cada uno de estos subespacios es una submatriz de $J$ formada por un bloque de Jordan:

$$M(f|_{R_1}) = M(f|_{R_2}) = (2), \quad M(f|_{P_1}) = M(f|_{P_2}) = \begin{pmatrix} 2 & 0 \\ 1 & 2 \end{pmatrix}, \quad M(f|_{F_1}) = \begin{pmatrix} 2 & 0 & 0 \\ 1 & 2 & 0 \\ 0 & 1 & 2 \end{pmatrix}$$

**Aclaración**: Este endomorfismo tiene muchos más subespacios invariantes. Aquí sólo hemos calculado los contenidos en los subespacios  $L(v_1, v_2, v_3)$  y  $L(v_3, v_4)$ .  $\square$ 

En el siguiente ejemplo ilustramos la descomposición de un subespacio invariante a la que hace referencia la Proposición anterior.

#### Ejemplo 6.10
Consideremos el endomorfismo $f$ de un  $\mathbb{K}$  —espacio vectorial $V$ que respecto de una base  $\mathcal{B} = \{v_1, \dots, v_5\}$  tiene la siguiente matriz de Jordan:

$$\left(\begin{array}{c|cccc}
B_1 & 0 \\
\hline
0 & B_2
\end{array}\right) = 
\left(
\begin{array}{ccc|cc}
2 & 0 & 0 & 0 & 0 \\
1 & 2 & 0 & 0 & 0 \\
0 & 1 & 2 & 0 & 0 \\
\hline
0 & 0 & 0 & 3 & 0 \\
0 & 0 & 0 & 1 & 3
\end{array}
\right)
$$

El espacio vectorial como suma directa de los subespacios máximos es  $V = M(2) \oplus M(3)$  donde  $M(2) = L(v_1, v_2, v_3)$  y  $M(3) = L(v_4, v_5)$ . El subespacio  $U = L(v_3, v_4, v_5)$  es $f$-invariante ya que  $f(v_3) = 2v_3 \in U$ ,  $f(v_4) = 3v_4 + v_5 \in U$  y  $f(v_5) = 3v_5 \in U$ . Es fácil comprobar que $U$ no está contenido en ninguno de los subespacios máximos, luego por el Corolario 6.8 se tiene que es reducible. La descomposición de $U$ en suma directa de subespacios irreducibles la obtenemos de la Proposición 6.7

$$U = U_2 \oplus U_3 \quad \text{con} \quad U_2 = M(2) \cap U \text{,} \quad  U_3 = M(3) \cap U $$
Las intersecciones se calculan observando las bases de cada subespacio  $U_2 = L(v_3)$  es una recta invariante contenida en M(2) y  $U_3 = L(v_4, v_5) = M(3)$  es el plano formado por el subespacio máximo. La descomposición  $U = U_2 \oplus U_3$  se corresponde con la división en bloques de la matriz de  $f|_U$  respecto de la base  $\mathcal{B}_U = \{v_3, v_4, v_5\}$ 

$$
\left(
\begin{array}{c|cc}
2 & 0 & 0 \\
\hline 0 & 3 & 0 \\
0 & 1 & 3
\end{array} 
\right)
\qquad \Box$$

El siguiente resultado indica cómo obtener todos los subespacios invariantes irreducibles.

#### Proposición 6.11: Caracterización de subespacios irreducibles
> Sea $f$ un endomorfismo de un  $\mathbb{K}$  —espacio vectorial $V$ que admite una forma canónica de Jordan. Un subespacio vectorial de $V$ de dimensión r es f—invariante e irreducible si y sólo si es un subespacio r-cíclico.

**Demostración:** Sea $U$ un subespacio $f$-invariante irreducible de dimensión r, entonces para algún autovalor  $\lambda$  de $f$ se tiene  $U \subseteq M(\lambda)$  y  $r \le a$ , donde  $a = \dim M(\lambda)$  es la multiplicidad algebraica de  $\lambda$ . La forma canónica de Jordan del endomorfismo  $f|_U$  está formada por un único bloque de Jordan, pues si tuviera varios bloques, el subespacio $U$ sería reducible. Así, si  $\mathcal{B}$  es una base de $U$ tal que  $\mathfrak{M}_{\mathcal{B}}(f|_U)$  es la forma canónica de Jordan de  $f|_U$ , entonces  $\mathcal{B} = \{v, (f - \lambda \operatorname{Id})(v), \dots, (f - \lambda \operatorname{Id})^{r-1}(v)\}$  con  $v \in \operatorname{Ker}(f - \lambda \operatorname{Id})^r - \operatorname{Ker}(f - \lambda \operatorname{Id})^{r-1}$ , y por tanto $U$ es r-cíclico. El recíproco ya se ha estudiado antes: los subespacios r-cíclicos son $f$-invariantes. Véase pág. 216.  $\square$ 

#### Ejemplo 6.12
Tenemos en cuenta el endomorfismo del Ejercicio 6.9 y vamos a utilizar la Proposición 6.11 para estudiar cómo son los planos irreducibles. El esquema de la base de Jordan es
$$
\begin{array}{ccccl}
K^1 & \subset & K^2 & \subset & K^3=M(2) \\
v_3 & \leftarrow & v_2 & \leftarrow & v_1 \\
v_5 & \leftarrow & v_4
\end{array}
$$
Por lo que una base del subespacio generalizado primero  $K^1(2)$  está formada por los vectores de la primera columna de la tabla  $v_3$  y  $v_5$ , y una base de  $K^2(2)$  está formada por los vectores de la primera y segunda columnas  $v_2$ ,  $v_3$ ,  $v_4$  y  $v_5$ . Así

$$K^{1}(2) = L(v_3, v_5) \equiv \{x_1 = x_2 = x_4 = 0\} \text{ y } K^{2}(2) = L(v_2, v_3, v_4, v_5) \equiv \{x_1 = 0\}$$

Los planos irreducibles son los 2-cíclicos, que son de la forma

$$P = L(v, (f - 2 \operatorname{Id})(v)), \text{ con } v \in K^{2}(2) - K^{1}(2)$$

Un vector  $v \in K^2(2) - K^1(2)$  si y sólo si tiene coordenadas  $(0, a, b, c, d)_{\mathcal{B}}$  con  $a \neq 0$  o bien  $c \neq 0$ . Tomemos, por ejemplo, el vector  $v = v_2 + v_4 = (0, 1, 0, 1, 0)_{\mathcal{B}}$ . Calculamos  $(f - 2\operatorname{Id})(v)$ 

$$
\begin{pmatrix} 
0 & 0 & 0 & 0 & 0 \\ 
1 & 0 & 0 & 0 & 0 \\ 
0 & 1 & 0 & 0 & 0 \\ 
0 & 0 & 0 & 0 & 0 \\ 
0 & 0 & 0 & 1 & 0
\end{pmatrix}
\begin{pmatrix}
0 \\
1 \\
0 \\
1 \\
0
\end{pmatrix}
=
\begin{pmatrix}
0 \\
0 \\
1 \\
1 \\
0
\end{pmatrix}
\quad \Rightarrow \quad 
(f-2\operatorname{Id})(v_2+v_4)=v_3+v_5

$$

y tenemos el plano invariante irreducible  $P = L(v_2 + v_4, v_3 + v_5) \equiv \{x_1 = 0, x_2 - x_4 = 0, x_3 - x_5 = 0\}.$ 

En general  $(f - 2 \operatorname{Id})((0, a, b, c, d)_{\mathcal{B}}) = (0, 0, a, 0, c)_{\mathcal{B}}$  y todos los planos invariantes irreducibles son de la forma

$$L((0, a, b, c, d)_{\mathcal{B}}, (0, 0, a, 0, c)_{\mathcal{B}}) \text{ con } (a, c) \neq (0, 0) \quad \Box$$

#### Ejemplo 6.13: Ejemplo de cálculo completo de subespacios invariantes

Sea $f$ un endomorfismo de un espacio vectorial $V$ de dimensión 4, que respecto de una base  $\mathcal{B} = \{v_1, v_2, v_3, v_4\}$  tiene la siguiente matriz de Jordan:

$$J = \mathfrak{M}_{\mathcal{B}}(f) = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & -1 \end{pmatrix} \qquad 
\begin{array}{cccl} 
2 & & 3 & & \quad 1 \\ 
K^{1}(1) & \subset & K^{2}(1) = M(1) & & K^1(-1) = M(-1) \\ 
v_{2} & \leftarrow & v_{1} & & \quad v_{4} \\ 
v_{3}  \\ \end{array}
$$

Como $f$ tiene dos autovalores distintos, entonces tenemos la siguiente descomposición del espacio vectorial:  $V = M(1) \oplus M(-1)$ . Comenzamos calculando los subespacios invariantes irreducibles que contiene cada subespacio máximo.

### Subespacios invariantes irreducibles contenidos en M(-1):

Como es un subespacio de dimensión 1, entonces el único subespacio invariante no trivial que contiene es él mismo: la recta  $M(-1) = L(v_4)$ .

### Subespacios invariantes irreducibles contenidos en M(1):

 $M(1) = L(v_1, v_2, v_3)$  es un hiperplano y tiene ecuación implícita  $x_4 = 0$ .

- Rectas invariantes: todas las contenidas en el subespacio propio  $K^1(1) = L(v_2, v_3)$ 

$$R_{a,b} = L(av_2 + bv_3) \quad  \text{con} \quad  (a,b) \neq (0,0) \text{:} \quad  R_{a,b} \equiv \{bx_2 - ax_3 = 0, x_1 = x_4 = 0\} $$
- Planos invariantes irreducibles: aplicando la Proposición 6.11 un plano P invariante por $f$ es irreducible si y sólo si es 2-cíclico. Es decir, es de la forma  $P = L(v, (f - \mathrm{Id})(v))$ , con  $v \in K^2(1) - K^1(1)$ . Las ecuaciones de estos subespacios son:

$$K^{2}(1) \equiv \{x_{4} = 0\}, K^{1}(1) \equiv \{x_{4} = 0, x_{1} = 0\}$$

De modo que, los vectores  $v \in K^2(1) - K^1(1)$  tendrán coordenadas $v$ = (c, d, e, 0) con  $c \neq 0$ , es decir:  $v = cv_1 + dv_2 + ev_3$  con  $c \neq 0$ . Calculamos el vector  $(f - \operatorname{Id})(v)$ :

$$
\begin{pmatrix} 
0 & 0 & 0 & 0  \\ 
1 & 0 & 0 & 0  \\ 
0 & 0 & 0 & 0 \\ 
0 & 0 & 0 & -2
\end{pmatrix}
\begin{pmatrix}
c \\
d \\
e \\
0
\end{pmatrix}
=
\begin{pmatrix}
0 \\
c \\
0 \\
0
\end{pmatrix}
\quad \Rightarrow \quad 
(f-\operatorname{Id})(v) = c v_2

$$

Entonces, los planos irreducibles invariantes son de la forma:  $P = L(cv_1 + dv_2 + ev_3, cv_2)$  con  $c \neq 0$ . Calculamos sus ecuaciones:

$$\operatorname{rg}\begin{pmatrix} c & d & e & 0 \\ 0 & c & 0 & 0 \\ x_1 & x_2 & x_3 & x_4 \end{pmatrix} = 2 \iff P_{c,e} \equiv \{ex_1 - cx_3 = 0, x_4 = 0\} \ e, c \in \mathbb{K}, c \neq 0$$

- Hiperplanos invariantes irreducibles: el único hiperplano invariante contenido en M(1) es el propio M(1) y es reducible ya que es suma de los subespacios asociados a los dos bloques distintos:  $M(1) = L(v_1, v_2) \oplus L(v_3)$ . Luego no hay hiperplanos invariantes irreducibles.

El resto de subespacios invariantes serán reducibles y se obtendrán como sumas directas de los que ya hemos calculado.

**Planos invariantes reducibles.** Se obtienen como suma de rectas invariantes y tenemos

$$P_{a,b} = M(-1) \oplus R_{a,b}$$
 y  $K^{1}(1) = L(v_{2}, v_{3}) = L(v_{2}) \oplus L(v_{3})$ 

**Hiperplanos invariantes reducibles.** Todo hiperplano invariante no contenido en un subespacio máximo es reducible, y por lo visto anteriormente el único contenido en M(1) es él mismo que es reducible. Es decir, todos los hiperplanos invariantes son reducibles.

Podemos calcularlos, utilizando la caracterización de la Proposición 6.4, determinando los autovectores de  $f^t$ ; o bien combinando sumas de planos y rectas invariantes. Lo hacemos por los dos métodos.

- Método 1: Autovectores no nulos de  $J^t$  correspondientes al autovalor 1:

$$\operatorname{Ker}(f^t - \operatorname{Id}) \equiv \{ (J^t - I_4)X = 0 \} \equiv \{ x_2 = 0, \ x_4 = 0 \}$$

Los autovectores son  $(a, 0, b, 0)_{\mathcal{B}}$  con  $(a, b) \neq (0, 0)$  y determinan los hiperplanos invariantes:

$$H_{a,b} \equiv \{ax_1 + bx_3 = 0\} \text{ con } (a,b) \neq (0,0)$$

Autovectores no nulos de  $J^t$  correspondientes al autovalor -1:

$$Ker(f^t + \operatorname{Id} \equiv \{(J^t + I_4)X = 0\} \equiv \{x_1 = 0, \ x_2 = 0, \ x_3 = 0\}$$

Los autovectores son  $(0,0,0,c)_{\mathcal{B}}$  con  $c\neq 0$  y determinan el hiperplano invariante

$$M(1) \equiv \{x_4 = 0\}$$

- Método 2: combinando sumas de planos y rectas invariantes calculados previamente (las rectas no pueden estar contenidas en los planos para que la suma genere hiperplanos)

$$P_{c,e} \oplus M(-1)$$
 y  $M(1) = L(v_1, v_2) \oplus L(v_3)$ 

obteniéndose los mismos hiperplanos.

Finalmente, para terminar de ilustrar la caracterización de la Proposición 6.11, la utilizamos para volver a demostrar que no existe ningún hiperplano invariante irreducible. En efecto, si H fuera un hiperplano invariante irreducible, sería un subespacio 3-cíclico de la forma:

$$H = L(v, (f - \operatorname{Id}(v), (f - \operatorname{Id}^{2}(v))$$

con  $v \in K^3(1) - K^2(1)$  lo cual es imposible pues  $M(1) = K^3(1) = K^2(1)$ . Visualmente, en la matriz, deberíamos tener un bloque de Jordan de dimensión al menos 3.

## 6.3. Subespacios invariantes y polinomios

En esta sección introducimos el concepto de polinomio anulador de un endomorfismo (o de una matriz) que, como veremos, aporta mucha información en el estudio de invariantes lineales.

Dado un endomorfismo  $f:V\to V$  y  $p(t)\in\mathbb{K}[t]$  un polinomio con coeficientes en  $\mathbb{K}$  en una indeterminada t

$$p(t) = a_n t^n + a_{n-1} t^{n-1} + \dots + a_1 t + a_0. \quad a_n \neq 0$$

denotaremos por p(f) al endomorfismo de $V$

$$p(f) = a_n f^n + a_{n-1} f^{n-1} + \dots + a_1 f + a_0 \operatorname{Id}$$

donde  $f^n = f \circ \stackrel{n}{\cdots} \circ f$ . Sea  $A \in \mathfrak{M}_m(\mathbb{K})$  una matriz de orden m. Denotaremos por p(A) a la matriz del mismo orden

$$p(A) = a_n A^n + a_{n-1} A^{n-1} + \dots + a_1 A + a_0 I_m$$

Si $A$ es la matriz de $f$ respecto de una base  $\mathcal{B}$ , entonces $p(A)$ es la matriz de $p(f)$ respecto de  $\mathcal{B}$ .

El siguiente resultado relaciona polinomios, endomorfismos y subespacios invariantes.

#### Proposición 6.14
> Sean $f$ un endomorfismo de un  $\mathbb{K}$ -espacio vectorial $V$ y  $p(t) \in \mathbb{K}[t]$ . Entonces, el subespacio vectorial  $\operatorname{Ker}(p(f))$  es $f$-invariante.

**Demostración:** Sea  $v \in \text{Ker}(p(f))$ , es decir

$$p(f)(v) = a_n f^n(v) + a_{n-1} f^{n-1}(v) + \dots + a_1 f(v) + a_0 v = 0$$

Entonces

$$\begin{align}
p(f)(f(v)) &= a_n f^n(f(v)) + a_{n-1} f^{n-1}(f(v)) + \dots + a_1 f(f(v)) + a_0 f(v) \\
& = a_n f^{n+1}(v) + a_{n-1} f^n(v) + \dots + a_1 f^2(v) + a_0 f(v) \\
&= f(a_n f^n(v) + a_{n-1} f^{n-1}(v) + \dots + a_1 f(v) + a_0 v) \\
& = f(p(f)(v)) = f(0) = 0
\end{align}
$$
por lo que  $f(v) \in \text{Ker}(p(f))$ .  $\square$ 

Diremos que un polinomio $p(t)$ anula a un endomorfismo $f$ o que es un **polinomio anulador** de $f$, si $p(f)$ es el endomorfismo nulo, lo cual expresamos diciendo $p(f) = 0$. Y $p(t)$ es un **polinomio anulador** de una matriz cuadrada $A$ si $p(A) = 0$.

Sea $A$ una matriz de $f$ respecto de una base cualquiera, entonces un polinomio $p(t)$ es anulador de $f$ si y sólo si es anulador de $A$.

#### Ejemplo 6.15: Polinomio anulador

Sea $f$ el endomorfismo de  $\mathbb{R}^3$  con matriz

$$A = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & \frac{1}{2} \\ 0 & 0 & 2 \end{pmatrix}$$

El polinomio  $p(t) = t^3 - 4t^2 + 5t - 2$  anula a $f$ ya que  $p(A) = A^3 - 4A^2 + 5A - 2I_3 = 0$ 

$$
\begin{align}
A^{3} - 4A^{2} + 5A - 2I_{3} &= \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & \frac{1}{2} \\ 0 & 0 & 2 \end{pmatrix}^{3} - 4 \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & \frac{1}{2} \\ 0 & 0 & 2 \end{pmatrix}^{2} + 5 \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & \frac{1}{2} \\ 0 & 0 & 2 \end{pmatrix} - 2 \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} \\
&= 
\begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 7/2 \\ 0 & 0 & 2 \end{pmatrix} - 4 \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 3/2 \\ 0 & 0 & 4 \end{pmatrix} + 5 \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & \frac{1}{2} \\ 0 & 0 & 2 \end{pmatrix} - 2 \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} = 0
\end{align}
$$

Compruébese que  $q(t) = t^2 - 3t + 2 = (t - 1)(t - 2)$  es otro polinomio anulador de $f$.  $\square$ 

El Teorema de Cayley-Hamilton[^1] nos proporciona un primer polinomio anulador.

#### Teorema 6.16: Teorema de Cayley-Hamilton
> El polinomio característico de un endomorfismo $f$ es un polinomio anulador de $f$.

**Demostración:** Si  $p_f(t) \in \mathbb{K}[t]$  es el polinomio característico de un endomorfismo f, entonces tenemos que ver que  $p_f(f) = 0$ . Equivalentemente: dada una matriz cualquiera A de $f$ y  $p_A(t) = \det(A - tI_n)$ , entonces  $p_A(A) = 0$ . Por simplificar la notación llamaremos I a la matriz  $I_n$  del mismo orden que A. Comenzamos considerando el siguiente resultado (véase pág. 66) : dada una matriz B de orden n, llamamos  $B' = \operatorname{Adj}(B)^t$  a la matriz traspuesta de la adjunta de B, y se cumple que

$$B \cdot B' = \det(B) \cdot I$$

Sea $B = A - tI$. Sustituyendo en la ecuación anterior se tiene
$$(A - tI)(A - tI)' = \det(A - tI)I = p_f(t)I \tag{6.1}$$
Veamos cómo es el miembro derecho de la ecuación. Si suponemos
$$\det(A - tI) = a_n t^n + a_{n-1} t^{n-1} + \dots + a_1 t + a_0$$
entonces  $p_f(t)I$  es una matriz diagonal cuyos elementos de la diagonal son iguales al polinomio  $p_f(t)$ . Podemos escribir dicha matriz como:

$$
\begin{align}
p_f(t)I &= a_n t^n I + a_{n-1} t^{n-1} I + \dots + a_1 t I + a_0 I \\
&= a_n I t^n + a_{n-1} I t^{n-1} + \dots + a_1 I t + a_0 I
\end{align}
\tag{6.2}
$$
y verlo como un polinomio cuyos coeficientes son matrices.

A continuación vamos a ver cómo es la matriz (A - tI)'. Para ello recordamos cómo se construye la matriz adjunta traspuesta:  $B' = (A - tI)' = ((-1)^{i+j}\beta_{ij})^t$  donde  $\beta_{ij}$  es un menor de orden  $(n-1) \times (n-1)$  de B. Entonces, cada entrada de la matriz (A - tI)' es un polinomio de grado menor o igual que n-1 en la indeterminada t; e igual que hicimos anteriormente podemos descomponer la matriz

$$(A - tI)' = B_{n-1}t^{n-1} + B_{n-2}t^{n-2} + \dots + B_1t + B_0$$

Así, el producto (A - tI)(A - tI)' resulta

$$(A - tI)(B_{n-1}t^{n-1} + B_{n-2}t^{n-2} + \dots + B_1t + B_0)$$
es decir
$$
\begin{align}
& (AB_{n-1}t^{n-1} + AB_{n-2}t^{n-2} + \dots + AB_1t + AB_0) - (B_{n-1}t^n + B_{n-2}t^{n-1} + \dots + B_1t^2 + B_0t) \\
= & -B_{n-1}t^n + (AB_{n-1} - B_{n-2})t^{n-1} + \dots + (AB_2 - B_1)t^2 + (AB_1 - B_0)t + AB_0
\end{align}
\tag{6.3}
$$
Ahora, de la igualdad (6.1) se deduce que los polinomios en (6.2) y (6.3) son iguales. Igualando los coeficientes de los términos del mismo grado se obtienen las siguientes igualdades

$$
\begin{align}
-B_{n-1} &= a_n I \\
AB_{n-1} - B_{n-2} &= a_{n-1} I \\
AB_{n-2} - B_{n-3} &= a_{n-2} I \\
\vdots \\
AB_1 - B_0 &= a_1 I \\
AB_0 &= a_0 I
\end{align}
$$
Multiplicamos por la izquierda en cada ecuación: la primera por  $A^n$ , la segunda por  $A^{n-1}$ ,.... la penúltima por A la última por I y obtenemos las ecuaciones

$$
\begin{align}
-A^{n}B_{n-1} &= a_{n}A^{n} \\
A^{n}B_{n-1} - A^{n-1}B_{n-2} &= a_{n-1}A^{n-1} \\
A^{n-1}B_{n-2} - A^{n-2}B_{n-3} &= a_{n-2}A^{n-2} \\
\vdots \\ 
A^{2}B_{1} - AB_{0} &= a_{1}A \\
AB_{0} &= a_{0}I
\end{align}
$$
Finalmente, sumando todos los miembros izquierdos y los derechos llegamos a la ecuación

$$0 = a_n A^n + a_{n-1} A^{n-1} + \dots + a_1 A + a_0 I$$

es decir  $0 = p_f(A)$  como queríamos demostrar[^2].

Cuando descomponemos en factores un polinomio anulador de un endomorfismo, podemos descomponer el espacio vectorial $V$ en suma directa de subespacios invariantes asociados a los factores. Este hecho es el que, con otro enfoque, hemos estado utilizando para obtener el Teorema de Jordan que nos muestra cómo se descompone $V$ en suma directa de los subespacios máximos asociados a los autovalores de un endomorfismo.

#### Teorema 6.17
> Sea  $p(t) \in \mathbb{K}[t]$  un polinomio anulador del endomorfismo $f$ de $V$ tal que  $p = p_1 \cdot p_2$  siendo  $p_1$  y  $p_2$  polinomios de grado mayor o igual que 1 tales que su máximo común divisor es una constante. Entonces
> $$V = \operatorname{Ker}(p_1(f)) \oplus \operatorname{Ker}(p_2(f))$$

**Demostración:** Como  $p_1$  y  $p_2$  son polinomios cuyo máximo común divisor es igual a una constante, entonces existen polinomios  $h_1$  y  $h_2$  tales que (Identidad de Bezout)

$$h_1(t)p_1(t) + h_2(t)p_2(t) = 1$$

En términos de endomorfismos

$$h_1(f) \circ p_1(f) + h_2(f) \circ p_2(f) = \text{Id}$$

donde Id denota el endomorfismo identidad. Sea  $v \in V$ , entonces

$$h_1(f) \circ p_1(f)(v) + h_2(f) \circ p_2(f)(v) = \operatorname{Id}(v) = v \tag{6.4}$$

Si denotamos  $v_2 = h_1(f) \circ p_1(f)(v)$  y  $v_1 = h_2(f) \circ p_2(f)(v)$ , se tiene  $v = v_1 + v_2$ . Veamos que  $v_i \in \text{Ker}(p_i(f)), i = 1, 2$ . En efecto,

$$p_2(f)(v_2) = p_2(f) \circ h_1(f) \circ p_1(f)(v) = h_1(f) \circ p_1(f) \circ p_2(f)(v) = h_1(f) \circ p(f)(v) = h_1(f)(0) = 0$$

La segunda igualdad se debe a la propiedad conmutativa del producto de polinomios, y la penúltima por ser p(t) anulador de f, es decir p(f)(v) = 0 para todo  $v \in V$ . Análogamente, se tiene  $p_1(f)(v_1) = 0$ . Así, hemos probado que  $V = \text{Ker}(p_1(f)) + \text{Ker}(p_2(f))$ . Para que la suma sea directa hemos de probar que la descomposición (6.4), que abreviamos  $v = v_1 + v_2$ , es única. Supongamos otra descomposición de  $v = w_1 + w_2$ , con  $w_i \in \text{Ker}(p_i(f))$ , $i = 1, 2$. Entonces

$$h_1(f) \circ p_1(f)(v) = h_1(f) \circ p_1(f)(w_1) + h_1(f) \circ p_1(f)(w_2)$$

y como  $p_1(f)(w_1) = 0$ , se tiene

$$h_1(f) \circ p_1(f)(v) = h_1(f) \circ p_1(f)(w_2)$$

Por otro lado, particularizando  $v = w_2$  en la ecuación (6.4) tenemos

$$h_1(f) \circ p_1(f)(w_2) + h_2(f) \circ p_2(f)(w_2) = w_2$$

y como  $p_2(f)(w_2) = 0$ , entonces

$$h_1(f) \circ p_1(f)(w_2) = w_2$$

Concluimos que  $w_2 = v_2$ , y por tanto también  $w_1 = v_1$ .  $\square$ 

### Factorización de polinomios y descomposición del espacio vectorial

#### Caso complejo:

Si $f$ es un endomorfismo sobre un  $\mathbb{C}$ -espacio vectorial de dimensión n y  $p_f \in \mathbb{C}[t]$  su polinomio característico, entonces el Teorema Fundamental del Álgebra nos dice que tiene exactamente n raíces, no necesariamente distintas, en  $\mathbb{C}$ [^3] . Si consideramos la descomposición del polinomio característico en factores:
$$p_f(t) = (-1)^n (t - \lambda_1)^{\alpha_1} \cdots (t - \lambda_r)^{\alpha_r}
. \quad \text{con} \quad  \alpha_1 + \cdots + \alpha_r = n $$
donde  $\lambda_i$  son sus raíces y  $\alpha_i$  sus multiplicidades algebraicas, podemos aplicar el Teorema 6.17 y procediendo por inducción obtenemos la descomposición
$$V = \operatorname{Ker}(f - \lambda_1 \operatorname{Id})^{\alpha_1} \oplus \cdots \oplus \operatorname{Ker}(f - \lambda_r \operatorname{Id})^{\alpha_r}
\tag{6.5}$$
Por otro lado, si  $\operatorname{Ker}(f - \lambda_i \operatorname{Id})^{l_i}$  es el subespacio máximo  $M(\lambda_i)$  asociado a  $\lambda_i$ , de dimensión  $d_i$ , entonces se cumple
$$M(\lambda_i) = \operatorname{Ker}(f - \lambda_i \operatorname{Id})^{l_i} = \operatorname{Ker}(f - \lambda_i \operatorname{Id})^{l_i + j}$$
, para todo  $j \ge 1$ 

La descomposición (6.5) implica que  $M(\lambda_i) \subset \text{Ker}(f - \lambda_i \operatorname{Id})^{\alpha_i}$ , luego  $l_i \leq \alpha_i$  y así  $M(\lambda_i) = \text{Ker}(f - \lambda_i \operatorname{Id})^{\alpha_i}$ . Entonces, la descomposición (6.5) es exactamente la que se obtuvo en el la demostración del Teorema de Existencia, pág. 226:
$$V = M(\lambda_1) \oplus \cdots \oplus M(\lambda_r).$$

#### Caso real:

Si $f$ es un endomorfismo de un  $\mathbb{R}$ -espacio vectorial de dimensión n, entonces su polinomio característico  $p_f$  no tiene por qué tener todas las raíces reales. Si la raíces de  $p_f$  son  $\lambda_1, \ldots, \lambda_r$  reales y  $a_{r+1} \pm ib_{r+1}, \ldots, a_k \pm ib_k$ , complejas, entonces la descomposición del polinomio característico en factores es:

$$p_f(t) = (-1)^n (t - \lambda_1)^{\alpha_1} \cdots (t - \lambda_r)^{\alpha_r} ((t - a_{r+1})^2 + b_{r+1}^2)^{\alpha_{r+1}} \cdots ((t - a_k)^2 + b_k^2)^{\alpha_k}$$

con  $\alpha_1 + \cdots + \alpha_r + 2(\alpha_{r+1} + \cdots + \alpha_k) = n$ . En este caso la descomposición del espacio vectorial $V$ en subespacios invariantes es

$$V = \operatorname{Ker}(f - \lambda_1 \operatorname{Id})^{\alpha_1} \oplus \cdots \oplus \operatorname{Ker}(f - \lambda_r \operatorname{Id})^{\alpha_r} \oplus \operatorname{Ker}((f - a_{r+1} \operatorname{Id})^2 + b_{r+1}^2 \operatorname{Id})^{\alpha_r + 1} \oplus \cdots \oplus \operatorname{Ker}((f - a_k \operatorname{Id})^2 + b_k^2 \operatorname{Id})^{\alpha_k}$$

#### Ejemplo 6.18

Sean  $\mathcal{B} = \{v_1, v_2, v_3\}$  una base de un espacio vectorial real y $f$ el endomorfismo con matriz

$$A = \mathfrak{M}_{\mathcal{B}}(f) = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 2 & -3 \\ 0 & 3 & 2 \end{pmatrix}$$

Por la estructura en bloques de la matriz vemos que tiene dos subespacios invariantes. La recta  $L(v_1)$  y el plano  $L(v_2, v_3)$ . También vemos que se corresponde con una matriz de Jordan real de un endomorfismo con autovalores 1 y  $2 \pm 3i$ . Estos dos subespacios invariantes se corresponden con los dos factores del polinomio característico
$$p_I(t) = \det(A - tI) = -(t - 1)(t^2 - 4t + 13) = -(t - 1)((t - 2)^2 + 9)$$
que da lugar a la descomposición
$$V = \operatorname{Ker}(f - \operatorname{Id}) \oplus \operatorname{Ker}((f - 2\operatorname{Id})^2 + 9\operatorname{Id})$$

Comprobamos que los vectores  $v_2$  y  $v_3$ , que son la parte real e imaginaria de un autovector complejo, pertenecen al subespacio  $\text{Ker}((f-2\text{Id})^2+9\text{Id})$ :
$$\begin{cases} f(v_2) = 2v_2 + 3v_3 \\ f(v_3) = -3v_2 + 2v_3 \end{cases} \Rightarrow \begin{cases} f(v_2) - 2v_2 = 3v_3 \\ f(v_3) - 2v_3 = -3v_2 \end{cases} \Rightarrow \begin{cases} (f - 2\operatorname{Id})(v_2) = 3v_3 \\ (f - 2\operatorname{Id})(v_3) = -3v_2 \end{cases}$$

Entonces
$$(f - 2 \operatorname{Id})^2(v_2) = 3(f - 2 \operatorname{Id})(v_3) = -9v_2$$

es decir
$$((f - 2 \operatorname{Id})^2 + 9 \operatorname{Id})(v_2) = 0 \iff v_2 \in \operatorname{Ker}((f - 2 \operatorname{Id})^2 + 9 \operatorname{Id})$$

Análogamente se prueba que  $v_3 \in \text{Ker}((f-2\text{Id})^2+9\text{Id})$ .  $\square$ 

Un endomorfismo $f$ tiene muchos polinomios anuladores, uno de ellos es el polinomio característico, vamos a ver de qué manera se puede determinar el más sencillo posible en el sentido de que tenga menor grado y coeficientes sencillos. En el ejemplo 6.15 hemos visto un endomorfismo con polinomio anulador  $t^3 - 4t^2 + 5t - 2 = (t-1)^2(t-2)$ , que coincide con el polinomio característico. Se puede comprobar fácilmente que también el polinomio (t-1)(t-2) es anulador del mismo endomorfismo. El segundo tiene grado 2 y el primero grado 3. Los dos polinomios tienen como raíces los autovalores del endomorfismo. Esta característica es común a todos los polinomios anuladores y se enuncia en la siguente proposición cuya demostración se deja como ejercicio (véase Ejercicio 6.7.).

#### Proposición 6.19
> Todo autovalor de un endomorfismo $f$ es raíz de cualquier polinomio anulador de $f$.

De entre todos los polinomios anuladores de un endomorfismo se asocia de forma canónica el llamado polinomio mínimo que, como veremos, es el que mayor información geométrica del endomorfismo aporta.

#### Definición 6.20
>Un polinomio de grado k se dice **mónico** si el coeficiente principal es  $a_k=1$ .
> Se denomina **polinomio mínimo anulador** de un endomorfismo f, y se denota por  $m_f(t)$ , al polinomio mónico de  $\mathbb{K}[t]$  de grado mínimo que anula a $f$.

#### Proposición 6.21
> (1) Todo polinomio anulador de un endomorfismo es múltiplo de su polinomio mínimo.
> (2) El polinomio mínimo de un endomorfismo es divisor del polinomio característico y tiene sus mismas raíces (sin contar multiplicidades).

**Demostración:** (1) Sea p(t) un polinomio anulador de $f$. Si dividimos p(t) entre el polinomio mínimo  $m_f(t)$ , según el Algoritmo de la División de Euclides en el dominio  $\mathbb{K}[t]$ , existen polinomios q(t), cociente, y(t), resto, con grado(t) < grado(t) tales que
$$p(t) = q(t) m_f(t) + r(t)$$

Entonces.
$$p(f) = q(f) \circ m_f(f) + r(f)$$
como  $p(f) = m_f(f) = 0$ , entonces r(f) = 0. Pero, en tal caso, r(t) es un polinomio anulador de $f$ de grado menor que el polinomio mínimo, lo cual es imposible salvo que r(t) sea el polinomio nulo. Finalmente, si r(t) = 0 entonces  $p(t) = q(t)m_f(t)$ , como queríamos demostrar.

(2) La primera afirmación es consecuencia del apartado (1). Para demostrar que todas las raíces del polinomio característico son también raíces del polinomio mínimo hay que tratar el caso real y complejo separadamente.

Si  $p(t) \in \mathbb{C}[t]$  es el polinomio característico de un endomorfismo complejo f, entonces todas las raíces de p(t) son los autovalores de $f$ y por la Proposición 6.19 raíces del polinomio mínimo.

Si  $p(t) \in \mathbb{R}[t]$  es el polinomio característico de un endomorfismo real $f$ y tiene raíces complejas  $a \pm bi$ , estas raíces no son autovalores de f, pero vamos a ver que también son raíces del polinomio mínimo  $m_f(t) \in \mathbb{R}[t] \subset \mathbb{C}[t]$ . Para ello, consideremos una matriz A de f, y  $\hat{f}$  el endomorfismo complejo de matriz A, cuyo polinomio característico es el mismo  $p(t) = \det(A - tI_n)$ . El polinomio mínimo de  $\hat{f}$ ,  $m_{\hat{f}}(t) \in \mathbb{C}[t]$ , tendrá por raíces los autovalores complejos de  $\hat{f}$ , es decir, que  $a \pm bi$  son raíces de  $m_{\hat{f}}(t)$ . A continuación, observamos que el polinomio  $m_{\hat{f}}(t)$  tiene coeficientes reales pues cada par de factores (t - (a + bi)) y (t - (a - bi)) dan lugar al factor real de grado dos (irreducible en  $\mathbb{R}[t]$ ):
$$(t - (a + bi))(t - (a - bi)) = (t - a)^2 + b^2$$

Entonces,  $m_{\hat{f}}(t) = m_A(t) \in \mathbb{R}[t]$ . Por ser  $m_A(t)$  el polinomio mínimo de A y tener coeficientes reales, entonces es el polinomio mínimo de $f$.

#### Ejemplo 6.22
Supongamos que $f$ es un endomorfismo de  $\mathbb{R}^4$  con polinomio característico  $p_f(t) = (t^2 + 1)^2$ , entonces $f$ no tiene autovalores y las raíces de su polinomio característico son  $\lambda_1 = i$  (doble) y  $\lambda_1 = -i$  (doble). Estos valores también serán raíces del polinomio mínimo de $f$.

Supongamos que el polinomio mínimo del endomorfismo extensión compleja de  $\hat{f}: \mathbb{C}^4 \to \mathbb{C}^4$  es  $m_{\hat{f}}(t) = (t-i)(t+i) = t^2+1 \in \mathbb{C}[t]$ . Entonces, como los coeficientes del polinomio son reales, también es el polinomio mínimo de f

$$m_f(t) = t^2 + 1 \in \mathbb{R}[t] \qquad \square$$

#### Teorema 6.23
> Sean  $\lambda_1, \dots, \lambda_k$  autovalores distintos de un endomorfismo $f$ de un  $\mathbb{K}$ -espacio vectorial de dimensión n cuyo polinomio característico es de la forma
 $$p_f(t) = (-1)^n (t - \lambda_1)^{\alpha_1} \cdots (t - \lambda_k)^{\alpha_k}, \quad \alpha_1 + \cdots + \alpha_k = n$$> y  $M(\lambda_i) = \operatorname{Ker}(f - \lambda_i \operatorname{Id})^{l_i}$  los subespacios máximos asociados a los autovalores  $\lambda_i$ ,  $i = 1, \dots, k$ . Entonces, el polinomio mínimo anulador de $f$ es
> $$m_f(t) = \prod_{i=1}^k (t-\lambda_i)^{l_i}$$

**Demostración:** Por la proposición anterior sabemos que el polinomio mínimo es divisor del característico,  $p_f(t)$ , y tiene sus mismas raíces, luego es de la forma
$$m_f(t) = \prod_{i=1}^k (t - \lambda_i)^{\beta_i}, \text{ con } \beta_i \le \alpha_i$$

Para que sea el polinomio anulador de menor grado tiene que cumplirse  $\beta_j \leq l_j$  para todo $j = 1, ..., k$. Por el Teorema 6.17 tenemos la siguiente descomposición del espacio vectorial
$$V = \operatorname{Ker}(f - \lambda_1 \operatorname{Id})^{\beta_1} \oplus \cdots \oplus \operatorname{Ker}(f - \lambda_k \operatorname{Id})^{\beta_k}$$

donde  $\operatorname{Ker}(f-\lambda_i\operatorname{Id})^{\beta_i}$  son subespacios generalizados tales que
$$\dim \operatorname{Ker}(f - \lambda_1 \operatorname{Id})^{\beta_1} + \dots + \dim \operatorname{Ker}(f - \lambda_k \operatorname{Id})^{\beta_k} = \dim V
\tag{6.6}$$
y por otro lado
$$\dim M(\lambda_1) + \dots + \dim M(\lambda_k) = \dim V \tag{6.7}$$

Finalmente, observando que los subespacios generalizados están contenidos en el subespacio máximo de cada autovalor, es decir  $\operatorname{Ker}(f - \lambda_i \operatorname{Id})^{\beta_i} \subseteq M(\lambda_i)$ , se tiene dim  $\operatorname{Ker}(f - \lambda_i \operatorname{Id})^{\beta_i} \leq \dim M(\lambda_i)$ . Este hecho junto con (6.6) y (6.7) nos permite concluir  $\operatorname{Ker}(f - \lambda_i \operatorname{Id})^{\beta_i} = M(\lambda_i)$  y así  $\beta_i = l_i$ .  $\square$ 

**Observación**: Si  $m_f(t) = \prod_{i=1}^k (t - \lambda_i)^{l_i}$  es el polinomio mínimo de f, la multiplicidad como raíz  $l_i$ , de un autovalor  $\lambda_i$ , coincide con la dimensión del bloque de Jordan de mayor orden asociado a  $\lambda_i$ . En efecto, como  $M(\lambda_i) = \text{Ker}(f - \lambda_i \text{Id})^{l_i}$ , entonces en la primera fila de la tabla de construcción de la base de Jordan tendremos  $l_i$  vectores de la forma

$$\begin{array}{cccccccccccccccccccccccccccccccccccc$$

Por ser esta fila la más larga, da lugar al bloque de mayor tamaño.

#### Ejemplo 6.24

(1) Sea $g$ un endomorfismo de un espacio vectorial $V$ de dimensión 5 con dos autovalores
$$
\begin{align}
\lambda_1 &= 3, & a_1 &= 3, &  M(3) &= \text{Ker}(g - 3 \text{Id})^2 \neq \text{Ker}(g - 3 \text{Id}) \\
\lambda_2 &= -2, & a_2 &= 2, & M(-2) &= \text{Ker}(g + 2 \text{Id})
\end{align}
$$

De estos datos podemos deducir que el polinomio característico es  $p_g(t) = -(t-3)^3(t+2)^2$  y el polinomio mínimo  $m_g(t) = (t-3)^2(t+2)$  ya que  $l_1 = 2$  y  $l_2 = 1$ . La forma canónica de Jordan es:

$$J(g) = \begin{pmatrix} 3 & 0 & 0 & 0 & 0 \\ 1 & 3 & 0 & 0 & 0 \\ 0 & 0 & 3 & 0 & 0 \\ 0 & 0 & 0 & -2 & 0 \\ 0 & 0 & 0 & 0 & -2 \end{pmatrix}$$

El bloque de Jordan de mayor tamaño asociado a  $\lambda_1$  es  $l_1 \times l_1 = 2 \times 2$ , y el bloque de mayor tamaño asociado al autovalor  $\lambda_2$  es  $l_2 \times l_2 = 1 \times 1$ .

(2) Sea $f$ un endomorfismo de un espacio vectorial de dimensión 3 tal que  $\lambda=2$  es un autovalor doble y cuyo polinomio mínimo es  $m_f(t)=t(t-2)$ . Con estos datos podemos determinar la forma canónica de Jordan ya que, los autovalores son las raíces del polinomio mínimo: 0 y 2; y la multiplicidad de  $\lambda=2$  como raíz de  $m_f(t)$ , que es 1, indica que el bloque de Jordan de mayor tamaño asociado a dicho autovalor es 1. Entonces

$$J(f) = \begin{pmatrix} 0 & 0 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & 2 \end{pmatrix} \qquad \Box$$

Que un endomorfismo es diagonalizable es equivalente a decir que admite una forma canónica de Jordan y todos los bloques de Jordan son de orden 1. Por lo que acabamos de ver, esto es equivalente a decir que el polinomio mínimo no tenga raíces múltiples, como ocurre en el caso (2) del ejemplo anterior. Se recoge este hecho en el siguiente resultado que es consecuencia del Teorema 6.23.

#### Corolario 6.25
> Sean  $\lambda_1, \ldots, \lambda_k$  autovalores distintos de un endomorfismo $f$ de un  $\mathbb{K}$ -espacio vectorial de dimensión n cuyo polinomio característico es de la forma
> $$p_f(t) = (-1)^n (t - \lambda_1)^{\alpha_1} \cdots (t - \lambda_k)^{\alpha_k}, \quad \alpha_1 + \cdots + \alpha_k = n$$
> Se cumple que $f$ es diagonalizable si y sólo si su polinomio mínimo no tiene raíces múltiples. Es decir, es de la forma
$$m_f(t) = (t - \lambda_1) \cdots (t - \lambda_k)$$> 

El siguiente resultado enuncia una interesante propiedad del polinomio mínimo.

#### Proposición 6.26
> Si  $A \in M_n(\mathbb{K})$  es una matriz cuyo polinomio mínimo es de grado m, entonces m es el menor entero positivo tal que las matrices  $A^m, A^{m-1}, \ldots, A, A^0 = I_n$  son linealmente dependientes.

**Demostración:** Supongamos que el polinomio mínimo anulador de A es
$$m_A(t) = a_m t^m + \dots + a_1 t + a_0 \text{ con } a_m \neq 0$$

Por ser  $m_A(t)$  un polinomio anulador de A se tiene que:
$$m_A(A) = 0 = a_m A^m + \dots + a_1 A + a_0 I_n.$$

Como  $a_m \neq 0$ , la ecuación anterior es una combinación nula no trivial de las potencias de A. Es decir,  $A^m, \ldots, A, A^0$  son linealmente dependientes.

Para demostrar que m es el mínimo, procedemos por reducción al absurdo: supongamos que existe k < m tal que  $A^k, \ldots, A_0$  son linealmente dependientes, entonces existen escalares  $b_k, \ldots, b_0$ ; no todos nulos, tales que:
$$b_k A^k + \dots + b_1 A + b_0 I_n = 0$$

Es decir, el polinomio  $q(t) = b_k t^k + \cdots + b_1 t + b_0$  es anulador de A y tiene grado menor que m. Una contradicción con la definición de polinomio mínimo.

#### Ejemplo 6.27 Cálculo de la inversa usando el polinomio mínimo

Sea  $A \in \mathfrak{M}_8(\mathbb{C})$  una matriz cuyo polinomio mínimo es  $m_A(t) = t^3 + t + 1$ . Entonces

$$m_A(A) = A^3 + A + I_8 = 0$$

Vamos a ver que podemos utilizar esta ecuación para calcular la inversa de A. En primer lugar, A es invertible es equivalente a det  $A \neq 0$  y es equivalente a afirmar que  $\lambda = 0$  no es un autovalor de A. Esta última afirmación es cierta pues 0 no es una raíz del polinomio mínimo. Entonces

$$A^3 + A + I_8 = 0 \iff I_8 = -A^3 - A$$

y multiplicando ambos miembros de la última ecuación por  $A^{-1}$  se tiene

$$A^{-1}I_8 = -A^{-1}A^3 - A^{-1}A = -A^2 - I_8 \qquad \Box$$

## 6.4. Ejercicios propuestos

**6.1.** Sean $f$ y $g$ endomorfismos de V. Demuestre que si $f$ y $g$ conmutan, entonces los subespacios Ker(f) e Im(f) son subespacios g-invariantes.

**6.2.** Si $U$ y W son subespacios invariantes de un endomorfismo f, entonces los subespacios  $U \cap W$  y $U$ + W también son invariantes por $f$.

**6.3.** Demuestre, exhibiendo algún ejemplo, que los subespacios generalizados pueden ser tanto reducibles como irreducibles.

**6.4.** Determine los subespacios invariantes de los endomorfismos cuyas matrices de Jordan son

$$(a) \ J_1 = \begin{pmatrix} -1 & 0 & 0 & 0 \\ 0 & -1 & 0 & 0 \\ 0 & 0 & 2 & 0 \\ 0 & 0 & 1 & 2 \end{pmatrix}. \qquad (b) \ J_2 = \begin{pmatrix} -1 & 0 & 0 & 0 \\ 0 & -1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 2 \end{pmatrix}$$
$$
(c) \ J_3 = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 \\ 0 & 1 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}
\qquad (d) \  J_4 = \begin{pmatrix} 0 & 0 & 0 & 0 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 1 & 1 \end{pmatrix}
$$


**6.5.** Determine los planos e hiperplanos invariantes irreducibles del endomorfismo cuya matriz de Jordan es

$$J_5 = \begin{pmatrix} 1 & 0 & 0 & 0 \ 1 & 1 & 0 & 0 \ 0 & 0 & 1 & 0 \ 0 & 0 & 1 & 1 \end{pmatrix}$$

**6.6.** Halle el polinomio mínimo de los endomorfismos de los ejercicios 6.5 y 6.6.

**6.7.** Sea  $\lambda$  un autovalor de un endomorfismo $f$ y p(t) un polinomio anulador de $f$. Demuestre que  $\lambda$  es una raíz de p(t).

**6.8.** Utilizando el Teorema de Cayley-Hamilton, demuestre que si A es una matriz de orden n triangular, tal que  $a_{ii} = 0$  para todo  $i = 1, \ldots, n$ ; entonces  $A^n = 0$ .

**6.9.** Demuestre que si  $\lambda$  es un autovalor de un endomorfismo $f$ de un  $\mathbb{K}$  espacio vectorial, entonces  $p(\lambda)$  es un autovalor del endomorfismo p(f), para todo polinomio  $p(t) \in \mathbb{K}[t]$ .

**6.10.** Si A es una matriz de orden 4, y  $p(x) = x^3$  es un polinomio anulador de A, ¿cuáles son las posibles matrices de Jordan semejantes a A?

**6.11.** Dado el endomorfismo f, de un espacio vectorial de dimensión 6, con matriz de Jordan

$$\begin{pmatrix} 1 & 0 & 0 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 & 0 & 0 \\ 0 & 0 & 2 & 0 & 0 & 0 \\ 0 & 0 & 1 & 2 & 0 & 0 \\ 0 & 0 & 0 & 1 & 2 & 0 \\ 0 & 0 & 0 & 0 & 0 & 2 \end{pmatrix}$$

- a) Determine sus polinomios característico y mínimo, los autovalores y sus multiplicidades algebraicas y geométricas.
- b) Justifique que no existen hiperplanos invariantes irreducibles.
- c) Dé la ecuación de un hiperplano invariantes reducible.
- d) Dé las ecuaciones de un plano invariantes que contenga infinitas rectas invariantes.
- e) Dé las ecuaciones de un plano invariante que contenga exactamente 2 rectas invariantes.
- f) Dé las ecuaciones de un plano invariante que contenga una única recta invariante.

**6.12.** a) Determine las posibles matrices de Jordan de un endomorfismo $f$ de un espacio vectorial real de dimensión 4 que cumple las siguientes condiciones:
  - (1) Admite una forma canónica de Jordan.
  - (2) No tiene planos invariantes que contengan infinitas rectas invariantes.
  - (3) No tiene hiperplanos irreducibles invariantes.
  - (4) No es diagonalizable.
  - b) De las opciones obtenidas ¿cuál de ellas tiene exactamente dos rectas invariantes?

**6.13.** Determine las posibles formas canónicas de Jordan (o Jordan real) de un endomorfismo $f$ de un espacio vectorial real de dimensión 4 que admite exactamente una única recta invariante.

**6.14.** Demuestre que si  $p(t) = a_n t^n + a_{n-1} t^{n-1} + \dots + a_1 t + a_0$ , con  $a_0 \neq 0$  es un polinomio anulador de una matriz cuadrada A, entonces A es regular y  $A^{-1} = -\frac{1}{a_0}(a_n A^{n-1} + a_{n-1} A^{n-2} + \dots + a_1 I_n)$ .

**6.15.** Utilice el ejercicio anterior para demostrar que la matriz

$$A = \left(\begin{array}{cccc} 2 & 0 & 3 & -5 \\ 1 & 2 & -7 & -5 \\ 0 & 0 & -1 & 0 \\ 0 & 0 & 1 & -1 \end{array}\right).$$

cumple  $4A^{-1} = -A^3 + 2A^2 + 3A - 4I_4$ .

**6.16.** Sea  $A \in \mathfrak{M}_3(\mathbb{C})$  una matriz invertible de orden 3 que cumple:

$$A^{-1} = \frac{A^2 - 5A + 7I_3}{3}$$

- a) Determine un polinomio anulador de A.
- b) Si A no es diagonalizable, determine las posibles matrices de Jordan semejantes a A.

**6.17.** (\*\*) Sea $f$ un endomorfismo,  $\lambda$  un autovalor de $f$ y $U$ un subespacio r-c'iclico

$$U = L(v, (f - \lambda \operatorname{Id})(v), \dots, (f - \lambda \operatorname{Id})^{r-1}(v)), \quad v \in K^{r}(\lambda) - K^{r-1}(\lambda)$$

Entonces, los subespacios f—invariantes contenidos en $U$ son exactamente r:

$$U_1 \subsetneq U_2 \subsetneq \ldots \subsetneq U_r = U$$
, con  $U_i = L(\{(f - \lambda \operatorname{Id})^{r-i}(v), \ldots, (f - \lambda \operatorname{Id})^{r-1}(v)\})$ , dim $(U_i) = i$  para  $i = 1, \ldots, r$ ; y todos son irreducibles.

---

## Notas

[^1]: Arthur Cayley (Richmond, 1821- Cambridge, 1892). William Rowan Hamilton (Irlanda, 1805-1865).
[^2]: Esta demostración puramente algebraica se debe a R. Bellman (1965) y no requiere más que el conocimiento de análisis matricial básico.
[^3]: Si un cuerpo  $\mathbb K$  tiene la propiedad de que todo polinomio de grado n son coeficientes en  $\mathbb K$  tiene exactamente n raíces en  $\mathbb K$ , se dice que es algebraicamente cerrado. Es el caso del cuerpo  $\mathbb C$  de los números complejos, pero no de  $\mathbb R$ .
