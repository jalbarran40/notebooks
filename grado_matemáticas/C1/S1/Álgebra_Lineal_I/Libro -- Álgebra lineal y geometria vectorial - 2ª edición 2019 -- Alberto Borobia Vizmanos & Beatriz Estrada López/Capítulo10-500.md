Unas ecuaciones implícitas de los planos  $L(v, (f - \mathrm{Id})(v))$  se obtienen considerando:

$$\operatorname{rg}\begin{pmatrix} 0 & 0 & x_1 \\ 0 & a & x_2 \\ a & b & x_3 \\ 0 & c & x_4 \end{pmatrix} = 2 \Rightarrow \left\{ -a^{2}x_1 = 0,\ acx_2 - a^{2}x_4 = 0 \right\}$$

simplificando las ecuaciones, teniendo en cuenta que  $a \neq 0$ , se obtienen las ecuaciones

$$P_d \equiv \{x_1 = 0, dx_2 + x_4 = 0\}, d \in \mathbb{K}$$

• Hiperplanos invariantes: determinamos las coordenadas de los autovectores de  $J_3^t$ :

$$(J_3^t - I)X = 0 \Rightarrow \begin{pmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \\ x_4 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix} \Rightarrow x_2 = 0, x_3 = 0$$

Las coordenadas en  $\mathcal{B}$  de los autovectores de  $J_3^t$  son (a,0,0,b) con  $a,b \in \mathbb{K}$  y  $(a,b) \neq (0,0)$ ; que dan lugar a los hiperplanos invariantes:

$$H_{a,b} \equiv ax_1 + 0x_2 + 0x_3 + bx_4 = 0$$

Caso (d) Matriz y tabla de la base de Jordan

$$J_{4}=\begin{pmatrix}0&0&0&0\\1&0&0&0\\0&0&1&0\\0&0&1&1\end{pmatrix}\qquad\begin{array}{ccc@{\qquad}ccc}\overset{1}{K^{1}(0)}&\subset&\overset{2}{K^{2}(0)}&\overset{1}{K^{1}(1)}&\subset&\overset{2}{K^{2}(1)}\\v_{2}&\leftarrow&v_{1}&v_{4}&\leftarrow&v_{3}\end{array}$$

El espacio vectorial total es  $V = M(0) \oplus M(1)$ .

- Rectas invariantes: las contenidas en  $K^1(0) = \text{Ker}(f)$  y  $K^1(1) = \text{Ker}(f - \text{Id})$ 

$$R_1 = L(v_2) \equiv \{ x_1 = x_3 = x_4 = 0 \} \text{ y } R_2 = L(v_4) \equiv \{ x_1 = x_2 = x_3 = 0 \}$$

• Planos invariantes irreducibles: estarán contenidos en los subespacios máximos  $M(0) = K^2(0)$  y  $M(1) = K^2(1)$ . Así tenemos los dos planos:

$$P_1 = M(0) = L(v_1, v_2) \equiv \{ x_3 = x_4 = 0 \} \text{ y } P_2 = M(1) = L(v_3, v_4) \equiv \{ x_1 = x_2 = 0 \}$$

Planos invariantes reducibles: son suma de dos rectas invariantes, por lo que sólo hay uno

$$P_3 = R_1 + R_2 = L(v_2, v_4)$$
 de ecuaciones  $x_1 = x_3 = 0$ 

Hiperplanos invariantes: recordamos que el número de hiperplanos invariantes es igual al número de rectas invariantes, por lo que habrá exactamente 2. Irreducibles no puede haber, porque tendrían que estar contenidos en los subespacios máximos y estos son de dimensión 2, luego los dos son reducibles, es decir, suma de un plano y una recta invariantes.

Vamos a calcularlos por dos métodos:

a) Método 1: Como sabemos que son sólo 2, y podemos construirlos del siguiente modo:

$$H_1 = P_1 \oplus R_2 \equiv \{ x_3 = 0 \}$$
 y  $H_2 = P_2 \oplus R_1 \equiv \{ x_1 = 0 \}$ 

entonces habríamos acabado.

b) Método 2: Calculamos los autovectores no nulos de  $J_4^t$  que son de la forma: - para el autovalor 0:  $(a, 0, 0, 0)_{\mathcal{B}}$  con  $a \neq 0$ , de donde se obtiene el hiperplano

$$ax_1 + 0x_2 + 0x_3 + 0x_4 = 0 \implies x_1 = 0$$

- para el autovalor 1:  $(0,0,b,0)_B$  con  $b \neq 0$ , de donde se obtiene el hiperplano

$$0x_1 + 0x_2 + bx_3 + 0x_4 = 0 \implies x_3 = 0$$

6.5. Determine los planos invariantes irreducibles del endomorfismo f cuya matriz de Jordan es

$$J_{5} = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 1 & 1 \end{pmatrix}$$

**Solución:** Por la Proposición 6.11 un plano P es f-invariante si y sólo si es 2-cíclico, es decir, de la forma  $P = L(v, (f - \mathrm{Id})(v))$  con  $v \in K^2(1) - K^1(1)$ . Unas ecuaciones de estos subespacios generalizados son:

$$K^{1}(1) = L(v_{2}, v_{4}) \equiv \{x_{1} = 0, x_{3} = 0\}, K^{2}(1) = V \text{ no tiene ecuaciones}$$

Luego un vector  $v \in K^2(1) - K^1(1)$  tiene coordenadas  $v = (a, b, c, d)_{\mathcal{B}}$ , con  $(a, c) \neq 0$ . Calculamos las coordenadas de  $(f - \operatorname{Id})(v)$ :

$$\begin{pmatrix} 0 & 0 & 0 & 0 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \end{pmatrix} \begin{pmatrix} a \\ b \\ c \\ d \end{pmatrix} = \begin{pmatrix} 0 \\ a \\ 0 \\ c \end{pmatrix} \Rightarrow (f - \operatorname{Id})(v) = (0, a, 0, c)_{\mathcal{B}}$$

Entonces, los planos irreducibles invariantes son de la forma

$$L((a, b, c, d)_{\mathcal{B}}, (0, a, 0, c)_{\mathcal{B}})$$

6.6. Halle el polinomio mínimo de los endomorfismos de los ejercicios 6.5 y 6.6.

**Solución:** Los polinomios mínimos se obtienen observando, para cada autovalor  $\lambda_i$ , el bloque de Jordan de mayor orden, pongamos  $l_i$ , que coincide con el exponente tal que  $K^{l_i}(\lambda_i) = M(\lambda_i)$ . El polinomio mínimo tendrá el factor  $(t - \lambda_i)^{l_i}$ . En cada caso los polinomios son:

$$J_1:(t+1)(t-2)^2:\ J_2:(t+1)(t-1)(t-2):\ J_3:(t-1)^3:\ J_4:t^2(t-1)^2:\ J_5:(t-1)^2$$

**6.7.** Sea  $\lambda$  un autovalor de un endomorfismo f y p(t) un polinomio anulador de f. Demuestre que  $\lambda$  es una raíz de p(t).

**Solución:** Sea  $p(t) = a_n t^n + \dots + a_1 t + a_0$  un polinomio anulador de f, entonces p(f)(v) = 0, para todo  $v \in V$ . Sea v un autovector no nulo asociado a un autovalor  $\lambda$  de f. Se tiene

$$\begin{aligned}
0 &= p(f)(v) = (a_n f^n + \cdots + a_1 f + a_0 \operatorname{Id})(v) \\
&= a_n f^n(v) + \cdots + a_1 f(v) + a_0 v \\
&= a_n \lambda^n v + \cdots + a_1 \lambda v + a_0 v \\
&= (a_n \lambda^n + \cdots + a_1 \lambda + a_0)v = p(\lambda)v,\quad p(\lambda) \in \mathbb{K}
\end{aligned}$$

Por ser  $v \neq 0$  se deduce que  $p(\lambda) = 0$ . Como queríamos demostrar.  $\square$ 

**6.8.** Utilizando el Teorema de Cayley-Hamilton, demuestre que si A es una matriz de orden n triangular, tal que  $a_{ii} = 0$  para todo i = 1, ..., n; entonces  $A^n = 0$ .

**Solución:** Sabiendo que en una matriz triangular los elementos de la diagonal principal son los autovalores, se tiene que  $\lambda=0$  es el único autovalor de A con multiplicidad algebraica n. En particular, el polinomio característico de A es  $p_A(\lambda)=\lambda^n$ . Por el Teorema de Cayley-Hamilton sabemos que el polinomio característico anula al endomorfismo asociado a esa matriz (o equivalentemente a la matriz), es decir  $p_A(A)=A^n=0$ .

**6.9.** Demuestre que si  $\lambda$  es un autovalor de un endomorfismo f de un  $\mathbb{K}$  –espacio vectorial, entonces  $p(\lambda)$  es un autovalor del endomorfismo p(f), para todo polinomio p con coeficientes en  $\mathbb{K}$ .

Solución: Sea  $p(t) = a_n t^n + \dots + a_1 t + a_0$  un polinomio con coeficientes en  $\mathbb{K}$  y v un autovector no nulo asociado a un autovalor  $\lambda$  de f. Entonces

$$\begin{aligned}
p(f)(v) &= (a_n f^n + \cdots + a_1 f + a_0 \operatorname{Id})(v) \\
&= a_n f^n(v) + \cdots + a_1 f(v) + a_0 v \\
&= a_n \lambda^n v + \cdots + a_1 \lambda v + a_0 v \\
&= (a_n \lambda^n + \cdots + a_1 \lambda + a_0)v = p(\lambda)v
\end{aligned}$$

Luego  $p(\lambda)$  es un autovalor de p(f).

**6.10.** Si A es una matriz de orden 4, y  $p(x) = x^3$  es un polinomio anulador de A, ¿cuáles son las posibles matrices de Jordan semejantes a A?

**Solución:** Si  $p(x) = x^3$  es un polinomio anulador de A, entonces es múltiplo del polinomio mínimo que será de la forma  $m_A(x) = x^r$  con  $r \le 3$ . Por otro lado, el polinomio característico  $p_A$  de A tiene las mismas raíces que el mínimo (sin contar multiplicidades). Entonces,  $p_A(x) = x^4$  y x = 0 es el único autovalor de A de multiplicidad algebraica 4.

Por otro lado, si  $m_A(x) = x^r$  con  $r \leq 3$  entonces r es el orden del bloque de Jordan de mayor tamaño, y se tienen las siguientes posibilidades para la matriz de Jordan según sea el polinomio mínimo

$$\begin{array}{cccc}
\left(\begin{array}{ccc|c}
0 & 0 & 0 & 0 \\
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
\hline
0 & 0 & 0 & 0
\end{array}\right)
&
\left(\begin{array}{cc|cc}
0 & 0 & 0 & 0 \\
1 & 0 & 0 & 0 \\
\hline
0 & 0 & 0 & 0 \\
0 & 0 & 1 & 0
\end{array}\right)
&
\left(\begin{array}{cc|c|c}
0 & 0 & 0 & 0 \\
1 & 0 & 0 & 0 \\
\hline
0 & 0 & 0 & 0 \\
\hline
0 & 0 & 0 & 0
\end{array}\right)
&
\left(\begin{array}{c|c|c|c}
0 & 0 & 0 & 0 \\
\hline
0 & 0 & 0 & 0 \\
\hline
0 & 0 & 0 & 0 \\
\hline
0 & 0 & 0 & 0
\end{array}\right)
\\[1em]
 m_A(x)=x^3 & m_A(x)=x^2 & m_A(x)=x^2 & m_A(x)=x
\end{array}$$

6.11. Dado el endomorfismo f, de un espacio vectorial de dimensión 6, con matriz de Jordan

$$\left(\begin{array}{cc|ccc|c} 1 & 0 & 0 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 & 0 & 0 \\ \hline 0 & 0 & 2 & 0 & 0 & 0 \\ 0 & 0 & 1 & 2 & 0 & 0 \\ 0 & 0 & 0 & 1 & 2 & 0 \\ \hline 0 & 0 & 0 & 0 & 0 & 2 \end{array}\right)$$

- a) Determine sus polinomios característico y mínimo, los autovalores y sus multiplicidades algebraicas y geométricas.
- b) Justifique que no existen hiperplanos invariantes irreducibles.
- c) Dé la ecuación de un hiperplano invariantes reducible.
- d) Dé las ecuaciones de un plano invariantes que contenga infinitas rectas invariantes.
- e) Dé las ecuaciones de un plano invariante que contenga exactamente 2 rectas invariantes.
- f) Dé las ecuaciones de un plano invariante que contenga una única recta invariante.

**Solución:** a) Como la matriz es triangular, los autovalores están en la diagonal principal. Así, tenemos dos autovalores  $\lambda_1=1$  y  $\lambda_2=2$  con multiplicidades algebraicas  $a_1=2$  y  $a_2=4$ , respectivamente. Las multiplicidades algebraicas son las multiplicidades como raíces del polinomio característico, luego

$$p_f(\lambda) = (1 - \lambda)^2 (2 - \lambda)^4$$

El polinomio mínimo tiene como raíces los autovalores de f y es divisor del polinomio característico

$$m_f(\lambda) = (1 - \lambda)^a (2 - \lambda)^b, \ a \le 2 \text{ y } b \le 4$$

Para determinar a y b se estudia cuál es el subespacio máximo asociado a cada autovalor, que a la vista de la matriz de Jordan se identifica con el subespacio generalizado i-ésimo, siendo i el tamaño del bloque de Jordan de mayor dimensión asociado al autovalor que corresponda.

$$K^{2}(1) = M(1) \Rightarrow a = 2$$
  
 $K^{3}(2) = M(2) \Rightarrow b = 3$ 

Por otro lado, las multiplicidades geométricas son las dimensiones de los subespacios propios:

$$g_1 = \dim V(1) = 6 - rg(A - I) = 6 - 5 = 1,$$
  
 $g_2 = \dim V(2) = 6 - rg(A - 2I) = 6 - 4 = 2;$ 

que pueden observarse directamente mirando a la matriz ya que coinciden con el número de bloques de Jordan asociados a cada autovalor.

b) Todo subespacio irreducible debe estar contenido en un subespacio máximo. En este caso los subespacios máximos tienen dimensiones

$$\dim M(1) = 2 \ \text{y} \ \dim M(2) = 4$$

por lo que nunca podrán contener a un hiperplano ya que es un subespacio de dimensión 5.

c) Sea  $\mathcal{B} = \{v_1, \dots, v_6\}$  la base a la que está referida la matriz de f, se tiene que  $M(1) = L(v_1, v_2)$  y  $M(2) = L(v_3, v_4, v_5, v_6)$ . Entre otras opciones, podemos formar un subespacio reducible invariante H como suma de dos subespacios invariantes  $H = U_1 + U_2$  contenidos en M(1) y M(2) respectivamente. Por otro lado, sabemos que los vectores asociados a un bloque de Jordan generan un subespacio irreducible, por lo tanto, teniendo en cuenta el bloque de dimensión 2 asociado al autovalor 1, y el de dimensión 3 asociado al autovalor 2, podemos tomar

$$U_1 = L(v_1, v_2)$$
 y  $U_2 = L(v_3, v_4, v_5)$ 

y obtendremos un subespacio suma de dimensión 5, como queríamos. Las ecuaciones de este subespacio H, respecto a la base  $\mathcal{B}$ , son:  $x_6 = 0$ .

d) Para que un plano P contenga infinitas rectas invariantes debe ocurrir que  $f|_P$ , la restricción de f a P, tenga una matriz de la forma:

$$\begin{pmatrix} \lambda & 0 \\ 0 & \lambda \end{pmatrix}$$

o lo que es lo mismo, P tendrá una base formada por dos autovectores asociados al mismo autovalor  $\lambda$ . La única posibilidad es  $P = L(v_5, v_6)$  los dos autovectores de la base asociados a  $\lambda = 2$ . Se observa que  $P = V_2$ , el subespacio propio. Las ecuaciones de este plano son:

$$P \equiv \{ x_1 = 0, x_2 = 0, x_3 = 0, x_4 = 0 \}$$

e) Para que un plano invariante P contenga exactamente 2 rectas invariantes debe ocurrir que  $f|_{P}$ , la restricción de f a P, tenga una matriz de la forma:

$$\begin{pmatrix} \lambda_1 & 0 \\ 0 & \lambda_2 \end{pmatrix} \quad \text{con} \quad \lambda_1 \neq \lambda_2$$

Uno posible es  $P = L(v_2, v_6)$ . La matriz de  $f|_P$  es  $\begin{pmatrix} 1 & 0 \\ 0 & 2 \end{pmatrix}$  y unas ecuaciones de este plano son:

$$P \equiv \{ x_1 = 0, x_3 = 0, x_4 = 0, x_5 = 0 \}$$

Las dos rectas invariantes contenidas en P son  $L(v_2)$  y  $L(v_6)$ .

f) Para que un plano invariante P contenga una única recta invariante debe ocurrir que  $f|_P$  tenga una matriz de la forma:

$$\begin{pmatrix} \lambda & 0 \\ 1 & \lambda \end{pmatrix}$$

Uno posible es

$$P = L(v_4, v_5) \equiv \{x_1 = 0, x_2 = 0, x_3 = 0, x_6 = 0\}$$

que se corresponde con el bloque  $2 \times 2$  que determinan las filas y columnas 4 y 5. La única recta invariante contenida en P es  $L(v_5)$ .  $\square$ 

- **6.12.** a) Determine las posibles matrices de Jordan de un endomorfismo f de un espacio vectorial real de dimensión 4 que cumple las siguientes condiciones:
  - (1) Admite una forma canónica de Jordan.
  - (2) No tiene planos invariantes que contengan infinitas rectas invariantes.
  - (3) No tiene hiperplanos irreducibles invariantes.
  - (4) No es diagonalizable.
  - b) De las opciones obtenidas ¿cuál de ellas tiene exactamente dos rectas invariantes?

**Solución:** a) De la condición (1) se deduce que el endomorfismo tiene cuatro autovalores reales, no necesariamente distintos. Es decir. su polinomio característico no tiene raíces complejas.

De la condición (4) se deduce que para algún autovalor  $\lambda_i$  la multiplicidad geométrica  $g_i$  y algebraica  $a_i$  no coinciden. Llamemos a este autovalor  $\lambda_1$ , y se cumplirá  $1 \leq g_1 < a_1$ , por lo que la multiplicidad algebraica de  $\lambda_1$  será al menos 2.

De la condición (2) se deduce que la multiplicidad geométrica de cada autovalor es 1. En efecto, si un autovalor  $\lambda$  cumple  $g=\dim V_{\lambda}\geq 2$ , entonces  $V_{\lambda}$  contiene un plano con infinitas rectas invariantes. Así, si la multiplicidad geométrica de cada autovalor es uno, eso significa que en la matriz de Jordan habrá un único bloque de Jordan (todavía no sabemos de qué dimensión) asociado a cada autovalor.

De la condición (3) se deduce que en la matriz de Jordan no puede haber un bloque de dimensión 3 asociado a ningún autovalor, ya que los vectores asociados al bloque, que se obtendrían de una línea de la tabla de la base de Jordan, generarían un subespacio de dimensión 3 invariante irreducible.

Con estas reflexiones se concluye que cada autovalor tiene asociado un único bloque de Jordan y que éste sólo puede ser de dimensión 1 o 2. Y en particular, como el autovalor  $\lambda_1$  tiene multiplicidad algebraica al menos 2. entonces será exactamente 2 y su bloque de Jordan de orden 2.

Entonces se tienen sólo dos posibilidades para la matriz de Jordan: tener dos bloques o tres. Es decir:

$$J_1=\left(\begin{array}{cc|cc}\lambda_1&0&0&0\\1&\lambda_1&0&0\\\hline 0&0&\lambda_2&0\\0&0&1&\lambda_2\end{array}\right)\quad \text{o}\quad J_2=\left(\begin{array}{cc|c|c}\lambda_1&0&0&0\\1&\lambda_1&0&0\\\hline 0&0&\lambda_2&0\\\hline 0&0&0&\lambda_3\end{array}\right)$$

con  $\lambda_i \neq \lambda_i$  para todo  $i \neq j$ .

- b) Si llamamos  $\mathcal{B} = \{v_1, \dots, v_4\}$  a la base en la que están dadas las matrices  $J_1$  y  $J_2$ , entonces:
  - La primera matriz tiene dos rectas invariantes  $L(v_2) = V_{\lambda_1}$  y  $L(v_4) = V_{\lambda_2}$ .
  - La segunda matriz tiene 3 tres rectas invariantes  $L(v_2) = V_{\lambda_1}, L(v_3) = V_{\lambda_2}$  y  $L(v_4) = V_{\lambda_3}$ .

Por lo tanto la matriz pedida en este apartado es  $J_1$ .  $\square$ 

**6.13.** Determine las posibles formas canónicas de Jordan (o Jordan real) de un endomorfismo f de un espacio vectorial real de dimensión 4 que admite exactamente una única recta invariante.

Solución: Si deja una única recta invariantes, entonces tiene un único autovalor  $\lambda$  con multiplicidad geométrica  $g = \dim V_{\lambda} = 1$ . Si f admite una forma de Jordan, entonces

$$J = \begin{pmatrix} \lambda & 0 & 0 & 0 \\ 1 & \lambda & 0 & 0 \\ 0 & 1 & \lambda & 0 \\ 0 & 0 & 1 & \lambda \end{pmatrix}$$

Si f no admite una forma canónica de Jordan, entonces el polinomio característico tiene alguna raíz compleja (y su conjugada)  $a \pm bi$ , por lo que la forma de Jordan real será

$$J_{\mathbb{R}} = \begin{pmatrix} \lambda & 0 & 0 & 0 \\ 1 & \lambda & 0 & 0 \\ 0 & 0 & a & b \\ 0 & 0 & -b & a \end{pmatrix}$$

Nótese que las raíces complejas no pueden ser dobles, porque en tal caso no tendría un autovalor real, y por tanto no tendría ninguna recta invariante.  $\Box$ 

**6.14.** Demuestre que si  $p(t) = a_n t^n + a_{n-1} t^{n-1} + \dots + a_1 t + a_0$ , con  $a_0 \neq 0$  es un polinomio anulador de una matriz cuadrada A, de orden m, entonces A es invertible y

$$A^{-1} = -\frac{1}{a_0}(a_n A^{n-1} + a_{n-1} A^{n-2} + \dots + a_1 I_m)$$

**Solución**: Si p(t) anula a A entonces p(A) = 0, es decir

$$p(A) = a_n A^n + a_{n-1} A^{n-1} + \dots + a_1 A + a_0 I_m = 0$$

de donde

$$a_n A^n + a_{n-1} A^{n-1} + \dots + a_1 A = -a_0 I_m$$

Sacando factor común A en el primer miembro de la ecuación se obtiene

$$A(a_n A^{n-1} + a_{n-1} A^{n-2} + \dots + a_1 I_m) = -a_0 I_m$$

Como  $a_0 \neq 0$  entonces

$$A\left(-\frac{1}{a_0}(a_nA^{n-1} + a_{n-1}A^{n-2} + \dots + a_1I_m)\right) = I_m$$

de donde se concluye que la matriz

$$\frac{-1}{a_0}(a_nA^{n-1} + a_{n-1}A^{n-2} + \dots + a_1I_m)$$

es la inversa de A.  $\square$ 

**6.15.** Utilice el ejercicio anterior para demostrar que la matriz

$$A = \left(\begin{array}{cccc} 2 & 0 & 3 & -5 \\ 1 & 2 & -7 & -5 \\ 0 & 0 & -1 & 0 \\ 0 & 0 & 1 & -1 \end{array}\right).$$

cumple  $4A^{-1} = -A^3 + 2A^2 + 3A - 4I_4$ .

**Solución**: Para utilizar el ejercicio anterior, determinamos un polinomio anulador, que va a ser el polinomio característico:

$$p_A(t) = \det(A - tI_4) = t^4 - 2t^3 - 3t^2 + 4t + 4$$

Como el término independiente es distinto de 0, entonces por el resultado visto en el ejercicio anterior A es invertible y

$$p(A) = 0 \implies A^4 - 2A^3 - 3A^2 + 4A + 4I_4 = 0 \implies A^{-1} = -\frac{1}{4}(A^3 - 2A^2 - 3A + 4I_4)$$

y de ahí  $4A^{-1} = -A^3 + 2A^2 + 3A - 4I_4$ .

**6.16.** Sea  $A \in \mathfrak{M}_3(\mathbb{C})$  una matriz invertible de orden 3 que cumple:

$$A^{-1} = \frac{A^2 - 5A + 7I_3}{3}$$

- a) Determine un polinomio anulador de A.
- b) Si A no es diagonalizable, determine las posibles matrices de Jordan semejantes a A.

Solución: a) Multiplicando por A en ambos miembros de la ecuación dada se tiene

$$AA^{-1} = \frac{A^3 - 5A^2 + 7A}{3} \implies 3I_3 = A^3 - 5A^2 + 7A \implies A^3 - 5A^2 + 7A - 3I_3 = 0$$

luego el polinomio  $p(t) = t^3 - 5t^2 + 7t - 3$  es un polinomio anulador de A.

b) Factorizamos el polinomio anulador para obtener información sobre los autovalores, ya que es múltiplo del polinomio mínimo.

$$p(t) = (t-1)^2(t-3)$$

Los posibles autovalores de A son 1 y/o 3 (podría ser autovalor alguno de ellos o los dos).

El polinomio mínimo de A,  $m_A(t)$  cumple las siguientes condiciones

- 1) Es divisor de p(t),
- 2) Dado que A no es diagonalizable, tiene que tener alguna raíz múltiple (si todas las raíces del polinomio mínimo fuesen de grado 1, entonces todos los bloques de Jordan serían de tamaño 1 y A sería diagonalizable).

Ambas condiciones hacen que se tengan dos posibles casos:

$$m_A(t) = (t-1)^2$$
 o bien  $m_A(t) = (t-1)^2(t-3)$ 

Las raíces del polinomio mínimo son los autovalores de A y la multiplicidad algebraica de estas raíces en el polinomio mínimo indica el tamaño del bloque de Jordan más grande asociado al autovalor correspondiente. Determinamos ahora las posibles formas de Jordan para cada caso:

Caso 1 Si  $m_A(t) = (t-1)^2$ , entonces  $\lambda = 1$  es el único autovalor de A y la única raíz del polinomio característico, que será  $p_A(t) = (1-t)^3$ ; y en la matriz de Jordan  $J_1$  semejante a A hay un bloque de orden 2. En definitiva, salvo permutación de bloques,  $J_1$  es

$$J_1 = \begin{pmatrix} 1 & 0 & 0 \\ 1 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}$$

Caso 2 Si  $m_A(t) = (t-1)^2(t-3)$ , entonces  $p_A(t) = -m_A(t)$ , y así A tiene dos autovalores  $\lambda_1 = 1$  doble con el bloque de Jordan más grande de tamaño 2, y  $\lambda_2 = 3$  simple. Luego la matriz de Jordan semejante a A sería

$$J_2 = \begin{pmatrix} 1 & 0 & 0 \\ 1 & 1 & 0 \\ 0 & 0 & 3 \end{pmatrix} \qquad \Box$$

**6.17.** (\*\*) Sea f un endomorfismo y  $\lambda$  un autovalor de f y U un subespacio r-cíclico

$$U = L(v, (f - \lambda \operatorname{Id})(v), \dots, (f - \lambda \operatorname{Id})^{r-1}(v)), \quad v \in K^{r}(\lambda) - K^{r-1}(\lambda)$$

Entonces, los subespacios f-invariantes contenidos en U son exactamente r:

$$U_1 \subsetneq U_2 \subsetneq \ldots \subsetneq U_r = U$$
, con  $U_i = L(\{(f - \lambda \operatorname{Id})^{r-i}(v), \ldots, (f - \lambda \operatorname{Id})^{r-1}(v)\})$ , dim $(U_i) = i$  para  $i = 1, \ldots, r$ ; y todos irreducibles.

**Solución:** Como U es invariante, podemos considerar el endomorfismo restricción  $f|_{U}: U \to U$ . La forma canónica de Jordan de  $f|_{U}$ , respecto de la base

$$\mathcal{B}_U = \{ v, (f - \lambda \operatorname{Id})(v), \dots, (f - \lambda \operatorname{Id})^{r-1}(v) \}$$

está formada por un único bloque de Jordan

$$\mathfrak{M}_{\mathcal{B}_U}(f|_U)=\begin{pmatrix}\lambda & 0 & \cdots & 0 \\ 1 & \ddots & \ddots & \vdots \\ & \ddots & \ddots & 0 \\ 0 & & 1 & \lambda\end{pmatrix}_{r\times r}$$

y la tabla de la base de Jordan es

$$\begin{array}{cccccccccccccccccccccccccccccccccccc$$

En primer lugar vemos que los subespacios  $U_i = L((f - \lambda \operatorname{Id})^{r-i}(v), \dots, (f - \lambda \operatorname{Id})^{r-1}(v))$  son invariantes ya que se corresponden con los *i* últimos vectores de la tabla anterior

$$\begin{array}{ccc} K^{1}(\lambda) & \subset & \cdots \subset & K^{i}(\lambda) \\ (f - \lambda \operatorname{Id})^{r-1}(v) & & (f - \lambda \operatorname{Id})^{r-i}(v) \end{array}$$

y que se trata de un subespacio i-cíclico. En efecto, si llamamos  $u=(f-\lambda\operatorname{Id})^{r-i}(v)$ , entonces

$$U_i = L(u, (f - \lambda \operatorname{Id})(u), \dots, (f - \lambda \operatorname{Id})^{i-1}(u)), \text{ con } u \in K^i(\lambda) - K^{i-1}(\lambda)$$

Este subespacio i-cíclico se corresponde con el sub-bloque de Jordan  $i \times i$  correspondiente a la submatriz de  $\mathfrak{M}_{\mathcal{B}_U}(f|_U)$  formada por las últimas i filas e i columnas.

Demostramos la unicidad por reducción al absurdo. Supongamos que existe otro subespacio invariante irreducible  $W_i$  con dim  $W_i = i$ , contenido en U. Por ser irreducible, será i-cíclico: luego existirá  $w \in K^i(\lambda) - K^{i-1}(\lambda)$  tal que

$$W_i = L(w, (f - \lambda \operatorname{Id})(w), \dots, (f - \lambda \operatorname{Id})^{i-1}(w))$$

Por ser  $U_i$  y  $W_i$  subespacios i-cíclicos, ambos están contenidos en  $\operatorname{Ker}(f - \lambda \operatorname{Id})^i$  y por tanto en  $\operatorname{Ker}(f - \lambda \operatorname{Id})^i \cap U$ , que es un subespacio de dimensión i. Vamos a demostrar que no puede ocurrir  $U_i \neq W_i$ . Si así fuera, como  $\dim(U_i) = \dim(W_i) = i$ , entonces  $\dim(U_i + W_i) > i$ , lo que contradice que ambos subespacios estén contenidos en  $\operatorname{Ker}(f - \lambda \operatorname{Id})^i \cap U$ .  $\square$ 

# Ejercicios del capítulo 7

7.1. Sean V un  $\mathbb{K}$  –espacio vectorial,  $g:V\to V$  un endomorfismo y  $\Phi:V\to \mathbb{K}$  una forma cuadrática. Demuestre que  $\Phi\circ g$  es una forma cuadrática.

**Solución:** Sea  $f: V \times V \to \mathbb{K}$  la forma polar de  $\Phi$ . Vamos a demostrar que la aplicación  $f_g(x,y) = f(g(x),g(y))$  es la forma polar de  $\Phi \circ g$ , es decir:

- (a)  $f_q$  es una forma bilineal simétrica, y
- (b)  $\Phi \circ g(x) = f_g(x, x)$ , para todo  $x \in V$ .

Comenzamos demostrando (a). La plicación  $f_q$  es simétrica, ya que

$$f_g(x,y) = f(g(x),g(y)) = f_g(y),g(x) = f_g(y),g(x)$$
, para.todo  $x,y \in V$ 

Y es bilineal si para todo  $a, b \in \mathbb{K}$ ,  $x, x_1, x_2, y, y_1, y_2 \in V$  satisface:

- (1)  $f_g(ax_1 + bx_2, y) = af_g(x_1, y) + bf_g(x_2, y)$ , y
- (2)  $f_g(x, ay_1 + by_2) = af_g(x, y_1) + bf_g(x, y_2).$

Por la propiedad de simetría de  $f_q$ , basta con demostrar (1):

$$\begin{aligned}
f_g(ax_1+bx_2,y) &= f(g(ax_1+bx_2),g(y)) && \text{por definición de } f_g \\
&= f(ag(x_1)+bg(x_2),g(y)) && \text{por ser } g \text{ lineal} \\
&= a\,f(g(x_1),g(y))+b\,f(g(x_2),g(y)) && \text{por ser } f \text{ bilineal} \\
&= a\,f_g(x_1,y)+b\,f_g(x_2,y) && \text{por definición de } f_g
\end{aligned}$$

Finalmente, se demuestra la condición (b):

$$\begin{array}{cccc} \Phi \circ g(x) & \Phi(g(x)) & \text{por definición de composición} \\ & f(g(x),g(x)) & \text{por ser } f \text{ la forma polar de } \Phi \\ & f_g(x,x) & \text{por definición de } f_g & \Box \end{array}$$

**7.2.** Sean f y g dos formas lineales de un espacio vectorial V. Demuestre que la aplicación h(u, v) = f(u)g(v) es una forma bilineal de V. Además h es simétrica si f y g son proporcionales.

**Solución:** La aplicación h es una forma bilineal ya que:

$$\begin{aligned}
h(au+bv,w) &= f(au+bv)g(w) \\
\text{\(f\) linear}\qquad &= (af(u)+bf(v))g(w) \\
&= af(u)g(w)+bf(v)g(w) \\
&= ah(u,w)+bh(v,w).
\end{aligned}$$

$$\begin{aligned}
h(u,av+bw) &= f(u)g(av+bw) \\
&\underset{g\ \mathrm{linear}}{=} f(u)\bigl(ag(v)+bg(w)\bigr) \\
&= af(u)g(v)+bf(u)g(w)=ah(u,v)+bh(u,w).
\end{aligned}$$

Supongamos f y g proporcionales, es decir que existe  $\lambda \in \mathbb{K}$  tal que  $f(v) = \lambda g(v)$  para todo  $v \in V$ . La forma bilineal h es simétrica ya que se cumple

$$h(u,v) = h(v,u) \Leftrightarrow f(u)g(v) = f(v)g(u) \Leftrightarrow \frac{f(u)}{g(u)} = \frac{f(v)}{g(v)} = \lambda \qquad \Box$$

7.3. Sean f y g dos formas lineales de un espacio vectorial V. Entonces la aplicación

$$h(u, v) = f(u)g(v) - g(u)f(v)$$

es una forma bilineal antisimétrica, v

$$l(u, v) = f(u)g(v) + g(u)f(v)$$

es una forma bilineal simétrica.

Solución: Veamos que l es simétrica:

$$l(u, v) = f(u)g(v) + g(u)f(v) = f(v)g(u) + g(v)f(u) = l(v, u)$$

Es lineal en la primera componente.

$$\begin{aligned}
l(au+bv,w) &= f(au+bv)g(w) + g(au+bv)f(w) \\
&\underset{f,g\ \text{lineales}}{=} [af(u)+bf(v)]g(w) + [ag(u)+bg(v)]f(w) \\
&= a[f(u)g(w)+g(u)f(w)] + b[f(v)g(w)+g(v)f(w)] \\
&= a\,l(u,w) + b\,l(v,w)
\end{aligned}$$

Por ser simétrica se tiene también la linealidad en la segunda componente.

De modo análogo se prueban los resultados sobre la aplicación h.  $\square$ 

7.4. Si  $\Phi$  es una forma cuadrática, entonces su forma polar es

$$f_{\Phi}(x,y) = \frac{1}{4} [\Phi(x+y) - \Phi(x-y)].$$

**Solución:** La forma polar está definida por  $f_{\Phi}(x,y) = \frac{1}{2} [\Phi(x+y) - \Phi(x) - \Phi(y)]$ . Despejando  $\Phi(x+y)$  se obtiene

$$\Phi(x+y) = \Phi(x) + \Phi(y) + 2f_{\Phi}(x,y)$$

y de ahí

$$\Phi(x-y) = \Phi(x+(-y)) = \Phi(x) + \Phi(-y) + 2f_{\Phi}(x,-y) = \Phi(x) + \Phi(y) - 2f_{\Phi}(x,y)$$

Restando ambas ecuaciones se obtiene el resultado deseado

$$\Phi(x+y) - \Phi(x-y) = 4f_{\Phi}(x,y) \qquad \Box$$

7.5. Los conjuntos  $\mathcal{BL}_s$  y  $\mathcal{BL}_a$  formados por las formas bilineales simétricas y antisimétricas de un  $\mathbb{K}$  –espacio vectorial V respectivamente, son subespacios vectoriales de  $\mathcal{BL}(V)$ . Además:

$$\mathcal{BL}(V) = \mathcal{BL}_s \oplus \mathcal{BL}_a$$

**Solución:** Sean  $f, g \in \mathcal{BL}_s$  y veamos que para todo  $a, b \in \mathbb{K}$  la forma af + bg es simétrica

$$(af + bg)(u, v) = af(u, v) + bg(u, w) = af(v, u) + bg(v, u) = (af + bg)(v, u)$$

luego  $\mathcal{BL}_s$  es un subespacio vectorial de  $\mathcal{BL}(V)$ . Del mismo modo se demuestra para las antisimétricas.

Para demostrar que  $\mathcal{BL}(V) = \mathcal{BL}_s \oplus \mathcal{BL}_a$ , observamos que de la Poposición 7.12, toda forma bilineal f se descompone en suma  $f = f_{sim} + f_{asim}$ , con  $f_{sim} \in \mathcal{BL}_s$  y  $f_{asim} \in \mathcal{BL}_a$ , por lo que  $\mathcal{BL}(V) = \mathcal{BL}_s + \mathcal{BL}_a$ . Para ver que la suma es directa, hay que probar  $\mathcal{BL}_s \cap \mathcal{BL}_a = \{0\}$ , es decir que una forma bilineal f no nula no puede ser a la vez simétrica y antisimétrica, ya que en tal caso f(u,v) = f(v,u) = -f(u,v) para todo  $u,v \in V$ . Esto ocurre si y sólo si f(u,v) = 0 para todo  $u,v \in V$ , si y sólo si f = 0.  $\square$ 

**7.6.** Sea V un  $\mathbb{K}$ -espacio vectorial, donde  $\mathbb{K} = \mathbb{R}$  o  $\mathbb{C}$ . Demuestre que una forma bilineal  $f: V \times V \to \mathbb{K}$  es antisimétrica si y sólo si f(v, v) = 0 para todo v.

**Solución:** La condición necesaria es trivial. Si f es antisimétrica, entonces para todo  $v \in V$  se cumple f(v,v) = -f(v,v). El único número, real o complejo, que es igual a su opuesto es el 0, luego f(v,v) = 0.

Para probar la condición suficiente, supongamos que f es una forma bilineal tal que f(v,v)=0 para todo  $v \in V$ . En particular, para todo  $u,v \in V$  se tiene que f(u+v,u+v)=0. Por otro lado, por ser bilineal se cumple

$$0 = f(u+v, u+v) = \underbrace{f(u, u)}_{=0} + f(u, v) + f(v, u) + \underbrace{f(v, v)}_{=0} = f(u, v) + f(v, u)$$

de donde se tiene la condición de antisimetría de f

$$f(u,v) = -f(v,u) \qquad \Box$$

- 7.7. Sean U y W subespacios vectoriales de un  $\mathbb{K}$  –espacio vectorial V y f una forma bilineal simétrica de V. Demuestre que se cumplen las siguientes propiedades:
  - a) Si  $U \subseteq W$ , entonces  $W^c \subseteq U^c$ .
  - b)  $U^c + W^c \subseteq (U \cap W)^c$ .
  - c)  $U^c \cap W^c = (U+W)^c$ .
  - $d) \ U \subseteq (U^c)^c.$

**Solución:** a) Sea  $v \in W^c$ , entonces f(v, w) = 0 para todo  $w \in W$  y como  $U \subseteq W$ , en particular f(v, u) = 0 para todo  $u \in U$ , luego  $v \in U^c$ .

b) Sea  $v \in U^c + W^c$ , entonces v = u + w con  $u \in U^c$  y  $w \in W^c$ . Entonces, para todo  $x \in U \cap W$ , dado que  $x \in U$  y  $x \in W$ , se tiene

$$f(v,x) = f(u+w,x) = f(u,x) + f(v,x) = 0 + 0 = 0 \implies v \in (U \cap W)^c$$

c) Un vector  $v \in U^c \cap W^c$  si y sólo si f(v, u) = 0 para todo  $u \in U$  y f(v, w) = 0 para todo  $w \in W$ , es decir f(v, x) = 0 para todo  $x \in U \cup W$ . Equivalentemente.

$$v \in (U \cup W)^c = L(U \cup W)^c = (U + W)^c$$
.

- d) Si  $u \in U$ , entonces f(u,x) = 0, para todo  $x \in U^c$ , luego  $u \in (U^c)^c$ .  $\square$
- 7.8. Sean  $f: V \times V \to \mathbb{K}$  una forma bilineal simétrica y U un subespacio vectorial de V. Si f es no degenerada, entonces  $U = (U^c)^c$ .

**Solución:** Por el ejercicio anterior se tiene que  $U \subseteq (U^c)^c$ . Por ser f no degenerada y aplicando la propiedad (3) de la Proposición 7.24, pág. 285, sabemos que:

$$\frac{\dim U + \dim U^c = n}{\dim U^c + \dim(U^c)^c = n} \Rightarrow \dim U = \dim(U^c)^c \Rightarrow U = (U^c)^c \qquad \square$$

**7.9.** Dada la aplicación  $f: \mathbb{R}_3[x] \times \mathbb{R}_3[x] \to \mathbb{R}$  definida por

$$f(p,q) = p(1)q(-1) + p(-1)q(1)$$

- a) Demuestre que es bilineal y simétrica.
- b) Determine su matriz en la base canónica de  $\mathbb{R}_3[x]$ .

**Solución:** a) Sean  $p, q, r \in \mathbb{R}_3[x] \setminus a, b \in \mathbb{R}$ 

$$\begin{aligned}
f((ap)+bq,r) &= ((ap)+bq)(1)\,r(-1) + ((ap)+bq)(-1)\,r(1) \\
&= (a p(1) + b q(1))\,r(-1) + (a p(-1) + b q(-1))\,r(1) \\
&= a p(1)r(-1) + b q(1)r(-1) + a p(-1)r(1) + b q(-1)r(1) \\
&= a\,[p(1)r(-1) + p(-1)r(1)] + b\,[q(1)r(-1) + q(-1)r(1)] \\
&= a f(p,r) + b f(q,r).
\end{aligned}$$

luego f es lineal en la primera componente. Del mismo modo se demuestra la linealidad en la segunda componente. Es trivial comprobar que f(p,q) = f(q,p), y por lo tanto es simétrica.

b) Sea  $\mathcal{B}=\{1,\,x,\,x^2,\,x^3\}.$  Utilizando la notación  $1=x^0$  tenemos para i,j=0,1,2,3 que

$$f(x^{i}, x^{j}) = 1^{i} \cdot (-1)^{j} + (-1)^{i} \cdot 1^{j} = (-1)^{j} + (-1)^{i} = \begin{cases} 0 & \text{si } i, j \text{ tienen distinta paridad} \\ 2 & \text{si } i, j \text{ son pares} \\ -2 & \text{si } i, j \text{ son impares} \end{cases}$$

у

$$\mathfrak{M}_{\mathcal{B}}(f) = \begin{pmatrix} f(1,1) & f(1,x) & f(1,x^2) & f(1,x^3) \\ f(x,1) & f(x,x) & f(x,x^2) & f(x,x^3) \\ f(x^2,1) & f(x^2,x) & f(x^2,x^2) & f(x^2,x^3) \\ f(x^3,1) & f(x^3,x) & f(x^3,x^2) & f(x^3,x^3) \end{pmatrix} = \begin{pmatrix} 2 & 0 & 2 & 0 \\ 0 & -2 & 0 & -2 \\ 2 & 0 & 2 & 0 \\ 0 & -2 & 0 & -2 \end{pmatrix} \quad \Box$$

**7.10.** Dada la forma bilineal simétrica  $f: \mathbb{R}^3 \times \mathbb{R}^3 \to \mathbb{R}$  cuya ecuación en la base canónica es

$$f((x_1, x_2, x_3), (y_1, y_2, y_3)) = -x_1y_1 + x_1y_2 + x_2y_1 - x_2y_2 + 2x_3y_3$$

- a) Determine la matriz de f en la base canónica.
- b) Calcule una base de vectores conjugados  $\{e_1, e_2, e_3\}$  tales que  $f(e_i, e_i)$  sea igual a 1, -1 o 0; para todo i = 1, 2, 3.

**Solución:** a) La matriz de la forma bilineal en la base canónica  $\mathcal{B} = \{v_1, v_2, v_3\}$  es

$$\mathfrak{M}_{\mathcal{B}}(f) = (f(v_i, v_j)) = \begin{pmatrix} -1 & 1 & 0 \\ 1 & -1 & 0 \\ 0 & 0 & 2 \end{pmatrix}$$

b) Para determinar una base de vectores conjugados  $\mathcal{B}' = \{u_1, u_2, u_3\}$  utilizaremos el método de construcción directa que se describe en el Teorema de existencia 7.28, pág. 288. Previamente, observamos que  $\operatorname{rg}(f) = 2$ , por lo que la forma es degenerada y calculamos su núcleo

$$Ker(f) = \{M_{\mathcal{B}}(f)X = 0\} \equiv \{x_1 - x_2 = 0, x_3 = 0\}$$

Como f es no nula, existe un vector  $u_1$  tal que  $f(u_1, u_1) \neq 0$ . Tomamos por ejemplo  $u_1 = v_1 = (1, 0, 0)$  ya que  $f(u_1, u_1) = -1$ .

El vector  $u_2$  tiene que pertenecer al subespacio conjugado  $L(u_1)^c$ 

$$L(u_1)^c = \{(x_1, x_2, x_3) : (x_1, x_2, x_3) \begin{pmatrix} -1 & 1 & 0 \\ 1 & -1 & 0 \\ 0 & 0 & 2 \end{pmatrix} \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix} = 0\} \equiv \{x_1 - x_2 = 0\}$$

La forma bilineal f es no nula en  $L(u_1)^c$  y nos sirve  $u_2 = v_3 = (0,0,1)$  ya que  $f(v_3,v_3) = 2 \neq 0$ . El tercer vector, será conjuado de  $u_1$  y  $u_2$ , es decir  $u_3 \in L(u_1)^c \cap L(u_2)^c = L(u_1,u_2)^c$ .

$$L(u_2)^c = \{(x_1, x_2, x_3) : (x_1, x_2, x_3) \begin{pmatrix} -1 & 1 & 0 \\ 1 & -1 & 0 \\ 0 & 0 & 2 \end{pmatrix} \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix} = 0\} \equiv \{x_3 = 0\}$$

Por tanto,  $L(u_1, u_2)^c \equiv \{x_1 - x_2 = 0, x_3 = 0\}$ . La forma bilineal f es nula en este subespacio ya que es el núcleo de f, luego no existe ningún  $u_3 \in L(u_1, u_2)^c$  tal que  $f(u_3, u_3) \neq 0$ . Entonces, tomamos  $u_3$  un vector cualquiera de  $L(u_1, u_2)^c$  y se cumplirá que  $f(u_3, u_3) = 0$ . Por ejemplo,  $u_3 = (1, 1, 0)$ .

La matriz de f respecto de la base de vectores conjugados  $\mathcal{B}'$  es la matriz diagonal

$$\mathfrak{M}_{\mathcal{B}'}(f) = (f(u_i, u_j)) = \begin{pmatrix} -1 & 0 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & 0 \end{pmatrix}$$

Para transformar el 2 de la diagonal en un 1 cambiamos el vector  $u_2$  por  $e_2 = \frac{u_2}{\sqrt{f(u_2,u_2)}} = \frac{u_2}{\sqrt{2}}$  que cumplirá

$$f(e_2, e_2) = f\left(\frac{u_2}{\sqrt{2}}, \frac{u_2}{\sqrt{2}}\right) = \frac{1}{\sqrt{2}} \frac{1}{\sqrt{2}} f(u_2, u_2) = 1$$

La matriz de f respecto de la base  $\mathcal{B}'' = \{e_1 = u_1, e_2, e_3 = u_3\}$  es la matriz diagonal

$$\mathfrak{M}_{\mathcal{B}''}(f) = (f(e_i, e_j)) = \begin{pmatrix} -1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 0 \end{pmatrix} \qquad \Box$$

7.11. Determine si las siguientes matrices pueden corresponder a una misma forma cuadrática real en distintas bases

$$A = \begin{pmatrix} 3 & 3 & 1 \\ 3 & 3 & 1 \\ 1 & 1 & 3 \end{pmatrix} \qquad B = \begin{pmatrix} 3 & 3 & 4 \\ 3 & 3 & 4 \\ 4 & 4 & 4 \end{pmatrix}$$

**Solución:** Serán las matrices de una misma forma cuadrática  $\Phi$ , en distintas bases, si y sólo si son congruentes, si y sólo si tienen la misma signatura.

Hacemos la diagonalización por congruencia de ambas matrices:

$$\begin{pmatrix} 3 & 3 & 1 \\ 3 & 3 & 1 \\ 1 & 1 & 3 \end{pmatrix} \xrightarrow{\substack{f_2 \to f_2 - f_1 \\ c_2 \to c_2 - c_1}} \begin{pmatrix} 3 & 0 & 1 \\ 0 & 0 & 0 \\ 1 & 0 & 3 \end{pmatrix} \xrightarrow{\substack{f_3 \to f_3 - \frac{1}{3}f_1 \\ c_3 \to c_3 - \frac{1}{3}c_1}} \begin{pmatrix} 3 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & \frac{8}{3} \end{pmatrix} \Rightarrow \operatorname{sg} A = (2,0)$$

$$\begin{pmatrix} 3 & 3 & 4 \\ 3 & 3 & 4 \\ 4 & 4 & 4 \end{pmatrix} \xrightarrow{f_2 \to f_2 - f_1} \begin{pmatrix} 3 & 0 & 4 \\ 0 & 0 & 0 \\ 4 & 0 & 4 \end{pmatrix} \xrightarrow{f_3 \to f_3 - \frac{4}{3}f_1} \begin{pmatrix} 3 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & -4/3 \end{pmatrix} \Rightarrow \operatorname{sg} B = (1.1)$$

Como tienen signaturas distintas no son matrices congruentes, luego no son matrices de la misma forma cuadrática en distintas bases.  $\Box$ 

7.12. Obtenga la diagonalización por congruencia de la forma cuadrática  $\Phi$  de  $\mathbb{R}^3$  cuya matriz en la base canónica  $\mathcal B$  es

$$\mathfrak{M}_{\mathcal{B}}(\Phi) = \begin{pmatrix} 2 & 1 & -1 \\ 1 & 3 & -1 \\ -1 & -1 & 1 \end{pmatrix}$$

Determine una base de vectores conjugados, clasifique la forma cuadrática y calcule unas ecuaciones del subespacio conjugado de la recta

$$R \equiv \{x_1 + x_2 = 0, \ 2x_1 - x_3 = 0\}.$$

Solución: Vamos a hacer la diagonalización por congruencia para obtener a la vez la base de vectores conjugados y la signatura de  $\Phi$ . Para ello adosamos a la matriz de  $\Phi$  la identidad y realizamos en  $\mathfrak{M}_{\mathcal{B}}(\Phi)$  operaciones elementales en filas, y las mismas en columnas, mientras que en  $I_3$  aplicamos las operaciones sólo en filas.

$$\begin{aligned}
\left(\begin{array}{ccc|ccc}
2 & 1 & -1 & 1 & 0 & 0 \\
1 & 3 & -1 & 0 & 1 & 0 \\
-1 & -1 & 1 & 0 & 0 & 1
\end{array}\right)
&\xrightarrow{\substack{f_2 \to f_2 - \frac{1}{2}f_1 \\ f_3 \to f_3 + \frac{1}{2}f_1}}
\left(\begin{array}{ccc|ccc}
2 & 1 & -1 & 1 & 0 & 0 \\
0 & \frac{5}{2} & -\frac{1}{2} & -\frac{1}{2} & 1 & 0 \\
0 & -\frac{1}{2} & \frac{1}{2} & \frac{1}{2} & 0 & 1
\end{array}\right) \\
&\xrightarrow[\text{columnas}]{\substack{c_2 \to c_2 - \frac{1}{2}c_1 \\ c_3 \to c_3 + \frac{1}{2}c_1}}
\left(\begin{array}{ccc|ccc}
2 & 0 & 0 & 1 & 0 & 0 \\
0 & \frac{5}{2} & -\frac{1}{2} & -\frac{1}{2} & 1 & 0 \\
0 & -\frac{1}{2} & \frac{1}{2} & \frac{1}{2} & 0 & 1
\end{array}\right) \\
&\xrightarrow{f_3 \to f_3 + \frac{1}{5}f_2}
\left(\begin{array}{ccc|ccc}
2 & 0 & 0 & 1 & 0 & 0 \\
0 & \frac{5}{2} & -\frac{1}{2} & -\frac{1}{2} & 1 & 0 \\
0 & 0 & \frac{2}{5} & \frac{2}{5} & \frac{1}{5} & 1
\end{array}\right) \\
&\xrightarrow[\text{columnas}]{c_3 \to c_3 + \frac{1}{5}c_2}
\left(\begin{array}{ccc|ccc}
2 & 0 & 0 & 1 & 0 & 0 \\
0 & \frac{5}{2} & 0 & -\frac{1}{2} & 1 & 0 \\
0 & 0 & \frac{2}{5} & \frac{2}{5} & \frac{1}{5} & 1
\end{array}\right)
= (D\mid P^t).
\end{aligned}$$

Como todos los elementos de la matriz diagonal de  $\Phi$  son positivos, entonces la signatura es  $sg(\Phi) = (3,0)$ , por lo que  $\Phi$  es definida positiva. Las coordenadas respecto de  $\mathcal{B}$  de una base de vectores conjugados se obtienen de las filas de la matriz  $P^t$ :

$$\left\{ (1,0,0)_{\mathcal{B}}, (\frac{-1}{2},1,0)_{\mathcal{B}}, (\frac{2}{5},\frac{1}{5},1)_{\mathcal{B}} \right\}$$

Para determinar el subespacio conjugado de la recta  $R \equiv \{x_1 + x_2 = 0, 2x_1 - x_3 = 0\}$ , tomamos una base de R que estará formada por un único vector. Nos sirve v = (1, -1, 2). El subespacio conjugado  $R^c$  estará formado por todos los vectores conjugados con v:

$$R^c = v^c = \{w = (x, y, z) \in \mathbb{R}^3 : f_{\Phi}(w, v) = 0\}$$

Es decir

$$(x, y, z)$$
  $\begin{pmatrix} 2 & 1 & -1 \\ 1 & 3 & -1 \\ -1 & -1 & 1 \end{pmatrix}$   $\begin{pmatrix} 1 \\ -1 \\ 2 \end{pmatrix} = 0$ 

de donde se obtiene la ecuación  $R^c \equiv \{ -x - 4y + 2z = 0 \}.$ 

7.13. Determine la signatura de la forma cuadrática  $\Phi: \mathbb{R}^3 \to \mathbb{R}$  cuya matriz en la base canónica es:

$$A = \left(\begin{array}{rrr} 1 & -2 & 1 \\ -2 & -2 & -2 \\ 1 & -2 & 1 \end{array}\right)$$

Solución: Realizamos la diagonalización por congruencia de la matriz

$$\begin{pmatrix} 1 & -2 & 1 \\ -2 & -2 & -2 \\ 1 & -2 & 1 \end{pmatrix} \xrightarrow{f_2 \to f_2 + 2f_1} \begin{pmatrix} 1 & 0 & 1 \\ 0 & -6 & 0 \\ 1 & 0 & 1 \end{pmatrix} \xrightarrow{f_3 \to f_3 - f_1} \begin{pmatrix} 1 & 0 & 0 \\ 0 & -6 & 0 \\ 0 & 0 & 0 \end{pmatrix}$$

de donde se deduce que  $sg(\Phi) = (1,1)$  y por tanto  $\Phi$  es indefinida y degenerada.  $\square$ 

- 7.14. Determine la signatura de una forma cuadrática  $\Phi: \mathbb{R}^3 \to \mathbb{R}$  que cumple las condiciones:
  - a) Existe un plano vectorial U en  $\mathbb{R}^3$  que es el subespacio vectorial de mayor dimensión respecto al cual la restricción de  $\Phi$  a U,  $\Phi|_U$ , es definida positiva.
  - b) b) El subespacio conjugado  $U^c$  contiene vectores autoconjugados.

**Solución**: Formamos una base de  $\mathbb{R}^3$  de vectores conjugados del siguiente modo: tomamos una base  $\{v_1, v_2\}$  de vectores conjugados de U, y un vector  $v_3 \in U^c$  autoconjugado. Como  $\Phi|_U$  es definida positiva, entonces  $\Phi(u) > 0$  para todo  $u \in U$ . Por lo tanto  $v_3 \notin U$  y  $\{v_1, v_2, v_3\}$  es una base. La matriz de  $\Phi$  en dicha base es la matriz

$$\begin{pmatrix}
\Phi(v_1) > 0 & 0 & 0 \\
0 & \Phi(v_2) > 0 & 0 \\
0 & 0 & \Phi(v_3) = 0
\end{pmatrix}$$

con dos elementos positivos y un 0 en la diagonal. Como la signatura no depende de la base, si es de vectores conjugados, entonces  $\Phi$  tiene signatura (2,0).  $\square$ 

7.15. a) Para los distintos valores del parámetro  $a \in \mathbb{R}$ , clasifique la forma cuadrática  $\Phi_a : \mathbb{R}^3 \to \mathbb{R}$  dada por

$$\Phi_a(x, y, z) = x^2 + 2y^2 + 2xy + 2xz + 4yz + (2+a)z^2$$

- b) Para cada  $a \in \mathbb{R}$ , determine un plano vectorial  $U_a$  tal que la restricción de  $\Phi_a$  a dicho plano sea una forma cuadrática definida positiva.
- c) Para qué valores de  $a \in \mathbb{R}$  la forma polar asociada a  $\Phi_a$  define un producto escalar.

**Solución:** La matriz de la forma cuadrática  $\Phi_a$  en la base canónica  $\mathcal{B} = \{v_1, v_2, v_3\}$  es

$$\mathfrak{M}_{\mathcal{B}}(\Phi_a) = (f_{\Phi}(v_i, v_j)) = \begin{pmatrix} 1 & 1 & 1 \\ 1 & 2 & 2 \\ 1 & 2 & a+2 \end{pmatrix}$$

a) Si hacemos la diagonalización por congruencia, obtenemos la siguiente matriz diagonal

$$\mathfrak{M}_{\mathcal{B}'}(\Phi_a) = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & a \end{pmatrix}, \text{ donde } \mathcal{B}' = \{(1,0,0), (-1,1,0), (0,-1,1)\}$$

Por tanto la signatura de  $\Phi$  será:

- $\operatorname{sg}(\Phi_a) = (3,0)$  si  $a > 0 \implies \Phi_a$  es definida positiva.
- $\operatorname{sg}(\Phi_a) = (2,0)$  si  $a = 0 \Rightarrow \Phi_0$  es semidefinida positiva.
- $\operatorname{sg}(\Phi_a) = (2,1)$  si  $a < 0 \implies \Phi_a$  es indefinida.
- b) A la vista de la signatura de  $\Phi_a$  vemos que en toda base de vectores conjugados existen dos vectores, u y v, tales que  $\Phi_a(u) > 0$  y  $\Phi_a(v) > 0$ . En particular podemos tomar los dos primeros vectores de la base  $\mathcal{B}'$ : u = (1,0,0) y v = (-1,1,0). El plano P = L(u,v) cumple los requisitos pedidos para cualquier valor de a:  $\Phi|_P$  tiene signatura (2,0), es decir, es definida positiva.
- c) La forma polar  $f_{\Phi}$  asociada a  $\Phi$  define un producto escalar si y solamente si la forma cuadrática es definida positiva, es decir siempre que a > 0.
- **7.16.** Sea V un espacio vectorial real de dimensión n y  $\Phi:V\to\mathbb{R}$  una forma cuadrática cuya signatura es (p,q), con  $p+q\leq n$ . Demuestre que:
  - a) p es la máxima dimensión de un subespacio  $U\subseteq V$  tal que  $\Phi$  restringida a U es definida positiva.
  - b) q es la máxima dimensión de un subespacio  $U\subseteq V$  tal que  $\Phi$  restringida a U es definida negativa.

**Solución:** Que la signatura de  $\Phi$  es (p,q) significa que en cualquier base de vectores conjugados existen exactamente p vectores  $v_1, \ldots, v_p$  con  $\Phi(v_i) > 0$ ; exactamente q vectores  $w_1, \ldots, w_q$  con  $\Phi(w_i) < 0$  y para el resto de vectores v de la base se cumple  $\Phi(v) = 0$ .

a) Procedemos por reducción al absurdo. Supongamos que existe un subespacio vectorial U con dim U=s>p y tal que  $\Phi|_U$  es definida positiva. Tomamos una base de vectores conjugados de  $U: \mathcal{B}_U=\{u_1,\ldots,u_p,\ldots,u_s\}$ . Por ser  $\Phi$  definida positiva en U se tiene  $\Phi(u_i)>0$  para  $i=1,\ldots,s$ . Si ampliamos la base de U hasta formar una base  $\mathcal{B}$  de vectores conjugados de V:

$$\mathcal{B} = \{u_1, \dots, u_s, u_{s+1}, \dots, u_n\}$$

encontramos una contradicción con la definición de signatura expuesta en el párrafo anterior, ya que en esta base existen s > p vectores  $u_1, \ldots, u_s$  tales que  $\Phi(u_i) > 0$ .

b) Se procede de forma totalmente análoga.

- **7.17.** a) Determine la matriz de una forma cuadrática  $\Phi : \mathbb{R}^3 \to \mathbb{R}$  tal que:
  - (1) El conjugado de la recta R = L(1,0,0) es  $R^c \equiv x + y + z = 0$ .
  - (2)  $\Phi(0,0,1) = 1$ .
  - (3) La signatura de  $\Phi$  es (1,0).
  - b) Determine una base de vectores conjugados respecto a  $\Phi$ .

Solución: a) Sea A la matriz de  $\Phi$  en la base canónica. Como es simétrica será de la forma

$$A = \left(\begin{array}{ccc} a & b & c \\ b & d & e \\ c & e & f \end{array}\right)$$

La condición (2) implica

$$\Phi(0,0,1) = (0\ 0\ 1)A \begin{pmatrix} 0\\0\\1 \end{pmatrix} = f = 1.$$

Para utilizar la condición (1) calculamos el conjugado de la recta generada por (1,0,0):

$$(1\ 0\ 0) \left(\begin{array}{ccc} a & b & c \\ b & d & e \\ c & e & 1 \end{array}\right) \left(\begin{array}{c} x \\ y \\ z \end{array}\right) = 0 \Rightarrow R^c \equiv \{ax + by + cz = 0\}$$

Para que la ecuación obtenida sea equivalente a la dada en (1) se debe cumplir  $a=b=c\neq 0$ . Así, obtenemos la matriz

$$A = \begin{pmatrix} a & a & a \\ a & d & e \\ a & e & 1 \end{pmatrix} \quad \text{con } a \neq 0.$$

Ya sólo nos queda utilizar la condición (3) sobre la signatura. Podemos hacerlo de dos formas:

(i) Como la signatura es (1,0) entonces el rango de A es 1, el mismo que el de la matriz diagonal congruente con A. Entonces, la matriz sólo podrá tener una fila (o columna) independiente, y la única opción es:

$$A = \left(\begin{array}{rrr} 1 & 1 & 1 \\ 1 & 1 & 1 \\ 1 & 1 & 1 \end{array}\right).$$

(ii) Diagonalizamos A por congruencia para determinar su signatura:

$$A = \begin{pmatrix} a & a & a \\ a & d & e \\ a & e & 1 \end{pmatrix} \longrightarrow \begin{pmatrix} a & 0 & 0 \\ 0 & d-a & e-a \\ 0 & e-a & 1-a \end{pmatrix}$$

Antes de seguir diagonalizando, observamos que  $a \neq 0$  será un elemento de la (futura) matriz diagonal de  $\Phi$ , por lo que deberá ser a>0 y el resto de elementos de la matriz

diagonal 0. Esto es.

$$\begin{pmatrix}
 a & 0 & 0 \\
 0 & d-a & e-a \\
 0 & e-a & 1-a
\end{pmatrix}$$
 congruente con 
$$\begin{pmatrix}
 a & 0 & 0 \\
 0 & 0 & 0 \\
 0 & 0 & 0
\end{pmatrix}$$

y en particular para las submatrices

$$\begin{pmatrix} d-a & e-a \\ e-a & 1-a \end{pmatrix} \text{ congruente con } \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}$$

La única matriz congruente con la matriz nula es la propia matriz nula, por lo que

$$\left(\begin{array}{cc} d-a & e-a \\ e-a & 1-a \end{array}\right) = \left(\begin{array}{cc} 0 & 0 \\ 0 & 0 \end{array}\right) \iff a=d=e=1$$

obteniendo el mismo resultado que antes.

b) Para determinar una base de vectores conjugados respecto a  $\Phi$ ,  $\mathcal{B} = \{v_1, v_2, v_3\}$ , podemos aplicar el método basado en la diagonalización por congruencia:

$$(A|I_3) \longrightarrow (D|P^t) \text{ con } D = \text{diag}(d,0,0), \ d > 0.$$

En este caso utilizamos otro método. Tomamos  $v_1=(0,0,1)$  ya que sabemos  $\Phi(v_1)=1$  y los otros dos vectores cumplirán  $\Phi(v_2)=\Phi(v_3)=0$ , que serán vectores del núcleo o radical de  $\Phi$ . En este caso,  $N(\Phi)=L(v_1)^c$  del que conocemos sus ecuaciones: x+y+z=0, por lo que una base del radical sería:

$$v_2 = (1, -1, 0), \ v_3 = (1, 0, -1).$$

Se completa así la base pedida.  $\Box$ 

7.18. Se considera la forma cuadrática real  $\Phi$  cuya expresión analítica respecto a una base  $\mathcal B$  es

$$\Phi(x, y, z) = x^{2} + y^{2} + \lambda z^{2} + 4xy$$

Determine si es definida positiva para algún valor de  $\lambda \in \mathbb{R}$ .

**Solución:** La matriz de la forma cuadrática en la base  $\mathcal{B} = \{e_1, e_2, e_3\}$  es

$$\mathfrak{M}_{\mathcal{B}}(\Phi) = \left(\begin{array}{ccc} 1 & 2 & 0 \\ 2 & 1 & 0 \\ 0 & 0 & \lambda \end{array}\right)$$

Por el criterio de Sylvester sabemos que es definida positiva, si y solamente si los menores principales de la matriz son positivos:

$$\Delta_1 = \left| \begin{array}{ccc} 1 \end{array} \right|, \ \Delta_2 = \left| \begin{array}{ccc} 1 & 2 \\ 2 & 1 \end{array} \right| \ \text{y} \ \Delta_3 = \left| \begin{array}{ccc} 1 & 2 & 0 \\ 2 & 1 & 0 \\ 0 & 0 & \lambda \end{array} \right|$$

Pero el menor de orden 2 es negativo  $\Delta_2 = -3 < 0$  para todo valor de  $\lambda$ , luego  $\Phi$  no es definida positiva para ningún valor de  $\lambda$ .  $\square$ 

7.19. Determine la signatura y una base de vectores conjugados respecto a la forma cuadrática de  $\mathbb{R}^3$  de ecuación

$$\Phi(x, y, z) = x^2 + y^2 + 3z^2 + 6xy.$$

Hágalo por distintos métodos.

Solución: Vamos a resolver este ejercicios por tres métodos distintos.

- 1. Método de construcción directa de la base
- 2. Método de diagonalización por congruencia
- 3. Método de Lagrange o de Gauss

La matriz de la forma cuadrática en la base canónica  $\mathcal{B} = \{e_1, e_2, e_3\}$  es

$$\mathfrak{M}_{\mathcal{B}}(\Phi) = \left(\begin{array}{ccc} 1 & 3 & 0 \\ 3 & 1 & 0 \\ 0 & 0 & 3 \end{array}\right)$$

En primer lugar, observamos que como det  $\mathfrak{M}_{\mathcal{B}}(\Phi) = -24 \neq 0$ , la forma cuadrática es no degenerada, es decir  $N(\Phi) = 0$  y por el Criterio de Sylvester no es definida positiva ni negativa. Luego es indefinida.

### 1. Método de construcción directa de la base:

Para encontrar una base de vectores conjugados  $\mathcal{B}' = \{u_1, u_2, u_3\}$  comenzamos eligiendo como  $u_1$  un vector tal que  $\Phi(u_1) \neq 0$ . Tomamos por ejemplo  $u_1 = e_1$ . El vector  $u_2$  tiene que pertenecer al subespacio conjugado  $L(u_1)^c$ 

$$L(u_1)^c = \{(x, y, z) : (x, y, z) \begin{pmatrix} 1 & 3 & 0 \\ 3 & 1 & 0 \\ 0 & 0 & 3 \end{pmatrix} \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix} = 0\} \equiv \{x + 3y = 0\}$$

Entonces, podemos tomar  $u_2 = e_3$ . Finalmente  $u_3 \in L(u_1)^c \cap L(u_2)^c = L(u_1, u_2)^c$ .

$$L(u_2)^c = \{(x, y, z) : (x, y, z) \begin{pmatrix} 1 & 3 & 0 \\ 3 & 1 & 0 \\ 0 & 0 & 3 \end{pmatrix} \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix} = 0\} \equiv \{z = 0\}$$

Por ejemplo, nos sirve  $u_3 = (-3, 1, 0)_{\mathcal{B}}$ . La matriz de  $\Phi$  en la base  $\mathcal{B}'$  es

$$\mathfrak{M}_{\mathcal{B}'}(\Phi) = \begin{pmatrix} \Phi(u_1) & 0 & 0 \\ 0 & \Phi(u_2) & 0 \\ 0 & 0 & \Phi(u_3) \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 3 & 0 \\ 0 & 0 & -8 \end{pmatrix}$$

### 2. Método de diagonalización por congruencia:

$$\begin{pmatrix} 1 & 3 & 0 & 1 & 0 & 0 \\ 3 & 1 & 0 & 0 & 1 & 0 \\ 0 & 0 & 3 & 0 & 0 & 1 \end{pmatrix} \quad \xrightarrow{f_2 \to f_2 - 3f_1} \quad \begin{pmatrix} 1 & 0 & 0 & 1 & 0 & 0 \\ 0 & -8 & 0 & -3 & 1 & 0 \\ 0 & 0 & 3 & 0 & 0 & 1 \end{pmatrix} = (D|P^t)$$

Las filas de  $P^t$  son las coordenadas en  $\mathcal{B}$  de una base de vectores conjugados  $\mathcal{B}' = \{u_1, u_2, u_3\}$ :

$$u_1 = (1,0,0)_{\mathcal{B}} = e_1, \ u_2 = (-3,1,0)_{\mathcal{B}} = -3e_1 + e_2, \ u_3 = (0,0,1)_{\mathcal{B}} = e_3$$

### 3. Método de Lagrange o de Gauss:

Presentamos en este ejercicio otra forma de resolver este problema. Se trata de un procedimiento conocido como Método de Lagrange o de Gauss, que consiste en manipular la ecuación de la forma cuadrática para escribirla directamente como suma de cuadrados. En este ejemplo:

$$\Phi(x,y,z) = x^2 + y^2 + 3z^2 + 6xy = (x^2 + 6xy + 9y^2) - 8y^2 + 3z^2$$
$$= (x+3y)^2 - 8y^2 + 3z^2$$

Hacemos un cambio de coordenadas llamando x' = x + 3y, y' = y, z' = z, donde (x', y', z') serán coordenadas en otra base  $\mathcal{B}'$ . Entonces podemos escribir la ecuación de  $\Phi$  como:

$$\Phi(x', y', z') = (x')^2 - 8(y')^2 + 3(z')^2$$

La signatura de una forma cuadrática se conoce de forma inmediata si está expresada como suma de cuadrados. Los coeficientes de dichos cuadrados son 1, -8 y 3. Dos positivos y uno negativo, luego  $sg(\Phi) = (2,1)$ , la misma que hemos obtenido en los métodos anteriores.

La nueva base en la que se tiene esa ecuación la obtenemos del siguiente modo: despejando x, y, z se obtiene x = x' - 3y', y' = y, z' = z; que forma matricial se escribe:

$$\begin{pmatrix} x \\ y \\ z \end{pmatrix} = \begin{pmatrix} 1 & -3 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} x' \\ y' \\ z' \end{pmatrix} = P \begin{pmatrix} x' \\ y' \\ z' \end{pmatrix}$$

Así,  $P = \mathfrak{M}_{\mathcal{B}'\mathcal{B}}$  es la matriz de cambio de base de  $\mathcal{B}'$  a  $\mathcal{B}$  y

$$\mathfrak{M}_{\mathcal{B}'}(\Phi) = P^t \mathfrak{M}_{\mathcal{B}}(\Phi) P = \begin{pmatrix} 1 & 0 & 0 \\ -3 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} 1 & 3 & 0 \\ 3 & 1 & 0 \\ 0 & 0 & 3 \end{pmatrix} \begin{pmatrix} 1 & -3 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 \\ 0 & -8 & 0 \\ 0 & 0 & 3 \end{pmatrix} \square$$

7.20. Determine una matriz regular P que cumpla  $D = P^tAP$  siendo

$$A = \begin{pmatrix} 1 & 1 & 0 \\ 1 & 2 & 1 \\ 0 & 1 & 1 \end{pmatrix} \quad \mathbf{y} \quad D = \begin{pmatrix} 2 & 0 & 0 \\ 0 & \frac{1}{3} & 0 \\ 0 & 0 & 0 \end{pmatrix}$$

Solución: Hacemos la diagonalización por congruencia de A

$$\left(\begin{array}{ccc|ccc}
1 & 1 & 0 & 1 & 0 & 0 \\
1 & 2 & 1 & 0 & 1 & 0 \\
0 & 1 & 1 & 0 & 0 & 1
\end{array}\right)
\xrightarrow{\substack{f_2 \to f_2 - f_1 \\ c_2 \to c_2 - c_1}}
\left(\begin{array}{ccc|ccc}
1 & 0 & 0 & 1 & 0 & 0 \\
0 & 1 & 1 & -1 & 1 & 0 \\
0 & 1 & 1 & 0 & 0 & 1
\end{array}\right)
= (D'\mid (P')^t)$$

$$\xrightarrow{\substack{f_3 \to f_3 - f_2 \\ c_3 \to c_3 - c_2}}
\left(\begin{array}{ccc|ccc}
1 & 0 & 0 & 1 & 0 & 0 \\
0 & 1 & 0 & -1 & 1 & 0 \\
0 & 0 & 0 & 1 & -1 & 1
\end{array}\right)
= (D'\mid (P')^t)$$

Comprobamos que A y D tienen la misma signatura, (2,0), luego son congruentes y existe la matriz P pedida.

Continuamos haciendo operaciones elementales a las filas, y las mismas por columnas manteniendo así la relación de congruencia, hasta transformar D' en D

$$(D'\mid (P')^{t}) \xrightarrow[\substack{f_{1}\to \sqrt{2}f_{1},\; c_{1}\to \sqrt{2}c_{1}\\ f_{2}\to \frac{1}{\sqrt{3}}f_{2},\; c_{2}\to \frac{1}{\sqrt{3}}c_{2}}]{} \left(\begin{array}{ccc|ccc} 2 & 0 & 0 & \sqrt{2} & 0 & 0 \\ 0 & \frac{1}{3} & 0 & -\frac{1}{\sqrt{3}} & \frac{1}{\sqrt{3}} & 0 \\ 0 & 0 & 0 & 1 & -1 & 1 \end{array}\right) = (D\mid P^{t})$$

Podemos comprobar que se cumple  $D = P^t A P$ .

# Ejercicios del capítulo 8

8.1. Sean (V, <, >) un espacio vectorial euclídeo y  $u, v \in V$  vectores cualesquiera. Demuestre que

$$u = v$$
 si y sólo si  $\langle u, w \rangle = \langle v, w \rangle$  para todo  $w \in V$ 

**Solución**: Si u = v, evidentemente se cumple  $\langle u, w \rangle = \langle v, w \rangle$  para todo  $w \in V$ .

Supongamos ahora que  $\langle u, w \rangle = \langle v, w \rangle$  para todo  $w \in V$ . Sean  $\{e_1, e_2, e_3\}$  una base ortonormal de V y  $u = u_1e_1 + u_2e_2 + u_3e_3$  y  $v = v_1e_1 + v_2e_2 + v_3e_3$  dos vectores de V. Entonces

$$< u, e_1 > = < u_1 e_1 + u_2 e_2 + u_3 e_3, e_1 > = u_1 < e_1, e_1 > +u_2 < e_2, e_1 > +u_3 < e_3, e_1 > = u_1$$

Del mismo modo se demuestra que

$$\langle u, e_i \rangle = u_i \text{ y } \langle v, e_i \rangle = v_i \text{ para } i = 1, 2, 3.$$

Como  $\langle u, e_i \rangle = \langle v, e_i \rangle$ , entonces  $u_i = v_i$  y por tanto u = v.  $\square$ 

**8.2.** Sean  $U_1 \subsetneq U_2$  subespacios vectoriales de (V, <, >). Demuestre que existe un vector no nulo  $v \in U_2$  tal que  $v \perp U_1$ .

Solución: Supongamos dim  $U_1 = r < \dim U_2 = s$ . Sea  $\{v_1, \ldots, v_r\}$  una base ortogonal de  $U_1$ . Como  $v_1, \ldots, v_r$  son vectores ortogonales dos a dos de  $U_2$ , entonces por el Teorema de ampliación a una base podemos ampliar el conjunto hasta obtener una base  $\{v_1, \ldots, v_r, v_{r+1}, \ldots, v_s\}$  de  $U_2$ . Aplicamos a esta base el método de Gram-Schmidt para transformarla en un base ortogonal de  $U_2$ :  $\{v_1, \ldots, v_r, u_{r+1}, \ldots, u_s\}$ . Cualquier vector no nulo v del suespacio  $S = L(u_{r+1}, \ldots, u_s)$  cumple la condición requerida en el enunciado. De hecho, se cumple  $U_1 \oplus S = U_2$ .  $\square$ 

- **8.3.** Sea (V, <, >) un espacio vectorial euclídeo y  $u, v \in V$ . Demuestre las siguientes propiedades:
  - a)  $||u+v||^2 = ||u||^2 + ||v||^2$  si y sólo si  $u \perp v$ . Teorema de Pitágoras.
  - b)  $||u+v||^2 + ||u-v||^2 = 2(||u||^2 + ||v||^2)$ . Ley del Paralelogramo.
  - c) ||u|| = ||v|| si y sólo si u + v y u v son ortogonales. Deducir que un paralelogramo es un rombo si y sólo si sus diagonales son perpendiculares.

**Solución:** a) Teorema de Pitágoras

$$||u+v||^2 = ||u||^2 + ||v||^2 + 2 < u, v > = ||u||^2 + ||v||^2 \iff < u, v > = 0 \iff u \perp v$$

b) Ley del Paralelogramo

$$\begin{array}{ll} ||u+v||^2 &= ||u||^2 + ||v||^2 + 2 < u, v > \\ ||u-v||^2 &= ||u||^2 + ||v||^2 - 2 < u, v > \end{array}$$

sumando 
$$||u+v||^2 + ||u-v||^2 = 2(||u||^2 + ||v||^2)$$