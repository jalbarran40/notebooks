# Capítulo 7: Formas bilineales y cuadráticas

## 7.1. Introducción

Sean  $V_1, \ldots, V_n$  y W espacios vectoriales definidos sobre el mismo cuerpo  $\mathbb{K}$ . Una aplicación

$$f: V_1 \times \cdots \times V_n \to W$$

se dice que es una aplicación multilineal si es lineal en cada una de sus componentes, es decir:

$$f(v_1, \dots, v_{i-1}, \lambda v_i, v_{i+1}, \dots, v_n) = \lambda f(v_1, \dots, v_{i-1}, v_i, v_{i+1}, \dots, v_n)$$
  
$$f(v_1, \dots, v_{i-1}, u + w, v_{i+1}, \dots, v_n) = f(v_1, \dots, v_{i-1}, u, v_{i+1}, \dots, v_n) + f(v_1, \dots, v_{i-1}, w, v_{i+1}, \dots, v_n)$$

para todo  $i = 1, ..., n; v_i, u, w \in V_i, \lambda \in \mathbb{K}$ .

En particular, cuando los espacios vectoriales  $V_i$  son todos iguales y  $W = \mathbb{K}$ , es decir

$$f: V \times \cdots \times V \to \mathbb{K}$$

entonces $f$ se denomina forma multilineal.

Un ejemplo de forma multilineal es el determinante. Si consideramos  $v_i = (v_{i1}, \dots, v_{in}), i = 1, \dots, n$ , vectores de  $\mathbb{K}^n$ , entonces la aplicación:

$$f: \mathbb{K}^n \times \cdots \times \mathbb{K}^n \to \mathbb{K}$$

definida por  $f(v_1, \ldots, v_n) = \det(v_{ij})$  es una forma multilineal.

Nuestro interés será el estudio de las formas bilineales definidas en un espacio vectorial que, posteriormente, nos servirán de base para dotar al espacio vectorial de una estructura geométrica: la de espacio vectorial euclídeo.

#### Definición 7.1
> Dado un  $\mathbb{K}$ -espacio vectorial V, una aplicación  $f: V \times V \to \mathbb{K}$  se dice que es una **forma bilineal** si para todo vector  $u, v. w \in V$  y todo escalar  $a.b \in \mathbb{K}$  cumple las siguientes propiedades:
> 
> (1) f(u+v,w) = f(u,w) + f(v,w).
> (2) f(au, v) = af(u, v).
> (3) f(u, v + w) = f(u, v) + f(u, w).
> (4) f(u, bv) = bf(u, v).
> 
> Estas cuatro propiedades son equivalentes a esta dos:
> 
> (5) f(au + bv, w) = af(u, w) + bf(v, w).
> (6) f(u, av + bw) = af(u, v) + bf(u, w).

El conjunto de todas las formas bilineales de un espacio vectorial V se denota por  $\mathcal{BL}(V)$ .

La propiedad (5) quiere decir que la aplicación $f$ es lineal en la primera componente -considerando fija la segunda- y la propiedad (6) que es lineal en la segunda componente -si consideramos fija la primera-. Es decir, para todo  $u \in V$  las siguientes aplicaciones son lineales  $f_u, f^u : V \to \mathbb{K}$  definidas por

$$f_u(w) = f(u, w)$$
 y  $f^u(w) = f(w, u)$ , para todo  $w \in V$ 

#### Ejemplo 7.2

(i) La aplicación  $f:\mathbb{K}^2\times\mathbb{K}^2\to\mathbb{K}$  definida por
$$f((x_1, x_2), (y_1, y_2)) = 2x_1y_1 + x_1y_2 - 2x_2y_1$$
es una forma bilineal. Veamos cómo se demuestran algunas de las propiedades:
$$
\begin{align}
(1) f((x_1, x_2) + (x'_1, x'_2), (y_1, y_2)) &= f((x_1 + x'_1, x_2 + x'_2), (y_1, y_2)) \\
&= 2(x_1 + x'_1)y_1 + (x_1 + x'_1)y_2 - 2(x_2 + x'_2)y_1 \\
&= (2x_1y_1 + x_1y_2 - 2x_2y_1) + (2x'_1y_1 + x'_1y_2 - 2x'_2y_1) \\
&= f((x_1, x_2), (y_1, y_2)) + f((x'_1, x'_2), (y_1, y_2)) \\
\\
(2) f(\lambda(x_1, x_2), (y_1, y_2)) &= f((\lambda x_1, \lambda x_2), (y_1, y_2)) \\
&= 2(\lambda x_1)y_1 + (\lambda x_1)y_2 - 2(\lambda x_2)y_1 \\
&= \lambda(2x_1y_1 + x_1y_2 - 2x_2y_1) \\
&= \lambda f((x_1, x_2), (y_1, y_2))
\end{align}
$$

Del mismo modo se demuestran las propiedades (3) y (4).

(ii) La aplicación  $f: \mathbb{K}^3 \times \mathbb{K}^3 \to \mathbb{K}$  definida por  $f((x_1, x_2, x_3), (y_1, y_2, y_3)) = x_1 y_1$  es bilineal y se demuestra del mismo modo que en el ejemplo anterior. Sin embargo la aplicación

$$f((x_1, x_2, x_3), (y_1, y_2, y_3)) = x_1y_1 + 1$$

no es bilineal. Vemos, por ejemplo, que no cumple la propiedad (2):

$$f(0(x_1, x_2, x_3), (y_1, y_2, y_3)) = 1 \neq 0 = 0 \cdot f((x_1, x_2, x_3), (y_1, y_2, y_3))$$

(iii) En  $\mathcal{C}([a,b],\mathbb{R})$  el espacio vectorial de las funciones reales de variable real y continuas en un intervalo [a,b], una forma bilineal está definida por la expresión

$$f(p,q) = \int_a^b p(x)q(x)dx$$
 para todo  $p,q \in \mathcal{C}([a,b],\mathbb{R})$ 

Las propiedades se deducen fácilmente de las propiedades de linealidad de la integral. Veamos la linealidad en la primera componente:

$$f(\lambda p(x) + \mu q(x), r(x)) = \int_a^b (\lambda p(x) + \mu q(x)) r(x) dx$$
$$= \lambda \int_a^b p(x) r(x) dx + \mu \int_a^b q(x) r(x) dx$$
$$= \lambda f(p(x), r(x)) + \mu f(q(x), r(x))$$

(iv) En el conjunto  $\mathfrak{M}_n(\mathbb{K})$  de matrices cuadradas de orden n con elementos en  $\mathbb{K}$ ,

$$f(A,B) = \operatorname{tr}(AB^t)$$

es una forma bilineal. Vemos que para todo  $A, B, C \in \mathfrak{M}_n(\mathbb{K}), a, b, c \in \mathbb{K}$  se cumple

$$f(aA + cC, B) = \operatorname{tr}((aA + cC)B^t) = \operatorname{tr}(aAB^t + cCB^t) = \operatorname{tr}(aAB^t) + \operatorname{tr}(cCB^t)$$
$$= a\operatorname{tr}(AB^t) + c\operatorname{tr}(CB^t) = af(A, B) + cf(C, B)$$

$$f(A, bB + cC) = \operatorname{tr}(A(bB + cC)^t) = \operatorname{tr}(A(bB^t + cC^t)) = \operatorname{tr}(AbB^t) + \operatorname{tr}(AcC^t)$$
$$= b\operatorname{tr}(AB^t) + c\operatorname{tr}(AC^t) = bf(A, B) + cf(A, C) \quad \Box$$

#### Proposición 7.3: Forma bilineal definida por una matriz cuadrada
> Sea  $A \in \mathfrak{M}_n(\mathbb{K})$  y  $x = (x_1, \dots, x_n), \ y = (y_1, \dots, y_n) \in \mathbb{K}^n$ . Llamemos  $X, Y \in \mathfrak{M}_{n \times 1}(\mathbb{K})$  a las matrices columna cuyos elementos son las componentes de los vectores x e y respectivamente. Entonces, la aplicación  $f : \mathbb{K}^n \times \mathbb{K}^n \to \mathbb{K}$  definida por
 > $$f(x,y) = X^t A Y = (x_1 \dots x_n) A \begin{pmatrix} y_1 \\ \vdots \\ y_n \end{pmatrix}$$> es una forma bilineal.

**Demostración:** Veamos que se cumplen las propiedades (5) y (6):

$$f(ax + bx', y) = (aX + bX')^t AY = (aX^t + bX'')AY = aX^t AY + bX''AY = af(x, y) + bf(x', y)$$
  
$$f(x, ay + by') = X^t A(aY + bY') = aX^t AY + bX^t AY' = af(x, y) + bf(x, y') \qquad \Box$$

#### Ejemplo 7.4 
La matriz  $A = \begin{pmatrix} 2 & 1 \\ -2 & 0 \end{pmatrix}$  define la siguiente forma bilineal en  $\mathbb{K}^2$ 

$$f(x,y) = X^{t}AY = (x_1, x_2) \begin{pmatrix} 2 & 1 \\ -2 & 0 \end{pmatrix} \begin{pmatrix} y_1 \\ y_2 \end{pmatrix} = 2x_1y_1 + x_1y_2 - 2x_2y_1$$

Se trata de la forma bilineal del Ejemplo 7.2(1).  $\square$ 

En el conjunto  $\mathcal{BL}(V)$  de formas bilineales de un espacio vectorial V se pueden definir una suma

$$(f+g)(x,y) = f(x,y) + g(x,y)$$

y un producto por escalares

$$(\lambda f)(x,y) = \lambda f(x,y)$$

que confieren a  $\mathcal{BL}(V)$  estructura de espacio vectorial sobre  $\mathbb{K}$ .

Algunas propiedades de las formas bilineales se enuncian en la siguiente proposición.

#### Proposición 7.5
> Si  $f:V\times V\to \mathbb{K}$  es una forma bilineal entonces se cumple:
>
> (1) f(u,0) = f(0,v) = 0 para todo  $u, v \in V$ .
> (2)  $f(\sum_{i=1}^{n} a_i u_i, \sum_{j=1}^{n} b_j v_j) = \sum_{i,j=1}^{n} a_i b_j f(u_i, v_j)$  para todo  $u_i, v_j \in V$ ,  $a_i, b_j \in \mathbb{K}$ .

La propiedad (2) nos dice cómo se comporta una aplicación bilineal respecto a combinaciones lineales de vectores y se deduce de las propiedades que definen la forma bilineal. Esta propiedad va a permitir representar las formas bilineales mediante matrices, conocidas las imágenes por $f$ de las  $n \times n$  parejas de los vectores de una base. Veámoslo.

## 7.2. Matriz de una forma bilineal

### Formas bilineales en espacios de dimensión finita

Estamos interesados en el estudio de espacios vectoriales de dimensión finita, y así será a partir de este momento en todo el capítulo. Sean $f$ una forma bilineal de un espacio vectorial V de dimensión n y  $\mathcal{B} = \{v_1, \ldots, v_n\}$  una base de V. Dados dos vectores cualesquiera  $x, y \in V$  cuyas coordenadas respecto a  $\mathcal{B}$  son  $x = (x_1, \ldots, x_n)_{\mathcal{B}}$  e  $y = (y_1, \ldots, y_n)_{\mathcal{B}}$ , entonces

$$f(x,y) = f\left(\sum_{i=1}^{n} x_i v_i, \sum_{j=1}^{n} y_j v_j\right) = \sum_{i,j=1}^{n} x_i y_j f(v_i, v_j)$$

Si consideramos la matriz  $\mathfrak{M}_{\mathcal{B}}(f) = (f(v_i, v_j))$  de orden n, entonces la última expresión de la ecuación anterior podemos escribirla como:

$$f(x,y) = (x_1 \dots x_n) \mathfrak{M}_{\mathcal{B}}(f) \begin{pmatrix} y_1 \\ \vdots \\ y_n \end{pmatrix} = X^t \mathfrak{M}_{\mathcal{B}}(f) Y \tag{7.1}$$

Esta matriz se denomina matriz de la forma bilineal $f$ respecto de la base  $\mathcal{B}$ . A la ecuación (7.1) se la denomina expresión analítica o ecuación de $f$ en la base  $\mathcal{B}$ .

#### Ejemplo 7.6

(a) Consideremos la forma bilineal del ejemplo 7.2 (1) definida por

$$f((x_1, x_2), (y_1, y_2)) = 2x_1y_1 + x_1y_2 - 2x_2y_1$$

La matriz de $f$ en la base canónica  $\mathcal{B}$  de  $\mathbb{K}^2$  se obtiene calculando las imágenes de todas las parejas de vectores de dicha base

$$f((1,0),(1,0)) = 2$$
,  $f((1,0),(0,1)) = 1$ ,  $f((0,1),(1,0)) = -2$ ,  $f((0,1),(0,1)) = 0$ 

de donde

$$\mathfrak{M}_{\mathcal{B}}(f) = \left(\begin{array}{cc} 2 & 1\\ -2 & 0 \end{array}\right)$$

Obsérvese cómo el elemento (i, j) de la matriz se corresponde con el coeficiente de  $x_i y_j$  en la expresión analítica de la forma cuadrática.

(b) En el conjunto de matrices  $2 \times 2$  con coeficientes en  $\mathbb{K}$  consideremos  $f(A, B) = \operatorname{tr}(AB^{t})$  la forma bilineal del Ejemplo 7.2 (4) y la base

$$\mathcal{B} = \{ A_1 = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}, \ A_2 = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}, \ A_3 = \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix}, \ A_4 = \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} \}$$

Calculamos la matriz de $f$ en la base  $\mathcal{B}$ 

$$f(A_{1}, A_{1}) = tr\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}) = tr\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} = 1$$

$$f(A_{1}, A_{2}) = tr\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix}) = tr\begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix} = 0$$

$$f(A_{1}, A_{3}) = tr\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} = tr\begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} = 0$$

Del mismo modo se comprueba que para  $i, j = 1, \ldots, 4$ 

$$f(A_i, A_j) = \operatorname{tr} A_i A_j^t = \delta_{ij} = \begin{cases} 1 & \text{si } i = j \\ 0 & \text{si } i \neq j \end{cases}$$

y se obtiene la matriz

$$\mathfrak{M}_{\mathcal{B}}(f) = \left(\begin{array}{cccc} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{array}\right)$$

Para calcular el valor de $f(A, B)$ siendo $A$ y $B$ dos matrices cualesquiera, podemos hacerlo utilizando la definición de $f$ o bien utilizando la matriz y coordenadas respecto a la base  $\mathcal{B}$ . Lo hacemos por los dos métodos para las matrices

$$A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix} \quad \text{y} \quad B = \begin{pmatrix} 5 & 6 \\ 7 & 8 \end{pmatrix}$$

Primer método:

$$f(A,B) = \operatorname{tr}(AB^t) = \operatorname{tr}\left(\left(\begin{array}{cc} 1 & 2 \\ 3 & 4 \end{array}\right)\left(\begin{array}{cc} 5 & 7 \\ 6 & 8 \end{array}\right)\right) = \operatorname{tr}\left(\begin{array}{cc} 17 & 23 \\ 39 & 53 \end{array}\right) = 70$$

Segundo Método: utilizando coordenadas  $A = (1, 2, 3, 4)_{\mathcal{B}}$ ,  $B = (5, 6, 7, 8)_{\mathcal{B}}$ , y la matriz de $f$ en dicha base, como en (7.1)

$$f(A.B) = (1\ 2\ 3\ 4) \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} 5 \\ 6 \\ 7 \\ 8 \end{pmatrix} = 70 \qquad \Box$$

#### Proposición 7.7
> Sea V un  $\mathbb K$  espacio vectorial de dimensión n y sea  $\mathcal B$  una base de V. La siguiente aplicación es un isomorfismo de espacios vectoriales
> $$\phi: \mathcal{BL}(V) \to \mathfrak{M}_n(\mathbb{K}) 
f \mapsto \phi(f) = \mathfrak{M}_{\mathcal{B}}(f)$$

**Demostración:** Basta observar que, fijada una base  $\mathcal{B}$ , dos formas bilineales $f$ y $g$ son iguales si y sólo si sus matrices  $\mathfrak{M}_{\mathcal{B}}(f)$  y  $\mathfrak{M}_{\mathcal{B}}(g)$  coinciden, es decir, si y solo si  $\phi(f) = \phi(g)$ . Por lo tanto  $\phi$  es inyectiva. La sobreyectividad de  $\phi$  se tiene porque toda matriz de  $\mathfrak{M}_n(\mathbb{K})$  define una forma bilineal y por lo tanto  $\mathrm{Im}(\phi) = \mathfrak{M}_n(\mathbb{K})$ . Además,  $\phi$  es lineal ya que si  $\mathcal{B} = \{v_1, \ldots, v_n\}$  entonces para todo  $a, b \in \mathbb{K}$  y  $f, g \in \mathcal{BL}(V)$  se tiene

$$(af + bg)(v_i, v_j) = a f(v_i, v_j) + b g(v_i, v_j)$$

de donde se deduce que

$$\phi(af + bg) = \mathfrak{M}_{\mathcal{B}}(af + bg) = a\,\mathfrak{M}_{\mathcal{B}}(f) + b\,\mathfrak{M}_{\mathcal{B}}(g) = a\phi(f) + b\phi(g) \qquad \Box$$

La proposición anterior nos indica que dim  $\mathcal{BL}(V) = \dim \mathfrak{M}_n(\mathbb{K}) = n^2$  lo que ya podíamos deducir del hecho de que una forma bilineal queda completamente determinada conociendo las imágenes de las  $n^2$  parejas de vectores de una base.

Con la experiencia adquirida en el estudio de las aplicaciones lineales, nos podemos preguntar ¿qué relación existe entre las matrices de una forma bilineal en distintas bases? Para responder adecuadamente recordamos la noción de matrices congruentes: dos matrices A y B son **congruentes** si existe una matriz $P$ regular tal que  $B = P^t A P$ .

#### Proposición 7.8
> Dos matrices son las matrices de una misma forma bilineal en distintas bases si y sólo si son congruentes.

**Demostración:**  $\Rightarrow$ ) Sean  $\mathcal{B}$  y  $\mathcal{B}'$  dos bases del espacio vectorial  $V, f \in \mathcal{BL}(V)$ , y  $\mathfrak{M}_{\mathcal{B}}(f)$  y  $\mathfrak{M}_{\mathcal{B}'}(f)$  las matrices de $f$ en dichas bases. Consideremos dos vectores genéricos  $x, y \in V$  y sean X e Y las matrices columna de sus coordenadas en la base  $\mathcal{B}$ , y X' e Y' las matrices columna de sus coordenadas en  $\mathcal{B}'$ . Si  $P = \mathfrak{M}_{\mathcal{B}'\mathcal{B}}$  es la matriz de cambio de base de  $\mathcal{B}'$  a  $\mathcal{B}$  entonces PX' = X y PY' = Y, de donde

$$f(x,y) = X^t \mathfrak{M}_{\mathcal{B}}(f) Y = (PX')^t \mathfrak{M}_{\mathcal{B}}(f) (PY') = (X')^t (P^t \mathfrak{M}_{\mathcal{B}}(f) P) Y'$$

Dado que la ecuación anterior se cumple para todo  $x, y \in V$ , entonces

$$\mathfrak{M}_{\mathcal{B}'}(f) = P^t \mathfrak{M}_{\mathcal{B}}(f) P \tag{7.2}$$

 $\Leftarrow$ ) Sean A y B dos matrices de orden n congruentes y $P$ regular tal que  $B = P^t A P$ . Consideramos una base  $\mathcal{B}$  de V y definimos la forma bilineal  $g: V \times V \to \mathbb{K}$  cuya matriz respecto de  $\mathcal{B}$  es $A$. Es decir

$$g(x,y) = X^t A Y$$

Por otro lado, como $P$ es regular, existe  $P^{-1}$ , y podemos considerarla como la matriz de cambio de base de cierta base  $\mathcal{B}'$  de V a  $\mathcal{B}$ , entonces razonando igual que antes se comprueba que  $B = P^tAB$  es la matriz de la misma forma bilineal $g$ en la base  $\mathcal{B}'$  ya que  $g(x,y) = X^tAY = X'^t(P^tAP)Y' = X'^tBY'$ .  $\square$ 

#### Definición 7.9
> Se llama **rango** de una forma bilineal $f$ al rango de cualquier matriz de $f$.

Observación: La definición de rango es consistente porque dos matrices congruentes tienen el mismo rango. Véase pag. 46

#### Ejemplo 7.10

Consideremos la forma bilineal de  $\mathbb{K}^2$  de ejemplos anteriores

$$f((x_1, x_2), (y_1, y_2)) = 2x_1y_1 + x_1y_2 - 2x_2y_1$$

Cuya matriz en la base canónica  $\mathcal{B} = \{(1,0), (0,1)\}$  es

$$\mathfrak{M}_{\mathcal{B}}(f) = \left(\begin{array}{cc} 2 & 1 \\ -2 & 0 \end{array}\right)$$

Para calcular la matriz de $f$ en la base  $\mathcal{B}' = \{(1,1), (1,-3)\}$  basta considerar la matriz de cambio de coordenadas  $P = \mathfrak{M}_{\mathcal{B}'\mathcal{B}}$  y obtenemos la matriz congruente

$$\mathfrak{M}_{\mathcal{B}'}(f) = P^t \mathfrak{M}_{\mathcal{B}}(f) P = \begin{pmatrix} 1 & 1 \\ 1 & -3 \end{pmatrix}^t \begin{pmatrix} 2 & 1 \\ -2 & 0 \end{pmatrix} \begin{pmatrix} 1 & 1 \\ 1 & -3 \end{pmatrix} = \begin{pmatrix} 1 & -3 \\ 9 & 5 \end{pmatrix}$$

la expresión analítica o ecuación de $f$ en la base  $\mathcal{B}'$  es

$$f((x_1, x_2)_{\mathcal{B}'}, (y_1, y_2)_{\mathcal{B}'}) = (x_1 x_2) \begin{pmatrix} 1 & -3 \\ 9 & 5 \end{pmatrix} \begin{pmatrix} y_1 \\ y_2 \end{pmatrix} = x_1 y_1 - 3x_1 y_2 + 9x_2 y_1 + 5x_2 y_2$$

Compruébese que se obtiene la misma matriz calculando directamente las imágenes  $f(v_i, v_j)$  de los vectores de  $\mathcal{B}'$ .  $\square$ 

#### Definición 7.11
> Una forma bilineal  $f: V \times V \to \mathbb{K}$  se dice que es :
>
> - simétrica si f(u,v) = f(v,u), para todo  $u, v \in V$ .
> - antisimétrica si f(u,v)=-f(v,u), para todo  $u,v\in V$ .

Por definición de matriz de aplicación bilineal respecto de una base se tiene que si A es una matriz cualquiera de $f$ entonces:

- $f$ simétrica si y sólo si A es una matriz simétrica, esto es  $A=A^t$ .
- $f$ es antisimétrica si y sólo si A es una matriz antisimétrica, esto es  $A=-A^t$ .

#### Proposición 7.12
> Toda forma bilineal  $f: V \times V \to \mathbb{K}$  se puede descomponer como suma de una forma bilineal simétrica  $f_{sim}$  y una antisimétrica  $f_{asim}$  con:
> $$f_{sim}(u,v) = \frac{1}{2}(f(u,v) + f(v,u)), \quad f_{asim}(u,v) = \frac{1}{2}(f(u,v) - f(v,u))$$

**Demostración:** Es inmediato comprobar que  $f(u,v) = f_{sim}(u,v) + f_{asim}(u,v)$ . Además, si  $A = \mathfrak{M}_{\mathcal{B}}(f)$  es la matriz de $f$ en una base  $\mathcal{B}$ , entonces

$$\mathfrak{M}_{\mathcal{B}}(f_{sim}) = \frac{A + A^t}{2} \text{, simétrica } \quad \text{y}  \quad \mathfrak{M}_{\mathcal{B}}(f_{asim}) = \frac{A - A^t}{2} \text{, antisimétrica} \qquad  \square $$

## 7.3. Formas cuadráticas (SEGUIR AQUÍ)

Con las formas bilineales definiremos las formas cuadráticas. Toda forma cuadrática tiene una expresión analítica que es un polinomio homogéneo de grado dos en varias variables.

#### Definición 7.13
> Se llama forma cuadrática asociada a la forma bilineal  $f: V \times V \to \mathbb{K}$  a la aplicación  $\Phi: V \to \mathbb{K}$  definida por  $\Phi(v) = f(v, v)$ .

#### Ejemplo 7.14
En  $\mathbb{R}_n[x]$  el espacio vectorial de polinomios en una indeterminada x, de grado menor o igual que n con coeficientes en  $\mathbb{R}$ , una forma bilineal viene dada por  $f(p,q) = \int_0^1 p(x)q(x)dx$ . Nótese que se trata de un caso particular de la forma bilineal del Ejemplo 7.2(3). Esta forma bilineal define la forma cuadrática

$$\Phi(p) = \int_0^1 p(x)^2 dx \qquad \Box$$

#### Ejemplo 7.15

La forma bilineal  $f: \mathbb{K}^2 \times \mathbb{K}^2 \to \mathbb{K}$  dada por

$$f((x_1, x_2), (y_1, y_2)) = 2x_1y_1 + x_1y_2 - 2x_2y_2$$

define la forma cuadrática  $\Phi: \mathbb{K}^2 \to \mathbb{K}$ 

$$\Phi(x,y) = f((x,y),(x,y)) = 2x^2 + xy - 2y^2$$

Consideremos una segunda forma bilineal $g$ en el mismo espacio vectorial

$$g((x_1, x_2), (y_1, y_2)) = 2x_1y_1 + \frac{1}{2}x_1y_2 + \frac{1}{2}x_2y_1 - 2x_2y_2$$

Podemos ver que la forma cuadrática que define es la misma que antes

$$\Phi(x,y) = g((x,y),(x,y)) = 2x^2 + \frac{1}{2}xy + \frac{1}{2}yx - 2y^2 = 2x^2 + xy - 2y^2$$

Las matrices de estas formas bilineales en la base  $\mathcal B$  canónica de  $\mathbb K^2$  son

$$\mathfrak{M}_{\mathcal{B}}(f) = \begin{pmatrix} 2 & 1 \\ 0 & -2 \end{pmatrix}
\quad \text{y} \quad  \mathfrak{M}_{\mathcal{B}}(g) = \begin{pmatrix} 2 & 1/2 \\ 1/2 & -2 \end{pmatrix} 
$$

Observamos que la primera no es simétrica y la segunda sí.  $\Box$ 

Como muestra el ejemplo, formas bilineales distintas pueden dar lugar a la misma forma cuadrática. Se cumple que entre todas las formas bilineales que dan lugar a una misma forma cuadrática sólo una de ellas es simétrica y se asocia canónicamente a la forma cuadrática. Lo recogemos en el siguiente resultado que es una caracterización de las formas cuadráticas que en algunos textos se da como definición.

#### Proposición 7.16: Caracterización de una forma cuadrática
> Una aplicación  $\Phi: V \to \mathbb{K}$  es una forma cuadrática si y sólo si cumple las siguientes propiedades:
> 
> (1)  $\Phi(\lambda v) = \lambda^2 \Phi(v)$  para todo  $v \in V$ .
> (2) La aplicación  $f_{\Phi}: V \times V \to \mathbb{K}$  definida por  $f_{\Phi}(u,v) = \frac{1}{2}[\Phi(u+v) \Phi(u) \Phi(v)]$  es una forma bilineal simétrica (que se denomina **forma polar** de  $\Phi$ ).

**Demostración:**  $\Rightarrow$ ) Supongamos que  $\Phi(v) = f(v, v)$  es una forma cuadrática asociada a la forma bilineal $f$ no necesariamente simétrica. Entonces  $\Phi(\lambda v) = f(\lambda v, \lambda v) = \lambda^2 f(v, v) = \lambda^2 \Phi(v)$ . Por otro lado

$$
\begin{align}
f_{\Phi}(u,v) &= \frac{1}{2} [\Phi(u+v) - \Phi(u) - \Phi(v)] \\
&= \frac{1}{2} [f(u+v,u+v) - f(u,u) - f(v,v)] \\
&= \frac{1}{2} [f(u,u) + f(u,v) + f(v,u) + f(v,v) - f(u,u) - f(v,v)] \\
&= \frac{1}{2} [f(u,v) + f(v,u)]
\end{align}
$$

es exactamente la parte simétrica de f:  $f_{\Phi} = f_{sim}$ , como en la Proposición 7.12. Luego  $f_{\Phi}$  es bilineal y simétrica.

 $\Leftarrow$ ) Ahora, supongamos que  $\Phi:V\to\mathbb{K}$  es una aplicación que cumple las propiedades (1) y (2). Entonces

$$f_{\Phi}(u,u) = \frac{1}{2} [\Phi(2u) - \Phi(u) - \Phi(u)] = \frac{1}{2} [2^2 \Phi(u) - 2 \Phi(u)] = \Phi(u)$$

por lo que  $\Phi$  es la forma cuadrática asociada a la forma bilineal  $f_{\Phi}$ .  $\square$ 

**Observación**: Dada una forma cuadrática  $\Phi$  la forma polar  $f_{\Phi}$  es la única forma bilineal y simétrica tal que  $f_{\Phi}(x,x) = \Phi(x)$ .

### Matriz de una forma cuadrática

Sean  $\Phi$  una forma cuadrática de V generada por una forma bilineal f,  $\mathcal{B} = \{v_1, \ldots, v_n\}$  una base de V y  $A = \mathfrak{M}_{\mathcal{B}}(f)$  la matriz de $f$ respecto a la base  $\mathcal{B}$ . Dado un vector  $x \in V$  cuyas coordenadas respecto a  $\mathcal{B}$  son  $x = (x_1, \ldots, x_n)_{\mathcal{B}}$ , entonces podemos calcular su imagen por  $\Phi$  utilizando la matriz de $f$ del siguiente modo

$$\Phi(x) = f(x, x) = X^t A X$$

Dado que distintas formas bilineales pueden generar la misma forma cuadrática, entonces existen distintas matrices que cumplen la ecuación anterior. Llamaremos matriz de  $\Phi$  a la única simétrica.

#### Definición 7.17
> Se denomina matriz de una forma cuadrática  $\Phi: V \to \mathbb{K}$  en una base  $\mathcal{B}$  de V, y se denota por  $\mathfrak{M}_{\mathcal{B}}(\Phi)$ , a la matriz de su forma polar en dicha base. La ecuación
> $$\Phi(x) = X^t \,\mathfrak{M}_{\mathcal{B}}(\Phi) \,X \tag{7.3}$$
> se denomina **expresión analítica** o **ecuación** de  $\Phi$  en la base  $\mathcal{B}$ , siendo X la matriz columna de las coordenadas de  $x \in V$  en la base  $\mathcal{B}$ .

La demostración de la proposición anterior nos indica una forma de cálculo de la forma polar. Sea $f$ una forma bilineal no necesariamente simétrica y  $\Phi(x) = f(x,x)$  la forma cuadrática asociada. Acabamos de ver que la forma polar de  $\Phi$  es la parte simétrica  $f_{sim}$  de f

$$f_{\Phi}(u,v) = \frac{1}{2}[f(u,v) + f(v,u)]$$

Luego, si A es la matriz de $f$ con respecto de una base  $\mathcal{B}$  entonces la matriz de la forma polar  $f_{\Phi}$  (y por tanto la matriz de  $\Phi$ ) respecto de  $\mathcal{B}$  es:

$$\frac{A+A^t}{2}$$

#### Ejemplo 7.18: Cálculo de la forma polar

Consideremos la forma cuadrática  $\Phi$  asociada a la forma bilineal $f$ de  $\mathbb{K}^3$  cuya ecuación respecto a la base canónica  $\mathcal{B}$  es:

$$f((x_1, x_2, x_3), (y_1, y_2, y_3)) = x_1y_1 + 2x_1y_2 - x_2y_1 - 2x_1y_3 - x_2y_2 + 3x_3y_3$$

Determinamos la matriz de $f$ en  $\mathcal{B}$  teniendo en cuenta que el coeficiente de  $x_iy_j$  será el elemento de la fila i columna $j$:

$$A = \mathfrak{M}_{\mathcal{B}}(f) = \begin{pmatrix} 1 & 2 & -2 \\ -1 & -1 & 0 \\ 0 & 0 & 3 \end{pmatrix}$$

Como $f$ no es simétrica, entonces $f$ no es la forma polar de  $\Phi$ , que vendrá determinada por la parte simétrica de $f$:

$$\mathfrak{M}_{\mathcal{B}}(\Phi) = \mathfrak{M}_{\mathcal{B}}(f_{\Phi}) = \frac{A + A^{t}}{2} = \begin{pmatrix} 1 & 1/2 & -1 \\ 1/2 & -1 & 0 \\ -1 & 0 & 3 \end{pmatrix}$$

Observamos que se puede obtener de forma directa la matriz de  $\Phi$  sustituyendo cada entrada  $a_{ij}$  de la matriz A de $f$ por la semisuma  $\frac{a_{ij}+a_{ji}}{2}$ . Los elementos de la diagonal de A quedan invariantes.

También podemos obtener la matriz de  $\Phi$  a partir de su ecuación en la base  $\mathcal B$ 

$$\Phi((x_1, x_2, x_3)) = f((x_1, x_2, x_3), (x_1, x_2, x_3)) = x_1^2 + x_1 x_2 - 2x_1 x_3 - x_2^2 + 3x_3^2 \tag{7.4}$$

Los coeficientes de los elementos cuadráticos  $x_i^2$  salen en la diagonal principal, y los coeficientes de  $x_i x_j$  se reparten la mitad en cada una de las posiciones simétricas (i, j) y (j, i). En efecto, se comprueba que

$$\Phi((x_1, x_2, x_3)) = (x_1 \ x_2 \ x_3) \begin{pmatrix} 1 & 1/2 & -1 \\ 1/2 & -1 & 0 \\ -1 & 0 & 3 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix}$$

da lugar a la expresión (7.4).

### Matrices de una forma cuadrática en distintas bases: matrices congruentes

Por ser la matriz de una forma cuadrática igual a la de su forma polar asociada, los cambios de base se realizan del mismo modo que en las formas bilineales, como en (7.2). Sean  $\mathcal{B}$  y  $\mathcal{B}'$  dos bases del espacio vectorial V.  $\mathfrak{M}_{\mathcal{B}}(\Phi)$  y  $\mathfrak{M}_{\mathcal{B}'}(\Phi)$  las matrices de  $\Phi$  en dichas bases y  $P = \mathfrak{M}_{\mathcal{B}'\mathcal{B}}$  la matriz de cambio de base de  $\mathcal{B}'$  a  $\mathcal{B}$ , entonces se tiene la relación de congruencia:

$$\mathfrak{M}_{\mathcal{B}'}(\Phi) = P^t \, \mathfrak{M}_{\mathcal{B}}(\Phi) \, P$$

#### Ejemplo 7.19

Consideremos la forma cuadrática del ejemplo anterior cuya matriz en la base

canónica  $\mathcal{B}$  de  $\mathbb{K}^3$  es

$$\mathfrak{M}_{\mathcal{B}}(\Phi) = \begin{pmatrix} 1 & 1/2 & -1 \\ 1/2 & -1 & 0 \\ -1 & 0 & 3 \end{pmatrix}$$

La matriz de  $\Phi$  en la base  $\mathcal{B}' = \{(1,0,0), (-1/2,1,0), (4/5,2/5,1)\}$  se obtiene considerando la matriz  $P = \mathfrak{M}_{\mathcal{B}'\mathcal{B}}$  de cambio de base de  $\mathcal{B}'$  a  $\mathcal{B}$  y la relación de congruencia  $\mathfrak{M}_{\mathcal{B}'}(\Phi) = P^t \mathfrak{M}_{\mathcal{B}}(\Phi) P$ 

$$\begin{pmatrix} 1 & -1/2 & 4/5 \\ 0 & 1 & 2/5 \\ 0 & 0 & 1 \end{pmatrix}^{\ell} \begin{pmatrix} 1 & 1/2 & -1 \\ 1/2 & -1 & 0 \\ -1 & 0 & 3 \end{pmatrix} \begin{pmatrix} 1 & -1/2 & 4/5 \\ 0 & 1 & 2/5 \\ 0 & 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 \\ 0 & -5/4 & 0 \\ 0 & 0 & 11/5 \end{pmatrix}$$

La ecuación de  $\Phi$  en la base  $\mathcal{B}'$  es  $\Phi((x_1, x_2, x_3)_{\mathcal{B}'}) = x_1^2 - \frac{5}{4}x_2^2 + \frac{11}{5}x_3^2$ . Si comparamos esta ecuación con (7.4), la ecuación de  $\Phi$  en  $\mathcal{B}$ , vemos que ésta es más sencilla, tiene menos sumandos y es más fácil determinarla a partir de la matriz.  $\square$ 

## 7.4. Diagonalización de formas bilineales simétricas y formas cuadráticas

En esta sección se tratarán sólo las formas bilineales simétricas. El objetivo que perseguimos es encontrar una matriz lo más sencilla posible de una forma bilineal simétrica o de una forma cuadrática -como acabamos de hacer en el ejemplo anterior-, de manera que nos ayude a comprender la naturaleza de la forma. En este sentido, el concepto de conjugación que definimos a continuación jugará un papel fundamental.

#### Definición 7.20
> Sea  $f: V \times V \to \mathbb{K}$  una forma bilineal simétrica.
> 
> - Dos vectores  $u, v \in V$  son **conjugados** respecto a $f$ si f(u, v) = 0.
> - Un vector  $u \in V$  no nulo es **autoconjugado** o **isótropo** si es conjugado de sí mismo respecto a f, es decir f(u, u) = 0.
> - El **núcleo** o **radical** de $f$ es el conjunto
> $$Ker(f) = \{ u \in V : f(u, v) = 0 \text{ para todo } v \in V \}$$> - $f$ es degenerada si  $Ker(f) \neq \{0\}$ .
> 
> Los mismos conceptos existen para formas cuadráticas. Sean  $\Phi$  una forma cuadrática y  $f_{\Phi}$  su forma polar. Dos vectores son **conjugados** respecto a  $\Phi$  si lo son respecto a  $f_{\Phi}$ . Un vector es **autoconjugado** respecto a  $\Phi$  si lo es respecto a  $f_{\Phi}$ . El **núcleo** de  $\Phi$  es el núcleo de  $f_{\Phi}$ . Y  $\Phi$  es **no degenerada** si y sólo si no lo es  $f_{\Phi}$ .

#### Ejemplo 7.21

Consideramos la forma cuadrática de  $\mathbb{K}^2$  dada por

$$\Phi((x,y)) = x^2 + 2xy$$

Su matriz en la base canónica  $\mathcal{B}$  de  $\mathbb{K}^2$  es

$$\mathfrak{M}_{\mathcal{B}}(\Phi) = \left(\begin{array}{cc} 1 & 1 \\ 1 & 0 \end{array}\right)$$

Los vectores v=(1,1) y u=(1,-2) son conjugados respecto a  $\Phi$  ya que

$$f_{\Phi}((1,1),(1,-2)) = (1\ 1) \begin{pmatrix} 1 & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} 1 \\ -2 \end{pmatrix} = 0$$

El núcleo de  $\Phi$  es el conjunto de vectores (x,y) tales que

$$f_{\Phi}((x',y'),(x,y)) = (x'\ y') \begin{pmatrix} 1 & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = 0 \text{ para todo } (x',y') \in \mathbb{K}^2$$

lo cual se cumple si y sólo si

$$\begin{pmatrix} 1 & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix} \Leftrightarrow x = 0, \ y = 0$$

Luego  $\operatorname{Ker}(\Phi) = \{(0,0)\}$  es el subespacio trivial, y tanto  $\Phi$  como la forma polar  $f_{\Phi}$  son no degeneradas. El vector (-2,1) es autoconjugado ya que

$$f_{\Phi}((-2,1),(-2,1)) = (-2 \ 1) \begin{pmatrix} 1 & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} -2 \\ 1 \end{pmatrix} = (-2 \ 1) \begin{pmatrix} -1 \\ -2 \end{pmatrix} = 2 - 2 = 0$$

**Observación**: Por la definición de núcleo de $f$ se tiene que todo vector del núcleo es autoconjugado, pero el recíproco no es cierto en general. Un vector autoconjugado no tiene por qué pertenecer al núcleo, como acabamos de ver en el ejemplo anterior.

#### Proposición 7.22
> Sea  $f: V \times V \to \mathbb{K}$  una forma bilineal simétrica y  $\mathcal{B}$  es una base de V. Se cumple que:
> 
> (1) El núcleo de $f$ es un subespacio vectorial de V.
> (2) Unas ecuaciones implícitas de Ker(f) respecto a  $\mathcal{B}$  vienen determinadas por el sistema lineal  $\mathfrak{M}_{\mathcal{B}}(f)X = 0$  siendo  $X \in \mathfrak{M}_{n \times 1}$ , la matriz columna cuyos elementos son las coordenadas en  $\mathcal{B}$  de un vector genérico  $x \in \text{Ker}(f)$ .
> (3) $f$ es degenerada si y sólo si  $\det \mathfrak{M}_{\mathcal{B}}(f) = 0$ .

**Demostración:** (1) Sean  $u, v \in \text{Ker}(f)$  y  $a, b \in \mathbb{K}$ ; y veamos que cualquier combinación lineal  $au + bv \in \text{Ker}(f)$ . Por ser $f$ bilineal se tiene que

$$f(au + bv, x) = af(u, x) + bf(v, x) = a \cdot 0 + b \cdot 0 = 0$$
 para todo  $x \in V$ 

luego  $au+bv\in \mathrm{Ker}(f)$  y así  $\mathrm{Ker}(f)$  es un subespacio vectorial.

(2) Un vector  $x = (x_1, \dots, x_n)_{\mathcal{B}} \in \text{Ker}(f)$  si y sólo si f(v, x) = 0 para todo  $v = (v_1, \dots, v_n)_{\mathcal{B}} \in V$ . Es decir:

$$f(v,x) = (v_1 \cdots v_n) \mathfrak{M}_{\mathcal{B}}(f) \begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix} = 0$$

Como se tiene que cumplir, para todo v, entonces  $x \in \text{Ker}(f)$  si y sólo si  $\mathfrak{M}_{\mathcal{B}}(f)X = 0$ .

(3) $f$ es degenerada si y sólo si  $\operatorname{Ker}(f) \neq \{0\}$ . Por la propiedad (2) es equivalente a decir que el sistema lineal homogéneo  $\mathfrak{M}_{\mathcal{B}}(f)X = 0$  tiene solución no trivial si y sólo si det  $\mathfrak{M}_{\mathcal{B}}(f) = 0$ .  $\square$ 

#### Definición 7.23
> Sea  $f: V \times V \to \mathbb{K}$  una forma bilineal simétrica. Se llama **conjugado de un subconjunto**  $S \subseteq V$  respecto a f, y se denota por  $S^c$ , al conjunto formado por todos los vectores que son conjugados de todos los vectores de S:
> $$S^c = \{ u \in V : f(u, v) = 0 \text{ para todo } v \in S \}$$> Si S está formado por un único vector  $S = \{v\}$  escribiremos  $v^c$  en lugar de  $\{v\}^c$ . En particular, de la definición se deduce que  $V^c = \text{Ker}(f)$  y  $0^c = V$ .

#### Proposición 7.24
> Sean  $f: V \times V \to \mathbb{K}$  una forma bilineal simétrica y S un subconjunto no vacío de V. Se cumplen las siguientes propiedades
> 
> (1)  $S^c = L(S)^c$ .
> (2) Si U es subespacio vectorial de V entonces  $U^c$  también es subespacio vectorial.
> (3) Si  $U = L(v_1, \ldots, v_k)$  entonces  $x \in U^c$  si y sólo si  $f(x, v_1) = 0, \ldots, f(x, v_k) = 0$ . En particular,  $\dim U^c + \dim U \geq n$ . Y se tiene la igualdad  $\dim U^c + \dim U = n$  si $f$ es no degenerada.

**Demostración:** (1) Para la primera propiedad basta observar que si  $u \in S^c$ , entonces es conjugado de cualesquiera vectores  $v_1, \ldots, v_k \in S$  y podemos ver que también lo es de cualquier combinación lineal de dichos vectores. En efecto,

$$f(\alpha_1 v_1 + \dots + \alpha_k v_k, u) = \alpha_1 f(v_1, u) + \dots + \alpha_k f(v_k, u) = \alpha_1 0 + \dots + \alpha_k 0 = 0$$

de donde  $u \in L(S)^c$ , y se concluye que  $S^c \subseteq L(S)^c$ . El recíproco es trivial  $L(S)^c \subseteq S^c$ , de donde se tiene la igualdad.

(2) Sean  $u \in U$ ,  $v, w \in U^c$  y  $\alpha, \beta \in \mathbb{K}$ , entonces  $f(\alpha v + \beta w, u) = \alpha f(v, u) + \beta f(w, u) = \alpha 0 + \beta 0 = 0$ , por lo que  $\alpha v + \beta w \in U^c$ .

(3) Sea  $U = L(v_1, \ldots, v_k)$  y  $x \in U^c$  entonces  $f(x, v_1) = 0, \ldots, f(x, v_k) = 0$  se cumple por definición de conjugado. Supongamos que x es un vector tal que  $f(x, v_1) = 0, \ldots, f(x, v_k) = 0$ . Por definición,  $x \in \{v_1, \ldots, v_k\}^c$ , y aplicando la propiedad (1) se deduce  $x \in L(v_1, \ldots, v_k)^c = U^c$ . Si consideramos una base  $\mathcal{B}$  de V, la matriz de $f$ en dicha base  $\mathfrak{M}_{\mathcal{B}}(f)$ , y  $x = (x_1, \ldots, x_n)_{\mathcal{B}}$  las coordenadas de un vector genérico de  $U^c$ , entonces las condiciones  $f(x, v_1) = 0, \ldots, f(x, v_k) = 0$  determinan un sistema lineal de k ecuaciones en las n incógnitas  $x_1, \ldots, x_n$ . El conjunto de soluciones del sistema es el subespacio  $U^c$ , por lo que su dimensión es dim  $U^c = n (n^o)$  ecuaciones independientes)  $\geq n k \geq n \dim U$ . Nótese que la última desigualdad, sería una igualdad si  $\{v_1, \ldots, v_k\}$  fuese una base de U.

Si $f$ es no degenerada, entonces det  $\mathfrak{M}_{\mathcal{B}}(f) \neq 0$ . Si dim  $U = \operatorname{rg}\{v_1, \dots, v_k\} = r, y V_1, \dots, V_k$  son las matrices columna de coordenadas en  $\mathcal{B}$  de  $v_1, \ldots, v_k$ : entonces las ecuaciones que definen  $U^c$  son
$$f(x, v_1) = X^t M_{\mathcal{B}}(f) V_1 = 0, \dots, f(x, v_k) = X^t M_{\mathcal{B}}(f) V_k = 0$$

son un sistema con r ecuaciones independientes. Luego dim  $U^c = n - r$  y así dim  $U + \dim U^c = n$ .  $\square$ 

La propiedad (3) nos proporciona un método para obtener unas ecuaciones del conjugado de un subespacio dado, como vemos en el siguiente ejemplo.

#### Ejemplo 7.25
Sea  $\mathcal{B} = \{v_1, v_2, v_3\}$  una base de un espacio vectorial V y sean $f$ y $g$ dos formas bilineales cuyas matrices en la base  $\mathcal{B}$  son:

$$\mathfrak{M}_{\mathcal{B}}(f) = \begin{pmatrix} 1 & -1 & -1 \\ -1 & 1 & 1 \\ -1 & 1 & 0 \end{pmatrix}, \quad \mathfrak{M}_{\mathcal{B}}(g) = \begin{pmatrix} 1 & -1 & -1 \\ -1 & 2 & 0 \\ -1 & 0 & 1 \end{pmatrix}$$

Vamos a determinar el subespacio conjugado del plano $P$ de ecuación  $x_1 - x_2 + x_3 = 0$  respecto a $f$ y respecto a g. En primer lugar, obtenemos una base  $P = L(u_1 = (1, 1, 0)_{\mathcal{B}}, u_2 = (1, 0, -1)_{\mathcal{B}})$ , y a continuación aplicamos la propiedad (3).

• Conjugado de $P$ respecto a  $f: P_f^c = \{x = (x_1, x_2, x_3)_{\mathcal{B}} \in V : f(u_1, x) = 0, f(u_2, x) = 0\}$ 

$$
\begin{align}
f(u_1, x) &= (1, 1, 0) \begin{pmatrix} 1 & -1 & -1 \\ -1 & 1 & 1 \\ -1 & 1 & 0 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = 0 \Leftrightarrow 0 = 0 \\
f(u_2, x) &= (1, 0, -1) \begin{pmatrix} 1 & -1 & -1 \\ -1 & 1 & 1 \\ -1 & 1 & 0 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = 0 \Leftrightarrow 2x_1 - 2x_2 - x_3 = 0
\end{align}
$$


Así, el conjugado de $P$ respecto a $f$ es el plano  $P_f^c \equiv \{2x_1 - 2x_2 - x_3 = 0\}$ .

• Conjugado de $P$ respecto a  $g: P_g^c = \{x = (x_1, x_2, x_3)_{\mathcal{B}} \in V: g(u_1, x) = 0, g(u_2, x) = 0\}$ 

$$
\begin{align}
g(u_1,x) &= (1,1,0) \begin{pmatrix} 1 & -1 & -1 \\ -1 & 2 & 0 \\ -1 & 0 & 1 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = 0 \Leftrightarrow x_2 - x_3 = 0 \\
g(u_2,x) &= (1,0,-1) \begin{pmatrix} 1 & -1 & -1 \\ -1 & 2 & 0 \\ -1 & 0 & 1 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = 0 \Leftrightarrow 2x_1 - x_2 - 2x_3 = 0
\end{align}
$$

Así, el conjugado de $P$ respecto a $g$ es la recta  $P_g^c \equiv \{x_2 - x_3 = 0, \ 2x_1 - x_2 - 2x_3 = 0\}.$ 

Comprobamos también la relación de dimensiones entre $P$ y su conjugado:

$$
\dim P + \dim P_f^c = 2 + 2 > 3 = \dim V
, \quad  
\dim P + \dim P_g^c = 2 + 1 = 3 = \dim V
$$

En el segundo caso, respecto a g, se da la igualdad  $\dim(P) + \dim(P_g^c) = \dim(V)$  ya que $g$ es no degenerada: basta ver que  $\det(\mathfrak{M}_{\mathcal{B}}(g)) \neq 0$  y por tanto  $\ker(g) = \{0\}$ . Mientras que en la conjugación respecto de $f$ no, pues $f$ sí es degenerada. De hecho el vector  $u_1 = v_1 + v_2$  está en el núcleo de $f$.  $\square$ 

#### Proposición 7.26: Propiedades de la conjugación
> Sean  $f:V\times V\to\mathbb{K}$  una forma bilineal simétrica y U y W subespacios vectoriales de V. Se cumplen las siguientes propiedades:
> 
> (1) Si  $U \subseteq W$ , entonces  $W^c \subseteq U^c$ .
> (2)  $U^c + W^c \subseteq (U \cap W)^c$ .
> (3)  $U^c \cap W^c = (U + W)^c$ .
> $(4) \ U \subseteq (U^c)^c.$

La demostración de estas propiedades es sencilla y se deja como ejercicio propuesto, véase pág 302.

Buscando un modo de clasificar las formas bilineales simétricas interesa, como ya hemos hecho con los endomorfismos, una representación matricial sencilla. Si los vectores de una base  $\mathcal{B} = \{v_1, \dots, v_n\}$  fueran conjugados dos a dos, es decir  $f(v_i, v_j) = 0$  para todo  $i \neq j$ , entonces la matriz de la forma bilineal o cuadrática sería diagonal. En el siguiente teorema demostraremos la existencia de una base tal a la que denominaremos **base de vectores conjugados** respecto a $f$ o también respecto a la forma cuadrática  $\Phi(v) = f(v, v)$ . Primero, se presenta un resultado previo que facilitará la demostración del teorema posterior.

#### Lema 7.27
> Dada una forma bilineal simétrica $f$ y  $u \in V$  un vector no autoconjugado, entonces se cumple que el subespacio  $L(u)^c$ , conjugado de la recta L(u), es un hiperplano y  $V = L(u) \oplus L(u)^c$ .

**Demostración:** Sea  $\mathcal{B}$  una base de V y  $A = \mathfrak{M}_{\mathcal{B}}(f)$  la matriz de $f$ en dicha base. Si  $u = (u_1, \dots, u_n)_{\mathcal{B}}$ , entonces unas ecuaciones de  $L(u)^c$  vienen determinadas por

$$f(x,u) = (x_1 \cdots x_n) A \begin{pmatrix} u_1 \\ \vdots \\ u_n \end{pmatrix} = 0$$

Como u no es autoconjugado, entonces

$$A \begin{pmatrix} u_1 \\ \vdots \\ u_n \end{pmatrix} = \begin{pmatrix} a_1 \\ \vdots \\ a_n \end{pmatrix} \neq 0$$

por lo que  $a_1x_1 + \cdots + a_nx_n = 0$  es una ecuación implícita de  $L(u)^c$  que resulta ser un hiperplano. Además, por ser u no autoconjugado  $L(u) \cap L(u)^c = \{0\}$  lo que completa la demostración.

**Observación**: Nótese que  $U \oplus U^c = V$  no se cumple en general, como hemos visto en el ejemplo anterior.

#### Teorema 7.28: Existencia de base de vectores conjugados
> Dada una forma bilineal simétrica $f$ en un espacio vectorial V de dimensión finita n, existe una base de vectores conjugados respecto a $f$. Equivalentemente, existe una matriz diagonal de $f$.

**Demostración:** Realizaremos la demostración por inducción en la dimensión de V. Si dimV=1, entonces trivialmente cualquier matriz de $f$ es diagonal, y cualquier base es de vectores conjugados.

Supongamos que el resultado es cierto para dimensión n-1.

Sea V un espacio vectorial de dimensión n. Si $f$ es la forma bilineal nula, entonces cualquier base de V es de vectores conjugados. Si $f$ es no nula, entonces existirá algún vector  $v_1$  tal que no sea autoconjugado  $f(v_1, v_1) \neq 0$  o equivalentemente  $\Phi(v_1) \neq 0$ . Entonces, por el lema anterior el espacio conjugado de la recta  $L(v_1)$  es el hiperplano  $H = L(v_1)^c$  y se tiene  $V = L(v_1) \oplus H$ . Por ser H un subespacio de dimensión n-1 podemos considerar  $f|_H$  la restricción de $f$ a H, y aplicarle la hipótesis de inducción encontrando en H una base  $\{v_2, \ldots, v_n\}$  de vectores conjugados respecto a $f$. Así,  $\mathcal{B}' = \{v_1, v_2, \ldots, v_n\}$  es la base de V buscada y la matriz de $f$ respecto de  $\mathcal{B}'$  es diagonal:

$$
\mathfrak{M}_{\mathcal{B}'}(f) 
= 
\begin{pmatrix} f(v_1, v_1) & & & 0 \\
& f(v_2, v_2) & & \\ 
& & \ddots & \\
0 & & & f(v_n, v_n) 
\end{pmatrix} \qquad \Box$$

#### Corolario 7.29
> Toda matriz simétrica es congruente con una matriz diagonal.

**Demostración:** Sea A una matriz simétrica, y supongamos que es la matriz de una forma bilineal simétrica $f$ respecto a una base  $\mathcal{B}$ , esto es.  $A = \mathfrak{M}_{\mathcal{B}}(f)$ . Del Teorema 7.28 se sigue que existe una base  $\mathcal{B}'$  de vectores conjugados respecto a $f$ tal que  $\mathfrak{M}_{\mathcal{B}'}(f)$  es una matriz diagonal  $D = \mathfrak{M}_{\mathcal{B}'}(f)$ . Entonces si $P$ es la matriz de cambio de base de  $\mathcal{B}'$  a  $\mathcal{B}$  tenemos que  $\mathfrak{M}_{\mathcal{B}'}(f) = P^t \mathfrak{M}_{\mathcal{B}}(f) P$  (véase (7.2), pág. 277). Es decir  $D = P^t A P$ , por lo que A es congruente con D.  $\square$ 

La demostración del Teorema 7.28 es constructiva y nos indica la forma en que procederemos para encontrar una base de vectores conjugados respecto a una forma bilineal simétrica dada. Y consecuentemente, también para dada una matriz simétrica A encontrar una matriz regular $P$ y una matriz diagonal D tal que  $D = P^t A P$ . La seguimos en el siguiente ejemplo.

#### Ejemplo 7.30

Sea $f$ una forma bilineal cuya matriz respecto a una base  $\mathcal{B} = \{u_1, u_2, u_3\}$  es

$$\mathfrak{M}_{\mathcal{B}}(f) = \left(\begin{array}{ccc} 1 & 1 & 1 \\ 1 & 4 & 0 \\ 1 & 0 & 2 \end{array}\right)$$

Dado que $f$ no es nula, para construir una base de vectores conjugados  $\mathcal{B}' = \{v_1, v_2, v_3\}$  comenzamos tomando un vector  $v_1$  tal que  $f(v_1, v_1) \neq 0$ . Nos sirve el vector  $u_1$  ya que el elemento de la fila 1, columna 1 de la matriz es  $f(u_1, u_1) = 1$ . Así que fijamos  $v_1 = u_1$  con  $f(v_1, v_1) = 1$ .

A continuación construimos una base del subespacio (hiperplano)  $L(v_1)^c$  cuya ecuación en  $\mathcal{B}$  viene determinada por

$$(x\ y\ z) \left( \begin{array}{ccc} 1 & 1 & 1 \\ 1 & 4 & 0 \\ 1 & 0 & 2 \end{array} \right) \left( \begin{array}{c} 1 \\ 0 \\ 0 \end{array} \right) = x + y + z = 0$$

Dado que  $f|_{L(v_1)^c}$  no es nula, escogemos un  $v_2 \in L(v_1)^c$  tal que  $f(v_2, v_2) \neq 0$ . Nos sirve  $v_2 = (1, -1, 0)_{\mathcal{B}}$  ya que  $f(v_2, v_2) = 3$ .

Finalmente construimos una base del subespacio  $L(v_1, v_2)^c$  cuyas ecuaciones en  $\mathcal{B}$  son la ecuación de  $L(v_1)^c$  y la ecuación de  $L(v_2)^c$ . La ecuación de  $L(v_2)^c$  viene determinada por

$$(x\ y\ z) \left( \begin{array}{ccc} 1 & 1 & 1 \\ 1 & 4 & 0 \\ 1 & 0 & 2 \end{array} \right) \left( \begin{array}{c} 1 \\ -1 \\ 0 \end{array} \right) = -3y + z = 0$$

y así tenemos que

$$L(v_1, v_2)^c = L(v_1)^c \cap L(v_2)^c \equiv \{x + y + z = 0, -3y + z = 0\}.$$

Como la dimensión de  $L(v_1, v_2)^c$  es 1 podemos escoger uno cualquiera de sus vectores no nulos. Por ejemplo, con  $v_3 = (-4, 1, 3)_{\mathcal{B}}$  tenemos  $f(v_3, v_3) = 6$ .

La matriz de $f$ en la base  $\mathcal{B}'$  es

$$\mathfrak{M}_{\mathcal{B}'}(f) = (f(v_i, v_j)) = \left( \begin{array}{ccc} 1 & 0 & 0 \ 0 & 3 & 0 \ 0 & 0 & 6 \end{array} \right)$$

Si  $\Phi$  es la forma cuadrática asociada a f, entonces la ecuación de  $\Phi$  en la base  $\mathcal B$  es

$$\Phi((x, y, z)_{\mathcal{B}}) = X^{t}\mathfrak{M}_{\mathcal{B}}(f)X = x^{2} + 2xy + 4y^{2} + 2xz + 2z^{2}$$

mientras que la ecuación de  $\Phi$  en la base  $\mathcal{B}'$  es más sencilla

$$\Phi((x, y, z)_{\mathcal{B}'}) = X^t \mathfrak{M}_{\mathcal{B}'}(f) X = x^2 + 3y^2 + 6z^2$$

Además, la matriz  $P = \mathfrak{M}_{\mathcal{B}'\mathcal{B}}$  de cambio de base es

$$P = \begin{pmatrix} 1 & 1 & -4 \\ 0 & -1 & 1 \\ 0 & 0 & 3 \end{pmatrix} \quad \text{y se cumple } \mathfrak{M}_{\mathcal{B}'}(f) = P^t \mathfrak{M}_{\mathcal{B}}(f) P \qquad \Box$$

#### Definición 7.31
> Dada una forma cuadrática  $\Phi : V \mapsto \mathbb{K}$  y una base  $\mathcal{B}$  de V se dice que  $\Phi$  está **diagonalizada** o que está **escrita como suma de cuadrados**, respecto a  $\mathcal{B}$ , si la matriz de  $\Phi$  en dicha base es
> $$\mathfrak{M}_{\mathcal{B}}(\Phi) = D = \operatorname{diag}(d_1, \ldots, d_n)$$
> v su expresión analítica es
> $$\Phi(x) = \Phi((x_1, \dots, x_n)_{\mathcal{B}}) = X^t D X = d_1 x_1^2 + \dots + d_n x_n^2$$

#### Proposición 7.32
> Toda forma bilineal simétrica  $f: V \times V \to \mathbb{K}$  admite una matriz diagonal tal que los elementos de la diagonal principal son iguales a 1, -1 o 0.

**Demostración:** Por el Teorema 7.28 sabemos que existe una base  $\mathcal{B} = \{u_1, \dots, u_n\}$  de vectores conjugados respecto a la cual la matriz de $f$ es diagonal

$$\mathfrak{M}_{\mathcal{B}}(f) = \operatorname{diag}(f(u_1, u_1), \dots, f(u_n, u_n)).$$

Vamos a distinguir dos casos dependiendo de que  $\mathbb{K}=\mathbb{C}$  o que  $\mathbb{K}=\mathbb{R}$ :

1. Si  $\mathbb{K} = \mathbb{C}$ , entonces basta cambiar los vectores  $u_i$  tales que  $f(u_i, u_i) \neq 0$  por los vectores  $v_i = \frac{u_i}{\sqrt{f(u_i, u_i)}}$  y, reordenando los vectores si fuera necesario, la matriz de $f$ será de la forma:

$$\operatorname{diag}(1,\dots,1,0,\dots,0) = \begin{pmatrix} 1 & & & & \\ & \ddots & & & & \\ & & 1 & & & \\ & & & 0 & & \\ & & & \ddots & \\ & & & & 0 \end{pmatrix}$$

ya que

$$f(v_i, v_i) = f(\frac{u_i}{\sqrt{f(u_i, u_i)}}, \frac{u_i}{\sqrt{f(u_i, u_i)}}) = \frac{1}{(\sqrt{f(u_i, u_i)})^2} f(u_i, u_i) = 1.$$

2. Si  $\mathbb{K} = \mathbb{R}$ , entonces se cambian los vectores  $u_i$  tales que  $f(u_i, u_i) \neq 0$  por los vectores

$$v_i = \frac{u_i}{\sqrt{f(u_i, u_i)}} \text{ si } f(u_i, u_i) > 0 \quad \text{ o bien } \quad v_i = \frac{u_i}{\sqrt{-f(u_i, u_i)}} \text{ si } f(u_i, u_i) < 0$$

Reordenando los vectores, si fuera necesario, se tiene la siguiente matriz diagonal de f

$$diag(1, ..., 1, -1, ..., -1, 0, ..., 0)$$

#### Ejemplo 7.33

En el Ejemplo 7.30 teníamos

$$\mathcal{B}' = \{ v_1 = (1, 0, 0)_{\mathcal{B}}, v_2 = (1, -1, 0)_{\mathcal{B}}, v_3 = (-4, 1, 3)_{\mathcal{B}} \} \quad \text{y} \quad \mathfrak{M}_{\mathcal{B}'}(f) = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 3 & 0 \\ 0 & 0 & 6 \end{pmatrix}$$

Si tomamos la base

$$\mathcal{B}'' = \left\{ \frac{v_1}{\sqrt{f(v_1, v_1)}}, \frac{v_2}{\sqrt{f(v_2, v_2)}}, \frac{v_3}{\sqrt{f(v_3, v_3)}} \right\} = \left\{ (1, 0, 0)_{\mathcal{B}}, \left( \frac{1}{\sqrt{3}}, \frac{-1}{\sqrt{3}}, 0 \right)_{\mathcal{B}}, \left( \frac{-4}{\sqrt{6}}, \frac{1}{\sqrt{6}}, \frac{3}{\sqrt{6}} \right)_{\mathcal{B}} \right\}$$

Entonces

$$\mathfrak{M}_{\mathcal{B}''}(f) = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} \qquad \Box$$

## 7.5. Diagonalización por congruencia

Toda matriz simétrica $A$ es congruente a una matriz diagonal. Es decir existen $P$ regular y D diagonal tales que  $D = P^t A P$ . En esta sección estudiamos un nuevo método para determinar $P$ y D basado en el uso de transformaciones elementales.

Supongamos que en una matriz $A$ realizamos una operación elemental en sus filas y la misma operación elemental en sus columnas, obteniendo B. Si E es la matriz elemental asociada a la operación fila, y E' es la matriz elemental asociada a la misma operación por columnas (véanse la equivalencia por filas, pág. 21, y por columnas, pág. 32), entonces

$$B = EAE^t$$

de modo que  $A \vee B$  son congruentes. Además, si $A$ es simétrica entonces también lo es B va que

$$B^t = (EAE^t)^t = (E^t)^t A^t E^t = EAE^t = B$$

Podemos aplicar operaciones elementales  $f_1, \ldots, f_k$  a las filas de $A$ hasta llegar a una matriz triangular superior  $E_k \cdots E_1$  $A$. Si aplicamos a esta matriz las mismas operaciones por columnas obtendremos la matriz diagonal

$$D = E_k \cdots E_1 \ A \ E_1^t \cdots E_k^t = E_k \cdots E_1 \ A \ (E_k \cdots E_1)^t \tag{7.5}$$

Si llamamos  $P^t = E_k \cdots E_1$ , entonces la ecuación anterior sería  $P^t A P = D$ . Observamos que si $A$ es la matriz de una forma bilineal simétrica f, entonces $P$ sería la matriz de cambio a una base de vectores conjugados.

Recordemos que el producto de las matrices elementales  $E_k \cdots E_1$  es la matriz resultante de aplicar a la matriz identidad  $I_n$  las operaciones fila  $f_1, \ldots, f_k$  que se han aplicado a A, y en particular es una matriz regular.

Veamos un ejemplo práctico de cómo se aplica este procedimiento.

#### Ejemplo 7.34

Sea $f$ una forma bilineal cuya matriz respecto a una base  $\mathcal{B} = \{v_1, v_2, v_3\}$  es

$$A = \mathfrak{M}_{\mathcal{B}}(f) = \begin{pmatrix} 2 & 1 & -1 \\ 1 & 3 & -1 \\ -1 & -1 & 1 \end{pmatrix}$$

Para llevar a cabo la diagonalización por congruencia adosamos a la matriz de partida la identidad y realizamos a la vez: en $A$ operaciones elementales en filas, y las mismas en columnas, mientras que en  $I_3$  aplicamos las operaciones sólo en filas.

$$
\begin{align}
(A|I_3) = 
\left(
\begin{array}{ccc|ccc}
2 & 1 & -1 & 1 & 0 & 0 \\ 
1 & 3 & -1 & 0 & 1 & 0 \\ 
-1 & -1 & 1 & 0 & 0 & 1 
\end{array}
\right)
&
\quad
\xrightarrow[\phantom{columnas de A}]{ 
	\begin{array}{c} 
	f_2 \to f_2 - \frac{1}{2}f_1 \\
	f_3 \to f_3 + \frac{1}{2}f_1
	\end{array} 
	} 
\quad
\left(
\begin{array}{ccc|ccc}
2 & 1 & -1 & 1 & 0 & 0 \\ 
0 & 5/2 & -1/2 & -1/2 & 1 & 0 \\ 
0 & -1/2 & 1/2 & 1/2 & 0 & 1 
\end{array}
\right) \\
&
\quad
\xrightarrow[\text{columnas de A}]{ 
	\begin{array}{c} 
	c_2 \to c_2 - \frac{1}{2}c_1 \\ 
	c_3 \to c_3 + \frac{1}{2}c_1
	\end{array} }
\quad
\left(
\begin{array}{ccc|ccc}
2 & 0 & 0 & 1 & 0 & 0 \\
0 & 5/2 & -1/2 & -1/2 & 1 & 0 \\
0 & -1/2 & 1/2 & 1/2 & 0 & 1 
\end{array}
\right) \\
&
\quad
\xrightarrow[\phantom{columnas de A}]{ 
	\begin{array}{c} 
	f_3 \to f_3 + \frac{1}{5}f_2 
	\end{array} } 
\quad 
\left(
\begin{array}{ccc|ccc}
2 & 0 & 0 & 1 & 0 & 0 \\ 0 & 5/2 & -1/2 & -1/2 & 1 & 0 \\ 0 & 0 & 2/5 & 2/5 & 1/5 & 1 
\end{array}
\right) \\
&
\quad 
\xrightarrow[ \text{columnas de A}]
	{ \begin{array}{c} c_3 \to c_3 + \frac{1}{5}c_2
	\end{array} } \quad 
\left(
\begin{array}{ccc|ccc}
2 & 0 & 0 & 1 & 0 & 0 \\ 0 & 5/2 & 0 & -1/2 & 1 & 0 \\ 0 & 0 & 2/5 & 2/5 & 1/5 & 1 
\end{array} 
\right)
= (D|P^t)
\end{align}
$$
 
Tras realizar operaciones elementales por filas, y las mismas por columnas, en A, hemos obtenido la matriz diagonal congruente D. Y tras aplicar las mismas operaciones elementales sólo en las filas de  $I_3$  obtenemos la matriz  $P^t$ . Estas matrices cumplen  $D = P^tAP$  con  $P^T = \mathfrak{M}_{\mathcal{B}'\mathcal{B}}^t$  cuyas filas son las coordenadas respecto de  $\mathcal{B}$  de los vectores de una base  $\mathcal{B}' = \{u_1, u_2, u_3\}$  que son conjugados y  $D = \mathfrak{M}_{\mathcal{B}'}(f)$ . En este caso:

$$u_1 = (1,0,0)_{\mathcal{B}} = v_1, \quad u_2 = \left(-\frac{1}{2},1,0\right)_{\mathcal{B}} = -\frac{1}{2}v_1 + v_2, \quad u_3 = \left(\frac{2}{5},\frac{1}{5},1\right)_{\mathcal{B}} = \frac{2}{5}v_1 + \frac{1}{5}v_2 + v_3$$

La expresión analítica o ecuación de la forma cuadrática asociada a $f$ en la base  $\mathcal{B}'$  es

$$\Phi((x_1, x_2, x_3)_{\mathcal{B}'}) = X^t D X = 2x_1^2 + \frac{5}{2}x_2^2 + \frac{2}{5}x_3^2$$

Decimos que en  $\mathcal{B}'$  la forma cuadrática  $\Phi$  está diagonalizada o escrita como suma de cuadrados.

Si queremos obtener una matriz diagonal  $D^*$  congruente con $A$ y tal que los elementos de la diagonal principal de  $D^*$  sean iguales a 1, -1 o 0, también podemos hacerlo con este método. Para ello, continuamos aplicando operaciones elementales, las mismas por filas que por columnas, como se muestra a continuación:

$$
\begin{align}
(D|P^{t}) \qquad 
& 
\xrightarrow{f_{1} \to \frac{1}{\sqrt{2}} f_{1}, \ c_{1} \to \frac{1}{\sqrt{2}} c_{1}}
\qquad
\left(
\begin{array}{ccc|ccc}
1 & 0 & 0 & 1/\sqrt{2} & 0 & 0 \\ 
0 & 5/2 & 0 & -1/2 & 1 & 0 \\ 
0 & 0 & 2/5 & 2/5 & 1/5 & 1 
\end{array}
\right) \\
&
\xrightarrow{
	\begin{align} 
	f_{2} \to \frac{1}{\sqrt{5/2}} f_{2}, \ c_{2} \to \frac{1}{\sqrt{5/2}} c_{2} \\
	f_{3} \to \frac{1}{\sqrt{2/5}} f_{3}, \ c_{3} \to \frac{1}{\sqrt{2/5}} c_{2}
	\end{align}
}
\left(
\begin{array}{ccc|ccc}
1 & 0 & 0 & \sqrt{2}/2  & 0 & 0 \\
0 & 1 & 0 & - \sqrt{10}/10 & \sqrt{10}/5 & 0 \\
0 & 0 & 1 & \sqrt{10}/5 & \sqrt{10}/10 & \sqrt{10}/2 \\
\end{array} 
\right)
= (D^{*}|(P^{*})^{t})
\end{align}
$$


Las filas de la matriz  $(P^*)^t$  son las coordenadas respecto de  $\mathcal{B}$  de una base de vectores conjugados  $\mathcal{B}^* = \{w_1, w_2, w_3\}$  tal que  $\mathfrak{M}_{\mathcal{B}^*}(f) = D^*$ .  $\square$ 

> Resumimos el proceso de diagonalización por congruencia con el siguiente esquema:
> $$(\mathfrak{M}_{\mathcal{B}}(f)|I_n) \xrightarrow{\text{diagonalización por congruencia}} (D|P^t) \quad \text{tal que} \quad  D = \mathfrak{M}_{\mathcal{B}'}(f) = P^t \mathfrak{M}_{\mathcal{B}}(f) P $$
> queriendo decir que si  $\mathfrak{M}_{\mathcal{B}}(f)$  es la matriz de una forma bilineal simétrica en una base  $\mathcal{B}$ , aplicamos operaciones elementales a las filas de  $\mathfrak{M}_{\mathcal{B}}(f)$  y las mismas por columnas hasta obtener la matriz diagonal D, y aplicamos las mismas operaciones elementales a las filas de  $I_n$  para obtener la matriz  $P^t$ , entonces:
> $$\mathfrak{M}_{\mathcal{B}'}(f) = D \quad \text{y la matriz del cambio de base es} \quad P = \mathfrak{M}_{\mathcal{B}'\mathcal{B}} $$
> y las filas de  $P^t$  son las coordenadas en  $\mathcal{B}$  de una base de vectores conjugados respecto a $f$.

El proceso de diagonalización por congruencia nos aporta otro método para calcular una base de vectores conjugados.

## 7.6. Clasificación de formas bilineales simétricas y cuadráticas reales
En esta sección consideraremos sólo formas bilineales simétricas  $f: V \times V \to \mathbb{R}$  definidas en espacios vectoriales de dimensión finita reales.

#### Definición 7.35
>Una forma bilineal simétrica $f$ se dice que es:
> 
> **Definida positiva** si f(v, v) > 0 para todo  $v \in V$ ,  $v \neq 0$ .
> **Semidefinida positiva** si  $f(v,v) \ge 0$  para todo  $v \in V$  y f(v,v) = 0 para algún  $v \ne 0$ .
> **Definida negativa** si f(v, v) < 0 para todo  $v \in V$ .  $v \neq 0$ .
> **Semidefinida negativa** si  $f(v,v) \le 0$  para todo  $v \in V$  y f(v,v) = 0 para algún  $v \ne 0$ .
> **Indefinida** en cualquier otro caso.

#### Ejemplo 7.36

(a) La forma bilineal de  $\mathbb{R}^2$  de expresión analítica  $f((x_1, x_2), (y_1, y_2)) = 2x_1y_1 + x_1y_2 + x_2y_1$  es indefinida ya que existen vectores no nulos u v v para los que f(u, u) > 0 v f(v, v) < 0

$$f((1,1),(1,1)) = 4
\quad \text{y} \quad  
f((1,-2),(1,-2)) = -2 
$$

(b) La forma bilineal  $f: \mathfrak{M}_n(\mathbb{R}) \times \mathfrak{M}_n(\mathbb{R}) \to \mathbb{R}$  definida por  $f(A, B) = \operatorname{tr}(A \cdot B^t)$  es definida positiva ya que, para toda matriz $A$ real cuadrada de orden n se tiene:
$$f(A,A) = \operatorname{tr}(A \cdot A^t) = \sum_{i,j=1}^n a_{ij}^2 > 0 \text{ para todo } A \neq 0 \qquad \Box$$

Clasificar una forma bilineal simétrica consiste en determinar de qué tipo es. Para llevar a cabo dicha clasificación vamos a construir un conjunto de invariantes obtenidos directamente de una matriz diagonal de la forma bilineal.

#### Teorema 7.37: Ley de Inercia de Sylvester
> Sea $f$ una forma bilineal simétrica y real, y  $\Phi$  la forma cuadrática asociada. En cualquier matriz diagonal de $f$ el número de elementos positivos p y negativos q es siempre el mismo, siendo  $p+q=\operatorname{rg}(f)$ . El par (p,q) se denomina **signatura** de $f$ o de  $\Phi$ , y se denota por  $\operatorname{sg}(f)$  o  $\operatorname{sg}(\Phi)$  respectivamente.

**Demostración:** Sean  $D_1$  y  $D_2$  dos matrices diagonales de $f$ y  $\mathcal{B}_1$ ,  $\mathcal{B}_2$  las bases de vectores conjugados tales que  $\mathfrak{M}_{\mathcal{B}_1}(f) = D_1$ ,  $\mathfrak{M}_{\mathcal{B}_2}(f) = D_2$ . Supongamos que  $p_i$  y  $q_i$  son el número de elementos positivos y negativos respectivamente en  $D_i$  para i = 1, 2. Entonces, reordenando los vectores de la base, si fuera necesario, podemos suponer que las bases son de la forma

$$
\begin{array}{ll}
\mathcal{B}_{1} = \{v_{1}, \dots, v_{p_{1}}, v_{p_{1}+1}, \dots, v_{n}\} &
\mathcal{B}_{2} = \{w_{1}, \dots, w_{p_{2}}, w_{p_{2}+1}, \dots, w_{n}\} \\
f(v_{i}, v_{i}) > 0, i = 1, \dots, p_{1}; & 
f(w_{i}, w_{i}) > 0, i = 1, \dots, p_{2};
\\
f(v_{i}, v_{i}) \leq 0, i = p_{1} + 1, \dots, n.
& f(w_{i}, w_{i}) \leq 0, i = p_{2} + 1, \dots, n.
\end{array}
$$

Consideremos los subespacios vectoriales

$$V^{>0} = L(v_1, \dots, v_{n_1}), \ V^{\leq 0} = L(w_{n_2+1}, \dots, w_n)$$

Por ser  $v_1,\ldots,v_{p_1}$  conjugados y ser  $w_{p_2+1},\ldots,w_n$  conjugados se tiene que:

$$
f(v,v) > 0
\quad \text{para todo} \quad
v \in V^{>0}
\quad \text{y} \quad
f(v,v) \le 0
\quad \text{para todo}v \in V^{\le 0} 
$$

Obviamente, ambos subespacios vectoriales tienen intersección 0, por lo que

$$\dim(V^{>0} + V^{\le 0}) = p_1 + n - p_2$$

de donde  $p_1 + n - p_2 \le n$  y así  $p_1 \le p_2$ . Repitiendo el proceso, intercambiando los papeles de  $p_1$  y  $p_2$  obtendríamos  $p_2 \le p_1$ , luego  $p_1 = p_2$ .

Del mismo modo se demuestra que  $q_1 = q_2$ . Finalmente, como el rango de $f$ es igual al rango de cualquier matriz de $f$, lo obtenemos de la matriz diagonal donde el rango es igual al número de elementos no nulos, esto es  $p + q = \operatorname{rg} f$ .  $\square$ 

**Observación**: En otros términos podemos enunciar la Ley de Silvester[^1] diciendo que en cualquier base  $\mathcal{B} = \{v_1, \dots, v_n\}$  de vectores conjugados respecto a $f$ o  $\Phi$  se tiene que siempre es invariante el par de números (p, q) definidos como:

$$p = |\{v \in \mathcal{B}: f(v,v) = \Phi(v) > 0\}| \quad \text{y} \quad q = |\{v \in \mathcal{B}: f(v,v) = \Phi(v) < 0\}|$$

donde $|C|$ denota el cardinal del conjunto $C$. La signatura es un invariante por cambios de base de vectores conjugados.

#### Corolario 7.38
> Sea $f$ una forma bilineal simétrica de un espacio vectorial real de dimensión n. Se cumple que:
>
> - $f$ es definida positiva si y sólo si $\operatorname{sg}(f) = (n, 0)$.
> - $f$ es semidefinida positiva si y sólo si $\operatorname{sg}(f) = (p, 0),  p < n$.
> - $f$ es definida negativa si y sólo si $\operatorname{sg}(f) = (0, n)$.
> - $f$ es semidefinida negativa si y sólo si $\operatorname{sg}(f) = (0, q), \; q<n$.
> - $f$ es indefinida si $\operatorname{sg}(f) = (p, q) \; p>0 \text{ y } q>0$.
> - $f$ es no degenerada si $\operatorname{sg}(f)= (p, q) \; \text{con} \, p+q=n$ .

#### Ejemplo 7.39

En el Ejemplo 7.34 diagonalizanos una forma bilineal $f$ obteniendo

$$\mathfrak{M}_{\mathcal{B}'}(f) = \begin{pmatrix} 2 & 0 & 0\\ 0 & 5/2 & 0\\ 0 & 0 & 2/5 \end{pmatrix}$$

Como el número de elementos positivos en la diagonal es 3, entonces su signatura es (3,0) y la forma bilineal $f$ y su forma cuadrática asociada  $\Phi$  son definidas positivas.  $\square$ 

A continuación vemos otra forma de clasificar una forma bilineal o cuadrática basada únicamente en el estudio de los menores principales en una matriz.

#### Proposición 7.40: Criterio de Sylvester
> Sean $A$ una matriz de una forma bilineal simétrica real  $f: V \times V \to \mathbb{R}$  y  $\Delta_k, k = 1, \ldots, n$ ; los menores principales de la matriz $A$. Entonces,
> 
> - $f$ es definida positiva si y sólo si  $\Delta_k = \det A_k > 0$  para todo  $k = 1, \ldots, n$ .
> - $f$ es definida negativa si y sólo si  $(-1)^k \Delta_k > 0$  para todo  $k = 1, \ldots, n$ .

**Demostración:** Sea  $\mathcal{B} = \{v_1, \dots, v_n\}$  la base tal que  $A = \mathfrak{M}_{\mathcal{B}}(f)$ . Para todo  $k \geq 1$  sean  $\mathcal{B}_k = \{v_1, \dots, v_k\}$  y  $V_k = L(v_1, \dots, v_k)$ . Si consideramos la forma bilineal restricción de $f$ a  $V_k$ ,  $f|_{V_k} : V_k \times V_k \to \mathbb{R}$ , entonces tenemos que  $A_k = \mathfrak{M}_{\mathcal{B}_k}(f|_{V_k})$  es la submatriz de $A$ formada por las k primeras filas y k primeras columnas.

Si $f$ es definida positiva, también lo es  $f|_{V_k}$  por lo tanto  $A_k$  es congruente con la matriz  $I_k$ . Entonces, existe una matriz regular  $P_k$  tal que  $A_k = P_k^t I_k P_k$ . Por tanto  $\Delta_k = (-1)^k \det(P_k)^2$  y de ahí  $\Delta_k = \det P_k^t \det P_k = (\det P_k)^2 > 0$ .

Si $f$ es definida negativa, también lo es  $f|_{V_k}$ , y por lo tanto  $A_k$  es congruente con la matriz  $-I_k$ .

Entonces, existe $P$ regular tal que  $A_k = P_k^t(-I_k)P_k$  y de ahí  $(-1)^k\Delta_k = (-1)^{2k}(\det P_k)^2 > 0$ .

Para demostrar que las condiciones sobre los menores son suficientes procedemos por inducción sobre la dimensión de V. Supongamos que  $\Delta_i > 0$  para todo  $k = 1, \ldots, n$ .

Si dim V = 1, entonces det  $A = \Delta_1 > 0$ , que por ser una matriz  $1 \times 1$  es diagonal y todos sus elementos son positivos. Entonces, sg(f) = (1,0) y $f$ es definida positiva.

Supongamos, como hipótesis de inducción, que el resultado es cierto si dim V = n - 1.

Si dim V=n y consideramos la restricción  $f|_{V_{n-1}}$ , entonces por la hipótesis de inducción  $f|_{V_{n-1}}$  es definida positiva, y así, existe una base  $\mathcal{B}_{n-1}=\{u_1,\ldots,u_{n-1}\}$  de  $V_{n-1}$  tal que  $\mathfrak{M}_{\mathcal{B}_{n-1}}(f|_{V_{n-1}})=I_{n-1}$ . Si completamos esta base hasta obtener una base  $\mathcal{B}'=\{u_1,\ldots,u_{n-1},u_n\}$  de V, entonces la matriz de $f$ en dicha base será
$$\mathfrak{M}_{\mathcal{B}'}(f) = \begin{pmatrix} 1 & & & a_1 \\ & \ddots & & \\ & & 1 & a_{n-1} \\ a_1 & \cdots & a_{n-1} & a_n \end{pmatrix}$$
donde  $a_i = f(u_i, u_n) = f(u_n, u_i)$ . Haciendo la diagonalización por congruencia de esta matriz simétrica, podemos obtener una matriz congruente diagonal:

$$\mathfrak{M}_{\mathcal{B}'}(f) = P^t D P
, \quad \text{con} \quad D = \operatorname{diag}(1, \stackrel{n-1}{\dots}, 1, d) 
$$

Por hipótesis, todos los menores principales de  $\mathfrak{M}_{\mathcal{B}'}(f)$  son positivos, y en particular el determinante:

$$\det \mathfrak{M}_{\mathcal{B}'}(f) = \det D \left( \det P \right)^2 > 0$$

luego det D = d > 0. Así, la signatura de f, que es el número de elementos positivos en D es (n,0), es decir, $f$ definida positiva.

Del mismo modo, se demuestra que si  $(-1)^k \Delta_k > 0$  para todo  $k=1,\dots,n$  entonces $f$ sería definida negativa.  $\square$ 

#### Ejemplo 7.41
Determine para qué valores de a y b la siguiente matriz es la de una forma cuadrática real definida positiva.

$$A = \begin{pmatrix} 1 & b & 1 & 1 \\ b & b^2 + 1 & b + 1 & b + 1 \\ 1 & b + 1 & 3 & 3 \\ 1 & b + 1 & 3 & 5 - a \end{pmatrix}$$

Se calculan los menores principales, pero previamente aplicamos operaciones elementales a la matriz, que no varían el determinante y simplifican su cálculo:

$$\det A = \det \begin{pmatrix} 1 & b & 1 & 1 \\ 0 & 1 & 1 & 1 \\ 0 & 1 & 2 & 2 \\ 0 & 1 & 2 & 4 - a \end{pmatrix} = \det \begin{pmatrix} 1 & b & 1 & 1 \\ 0 & 1 & 1 & 1 \\ 0 & 0 & 1 & 1 \\ 0 & 0 & 1 & 3 - a \end{pmatrix} = \det \begin{pmatrix} 1 & b & 1 & 1 \\ 0 & 1 & 1 & 1 \\ 0 & 0 & 1 & 1 \\ 0 & 0 & 0 & 2 - a \end{pmatrix}$$

$$\Delta_1 = 1 > 0. \quad \Delta_2 = \det\begin{pmatrix} 1 & b \\ 0 & 1 \end{pmatrix} = 1 > 0, \quad \Delta_3 = \det\begin{pmatrix} 1 & b & 1 \\ 0 & 1 & 1 \\ 0 & 0 & 1 \end{pmatrix} = 1 > 0$$

$$\Delta_4 = \det\begin{pmatrix} 1 & b & 1 & 1 \\ 0 & 1 & 1 & 1 \\ 0 & 0 & 1 & 1 \\ 0 & 0 & 0 & 2 - a \end{pmatrix} = 2 - a > 0 \text{ si y sólo si } a < 2$$

Así, una forma bilineal cuva matriz sea $A$ es definida positiva para todo valor de b v para a < 2.  $\Box$ 

A veces nos interesará trasladar los conceptos sobre tipos de formas bilineales y cuadráticas para hablar solamente de matrices, y lo haremos del siguiente modo:

#### Definición 7.42
> Una matriz real $A$ cuadrada de orden n y simétrica, congruente con una matriz diagonal  $D = \text{diag}(d_1, \ldots, d_n)$  se dice que es:
> 
> - **Definida positiva** si y sólo si  $d_i > 0$  para  $i = 1, \dots, n$ .
> - **Semidefinida positiva** si y sólo si  $d_i \ge 0$  para  $i = 1, \ldots n$  y  $d_i = 0$  para algún i.
> - **Definida negativa** si y sólo si  $d_i < 0$  para  $i = 1, \ldots, n$ .
> - **Semidefinida negativa** si y sólo si  $d_i \le 0$  para  $i = 1, \ldots, n$  y  $d_i = 0$  para algún i.
> - **Indefinida** en cualquier otro caso.
>	
> La **signatura de una matriz simétrica** $A$ es el par $(p,q)$ donde $p$ es el número de elementos positivos y $q$ el número de negativos de $D$.

En definitiva, la matriz es definida positiva, semidefinida positiva, definida negativa o semidefinida negativa, si es la matriz de una forma bilineal del mismo tipo.

### Producto escalar

En un espacio vectorial real V, una forma bilineal $f$ definida positiva permite definir una nueva operación, además de la suma de vectores y del producto de un escalar por un vector. Se trata de un producto entre vectores definido del siguiente modo:

$$\langle u, v \rangle = f(u, v)$$

Esta operación se denomina producto escalar y permite introducir en V los conceptos geométricos de longitud de un vector y ángulo entre vectores. Los espacios vectoriales dotados con este tipo de productos se estudian en el siguiente capítulo.

El producto escalar usual en  $\mathbb{R}^n$  está definido por la forma bilineal

$$f((x_1,\ldots,x_n),(y_1,\ldots,y_n)) = x_1y_1 + \cdots + x_ny_n = X^t I_n Y$$

## 7.7. Formas sesquilineales (SEGUIR AQUÍ)

En espacios vectoriales complejos se puede introducir también el concepto de producto entre vectores que permita una forma de medir longitudes y ángulos. Sin embargo, si $f$ es una forma bilineal en un espacio vectorial complejo, no tiene sentido la comparación f(v,v)>0 ya que  $f(v,v)\in\mathbb{C}$ . En esta sección presentamos un tipo de forma bilineal con la que podremos definir el equivalente complejo del producto escalar: el producto hermítico.

Una aplicación  $f:V\to W$  entre espacios vectoriales complejos se dice que es una **aplicación** semilineal si para todo  $u,v\in V,\;\lambda\in\mathbb{C}$  cumple las propiedades

$$f(u+v) = f(u) + f(v), \quad y \quad f(\lambda v) = \bar{\lambda}v$$

#### Definición 7.43
> Dado un espacio vectorial complejo V, una aplicación  $f: V \times V \to \mathbb{C}$  se dice que es una **forma** sesquilineal si es lineal en la primera componente y semilineal en la segunda. Es decir, si cumple las siguientes propiedades:
> 
> (1) f(u+v,w) = f(u,w) + f(v,w).
> (2)  $f(\lambda u, v) = \lambda f(u, v)$ .
> (3) f(u, v + w) = f(u, v) + f(u, w).
> (4)  $f(u, \lambda v) = \overline{\lambda} f(u, v)$ .
>
> para todo vector  $u, v, w \in V$  y todo escalar  $\lambda \in \mathbb{C}$ , donde  $\overline{\lambda}$  denota el conjugado de  $\lambda$ .

Sean  $f: V \times V \to \mathbb{C}$  una forma sesquilineal y  $\mathcal{B} = \{v_1, \ldots, v_n\}$  una base de V. Dados dos vectores cualesquiera  $x, y \in V$  vectores cuyas coordenadas respecto a  $\mathcal{B}$  son  $x = (x_1, \ldots, x_n)_{\mathcal{B}}$  e  $y = (y_1, \ldots, y_n)_{\mathcal{B}}$ , entonces aplicando las propiedades (1) a (4) se tiene

$$f(x,y) = f\left(\sum_{i=1}^{n} x_i v_i, \sum_{j=1}^{n} y_j v_j\right) = \sum_{i,j=1}^{n} x_i \overline{y}_j f(v_i, v_j)$$

Si consideramos la matriz compleja  $A = (f(v_i, v_j))$  de orden n, entonces la última expresión de la ecuación anterior podemos escribirla como:

$$f(x,y) = (x_1 \dots x_n) A \begin{pmatrix} \overline{y}_1 \\ \vdots \\ \overline{y}_n \end{pmatrix} = X^t A \overline{Y} \tag{7.6}$$

Esta matriz se denomina **matriz de** $f$ en la base  $\mathcal{B}$ . A la ecuación (7.6) se la denomina **expresión analítica** o **ecuación** de $f$ en la base  $\mathcal{B}$ .

La relación existente entre dos matrices de la misma forma sesquilineal en distintas bases es la siguiente: si  $\mathcal{B}'$  es otra base de V y  $P = \mathfrak{M}_{\mathcal{B}'\mathcal{B}}$  es la matriz de cambio de base de  $\mathcal{B}'$  a  $\mathcal{B}$ , entonces

$$f(x,y) = X^t A \overline{Y} = (PX')^t A (\overline{PY'}) = X'^t P^t A \overline{PY'} \tag{7.7}$$

Así, la matriz de $f$ en la base  $\mathcal{B}'$  es

$$\mathfrak{M}_{\mathcal{B}'}(f) = P^t A \overline{P}$$

#### Definición 7.44
> Una forma sesquilineal  $f: V \times V \to \mathbb{C}$  se dice que es una forma hermítica si
> $$f(u,v) = \overline{f(v,u)}$$
 > para todo  $u,v \in V$ 

Y se cumple que $f$ es hermítica si y sólo si toda matriz $A$ de $f$ es hermítica, es decir  $A = \overline{A}^t$ .

En un espacio vectorial complejo V de dimensión n y dada una base  $\mathcal{B}$ , toda matriz hermítica  $A \in \mathfrak{M}_n(\mathbb{C})$  permite definir una forma hermítica del siguiente modo:

$$f(x,y) = X^t A \overline{Y}$$

donde X e Y son las matrices columna de coordenadas de  $x = (x_1, \dots, x_n)_{\mathcal{B}}$  e  $y = (y_1, \dots, y_n)_{\mathcal{B}}$ . En efecto, la forma así definida cumple

$$\overline{f(y,x)} = \overline{Y^t A \overline{X}} = \overline{Y}^t \overline{A} X = (\overline{Y}^t \overline{A} X)^t = X^t \overline{A}^t \overline{Y}$$

<u>La ter</u>cera igualdad se cumple porque  $\overline{Y}^t \overline{A} X$  es de orden 1. Finalmente, por ser  $A = \overline{A}^t$  se tiene  $\overline{f(y,x)} = f(x,y)$ .

Si $f$ es una forma hermítica, entonces para todo vector  $u \in V$  se cumple

$$f(u,u) = \overline{f(u,u)}
\quad \text{por lo tanto} \quad
f(u,u) \in \mathbb{R}
$$

Por lo que los elementos de la diagonal principal de cualquier matriz de una forma hermítica son números reales. Este hecho permite preguntarse, como se hizo con las formas bilineales simétricas, si f(u, u) es positivo, negativo o 0.

Para las formas hermíticas se definen de igual modo que se hizo para las formas bilineales los conceptos de: vectores conjugados, vector isótropo o autoconjugado. y conjugado de un subespacio vectorial. Y se demuestra, igualmente, que existe siempre una base de vectores conjugados respecto de una forma hermítica.

La matriz de una forma hermítica respecto a una base de vectores conjugados es diagonal, y por ser hermítica, además es real, admitiendo las mismas tipologías de formas hermíticas: definidas o semidefinidas positivas, definidas o semidefinidas negativas.

Este hecho permite definir un producto entre vectores del espacio complejo V cuando la forma hermítica es definida positiva.

#### Definición 7.45
> Dado un espacio vectorial complejo V, una forma hermítica  $f:V\times V\to\mathbb{C}$  se dice que es definida positiva si se cumple f(u,u)>0 para todo vector u no nulo. En un espacio vectorial complejo, un **producto hermítico** es una forma hermítica definida positiva.

El producto hermítico usual en  $\mathbb{C}^n$  está definido por la forma hermítica

$$f((x_1,\ldots,x_n),\,(y_1,\ldots,y_n))=x_1\overline{y}_1+\cdots+x_n\overline{y}_n=X^t\,I_n\,\overline{Y}$$

## 7.8. Ejercicios propuestos

**7.1.** Sean V un  $\mathbb{K}$ -espacio vectorial,  $g:V\to V$  un endomorfismo y  $\Phi:V\to \mathbb{K}$  una forma cuadrática. Demuestre que  $\Phi\circ g$  es una forma cuadrática.

**7.2.** Sean $f$ y $g$ dos formas lineales de un espacio vectorial V. Demuestre que la aplicación h(u, v) = f(u)g(v) es una forma bilineal de V. Además h es simétrica si $f$ y $g$ son proporcionales.

**7.3.** Sean $f$ y q dos formas lineales de un espacio vectorial V. Entonces la aplicación

$$h(u,v) = f(u)g(v) - g(u)f(v)$$

es una forma bilineal antisimétrica, y

$$l(u, v) = f(u)g(v) + g(u)f(v)$$

es una forma bilineal simétrica.

**7.4.** Si  $\Phi$  es una forma cuadrática, entonces su forma polar es

$$f_{\Phi}(x, y) = \frac{1}{4} [\Phi(x + y) - \Phi(x + y)].$$

**7.5.** Los conjuntos  $\mathcal{BL}_s$  y  $\mathcal{BL}_a$  formados por las formas bilineales simétricas y antisimétricas de un espacio vectorial V respectivamente, son subespacios vectoriales de  $\mathcal{BL}(V)$ . Además:

$$\mathcal{BL}(V) = \mathcal{BL}_s \oplus \mathcal{BL}_a$$

**7.6.** Sea V un  $\mathbb{K}$ -espacio vectorial, donde  $\mathbb{K} = \mathbb{R}$  o  $\mathbb{C}$ . Demuestre que una forma bilineal  $f: V \times V \to \mathbb{K}$  es antisimétrica si y sólo si f(v, v) = 0 para todo v.

**7.7.** Sean U y W subespacios vectoriales de un  $\mathbb{K}$ -espacio vectorial V y $f$ una forma bilineal simétrica de V. Demuestre que se cumplen las siguientes propiedades:
  - a) Si  $U \subseteq W$ , entonces  $W^c \subseteq U^c$ .
  - $b)\ U^c+W^c\subseteq (U\cap W)^c.$
  - c)  $U^c \cap W^c = (U+W)^c$ .
  - $d) \ U \subseteq (U^c)^c.$

**7.8.** Sean  $f: V \times V \to \mathbb{K}$  una forma bilineal simétrica y U un subespacio vectorial de V. Si $f$ es no degenerada, entonces  $U = (U^c)^c$ .

**7.9.** Dada la aplicación  $f: \mathbb{R}_3[x] \times \mathbb{R}_3[x] \to \mathbb{R}$  definida por f(p,q) = p(1)q(-1) + p(-1)q(1)
  - a) Demuestre que es bilineal y simétrica.
  - b) Determine su matriz en la base canónica de  $\mathbb{R}_3[x]$ .

**7.10.** Dada la forma bilineal simétrica  $f: \mathbb{R}^3 \times \mathbb{R}^3 \to \mathbb{R}$  cuya ecuación en la base canónica es

$$f((x_1, x_2, x_3), (y_1, y_2, y_3)) = -x_1y_1 + x_1y_2 + x_2y_1 - x_2y_2 + 2x_3y_3$$

- a) Determine la matriz de $f$ en la base canónica.
- b) Calcule una base de vectores conjugados  $\{e_1, e_2, e_3\}$  tales que  $f(e_i, e_i)$  sea igual a 1, -1 o 0; para todo i = 1, 2, 3.

**7.11.** Determine si las siguientes matrices pueden corresponder a una misma forma cuadrática en distintas bases

$$A = \begin{pmatrix} 3 & 3 & 1 \\ 3 & 3 & 1 \\ 1 & 1 & 3 \end{pmatrix} \qquad B = \begin{pmatrix} 3 & 3 & 4 \\ 3 & 3 & 4 \\ 4 & 4 & 4 \end{pmatrix}$$

**7.12.** Obtenga la diagonalización por congruencia de la forma cuadrática  $\Phi$  de  $\mathbb{R}^3$  cuya matriz en la base canónica es

$$\begin{pmatrix} 2 & 1 & -1 \\ 1 & 3 & -1 \\ -1 & -1 & 1 \end{pmatrix}$$

Clasifique la forma cuadrática y calcule unas ecuaciones del subespacio conjugado de la recta

$$R \equiv \{x_1 + x_2 = 0, \ 2x_1 - x_3 = 0\}.$$

**7.13.** Determine la signatura de la forma cuadrática  $\Phi: \mathbb{R}^3 \to \mathbb{R}$  cuya matriz en la base canónica es:

$$A = \left(\begin{array}{rrr} 1 & -2 & 1 \\ -2 & -2 & -2 \\ 1 & -2 & 1 \end{array}\right)$$

**7.14.** Determine la signatura de una forma cuadrática  $\Phi: \mathbb{R}^3 \to \mathbb{R}$  que cumple las condiciones:
  - a) Existe un plano vectorial U en  $\mathbb{R}^3$  que es el subespacio vectorial de mayor dimensión respecto al cual la restricción de  $\Phi$  a U,  $\Phi|_U$ , es definida positiva.
  - b) El subespacio conjugado  $U^c$  contiene vectores autoconjugados.

**7.15.** a) Para los distintos valores del parámetro  $a \in \mathbb{R}$ , clasifique la forma cuadrática  $\Phi_a : \mathbb{R}^3 \to \mathbb{R}$  dada por

$$\Phi_a(x, y, z) = x^2 + 2y^2 + 2xy + 2xz + 4yz + (2+a)z^2$$

- b) Para cada  $a \in \mathbb{R}$ , determine un plano vectorial  $U_a$  tal que la restricción de  $\Phi_a$  a dicho plano sea una forma cuadrática definida positiva.
- c) Para qué valores de  $a \in \mathbb{R}$  la forma polar asociada a  $\Phi_a$  define un producto escalar.

**7.16.** Sea V un espacio vectorial real de dimensión n y  $\Phi:V\to\mathbb{R}$  una forma cuadrática cuya signatura es (p,q). con  $p+q\le n$ . Demuestre que:
  - a) p es la máxima dimensión de un subespacio  $U\subseteq V$  tal que  $\Phi$  restringida a U es definida positiva.
  - b) q es la máxima dimensión de un subespacio  $U\subseteq V$  tal que  $\Phi$  restringida a U es definida negativa.

**7.17.** a) Determine la matriz de una forma cuadrática  $\Phi : \mathbb{R}^3 \to \mathbb{R}$  tal que:
  - (1) El conjugado de la recta R = L(1,0,0) es  $R^c \equiv x + y + z = 0$ .
  - (2)  $\Phi(0,0,1) = 1$ .
  - (3) La signatura de  $\Phi$  es (1,0).
  - b) Determine una base de vectores conjugados respecto a  $\Phi$ .
- 7.18. Se considera la forma cuadrática real  $\Phi$  cuya expresión analítica respecto a una base  $\mathcal{B}$  es

$$\Phi(x, y, z) = x^{2} + y^{2} + \lambda z^{2} + 4xy$$

Determine si es definida positiva para algún valor de  $\lambda \in \mathbb{R}$ .

**7.19.** Determine la signatura y una base de vectores conjugados respecto a la forma cuadrática de  $\mathbb{R}^3$  de ecuación

$$\Phi(x, y, z) = x^2 + y^2 + 3z^2 + 6xy.$$

Hágalo por varios métodos distintos.

**7.20.** Determine una matriz regular $P$ que cumpla  $D = P^tAP$  siendo

$$A = \begin{pmatrix} 1 & 1 & 0 \\ 1 & 2 & 1 \\ 0 & 1 & 1 \end{pmatrix} \quad \mathbf{y} \quad D = \begin{pmatrix} 2 & 0 & 0 \\ 0 & \frac{1}{3} & 0 \\ 0 & 0 & 0 \end{pmatrix}$$

## Notas

[^1]: James Joseph Sylvester (Londres 1814 - Oxford, 1897). A él se atribuye el término de matriz.