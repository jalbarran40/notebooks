## Ejercicios del capítulo 2

**2.1.** Resuelva para todos los valores reales $a$ y $b$ el sistema lineal

$$\begin{cases} ax_1 + bx_2 = 0 \\ 3x_1 - 2x_2 = 2 \end{cases}$$

**Solución:** Comenzamos transformando el sistema $AX = B$ dado en uno escalonado equivalente. Para ello utilizamos la matriz ampliada (A|B) asociada al sistema.
	$$\left( \begin{array}{c|c} a & b & 0 \\ 3 & -2 & 2 \end{array} \right) \xrightarrow[f_1 \leftrightarrow f_2]{} \left( \begin{array}{c|c} 3 & -2 & 2 \\ a & b & 0 \end{array} \right) \xrightarrow[f_2 \to f_2 - \frac{a}{3}f_1]{} \left( \begin{array}{c|c} 3 & -2 & 2 \\ 0 & b + \frac{2}{3}a & -\frac{2}{3}a \end{array} \right) = (A'|B')$$
	Lo primero que hemos hecho es intercambiar las dos filas para evitar la presencia de parámetros en la posición (1,1) y así asegurar que haya un pivote en la posición (1,1). Aplicamos el Teorema de Rouché-Fröbenius al sistema A'X = B' equivalente al dado. Tenemos los siguientes casos:
	(i) Si  $b + \frac{2}{3}a \neq 0$  entonces \operatorname{rg}(A') = \operatorname{rg}(A'|B') = 2, que es el número de incógnitas. Luego el sistema es compatible determinado. La solución se obtiene despejando las incógnitas de abajo hacia arriba:
	$$x_2 = \frac{-\frac{2}{3}a}{b + \frac{2}{3}a} = \frac{-2a}{2a + 3b}$$
$$x_1 = \frac{2 + 2x_2}{3} = \frac{2b}{2a + 3b}$$
	(ii) Si  $b + \frac{2}{3}a = 0$  entonces \operatorname{rg}(A') = 1. Hay dos opciones para el rango de (A'|B'):
		(ii.1) Si  $a \neq 0$  entonces $\operatorname{rg}(A'|B')$ = 2 y el sistema es incompatible.
		(ii.2) Si $a=0$ entonces $\operatorname{rg}(A')=\operatorname{rg}(A'|B')=1$, que es menor que el número de incógnitas. Luego el sistema es compatible indeterminado. Las condiciones de este subcaso implican $b=0$, por lo que la primera ecuación del sistema dado es la trivial 0=0 y la podemos eliminar. En definitiva, el sistema se reduce a la segunda ecuación:
		$$3x_1 - 2x_2 = 2$$
		Haciendo  $x_2 = \alpha$  y despejando  $x_1$  obtenemos la solución general
		$$(x_1, x_2) = \left(\frac{2+2\alpha}{3}, \ \alpha\right)$$
		donde  $\alpha$  recorre todos los valores de  $\mathbb{R}$ .

## SEGUIR AQUI

**2.2.** Decida para cada par de valores  $\alpha, \beta \in \mathbb{K}$  si es compatible determinado, compatible indeterminado o incompatible el sistema lineal $AX = B$ dado por

$$\begin{cases} x + \alpha y + \beta z = \alpha \\ x + \beta y + \alpha z = 0 \\ 3y + 2z = 1 \end{cases}$$

**Solución:** *Método 1*: Determinamos un sistema escalonado equivalente.
$$(A \mid B) = \begin{pmatrix} 1 & \alpha & \beta & \alpha \\ 1 & \beta & \alpha & 0 \\ 0 & 3 & 2 & 1 \end{pmatrix} \xrightarrow[f_2 \to f_2 - f_1]{} \begin{pmatrix} 1 & \alpha & \beta & \alpha \\ 0 & \beta - \alpha & \alpha - \beta & -\alpha \\ 0 & 3 & 2 & 1 \end{pmatrix}$$
Intercambiamos las filas 2 y 3 para asegurar que haya un pivote en la posición (2,2).
	$$\xrightarrow[f_2 \leftrightarrow f_3]{} \begin{pmatrix}
1 & \alpha & \beta & \alpha \\
0 & 3 & 2 & 1 \\
0 & \beta - \alpha & \alpha - \beta & -\alpha
\end{pmatrix} = (A'|B')$$
Comenzamos aquí la distinción de casos (a diferencia de lo que hicimos en el ejercicio anterior). Lo podemos hacer porque para algunos valores de  $\alpha$  y  $\beta$  la matriz (A'|B') ya es escalonada.

1) Si  $\alpha = \beta = 0$  entonces la última fila de $(A'|B')$ sería nula y $\operatorname{rg}(A') = \operatorname{rg}(A'|B') = 2$, que es menor que el número de incógnitas. El sistema es compatible indeterminado.
2) Si  $\alpha = \beta \neq 0$  entonces $2 = \operatorname{rg}(A') < \operatorname{rg}(A'|B') = 3$ y el sistema es incompatible.
3) Si  $\alpha \neq \beta$  la matriz $(A'|B')$ no es escalonada por lo que hay que continuar aplicando operaciones elementales.

$$(A'|B') \xrightarrow{f_3 \to f_3 - \frac{\beta - \alpha}{3} f_2} \begin{pmatrix} 1 & \alpha & \beta & \alpha \\ 0 & 3 & 2 & 1 \\ 0 & 0 & \frac{5}{2} (\alpha - \beta) & \frac{2\alpha - \beta}{3} \end{pmatrix} = (A''|B'')$$

	Como  $\alpha \neq \beta$  entonces $\operatorname{rg}(A'') = \operatorname{rg}(A''|B'') = 3$, que es igual al número de incógnitas. Por lo que el sistema $A''X = B''$, equivalente al inicial, es compatible determinado.

*Método 2*: Aplicamos el Teorema de Rouché-Förbenius al sistema sin escalonar. Estudiamos los rangos por menores, comenzando con el rango de la matriz de coeficientes. Como

$$\det(A) = \det\begin{pmatrix} 1 & \alpha & \beta \\ 1 & \beta & \alpha \\ 0 & 3 & 2 \end{pmatrix} = 5\beta - 5\alpha$$

se nos presentan los siguientes casos:

1)  $\alpha \neq \beta$ . Entonces  $\det(A) \neq 0$  y por tanto $AX = B$ es compatible determinado ya que

$$\operatorname{rg}(A)=\operatorname{rg}(A|B)=3$$

2)  $\alpha = \beta$ . Entonces

$$\operatorname{rg}(A) = rango\begin{pmatrix} 1 & \alpha & \alpha \\ 1 & \alpha & \alpha \\ 0 & 3 & 2 \end{pmatrix} < 3$$

El rango de $A$ es 2 pues tiene un menor de orden 2 no nulo (la submatriz de orden 2 que enmarcamos tiene determinante distinto de 0):

$$\operatorname{rg}(A) = \operatorname{rg}\left(\begin{array}{ccc} 1 & \alpha & \alpha \\ \hline 1 & \alpha & \alpha \\ 0 & 3 & 2 \end{array}\right) = 2$$

Para averiguar si el sistema es incompatible o compatible determinado calculamos

$$\operatorname{rg}(A|B) = \operatorname{rg}\left(\begin{array}{ccc|c} 1 & \alpha & \alpha & \alpha \\ \hline 1 & \alpha & \alpha & 0 \\ \hline 0 & 3 & 2 & 1 \end{array}\right)$$

Calculamos los determinantes de todas las submatrices de orden 3 no contenidas en $A$ y que contienen a la submatriz enmarcada. Sólo hay una:
$$\det \left( \begin{array}{ccc} 1 & \alpha & \alpha \\ \hline 1 & \alpha & 0 \\ 0 & 3 & 1 \end{array} \right) = 3\alpha$$

Concluimos que:
	2.a) Si  $\alpha = \beta = 0$ , entonces $\operatorname{rg}(A) = \operatorname{rg}(A|B) = 2$ y $AX = B$ es compatible indeterminado.
	2.b) Si  $\alpha = \beta \neq 0$ , entonces  $2 = \operatorname{rg}(A) \neq \operatorname{rg}(A|B) = 3$  y $AX = B$ es incompatible.  $\square$

**2.3.** Discuta y resuelva, según los valores de los parámetros $\alpha, \beta \in \mathbb{K}$ , el sistema

$$\mathcal{A} \equiv \begin{cases} \alpha x + y + z = 1\\ \alpha x + \alpha y + z = \beta\\ \alpha x + \alpha y + \alpha z = \beta\\ y + (\beta + 1)z = 1 \end{cases}$$

**Solución:** Comenzamos transformando  $\mathcal{A}$  en un sistema escalonado equivalente. Para ello consideramos la matriz ampliada del sistema y la trasformamos en una matriz escalonada utilizando operaciones elementales de filas:

$$(A \mid B) = 
\left(
\begin{array}{ccc|c} 
\alpha & 1 & 1 & 1 \\ \alpha & \alpha & 1 & \beta \\ \alpha & \alpha & \alpha & \beta \\ 0 & 1 & \beta + 1 & 1 
\end{array}
\right)
\sim_f 
\left(
\begin{array}{ccc|c}
\alpha & 1 & 1 & 1 \\ 0 & \alpha - 1 & 0 & \beta - 1 \\ 0 & \alpha - 1 & \alpha - 1 & \beta - 1 \\ 0 & 1 & \beta + 1 & 1 \end{array}
\right)
$$

$$\sim_f 
\left(
\begin{array}{ccc|c} 
\alpha & 1 & 1 & 1 \\ 
0 & \alpha - 1 & 0 & \beta - 1 \\ 
0 & 0 & \alpha - 1 & 0 \\ 
0 & 1 & \beta + 1 & 1 
\end{array} 
\right)
\sim_f 
\left(
\begin{array}{ccc|c}
\alpha & 1 & 1 & 1 \\ 0 & 1 & \beta + 1 & 1 \\ 0 & 0 & \alpha - 1 & 0 \\ 0 & \alpha - 1 & 0 & \beta - 1 
\end{array}
\right)
$$

$$\sim_f
\left(
\begin{array}{ccc|c} 
\alpha & 1 & 1 & 1 \\ 0 & 1 & \beta + 1 & 1 \\ 0 & 0 & \alpha - 1 & 0 \\ 0 & 0 & -(\alpha - 1)(\beta + 1) & \beta - \alpha 
\end{array}
\right)
\sim_f
\left(
\begin{array}{ccc|c} 
\alpha & 1 & 1 & 1 \\ 0 & 1 & \beta + 1 & 1 \\ 0 & 0 & \alpha - 1 & 0 \\ 0 & 0 & 0 & \beta - \alpha 
\end{array}
\right)
$$

Sea  $(A' \mid B')$  la última matriz. Tenemos que distinguir los siguientes casos:
	a) Si  $\alpha \neq \beta$  el sistema es incompatible pues  $(A' \mid B')$  tiene un pivote en la última columna.
	b) Si  $\alpha = \beta$  entonces la matriz ampliada del sistema equivalente es
$$(A' \mid B') = \begin{pmatrix} \alpha & 1 & 1 & 1 \\ 0 & 1 & \alpha + 1 & 1 \\ 0 & 0 & \alpha - 1 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix} \tag{*}$$
		b.1) Si  $\alpha = \beta = 0$  en (\*) eliminamos la cuarta fila que es nula. También la segunda fila que al ser igual a la primera su ecuación lineal correspondiente no aporta ninguna información añadida al sistema. Nos queda
$$\left(\begin{array}{cc|c} 0 & 1 & 1 & 1 \\ 0 & 0 & -1 & 0 \end{array}\right) \Leftrightarrow \mathcal{A}' \equiv \left\{\begin{array}{cc|c} y+z=1 \\ -z=0 \end{array}\right.$$
			El sistema  $\mathcal{A}'$  es compatible indeterminado pues
$$\operatorname{rg}(A') = \operatorname{rg}(A' \mid B') = 2 < 3 = \operatorname{n}^{\circ} \operatorname{de incógnitas}$$
			Asignando un parámetro  $\lambda$  a la incógnita secundaria x obtenemos la solución general de  $\mathcal{A}'$  (que también lo es de  $\mathcal{A}$ ):
$$\{(\lambda, 1, 0) : \lambda \in \mathbb{K}\}$$
		b.2) Si  $\alpha = \beta = 1$  en (\*) eliminamos las filas tercera y cuarta que son nulas y corresponden a ecuaciones lineales del tipo 0 = 0 que no aportan ninguna información. Nos queda
$$\left(\begin{array}{cc|c} 1 & 1 & 1 & 1 \\ 0 & 1 & 2 & 1 \end{array}\right) \Leftrightarrow \mathcal{A}'' \equiv \left\{\begin{array}{cc|c} x + y + z = 1 \\ y + 2z = 1 \end{array}\right.$$
			El sistema  $\mathcal{A}''$  es compatible indeterminado. Asignando un parámetro  $\lambda$  a la incógnita secundaria z obtenemos la solución general de  $\mathcal{A}''$  (que también lo es de  $\mathcal{A}$ ):
$$\{(\lambda, 1-2\lambda, \lambda) : \lambda \in \mathbb{K}\}$$
		b.3) Si  $\alpha = \beta \neq 0$  y  $\alpha = \beta \neq 1$  en (\*) eliminamos la cuarta fila que es nula y nos queda
$$\begin{pmatrix} \alpha & 1 & 1 & 1 \\ 0 & 1 & \alpha + 1 & 1 \\ 0 & 0 & \alpha - 1 & 0 \end{pmatrix} \sim_f \begin{pmatrix} \alpha & 1 & 1 & 1 \\ 0 & 1 & \alpha + 1 & 1 \\ 0 & 0 & 1 & 0 \end{pmatrix} = (A''|B'')$$
			El sistema es compatible determinado ya que  $\operatorname{rg}(A'') = \operatorname{rg}(A'' \mid B'') = 3$ , que es el número de incógnitas. En este punto, podemos resolver despejando las incógnitas, pero vamos a continuar transformando el sistema para resolver desde el sistema escalonado reducido
$$(A''|B'') \sim_f \left( \begin{array}{ccc|c} \alpha & 1 & 0 & 1 \\ 0 & 1 & 0 & 1 \\ 0 & 0 & 1 & 0 \end{array} \right) \quad \sim_f \left( \begin{array}{ccc|c} \alpha & 0 & 0 & 0 \\ 0 & 1 & 0 & 1 \\ 0 & 0 & 1 & 0 \end{array} \right) \sim_f \left( \begin{array}{ccc|c} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 1 \\ 0 & 0 & 1 & 0 \end{array} \right)$$
La solución es $(x, y, z) = (0, 1, 0)$.$\quad \square$


**2.4.** Resuelva el sistema

$$\begin{cases} 3x_1 + (-2-i)x_2 + ix_3 = 2i \\ ix_1 + x_2 + (1-i)x_3 = 1+2i \\ -2ix_1 - 2x_2 + 2x_3 = 1 \end{cases}$$

**Solución**: Aplicamos el método de Gauss a la matriz ampliada del sistema $AX = B$ dado:

$$\begin{pmatrix}
3 & -2 - i & i & 2i \\\ni & 1 & 1 - i & 1 + 2i \\
-2i & -2 & 2 & 1
\end{pmatrix}
\xrightarrow{f_2 \to 3f_2 - if_1}
\begin{pmatrix}
3 & -2 - i & i & 2i \\
0 & 2 + 2i & 4 - 3i & 5 + 6i \\
0 & -4 - 4i & 4 & -4
\end{pmatrix}$$

$$\xrightarrow{f_3 \to f_3 + 2f_2}
\begin{pmatrix}
3 & -2 - i & i & 2i \\
0 & 2 + 2i & 4 - 3i & 5 + 6i \\
0 & 0 & 12 - 6i & 6 + 12i
\end{pmatrix}$$

Sea $(A'|B')$ esta última matriz y $A'X = B'$ el sistema lineal asociado. El sistema es compatible determinado pues $\operatorname{rg}(A') = \operatorname{rg}(A'|B') = 3$, que es el número de incógnitas. Lo resolvemos despejando las incógnitas de abajo hacia arriba. Empezamos con la tercera ecuación:

$$x_3 = \frac{12i + 6}{12 - 6i} = \frac{(12i + 6)(12 + 6i)}{(12 - 6i)(12 + 6i)} = \frac{144i - 72 + 72 + 36i}{12^2 + 6^2} = \frac{180i}{180} = i$$

En la segunda ecuación

$$x_2 = \frac{5+6i-(4-3i)x_3}{2+2i} = \frac{5+6i-(4-3i)i}{2+2i} = \frac{2+2i}{2+2i} = 1$$

En la primera ecuación

$$x_1 = \frac{2i - ix_3 + (2+i)x_2}{3} = \frac{2i - i^2 + 2 + i}{3} = \frac{3+3i}{3} = 1+i$$

Luego la solución del sistema $AX = B$ es
$$(x_1, x_2, x_3) = (1 + i, 1, i)$$

**2.5.** Discuta y resuelva el sistema $AX = B$ dependiendo del valor de  $\alpha \in \mathbb{K}$ 

$$\begin{cases} 
x_1 & - & \alpha x_2 & & - & \alpha x_4 = 0 \\ 
\alpha x_1 & + & 4x_2 & & + & 4x_4 = 2\\ 
& & & 2x_3 & - & \alpha x_4 = 0\\ 
& & & \alpha x_3 & + & 2x_4 = 1 
\end{cases}$$

**Solución**: Empezamos calculando el determinante de la matriz de coeficientes $A$, y para ello aprovechamos su estructura por bloques:

$$\det(A) = \det\begin{pmatrix} 1 & -\alpha & 0 & -\alpha \\ \alpha & 4 & 0 & 4 \\ 0 & 0 & 2 & -\alpha \\ 0 & 0 & \alpha & 2 \end{pmatrix} = \det\begin{pmatrix} 1 & -\alpha \\ \alpha & 4 \end{pmatrix} \det\begin{pmatrix} 2 & -\alpha \\ \alpha & 2 \end{pmatrix} = (\alpha^2 + 4)(\alpha^2 + 4)$$

El rango de A depende del cuerpo en el que estamos trabajando:  $\mathbb{K} = \mathbb{R}$  o  $\mathbb{K} = \mathbb{C}$ .

- Si  $\mathbb{K} = \mathbb{R}$  el determinante no se anula nunca y  $\operatorname{rg}(A) = 4$ . Por tanto, el sistema real es compatible determinado para todo valor de  $\alpha \in \mathbb{R}$ . Escalonamos para resolver

$$\begin{pmatrix} 1 & -\alpha & 0 & -\alpha & 0 \\ \alpha & 4 & 0 & 4 & 2 \\ 0 & 0 & 2 & -\alpha & 0 \\ 0 & 0 & \alpha & 2 & 1 \end{pmatrix} \xrightarrow{f_2 \to f_2 - \alpha f_1} \begin{pmatrix} 1 & -\alpha & 0 & -\alpha & 0 \\ 0 & \alpha^2 + 4 & 0 & \alpha^2 + 4 & 2 \\ 0 & 0 & 2 & -\alpha & 0 \\ 0 & 0 & 0 & \alpha^2 + 4 & 2 \end{pmatrix} = (A'|B')$$
	Despejando incógnitas de abajo hacia arriba se obtiene la única solución
$$(x_1, x_2, x_3, x_4) = \left(\frac{2\alpha}{\alpha^2 + 4}, 0, \frac{\alpha}{\alpha^2 + 4}, \frac{2}{\alpha^2 + 4}\right)$$

- Si  $\mathbb{K} = \mathbb{C}$  entonces  $\det(A) = 0$  para  $\alpha = 2i$  y  $\alpha = -2i$ . Distinguimos dos casos:
	- Si  $\alpha \neq \pm 2i$ , es decir  $\alpha^2 + 4 \neq 0$ , entonces  $\operatorname{rg}(A) = \operatorname{rg}(A|B) = 4$  y el sistema es compatible determinado, igual que en el caso real. El sistema escalonado equivalente sería A'X = B', el mismo de antes. Y la solución también sería la misma:
$$(x_1, x_2, x_3, x_4) = \left(\frac{2\alpha}{\alpha^2 + 4}, 0, \frac{\alpha}{\alpha^2 + 4}, \frac{2}{\alpha^2 + 4}\right)$$
		La diferencia es que ahora  $\alpha \in \mathbb{C}$  con  $\alpha \neq \pm 2i$ .

	- Si  $\alpha = \pm 2i$  entonces la última fila de la matriz $(A'|B')$ da lugar a la ecuación incompatible 0 = 2. Por lo tanto el sistema es incompatible.  $\square$

### SEGUIR AQUI

**2.6.** Sean  $A, B \in \mathfrak{M}_n(\mathbb{K}), C \in \mathfrak{M}_{n \times 1}(\mathbb{K})$  con  $C \neq 0$ , y  $D \in \mathfrak{M}_{n \times k}(\mathbb{K})$  con  $D \neq 0$ . Demuestre que:
  - a) AC = BC implica que A B es singular.
  - b) AD = BD implica que A B es singular.

**Solución:** a) Sea (A - B)X = 0 un sistema lineal homogéneo con n ecuaciones y n incógnitas. De nuevo recurrimos al Corolario 2.18 y tenemos que

$$A-B$$
 es regular  $\Leftrightarrow$  la única solución de  $(A-B)X=0$  es  $X=0$ 

Entonces A-B es singular puesto que  $C\neq 0$  es solución de (A-B)X=0:

$$(A - B)C = AC - BC = 0$$

b) Sea  $D=(D_1|\cdots|D_k)$  con  $D_i\in\mathfrak{M}_{n\times 1}(\mathbb{K})$  para  $j=1,\ldots,k$ . Si AD=BD entonces

$$(AD_1|\cdots|AD_k) = A(D_1|\cdots|D_k) = AD = BD = B(D_1|\cdots|D_k) = (BD_1|\cdots|BD_k)$$

Como  $D \neq 0$  entonces existe un j tal que  $AD_j = BD_j$  con  $D_j \neq 0$ . Del apartado a) se sigue que $A - B$ es singular.  $\square$ 

**2.7.** Sea A una matriz cuadrada de orden n tal que todos sus elementos son números enteros y tal que  $\det(A) = 1$ . Sea $B$ una matriz de tamaño  $n \times 1$  tal que todos sus elementos son números enteros. De Teorema de Rouche-Fröbenius se sigue que el sistema lineal $AX = B$ tiene una única solución  $(s_1, \ldots, s_n)$ . Demuestre que  $s_1, \ldots, s_n$  son números enteros.

**Solución:** Por ser  $\det(A) \neq 0$  entonces existe la matriz inversa  $A^{-1}$ . El sistema $AX = B$ tendrá una única solución que calculamos multiplicando ambos lados de $AX = B$ por  $A^{-1}$ :

$$AX = B \Rightarrow A^{-1}AX = A^{-1}B \Rightarrow X = A^{-1}B$$

Ahora bien, al ser todos los elementos de A números enteros y  $\det(A) = 1$ , entonces también todos los elementos de  $A^{-1}$  son números enteros (ver la fórmula de  $A^{-1}$  de la página 66). Luego X se obtiene como producto de dos matrices  $A^{-1}$  y $B$ tales que todos sus elementos son números enteros y, por lo tanto, también los elementos de X son números enteros.  $\square$ 

**2.8.** Demuestre que si A es una matriz de orden n que verifica que la suma de las entradas que se encuentran en cada una de sus filas es igual a 0 entonces  $\det(A) = 0$ . Y demuestre que si $B$ es una matriz de orden n que verifica que la suma de las entradas que se encuentran en cada una de sus columnas es igual a 0 entonces  $\det(B) = 0$ .

**Solución:** Consideramos el sistema lineal homogéneo AX=0 de n ecuaciones y n incógnitas. De acuerdo al Corolario 2.18 tenemos que

A es invertible 
$$\Leftrightarrow$$
 la única solución de  $AX = 0$  es  $X = 0$ 

Ahora bien.

$$\begin{pmatrix} a_{11} & \cdots & a_{1n} \\ \vdots & \ddots & \vdots \\ a_{n1} & \cdots & a_{nn} \end{pmatrix} \begin{pmatrix} 1 \\ \vdots \\ 1 \end{pmatrix} = \begin{pmatrix} a_{11} + \cdots + a_{1n} \\ \vdots \\ a_{n1} + \cdots + a_{nn} \end{pmatrix} = \begin{pmatrix} 0 \\ \vdots \\ 0 \end{pmatrix}$$

ya que, por hipótesis,  $a_{i1} + \cdots + a_{in} = 0$  para  $i = 1, \ldots, n$ . Luego AX = 0 tiene soluciones distintas de X = 0. Entonces A es singular. Y una matriz es singular si y sólo si su determinante es igual a 0.

Pasamos ahora a la matriz B. Como  $B^t$  verifica que la suma de las entradas que se encuentran en cada una de sus filas es igual a 0 entonces, según acabamos de ver.  $\det(B^t) = 0$ . Por lo tanto  $\det(B) = \det(B^t) = 0$ .

**2.9.** Calcule todas las matrices inversas por la derecha de la matriz

$$A = \begin{pmatrix} 1 & 2 & 1 \\ -1 & -1 & 2 \end{pmatrix}$$

**Solución:** En el Ejercicio 1.17, vimos que A admite una inversa por la derecha. Vamos a ver que ésta no es única. Para ello consideramos todas las posibles matrices que son inversas por la derecha de A:

$$\begin{pmatrix} 1 & 2 & 1 \\ -1 & -1 & 2 \end{pmatrix} \begin{pmatrix} a & d \\ b & e \\ c & f \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$$

Esta ecuación da lugar a dos sistemas lineales. Tenemos el sistema compatible indeterminado en las incógnitas  $a,\,b$  y c

$$\begin{cases} a + 2b + c = 1 \\ -a - b + 2c = 0 \end{cases}$$

cuya solución es

$$(a, b, c) = (-1 + 5\alpha, 1 - 3\alpha, \alpha) \quad \text{con } \alpha \in \mathbb{K}$$

Y por otra parte tenemos el sistema compatible indeterminado en las incógnitas d, e y f

$$\begin{cases} d+2e+f=0\\ -d-e+2f=1 \end{cases}$$

cuya solución es

$$(d, e, f) = (-2 + 5\beta, 1 - 3\beta, \beta)$$
 con  $\beta \in \mathbb{K}$ 

Luego todas las matrices inversas por la derecha de A son de la forma

$$\begin{pmatrix} -1 + 5\alpha & -2 + 5\beta \\ 1 - 3\alpha & 1 - 3\beta \\ \alpha & \beta \end{pmatrix} \quad \text{con } \alpha, \beta \in \mathbb{K}$$

Observamos que en el Ejercicio 1.17, calculamos la inversa por la derecha que se corresponde a la matriz que se alcanza para los valores  $\alpha = \beta = 0$ .

Nota: Que el rango de A sea igual al número de filas y que el número de filas sea menor que el número de columnas, nos asegura que los sistemas lineales que tenemos que resolver son compatibles indeterminados. Por lo tanto nos asegura la existencia de infinitas inversas de A por la derecha.  $\Box$ 

**2.10.** Determine si existe algún valor  $a \in \mathbb{K}$  para el que tengan las mismas soluciones los sistemas

$$\begin{cases} x_1 & +x_2 & +x_3 & +ax_4 & = -1 \\ x_1 & +x_2 & +ax_3 & +x_4 & = 1 \\ x_1 & +ax_2 & +x_3 & +x_4 & = -1 \\ ax_1 & +x_2 & +x_3 & +x_4 & = 1 \end{cases} \qquad \begin{cases} x_1 & +x_2 & -x_3 & -x_4 & = 0 \\ & x_2 & -x_4 & = 0 \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & & \\ & & & & \\ & & & & \\ & & & & \\ & & & & \\ & & & & \\ & & & & \\ & & & & \\ & & & & \\ & & & & \\ & & & & \\ & & & & \\ & & & & \\ & & & & \\ & & & & \\ & & & \\ & & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\ & & & \\$$

Solución: Intentaremos responder a la pregunta de la forma más económica posible, sin calcular las soluciones. Para que los sistemas tengan las mismas soluciones, es decir. sean equivalentes, tienen que ser equivalentes al mismo sistema escalonado reducido (véase Proposición 2.14).

Las matrices ampliadas de los sistemas son:

$$(A_1|B_1) = \begin{pmatrix} 1 & 1 & 1 & a & | & -1 \\ 1 & 1 & a & 1 & | & 1 \\ 1 & a & 1 & 1 & | & -1 \\ a & 1 & 1 & 1 & | & 1 \end{pmatrix} \quad \mathbf{y} \quad (A_2|B_2) = \begin{pmatrix} 1 & 1 & -1 & -1 & | & 0 \\ 0 & 1 & 0 & -1 & | & 0 \\ 0 & 0 & 1 & -1 & | & \frac{-1}{2} \end{pmatrix}$$

Tendremos que determinar las matrices escalonadas reducidas equivalentes para dar respuesta al ejercicio. Antes de hacerlo, observamos que el sistema escalonado  $A_2X=B_2$  es compatible indeterminado pues  $\operatorname{rg}(A_2)=\operatorname{rg}(A_2|B_2)=3$ , que es menor que el número de incógnitas. Tendremos en cuenta este hecho al escalonar la matriz  $(A_1|B_1)$ 

$$(A_1|B_1) = \begin{pmatrix} 1 & 1 & 1 & a & | & -1 \\ 1 & 1 & a & 1 & | & 1 \\ 1 & a & 1 & 1 & | & -1 \\ a & 1 & 1 & 1 & | & 1 \end{pmatrix} \xrightarrow{f_2 \to f_2 - f_1} \begin{pmatrix} 1 & 1 & 1 & a & | & -1 \\ 0 & 0 & a - 1 & 1 - a & | & 2 \\ 0 & a - 1 & 0 & 1 - a & | & 0 \\ 0 & 1 - a & 1 - a & 1 - a^2 & | & 1 + a \end{pmatrix}$$

$$f_4 \to f_4 - af_1$$

Observamos que si a=1 el sistema  $A_1X=B_1$  sería incompatible pues la segunda ecuación del sistema equivalente sería 0=2. Luego  $a\neq 1$ . En este caso podemos simplificar las filas 2. 3 y 4 dividiendo por a-1 y seguimos escalonando

$$\begin{pmatrix}
1 & 1 & 1 & a & -1 \\
0 & 0 & 1 & -1 & \frac{2}{a-1} \\
0 & 1 & 0 & -1 & 0 \\
0 & -1 & -1 & -(1+a) & \frac{1+a}{a-1}
\end{pmatrix}
\xrightarrow{f_2 \leftrightarrow f_3}
\begin{pmatrix}
1 & 1 & 1 & a & -1 \\
0 & 1 & 0 & -1 & 0 \\
0 & 0 & 1 & -1 & \frac{2}{a-1} \\
0 & -1 & -1 & -(1+a) & \frac{1+a}{a-1}
\end{pmatrix}$$

$$\xrightarrow{f_4 \to f_4 + f_2}
\begin{pmatrix}
1 & 1 & 1 & a & -1 \\
0 & 1 & 0 & -1 & 0 \\
0 & 0 & 1 & -1 & 0 \\
0 & 0 & -1 & -2 - a & \frac{1+a}{a-1}
\end{pmatrix}
\xrightarrow{f_4 \to f_4 + f_3}
\begin{pmatrix}
1 & 1 & 1 & a & -1 \\
0 & 1 & 0 & -1 & 0 \\
0 & 0 & 1 & -1 & 0 \\
0 & 0 & 0 & -3 - a & \frac{2}{a-1} \\
0 & 0 & 0 & -3 - a & \frac{3+a}{a-1}
\end{pmatrix}$$

Sea  $(A'_1|B'_1)$  esta última matriz. Para que los dos sistemas del enunciado puedan ser equivalentes, el sistema  $A'_1X = B'_1$  tiene que ser compatible indeterminado. Y esto sucede si y sólo si

$$\operatorname{rg}(A'_1) = \operatorname{rg}(A'_1|B'_1) = 3$$

Entonces a = -3 y la matriz quedaría:

$$\left(\begin{array}{ccc|ccc}
1 & 1 & 1 & -3 & -1 \\
0 & 1 & 0 & -1 & 0 \\
0 & 0 & 1 & -1 & \frac{-1}{2} \\
0 & 0 & 0 & 0 & 0
\end{array}\right)$$

Eliminamos la última fila que se corresponde con la ecuación trivial 0 = 0, y seguimos hasta determinar una matriz escalonada reducida equivalente por filas

$$\begin{pmatrix} 1 & 1 & 1 & -3 & | & -1 \\ 0 & 1 & 0 & -1 & | & 0 \\ 0 & 0 & 1 & -1 & | & \frac{-1}{2} \end{pmatrix} \xrightarrow{f_1 \to f_1 - f_2 - f_3} \begin{pmatrix} 1 & 0 & 0 & -2 & | & \frac{-1}{2} \\ 0 & 1 & 0 & -1 & | & 0 \\ 0 & 0 & 1 & -1 & | & \frac{-1}{2} \end{pmatrix} = (A_1''|B_1'')$$

Luego  $(A''_1|B''_1)$  es la matriz ampliada del sistema escalonado equivalente a  $A_1X = B_1$ .

Por otro lado, es fácil ver que la forma escalonada reducida de la matriz  $(A_2|B_2)$  es igual a  $(A_1''|B_1'')$ . Luego los sistemas  $A_1X = B_1$  y  $A_2X = B_2$  son equivalentes si y sólo si a = -3.

- **2.11.** Sea $AX = B$ un sistema lineal compatible indeterminado con  $A \in \mathfrak{M}_{m \times n}(\mathbb{K})$  y  $B \in \mathfrak{M}_{m \times 1}(\mathbb{K})$ . Sean  $C_1, \ldots, C_n$  las columnas de A. Determine la falsedad o veracidad de las afirmaciones:
  - a) El sistema AX = C con  $C = \alpha_1 C_1 + \ldots + \alpha_n C_n$ ,  $\alpha_i \in \mathbb{K}$ , es compatible determinado.
  - b) Si AX = 0 es compatible indeterminado y  $D = 2C_1$ , entonces el sistema AX = D es compatible indeterminado.

Solución: Como $AX = B$ es compatible indeterminado, entonces \operatorname{rg}(A) = \operatorname{rg}(A|B) < n.

a) Si C es combinación lineal de las columnas de A, entonces

$$\operatorname{rg}(A|C) = \operatorname{rg}(A) < n$$

Luego el sistema AX = C es compatible indeterminado. La afirmación es falsa.

b) Si  $D=2C_1$ , en particular D es una combinación lineal de las columnas de A y así

$$\operatorname{rg}(A|D) = \operatorname{rg}(A) < n$$

por lo que el sistema es compatible indeterminado. La afirmación es verdadera.  $\Box$ 

## Ejercicios del capítulo 3

- **3.1.** a) Dados los vectores  $w_1 = (1, 1, 2)$  y  $w_2 = (3, 2, -1)$  de  $\mathbb{R}^3$ , encuentre un vector  $w_3$  de  $\mathbb{R}^3$  tal que  $\{w_1, w_2, w_3\}$  sea una base de  $\mathbb{R}^3$ .
  - b) Dados los vectores  $u_1=(1,-1,0,1)$  y  $u_2=(2,1,0,2)$  de  $\mathbb{R}^3$ , encuentre todos los vectores  $u_3$  y  $u_4$  de  $\mathbb{R}^4$  tales que  $\{u_1,u_2,u_3,u_4\}$  sea una base de  $\mathbb{R}^4$ .

**Solución:** a) Los vectores  $w_1$  y  $w_2$  son linealmente independientes al no ser proporcionales. Por el Teorema de ampliación a una base sabemos que existe un tercer vector  $w_3 = (\alpha_1, \alpha_2, \alpha_3)$  que no depende linealmente de  $w_1$  y  $w_2$  tal que  $\{w_1, w_2, w_3\}$  es una base de  $\mathbb{R}^3$ . Esto sucede si y sólo si

$$\operatorname{rg}(A) = \operatorname{rg}\begin{pmatrix} 1 & 1 & 2 \\ 3 & 2 & -1 \\ \alpha_1 & \alpha_2 & \alpha_3 \end{pmatrix} = 3 \iff \det(A) = -\alpha_3 + 7\alpha_2 - 5\alpha_1 \neq 0$$

Tomando, por ejemplo,  $w_3 = (\alpha_1, \alpha_2, \alpha_3) = (1, 0, 0)$  obtenemos el resultado descado.

b) Los vectores  $u_1$  y  $u_2$  son linealmente independientes porque no son proporcionales. Por el Teorema de ampliación a una base, se trata de encontrar todos los vectores

$$u_3 = (\alpha_1, \alpha_2, \alpha_3, \alpha_4)$$
 y  $u_4 = (\beta_1, \beta_2, \beta_3, \beta_4)$ 

tales que  $\{u_1, u_2, u_3, u_4\}$  es una base de  $\mathbb{R}^4$ . Esto sucede si y sólo si

$$\operatorname{rg}(A) = rg \begin{pmatrix} 1 & -1 & 0 & 1 \\ 2 & 1 & 0 & 2 \\ \alpha_1 & \alpha_2 & \alpha_3 & \alpha_4 \\ \beta_1 & \beta_2 & \beta_3 & \beta_4 \end{pmatrix} = 4 \iff det(A) \neq 0$$

$$(9.10)$$

Desarrollando el determinante de A por la tercera columna obtenemos

$$\det A = \alpha_3 \det \begin{pmatrix} 1 & -1 & 1 \\ 2 & 1 & 2 \\ \beta_1 & \beta_2 & \beta_4 \end{pmatrix} - \beta_3 \det \begin{pmatrix} 1 & -1 & 1 \\ 2 & 1 & 2 \\ \alpha_1 & \alpha_2 & \alpha_4 \end{pmatrix}$$
$$= \alpha_3 (-3\beta_1 + 3\beta_4) - \beta_3 (-3\alpha_1 + 3\alpha_4)$$
$$= -3\alpha_3\beta_1 + 3\alpha_3\beta_4 + 3\beta_3\alpha_1 - 3\beta_3\alpha_4$$

La condición

$$-3\alpha_3\beta_1 + 3\alpha_3\beta_4 + 3\beta_3\alpha_1 - 3\beta_3\alpha_4 \neq 0$$
 (\*)

determina a todos los vectores  $u_3$  y  $u_4$  tales que  $\{u_1, u_2, u_3, u_4\}$  sea una base de  $\mathbb{R}^4$ .

Nota: Este método no es recomendable si lo que se busca son dos vectores concretos  $u_3$  y  $u_4$ , pues la condición (\*) puede llegar a ser difícil de evaluar. En tal caso, un método eficaz de proceder es comenzar con la matriz A formada por los vectores  $u_1$ ,  $u_2$  y dos vectores genéricos

 $u_3$  y  $u_4$ . Después escalonamos la parte de la matriz que conocemos y escogemos  $u_3$  y  $u_4$  tales que la matriz tenga rango 4:

$$\begin{pmatrix} 1 & -1 & 0 & 1 \\ 2 & 1 & 0 & 2 \\ \alpha_1 & \alpha_2 & \alpha_3 & \alpha_4 \\ \beta_1 & \beta_2 & \beta_3 & \beta_4 \end{pmatrix} \sim \begin{pmatrix} 1 & -1 & 0 & 1 \\ 0 & 3 & 0 & 0 \\ \alpha_1 & \alpha_2 & \alpha_3 & \alpha_4 \\ \beta_1 & \beta_2 & \beta_3 & \beta_4 \end{pmatrix} = \begin{pmatrix} 1 & -1 & 0 & 1 \\ 0 & 3 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}$$

**3.2.** Consideramos tres bases de un espacio vectorial real V dadas por

$$\mathcal{B} = \{e_1, e_2, e_3\}, \ \mathcal{B}' = \{2e_1 + 3e_2, e_1 + e_3, e_1 - e_2 + e_3\}, \ \mathcal{B}'' = \{e_1 + e_2, e_2, e_1 + e_3\}$$

Si las coordenadas del vector  $v \in V$  respecto de  $\mathcal{B}'$  son (1,2,3), ¿cuáles son las coordenadas de v respecto de  $\mathcal{B}''$ ?

**Solución:** Como  $v = (1, 2, 3)_{\mathcal{B}'}$  entonces

$$v = 1 \cdot (2e_1 + 3e_2) + 2 \cdot (e_1 + e_3) + 3 \cdot (e_1 - e_2 + e_3) = 7e_1 + 5e_3$$

Sean  $(\alpha, \beta, \gamma)$  son las coordenadas de v respecto de  $\mathcal{B}''$ . Entonces

$$v = (\alpha, \beta, \gamma)_{\mathcal{B}''} = \alpha(e_1 + e_2) + \beta(e_2) + \gamma(e_1 + e_3) = (\alpha + \gamma)e_1 + (\alpha + \beta)e_2 + \gamma e_3$$

Igualando ambas expresiones de v tenemos que

$$v = 7e_1 + 5e_3 = (\alpha + \gamma)e_1 + (\alpha + \beta)e_2 + \gamma e_3$$

Dado que  $\{e_1, e_2, e_3\}$  es una base, entonces las coordenadas coinciden. Esto es,

$$\begin{cases} \alpha + \gamma = 7 \\ \alpha + \beta = 0 \\ \gamma = 5 \end{cases}$$

Se trata de un sistema lineal en las incógnitas  $\alpha, \beta, \gamma$  cuya única solución es

$$(\alpha, \beta, \gamma) = (2, -2, 5)$$

**3.3.** Sea  $\mathcal{B} = \{u_1, u_2, u_3, u_4\}$  una base de un espacio vectorial V. Determine unas ecuaciones implícitas del subespacio vectorial  $L(v_1, v_2, v_3)$  generado por los vectores

$$v_1 = u_1 + u_2$$
,  $v_2 = u_2 - u_3 + u_4$   $y$   $v_3 = 2u_1 + u_2 + u_3 - u_4$ 

**Solución:** Un vector genérico x pertenece a  $L(v_1, v_2, v_3)$  si y sólo si x es combinación lineal de  $v_1, v_2$  y  $v_3$ . Y esto último equivale a que se dé la igualdad

$$\operatorname{rg}\{v_1,v_2,v_3\} = \operatorname{rg}\{v_1,v_2,v_3,x\}$$

Si  $(x_1, x_2, x_3, x_4)$  son las coordenadas de x respecto de  $\mathcal{B}$  entonces  $x \in L(v_1, v_2, v_3)$  si y sólo si

$$\operatorname{rg} \left( \begin{array}{ccc|c}$$

La resolución de esta igualdad nos proporcionará unas ecuaciones implícitas. Podemos estudiar el rango por menores o escalonando.

#### Escalonando:

$$\begin{pmatrix}
1 & 0 & 2 & x_1 \\
1 & 1 & 1 & x_2 \\
0 & -1 & 1 & x_3 \\
0 & 1 & -1 & x_4
\end{pmatrix}
\sim_f
\begin{pmatrix}
1 & 0 & 2 & x_1 \\
0 & 1 & -1 & x_1 + x_2 \\
0 & -1 & 1 & x_3 \\
0 & 1 & -1 & x_4
\end{pmatrix}
\sim_f
\begin{pmatrix}
1 & 0 & 2 & x_1 \\
0 & 1 & -1 & -x_1 + x_2 \\
0 & 0 & 0 & -x_1 + x_2 + x_3 \\
0 & 0 & 0 & x_1 - x_2 + x_4
\end{pmatrix}$$

Luego \operatorname{rg}(A) = \operatorname{rg}(A|X) = 2 si y sólo si las entradas (3,4) y (4,4) de esta última matriz son iguales a 0. Obtenemos así unas ecuaciones implícitas de  $L(v_1, v_2, v_3)$ :

$$\begin{cases} -x_1 + x_2 + x_3 = 0 \\ x_1 - x_2 + x_4 = 0 \end{cases}$$

Por menores: El cálculo del rango por menores está descrito en la página 69. Primero estudiamos el rango de A. Localizamos en A un menor de orden 2 no nulo. Por ejemplo, si consideramos la submatriz A' formada por las filas y columnas 1 y 2 tenemos

$$\det(A') = \det\left(\begin{array}{cc} 1 & 0\\ 1 & 1 \end{array}\right) = 1 \neq 0$$

Deducimos que  $\operatorname{rg}(A) \ge 2$ . Consideramos todas las submatrices de A orden 3 que contienen a A', y determinamos si alguna de ellas tiene determinante distinto de 0:

$$\det \begin{pmatrix} 1 & 0 & 2 \\ 1 & 1 & 1 \\ \hline 0 & -1 & 1 \end{pmatrix} = 0 \quad y \quad \det \begin{pmatrix} 1 & 0 & 2 \\ 1 & 1 & 1 \\ \hline 0 & 1 & -1 \end{pmatrix} = 0$$

Luego A no tiene menores de orden 3 no nulos y \operatorname{rg}(A) = 2. A continuación estudiamos en qué condiciones \operatorname{rg}(A|X) = 2. Para ello, tienen que anularse los determinantes de todas las submatrices de orden 3 de (A|X) que contengan a A' y que contengan parte de la última columna de (A|X):

$$\det \begin{pmatrix} 1 & 0 & x_1 \\ 1 & 1 & x_2 \\ \hline 0 & -1 & x_3 \end{pmatrix} = -x_1 + x_2 + x_3 = 0. \quad \det \begin{pmatrix} 1 & 0 & x_1 \\ 1 & 1 & x_2 \\ \hline 0 & 1 & x_4 \end{pmatrix} = x_1 - x_2 + x_4 = 0$$

Obtenemos así las mismas ecuaciones implícitas de  $L(v_1, v_2, v_3)$  que antes.

- **3.4.** Determine si los conjuntos dados son subespacios vectoriales de los espacios vectoriales indicados en cada caso:
  - a) De  $\mathbb{R}^3$  el conjunto  $S = \{(a+1, 2a+b, 3b): a, b \in \mathbb{R}\}.$
  - b) De  $\mathbb{R}^3$  el conjunto  $R = \{(x, y, z) : x^2 + y^2 + z^2 = 0\}.$
  - c) De  $\mathfrak{M}_n(\mathbb{R})$  el conjunto  $S_B = \{A \in \mathfrak{M}_n(\mathbb{R}) : AB = 0\}$  con  $B \in \mathfrak{M}_n(\mathbb{R})$  no nula.
  - d) De  $\mathfrak{M}_n(\mathbb{R})$  el conjunto  $R_B=\{A\in\mathfrak{M}_n(\mathbb{R}):\ AB\neq 0\}$  con  $B\in\mathfrak{M}_n(\mathbb{R})$  no nula.
  - e) Del espacio  $\mathcal{C}(\mathbb{R})$  de funciones reales continuas el conjunto  $\mathcal{P}$  de las funciones pares f(-x) = f(x) y el conjunto  $\mathcal{I}$  de las funciones impares f(-x) = -f(x).

Solución: En cada caso veremos si el conjunto dado tiene estructura de espacio vectorial.

a) El conjunto S no es un subespacio vectorial de  $\mathbb{R}^3$  porque no contiene al vector nulo de  $\mathbb{R}^3$ . En efecto,  $(0,0,0) \in S$  si y sólo si existen  $a,b \in \mathbb{R}$  tales que

$$(a+1, 2a+b, 3b) = (0, 0, 0)$$

Igualando componentes se tiene un sistema incompatible en las incógnitas  $a \ y \ b$ .

- b) El conjunto R sí es un subespacio vectorial de  $\mathbb{R}^3$  ya que  $R = \{(0,0,0)\}.$
- c) Sean  $A_1, A_2 \in S_B$  y sean  $\alpha_1, \alpha_2 \in \mathbb{R}$ , entonces

$$(\alpha_1 A_1 + \alpha_2 A_2)B = \alpha_1 A_1 B + \alpha_2 A_2 B = \alpha_1 \cdot 0 + \alpha_2 \cdot 0 = 0$$

y, por tanto,  $S_B$  es un subespacio vectorial de  $\mathfrak{M}_n(\mathbb{R})$ .

- d) El conjunto  $R_B$  no es un subespacio vectorial de  $\mathfrak{M}_n(\mathbb{R})$  ya que no contiene a la matriz nula de orden n (que es el vector 0 de  $\mathfrak{M}_n(\mathbb{R})$ ).
- e) Sean  $f_1, f_2 \in \mathcal{P}$  y  $\alpha_1, \alpha_2 \in \mathbb{R}$ , entonces

$$(\alpha_1 f_1 + \alpha_2 f_2)(-x) = \alpha_1 f_1(-x) + \alpha_2 f_2(-x)$$

$$= \alpha_1 f_1(x) + \alpha_2 f_2(x)$$

$$= (\alpha_1 f_1 + \alpha_2 f_2)(x)$$

Y sean  $g_1, g_2 \in \mathcal{I}$  y  $\beta_1, \beta_2 \in \mathbb{R}$ , entonces

$$(\beta_1 g_1 + \beta_2 g_2)(-x) = \beta_1 g_1(-x) + \beta_2 g_2(-x)$$

$$= \beta_1 (-g_1(x)) + \beta_2 (-g_2(x))$$

$$= -\beta_1 g_1(x) - \beta_2 g_2(x)$$

$$= -(\beta_1 g_1 + \beta_2 g_2)(x)$$

Es decir, tanto  $\mathcal{P}$  como  $\mathcal{I}$  son subespacios vectoriales de  $\mathcal{C}(\mathbb{R})$ .  $\square$ 

**3.5.** Encuentre los valores reales de  $\alpha$  y  $\beta$  para los que el conjunto de vectores

$$\{1+t, 3+2t^2, t^3, \beta t+t^2+\alpha t^3\}$$

forma una base de  $\mathbb{R}_3[t]$ . Para  $\beta=1$  determine unas ecuaciones implícitas del subespacio vectorial  $V_{\alpha}$  generado por los dos últimos vectores.

**Solución:** a) Trabajaremos con las coordenadas de los vectores (polinomios) respecto de la base canónica  $\mathcal{B} = \{1, t, t^2, t^3\}$  de  $\mathbb{R}_3[t]$ . Las coordenadas vienen dadas por

$$1+t=(1,1,0,0)_{\mathcal{B}}$$
.  $3+2t^2=(3,0,2,0)_{\mathcal{B}}$ .  $t^3=(0,0,0,1)_{\mathcal{B}}$ ,  $\beta t+t^2+\alpha t^3=(0,\beta,1,\alpha)_{\mathcal{B}}$ 

Los vectores formarán una base si son linealmente independientes, es decir, si el rango de la matriz de coordenadas de por filas de  $\{1+t, 3+2t^2, t^3, \beta t+t^2+\alpha t^3\}$  respecto de  $\mathcal{B}$  es igual a 4. Calculamos el determinante de esta matriz

$$\det \begin{pmatrix} 1 & 1 & 0 & 0 \\ 3 & 0 & 2 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & \beta & 1 & \alpha \end{pmatrix} = 2\beta + 3.$$

y vemos que es distinto de 0 si y sólo si  $\beta \neq \frac{-3}{2}$ . Luego su rango es igual a 4 si y sólo si  $\beta \neq \frac{-3}{2}$ .

b) Para  $\beta = 1$  unas ecuaciones implícitas del subespacio

$$V_{\alpha} = L(t^3, \ t + t^2 + \alpha t^3)$$

respecto de la base canónica vienen determinadas por la condición

$$\operatorname{rg} \begin{pmatrix} 0 & 0 \\ 0 & 1 \\ 0 & 1 \\ 1 & \alpha \end{pmatrix} = \operatorname{rg} \begin{pmatrix} 0 & 0 & x_1 \\ 0 & 1 & x_2 \\ 0 & 1 & x_3 \\ 1 & \alpha & x_4 \end{pmatrix}$$

Escalonamos esta última matriz para estudiar mejor los rangos:

$$\begin{pmatrix} 0 & 0 & x_1 \\ 0 & 1 & x_2 \\ 0 & 1 & x_3 \\ 1 & \alpha & x_4 \end{pmatrix} \sim \begin{pmatrix} 1 & \alpha & x_4 \\ 0 & 1 & x_2 \\ 0 & 1 & x_3 \\ 0 & 0 & x_1 \end{pmatrix} \sim \begin{pmatrix} 1 & \alpha & x_4 \\ 0 & 1 & x_2 \\ 0 & 0 & x_3 - x_2 \\ 0 & 0 & x_1 \end{pmatrix}$$

Así, el rango de ambas matrices coincide si y sólo si se cumple

$$\begin{cases} -x_2 + x_3 = 0 \\ x_1 = 0 \end{cases}$$

y, por lo tanto, éstas son unas ecuaciones implícitas de  $V_0$ .  $\square$ 

**3.6.** En $\mathbb{R}^4$ se consideran los subespacios vectoriales

$$U = L((1,0,0,1),(1,1,1,1),(0,2,2,0)) y V \equiv \begin{cases} 3x + y - z - 3t = 0 \\ y - t = 0 \end{cases}$$

Determine una base del subespacio  $U \cap V$  y una base del subespacio U + V.

Solución: a) Calculamos las ecuaciones implícitas de U imponiendo que

$$\operatorname{rg}\left(\begin{array}{cccc} 1 & 1 & 0 \\ 0 & 1 & 2 \\ 0 & 1 & 2 \\ 1 & 1 & 0 \end{array}\right) = \operatorname{rg}\left(\begin{array}{cccc} 1 & 1 & 0 & x \\ 0 & 1 & 2 & y \\ 0 & 1 & 2 & z \\ 1 & 1 & 0 & t \end{array}\right)$$

y escalonando la matriz ampliada

$$\begin{pmatrix}
1 & 1 & 0 & x \\
0 & 1 & 2 & y \\
0 & 1 & 2 & z \\
1 & 1 & 0 & t
\end{pmatrix}
\sim_{f}
\begin{pmatrix}
1 & 1 & 0 & x \\
0 & 1 & 2 & y \\
0 & 1 & 2 & z \\
0 & 0 & 0 & t-x
\end{pmatrix}
\sim_{f}
\begin{pmatrix}
1 & 1 & 0 & x \\
0 & 1 & 2 & y \\
0 & 0 & 0 & z-y \\
0 & 0 & 0 & t-x
\end{pmatrix}$$

Los rangos coinciden si y sólo si las entradas (3,4) y (4,4) de la última matriz son iguales a 0. Obtenemos así las 2 ecuaciones que definen a unas ecuaciones implícitas de U:

$$\begin{cases} z - y = 0 \\ t - x = 0 \end{cases}$$

Juntando las ecuaciones de U con las de V obtenemos unas ecuaciones de  $U \cap V$ :

$$\begin{cases} 3x + y - z - 3t = 0 \\ y - t = 0 \\ -y + z = 0 \\ -x + t = 0 \end{cases}$$

Resolviendo el sistema obtenemos unas ecuaciones paramétricas de  $U\cap V$  dadas por

$$(x, y, z, t) = (\lambda, \lambda, \lambda, \lambda)$$

donde  $\lambda$  recorre todo  $\mathbb{R}$ . Y de ahí deducimos que  $\{(1,1,1,1)\}$  es una base de  $U \cap V$ .

b) Comenzamos determinando una base de U. Observamos que

$$\dim(U)=\dim(\mathbb{R}^4)$$
 – número de ecuaciones implícitas de  $U=4-2=2$ 

Una base de U estará compuesta por dos vectores linealmente independientes del conjunto:

$$\{(1,0,0,1),(1,1,1,1),(0,2,2,0)\}$$

Nos valen los dos primeros ya que no son proporcionales.

Pasamos a calcular una base de V. Para ello calculamos la solución general del sistema de ecuaciones lineales que define a V, que es

$$\begin{cases} x = \frac{1}{3}\lambda + \frac{2}{3}\mu \\ y = \mu \\ z = \lambda \\ t = \mu \end{cases}$$

donde  $\lambda$  y  $\mu$  recorren todo  $\mathbb{R}$ . O, lo que es lo mismo.

$$(x, y, z, t) = (\frac{1}{3}\lambda + \frac{2}{3}\mu, \mu, \lambda, \mu) = \frac{1}{3}\lambda(1, 0, 3, 0) + \frac{1}{3}\mu(2, 3, 0, 3)$$

de donde se sigue que  $\{(2,3,0,3),(1,0,3,0)\}$  es una base de V. Por lo tanto

$$U + V = L(v_1 = (1, 0, 0, 1), v_2 = (1, 1, 1, 1), v_3 = (2, 3, 0, 3), v_4 = (1, 0, 3, 0))$$

con  $U = L(v_1, v_2)$  y  $V = L(v_3, v_4)$ . Buscamos una base de U + V. Para ello construimos la matriz de coordenadas de  $\{v_1, v_2, v_3, v_4\}$  por filas y la escalonamos. Reflejaremos en la última columna cómo se transforman los vectores:

$$\begin{pmatrix}
1 & 0 & 0 & 1 & v_1 \\
1 & 1 & 1 & 1 & v_2 \\
2 & 3 & 0 & 3 & v_4
\end{pmatrix}
\sim_f
\begin{pmatrix}
1 & 0 & 0 & 1 & v_1 \\
0 & 1 & 1 & 0 & v_2 - v_1 \\
0 & 3 & 0 & 1 & v_3 - 2v_1
\end{pmatrix}
\sim_f
\begin{pmatrix}
1 & 0 & 0 & 1 & v_2 - v_1 \\
0 & 1 & 1 & 0 & v_3 - 2v_1 \\
0 & 0 & 3 & -1 & v_4 - v_1
\end{pmatrix}
\sim_f
\begin{pmatrix}
1 & 0 & 0 & 1 & v_2 - v_1 \\
0 & 0 & 3 & -1 & v_3 + v_1 - 3v_2
\end{pmatrix}
\sim_f
\begin{pmatrix}
1 & 0 & 0 & 1 & v_2 - v_1 \\
0 & 0 & 3 & -1 & v_4 - v_1
\end{pmatrix}
\sim_f
\begin{pmatrix}
1 & 0 & 0 & 1 & v_1 \\
0 & 1 & 1 & 0 \\
0 & 0 & 3 & -1 & v_4 - v_1
\end{pmatrix}
\sim_f
\begin{pmatrix}
1 & 0 & 0 & 1 & v_1 \\
0 & 1 & 1 & 0 \\
0 & 0 & -3 & 1 \\
0 & 0 & 0 & 0 & v_3 + v_1 - 3v_2
\end{pmatrix}
\sim_f
\begin{pmatrix}
1 & 0 & 0 & 1 & v_1 \\
0 & 1 & 1 & 0 \\
0 & 0 & -3 & 1 \\
0 & 0 & 0 & 0 & v_3 + v_1 - 3v_2
\end{pmatrix}
\sim_f
\begin{pmatrix}
1 & 0 & 0 & 1 & v_1 \\
0 & 1 & 1 & 0 \\
0 & 0 & -3 & 1 \\
0 & 0 & 0 & 0 & v_3 + v_1 - 3v_2
\end{pmatrix}
\sim_f
\begin{pmatrix}
1 & 0 & 0 & 1 & v_1 \\
0 & 1 & 1 & 0 \\
0 & 0 & -3 & 1 \\
0 & 0 & 0 & 0 & v_3 + v_1 - 3v_2
\end{pmatrix}
\sim_f
\begin{pmatrix}
1 & 0 & 0 & 1 & v_1 \\
0 & 1 & 1 & 0 \\
0 & 0 & -3 & 1 \\
0 & 0 & 0 & 0 & v_3 + v_1 - 3v_2
\end{pmatrix}
\sim_f$$

Luego  $\dim(U+V) = \operatorname{rg}\{v_1, v_2, v_3, v_4\} = 3$  y hemos obtenido los siguientes conjuntos de vectores equivalentes

$$\{v_1, v_2, v_3, v_4\}$$
 y  $\{v_1, -v_1 + v_2, v_3 + v_1 - 3v_2, 0\}$ 

Por lo tanto una base de U+V es

$$\{v_1, -v_1+v_2, v_3+v_1-3v_2\} = \{(1, 0, 0, 1), (0, 1, 1, 0), (0, 0, -3, 1)\}$$

Otra información interesante que podemos obtener de la última matriz es la siguiente: de la última fila se deduce que  $v_3 - 3v_2 + v_4 = 0$ , entonces  $v_3 + v_4 = 3v_2 \in V \cap U$ , lo que nos permitiría haber resuelto el apartado (a) con más facilidad.  $\square$ 

3.7. Sea V un  $\mathbb{K}$ -espacio vectorial de dimension 4, y sean

$$U = \{(\alpha, \beta, -\alpha, 0)_{\mathcal{B}} : \alpha, \beta \in \mathbb{K}\} \quad y \quad V_a \equiv \begin{cases} x_1 + x_2 + x_3 + x_4 = 0 \\ x_1 + 2x_2 + ax_3 = 0 \end{cases}$$

dos subespacios vectoriales de V respecto de una base  $\mathcal{B}$  de V.

- 1) Determine los valores del parámetro  $a \in \mathbb{K}$  para los que U y  $V_a$  son suplementarios.
- 2) Obtenga una base y unas ecuaciones implícitas de los subespacios  $U+V_a$  y  $U\cap V_a$ .

**Solucion:** 1) El subespacio U viene dado en paramétricas. Si asignamos valores  $(\alpha, \beta) = (1, 0)$  y  $(\alpha, \beta) = (0, 1)$  obtenemos una base de U

$$\{u_1 = (1, 0, -1, 0), u_2 = (0, 1, 0, 0)\}$$

El subespacio  $V_a$  viene dado por 2 ecuaciones que, independientemente del valor que tome a, no son proporcionales. Son, por tanto, unas ecuaciones implícitas de  $V_a$  y

$$\dim V_a = 4 - \text{n}^{\circ} \text{ ecuaciones} = 2$$

Transformamos el sistema dado en un sistema escalonado reducido equivalente

$$\begin{cases} x_1 + x_2 + x_3 + x_4 = 0 \\ x_1 + 2x_2 + ax_3 = 0 \end{cases} \sim \begin{cases} x_1 + x_2 + x_3 + x_4 = 0 \\ x_2 + (a-1)x_3 - x_4 = 0 \end{cases} \sim \begin{cases} x_1 + (2-a)x_3 + 2x_4 = 0 \\ x_2 + (a-1)x_3 - x_4 = 0 \end{cases}$$

y asignando valores  $(x_3, x_4) = (0, 1)$  y  $(x_3, x_4) = (1, 0)$  obtenemos una base de  $V_a$ 

$$\{v_1 = (-2, 1, 0, 1), v_2 = (a - 2, 1 - a, 1, 0)\}$$

Para que U y  $V_a$  sean suplementarios se tiene que cumplir que  $U+V_a=V$  y que  $U\cap V_a=\{0\}$ . Teniendo en cuenta que  $\dim(U)=\dim(V_a)=2$  y utilizando la fórmula de Grassmann:

$$\dim(U+V_a) = \dim(U) + \dim(V_a) - \dim(U \cap V_a) = 4 - \dim(U \cap V_a)$$

podemos afirmar que

$$U y V_a$$
 son suplementarios  $\Leftrightarrow \dim(U + V_a) = 4 \Leftrightarrow \dim(U \cap V_a) = 0$ 

ya que entonces  $U+V_a=V$  y  $U\cap V_a=\{0\}$ . Estudiamos en qué casos  $\dim(U+V_a)=4$ . Como

$$U + V_a = L(u_1, u_2, v_1, v_2)$$

se trata de averiguar en qué casos  $\operatorname{rg}\{u_1, u_2, v_1, v_2\} = 4$ . O lo que es lo mismo, averiguar cuándo el determinante de la matriz de coordenadas por filas de  $\{u_1, u_2, v_1, v_2\}$  es distinto de 0. Tenemos que

$$\det \begin{pmatrix} 1 & 0 & -1 & 0 \\ 0 & 1 & 0 & 0 \\ -2 & 1 & 0 & 1 \\ a - 2 & 1 - a & 1 & 0 \end{pmatrix} = 1 - a \neq 0 \quad \Leftrightarrow \quad a \neq 1$$

Luego U y  $V_a$  son suplementarios si y sólo si  $a \neq 1$ .

2) Caso  $a \neq 1$ . En este caso U y  $V_a$  son suplementarios y, por tanto,  $U + V_a = V$  y  $U \cap V_a = \{0\}$ . El espacio total V no tiene ecuaciones implícitas y  $\{u_1, u_2, v_1, v_2\}$  es una base suya. El espacio trivial  $\{0\}$  no tiene base y  $\{x_1 = x_2 = x_3 = x_4 = 0\}$  son unas ecuaciones implícitas suyas.

Caso a = 1. Empezamos calculando una base de  $U + V_1$ . Para ello escalonamos la matriz en cuyas filas escribimos las coordenadas de los vectores  $u_1, u_2, v_1, v_2$ :

$$\begin{pmatrix}
1 & 0 & -1 & 0 \\
0 & 1 & 0 & 0 \\
-2 & 1 & 0 & 1 \\
-1 & 0 & 1 & 0
\end{pmatrix} \begin{vmatrix} u_1 \\ v_2 \\ v_1 \\ v_2 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 0 & -1 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 1 & -2 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix} \begin{vmatrix} u_1 \\ u_2 \\ v_1 + 2u_1 \\ v_2 + u_1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 0 & -1 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & -2 & 1 \\ 0 & 0 & 0 & 0 \end{vmatrix} \begin{vmatrix} u_1 \\ u_2 \\ v_1 + 2u_1 - u_2 \\ v_2 + u_1 \end{pmatrix} (*)$$

Se tiene que  $\dim(U+V_1) = \operatorname{rg}\{u_1, u_2, v_1, v_2\} = 3$  y se han obtenido los conjuntos de vectores equivalentes

$$\{u_1, u_2, v_1, v_2\}$$
 y  $\{u_1, u_2, v_1 + 2u_1 - u_2, 0\}$ 

Luego una base de  $U + V_1$  es

$$\{u_1, u_2, v_1 + 2u_1 - u_2\} = \{(1, 0, -1, 0), (0, 1, 0, 0), (0, 0, -2, 1)\}$$

Como  $\dim(U+V_1)$  3 entonces  $U+V_1$  estará caracterizado por una ecuación implícita que queda determinada por la condición:

$$\operatorname{rg}\begin{pmatrix} 1 & 0 & 0 & x_1 \\ 0 & 1 & 0 & x_2 \\ -1 & 0 & -2 & x_3 \\ 0 & 0 & 1 & x_4 \end{pmatrix} = 3 \iff \det\begin{pmatrix} 1 & 0 & 0 & x_1 \\ 0 & 1 & 0 & x_2 \\ -1 & 0 & -2 & x_3 \\ 0 & 0 & 1 & x_4 \end{pmatrix} = 0 \iff -x_1 - x_3 - 2x_4 = 0$$

Pasamos a calcular la dimensión de  $U \cap V_1$  utilizando la fórmula de Grassmann:

$$\dim(U \cap V_1) = \dim U + \dim V_1 - \dim(U + V_1) = 2 + 2 - 3 = 1$$

Para calcular una base de  $U \cap V_1$ , observamos que de la última fila de la matriz (\*) se deduce  $u_1 = -v_2$ , y que por tanto se trata de un vector que pertenece a U y a  $V_1$ . Luego  $\{u_1\}$  es una base de  $U \cap V_1$ . Unas ecuaciones implícitas de  $U \cap V_1$  quedan determinadas por la condición

$$\operatorname{rg}\begin{pmatrix} 1 & x_1 \\ 0 & x_2 \\ -1 & x_3 \\ 0 & x_4 \end{pmatrix} = 1 \iff \operatorname{rg}\begin{pmatrix} 1 & x_1 \\ 0 & x_2 \\ 0 & x_3 + x_1 \\ 0 & x_4 \end{pmatrix} = 1 \iff \begin{cases} x_2 = 0 \\ x_1 + x_3 = 0 \\ x_4 = 0 \end{cases} \square$$

## Notas
[^2]: Alexandre-Théophile Vandermonde (París, 1735 París, 1796).
