**5.5.** Demuestre que toda matriz cuadrada A, real o compleja, es semejante a su traspuesta  $A^t$ .

**Solución:** Sean f y  $f^t$  los endomorfismos con matrices A y  $A^t$ , respectivamente. Las matrices serán semejantes si y sólo si los endomorfismos f y  $f^t$  tienen la misma forma canónica de Jordan o de Jordan real. Sabiendo que A y  $A^t$  tienen los mismos autovalores, en particular el mismo polinomio característico, basta observar que:

$$\operatorname{rg}(A - \lambda I)^{i} = \operatorname{rg}(A^{t} - \lambda)^{i}$$
,  $i = 1, 2, ...$ 

por lo que ambas tienen subespacios generalizados con las mismas dimensiones. En efecto.

$$\operatorname{rg}(A - \lambda I)^{i} = \operatorname{rg}((A - \lambda I)^{i})^{t} = \operatorname{rg}((A - \lambda I)^{t})^{i} = \operatorname{rg}(A^{t} - \lambda I)^{i} \qquad \Box$$

**5.6.** Demuestre que si A es una matriz de orden n con polinomio característico  $p_A(\lambda) = (a - \lambda)^n$ ,  $a \in \mathbb{K}$ , entonces, A es diagonalizable si y sólo si es la matriz escalar  $aI_n$ .

**Solución:** A la vista del polinomio característico, sabemos que a es autovalor de A de multiplicidad algebraica n. Entonces, A es diagonalizable si y sólo si la multiplicidad geométrica es igual a n, si y sólo dim  $\operatorname{Ker}(A-aI_n)=n$ , si y sólo si  $\operatorname{rg}(A-aI)=0$ . Dado que la única matriz de rango 0 es la matriz nula, entonces  $A-aI_n=0$  o lo que es lo mismo  $A=aI_n$ .  $\square$ 

**5.7.** Demuestre que si A es una matriz cuadrada tal que la suma de los elementos de cada fila es igual a k, entonces k es un autovalor de A.

**Solución:** Sea A una matriz de orden n en las condiciones del enunciado. Es decir.

$$\sum_{j=1}^{n} a_{ij} = k, \text{ para todo } i = 1, \dots, n$$

Supongamos que A es la matriz de un endomorfismo f respecto a una base  $\mathcal{B}$ , y consideremos el vector  $v = (1, \ldots, 1)_{\mathcal{B}}$ . Entonces:

$$\begin{pmatrix} a_{11} & \cdots & a_{1n} \\ \vdots & {} & {} \\ a_{i1} & \cdots & a_{in} \\ \vdots & {} & {} \\ a_{n1} & \cdots & a_{nn} \end{pmatrix} \begin{pmatrix} 1 \\ \vdots \\ 1 \end{pmatrix} = \begin{pmatrix} \sum_{j=1}^{n} a_{1j} \\ \vdots \\ \sum_{j=1}^{n} a_{ij} \\ \vdots \\ \sum_{j=1}^{n} a_{nj} \end{pmatrix} = \begin{pmatrix} k \\ \vdots \\ k \end{pmatrix}$$

Es decir, f(v) = kv, luego k es autovalor de A.  $\square$ 

5.8. Demuestre que no existe ningún valor  $\theta \in \mathbb{R}$  para el cual sea diagonalizable en  $\mathbb{R}$  la matriz

$$A_{\theta} = \begin{pmatrix} 0 & -\cos\theta & -\sin\theta\\ \cos\theta & 0 & 0\\ \sin\theta & 0 & 0 \end{pmatrix}$$

Solución: Calculamos el polinomio característico para obtener los autovalores de la matriz

$$p(\lambda) = \det(A - \lambda I) = \det\begin{pmatrix} -\lambda & -\cos\theta & -\operatorname{sen}\theta \\ \cos\theta & -\lambda & 0 \\ \operatorname{sen}\theta & 0 & -\lambda \end{pmatrix} = -\lambda^{3} - \lambda\operatorname{sen}^{2}\theta - \lambda\cos^{2}\theta$$

$$= -\lambda^{3} - \lambda\bigl(\operatorname{sen}^{2}\theta + \cos^{2}\theta\bigr) = -\lambda(\lambda^{2} + 1)$$

Las raíces del polinomio son 0 real y las complejas i y -i; por lo que no es diagonalizable en  $\mathbb{R}$  pues sólo tiene un autovalor real  $\lambda = 0$  simple.  $\square$ 

**5.9.** Estudie para qué valores de a y b es diagonalizable el endomorfismo de  $\mathbb{R}^4$  cuya matriz es

$$A = \begin{pmatrix} 1 & a & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & b & 1 \\ 0 & 0 & -1 & -b \end{pmatrix}$$

Solución: Calculamos el polinomio característico

$$p_f(\lambda)=\det(A-\lambda I)=\det\left(\begin{array}{cc|cc}1-\lambda & a & 0 & 0 \\ 0 & 1-\lambda & 0 & 0 \\ \hline 0 & 0 & b-\lambda & 1 \\ 0 & 0 & -1 & -b-\lambda\end{array}\right)\quad \leftarrow \quad \begin{array}{l}\text{Aprovechamos la estructura}\\ \text{en bloques para}\\ \text{simplificar el determinante}\end{array}$$

$$=\det\begin{pmatrix}1-\lambda & a \\ 0 & 1-\lambda\end{pmatrix}\det\begin{pmatrix}b-\lambda & 1 \\ -1 & -b-\lambda\end{pmatrix}=(1-\lambda)^2(\lambda^2-b^2+1)$$

Las raíces de este polinomio son  $\lambda_1 = 1$ ,  $\lambda_2 = \sqrt{b^2 - 1}$  y  $\lambda_3 = -\sqrt{b^2 - 1}$ . Obsérvese que, dependiendo del valor de b, algunas de estas raíces podrían ser complejas e incluso  $\lambda_1$  y  $\lambda_2$  podrían ser iguales, por lo que para determinar sus multiplicidades tendremos que hacer la siguiente distinción de casos:

- 1) Si  $b^2 1 < 0$ , es decir |b| < 1, el polinomio característico tiene raíces complejas, por lo que el único autovalor es  $\lambda_1 = 1$  con multiplicidad algebraica  $a_1 = 2$ . Así, no se cumple la condición (1) del Teorema 5.13, por lo que f no es diagonalizable.
- 2) Si  $b^2-1=0$ , es decir  $|b|=\pm 1$ , los autovalores y multiplicidades son  $\lambda_1=1,\ a_1=2$  y  $\lambda_2=0,\ a_2=2.$  Estudiamos las multiplicidades geométricas. Vemos que

$$g_2 = \dim V_0 = 4 - \operatorname{rg}(A - 0I_4) = 4 - \operatorname{rg}(A) = 4 - \operatorname{rg}\left(\begin{pmatrix} 1 & a & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & b & 1 \\ 0 & 0 & -1 & -b \end{pmatrix}\right) = 4 - 3 = 1$$

Como  $g_2 < a_2$ , entonces f tampoco es es diagonalizable.

3) Si  $b = \pm \sqrt{2}$ , los autovalores y multiplicidades son  $\lambda_1 = 1$ ,  $a_1 = 3$  y  $\lambda_2 = -1$ ,  $a_2 = 1$ . Para los autovalores simples (o de multiplicidad 1) no hay nada que comprobar, siempre

se cumple  $g_2 = a_2$ . Para el autovalor múltiple (triple en este caso)  $\lambda_1 = 1$  la multiplicidad geométrica es  $g_1 = \dim V_1 = 4 - \operatorname{rg}(A - I_4)$  donde

$$\operatorname{rg}(A - I_4) = \operatorname{rg} \begin{pmatrix} 0 & a & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & \sqrt{2} - 1 & 1 \\ 0 & 0 & -1 & -\sqrt{2} - 1 \end{pmatrix} = \begin{cases} 1 & \text{si } a = 0 \\ 2 & \text{si } a \neq 0 \end{cases}$$

Entonces, f es diagonalizable si y sólo si  $a_1 = g_1 = 3$  si y sólo si a = 0.

4) Si |b| > 1 y  $b \neq \pm \sqrt{2}$  los autovalores y multiplicidades son

$$\lambda_1 = 1, a_1 = 2; \quad \lambda_2 = \sqrt{b^2 - 1}, a_2 = 1; \quad \lambda_3 = -\sqrt{b^2 - 1}, a_3 = 1$$

Estudiamos la multiplicidad geométrica del único autovalor múltiple  $\lambda_1$ , que es  $g_1=\dim V_1=4-\operatorname{rg}(A-I_4)$  donde

$$\operatorname{rg}(A-I) = \operatorname{rg} \begin{pmatrix} 0 & a & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & b-1 & 1 \\ 0 & 0 & -1 & -b-1 \end{pmatrix} = \begin{cases} 2 & \text{si } a = 0 \\ 3 & \text{si } a \neq 0 \end{cases}$$

Entonces, f es diagonalizable si y sólo si  $a_1 = q_1 = 2$  si y sólo si a = 0.

En resumen: f es diagonalizable si y sólo si |b| > 1 y a = 0.

- **5.10.** Sea V un  $\mathbb{K}$  espacio vectorial y U, W subespacios propios de V tales que  $V = U \oplus W$ . Determine los autovalores y sus multiplicidades geométricas y algebraicas, de los endomorfismos:
  - $a)\ p$  proyección de base U y dirección W, y
  - $b)\ s$  simetría de base U y dirección W.

Solución: Supongamos  $\dim U = r$  y  $\dim W = s$  con  $r + s = n = \dim V$ . Sea

$$\mathcal{B} = \{u_1, \ldots, u_r, w_1, \ldots, w_s\}$$

una base de V donde  $\{u_1, \ldots, u_r\}$  es una base de U y  $\{w_1, \ldots, w_s\}$  es una base de W. Entonces, se tiene que:

$$p(u_i) = u_i, \ p(w_j) = 0. \ s(u_i) = u_i, \ s(w_j) = -w_j$$

Así, las matrices de p y s respecto de  $\mathcal{B}$  son las matrices diagonales

$$\mathfrak{M}_{\mathcal{B}}(p) = \begin{pmatrix} I_r & 0 \\ 0 & 0 \end{pmatrix}. \quad \mathfrak{M}_{\mathcal{B}}(s) = \begin{pmatrix} I_r & 0 \\ 0 & -I_s \end{pmatrix}$$

La base  $\mathcal B$  es una base de autovectores (de p y de s) y los autovalores están en la diagonal.

- a) Autovalores de la proyección p:  $\lambda_1=1,\ a_1=g_1=r;\ \lambda_2=0,\ a_2=g_2=s.$
- b) Autovalores de la simetría s:  $\lambda_1=1,\,a_1=g_1=r;\;\lambda_2=-1,\,a_2=g_2=s.$   $\qed$

**5.11.** Sea  $f_a$  el endomorfismo de un espacio vectorial real de dimensión 3 cuya matriz respecto a la una base  $\mathcal{B}$  es

$$A = \left(\begin{array}{rrr} 1 & 0 & 0 \\ 6 & 3 & 0 \\ 14 + 3a & a & 3 \end{array}\right)$$

¿Para qué valores de  $a \in \mathbb{R}$  es  $f_a$  diagonalizable?

**Solución:** Como la matriz A es triangular, entonces sus autovalores son los elementos de la diagonal. Se tienen el autovalor simple  $\lambda_1 = 1$  y el autovalor doble  $\lambda_2 = 3$ . Entonces A es diagonalizable si y sólo las multiplicidades algebraicas  $a_i$  y las geométricas  $g_i$  coinciden, y esto basta comprobarlo sólo en el caso de los autovalores múltiples. Así, A es diagonalizable si y sólo si  $g_2 = \dim K^1(3) = 2$  si y sólo si  $\operatorname{rg}(A - 3I) = 1$ .

$$rg(A - 3I) = rg\begin{pmatrix} -2 & 0 & 0 \\ 6 & 0 & 0 \\ 14 + 3a & a & 0 \end{pmatrix} = 1$$
 si y sólo si  $a = 0$ 

Luego el único valor de a para el cual el endomorfismo es diagonalizable es a=0.  $\square$ 

**5.12.** Determine la forma canónica de Jordan J del endomorfismo del ejercicio anterior en el caso no diagonalizable a=2, y una base  $\mathcal{B}'$  tal que  $\mathfrak{M}_{\mathcal{B}'}(f)=J$ .

**Solución:** Si a=2, entonces la matriz es

$$A = \left(\begin{array}{ccc} 1 & 0 & 0 \\ 6 & 3 & 0 \\ 20 & 2 & 3 \end{array}\right)$$

Por los datos del ejercicios anterior  $f_2$  no es diagonalizable y la forma canónica de Jordan es

$$J = \left(\begin{array}{ccc} 1 & 0 & 0 \\ 0 & 3 & 0 \\ 0 & 1 & 3 \end{array}\right)$$

ya que el número de bloques de Jordan asociados a  $\lambda_2 = 3$  es igual a la multiplicidad geométrica  $g_2 = 1$ .

Para encontrar la base  $\mathcal{B}'$  se calculan los subespacios propios generalizados:

$$\begin{aligned}
K^{1}(1) &= M(1) = \operatorname{Ker}(f - \operatorname{Id}) = \{3x + y = 0,\; 10x + y + z = 0\} \\
K^{1}(3) &= \operatorname{Ker}(f - 3\operatorname{Id}) = \{x = 0,\; y = 0\} \\
K^{2}(3) &= \operatorname{Ker}(f - 3\operatorname{Id})^{2} = \{x = 0\}
\end{aligned}$$

Como dim  $K^2(3) = 2 = a_2$ , entonces  $K^2(3) = M(3)$ , el subespacio máximo. Las tablas de la base de Jordan de cada subespacio máximo son

$$K^{1}(1) = M(1)$$
  $K^{1}(3) \subset K^{2}(3) = M(3)$   $v_{1} \leftarrow v_{2}$ 

La base  $\mathcal{B}' = \{v_1, v_2, v_3\}$  respecto a la cual se obtiene la matriz de Jordan tiene que cumplir

$$v_1 \in K^1(1)$$
.  $v_2 \in K^2(3) - K^1(3)$  y  $v_3 = (f - 3\operatorname{Id})(v_2)$ 

Entonces, podemos tomar

$$v_1 = (1, -3, -7)_{\mathcal{B}}, v_2 = (0, 1, 0)_{\mathcal{B}} \text{ y } v_3 = (f - 3 \operatorname{Id})(v_2) = (0, 0, 2)_{\mathcal{B}}$$

Finalmente, como  $P^{-1}AP = J$  o lo que es lo mismo

$$P^{-1}\mathfrak{M}_{\mathcal{B}}(f)P = \mathfrak{M}_{\mathcal{B}'}(f)$$

Entonces P es la matriz de cambio de base de  $\mathcal{B}'$  a  $\mathcal{B}$ , cuyas columnas son las coordenadas en  $\mathcal{B}$  de los vectores de  $\mathcal{B}'$ :

$$P = \mathfrak{M}_{\mathcal{B}'\mathcal{B}} = \begin{pmatrix} 1 & 0 & 0 \\ -3 & 1 & 0 \\ -7 & 0 & 2 \end{pmatrix}$$

Comprobamos que se cumple  $P^{-1}AP = J$  o equivalentemente AP = PJ

$$\begin{pmatrix} 1 & 0 & 0 \\ 6 & 3 & 0 \\ 20 & 2 & 3 \end{pmatrix} \begin{pmatrix} 1 & 0 & 0 \\ -3 & 1 & 0 \\ -7 & 0 & 2 \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 \\ -3 & 1 & 0 \\ -7 & 0 & 2 \end{pmatrix} \begin{pmatrix} 1 & 0 & 0 \\ 0 & 3 & 0 \\ 0 & 1 & 3 \end{pmatrix}$$
$$\begin{pmatrix} 1 & 0 & 0 \\ -3 & 3 & 0 \\ -7 & 2 & 6 \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 \\ -3 & 3 & 0 \\ -7 & 2 & 6 \end{pmatrix} \square$$

**5.13.** Sea f el endomorfismo de  $\mathbb{R}^4$  definido por

$$f(x_1, x_2, x_3, x_4) = (-2x_2 + x_3 - 2x_4, x_1 + 3x_2 - x_3 + x_4, 3x_1 + 4x_2 - x_3 + 3x_4, 2x_1 + 2x_2 - x_3 + 4x_4)$$

Demuestre que los subespacios vectoriales U y W son f-invariantes:

$$U \equiv \{x_1 - 2x_2 + x_3 = 0. \ x_1 + x_4 = 0\}, \ W \equiv \{x_1 - x_3 + x_4 = 0. \ x_2 = 0\}$$

Determine una base  $\mathcal{B}_U$  de U y otra base  $\mathcal{B}_W$  de W y compruebe que la matriz de f respecto de la base  $\mathcal{B} = \mathcal{B}_U \cup \mathcal{B}_W$  es diagonal por bloques.

Solución: Determinamos una base de cada subespacio. Por ejemplo:

$$\mathcal{B}_{U} = \{ u_1 = (2, 1, 0, -2), \ u_2 = (0, 1, 2, 0) \}$$
  
$$\mathcal{B}_{W} = \{ w_1 = (1, 0, 0, -1), \ w_2 = (1, 0, 1, 0) \}$$

Se calculan las imágenes de dichos vectores

$$f(u_1) = (2, 3, 4, -2)$$
  $f(u_2) = (0, 1, 2, 0) = u_2$   
 $f(w_1) = (2, 0, 0, -2) = 2w_1$   $f(w_2) = (1, 0, 2, 1)$ 

Utilizando las ecuaciones implícitas de los subespacios comprobamos que

$$f(u_1) \in U, \ f(u_2) \in U \implies U \text{ es } f - \text{invariante}$$
  
 $f(w_1) \in W, \ f(w_2) \in W \implies W \text{ es } f - \text{invariante}$ 

Para determinar la matriz de f en la base

$$\mathcal{B} = \mathcal{B}_U \cup \mathcal{B}_W = \{u_1, u_2, w_1, w_2\}$$

hay que obtener las coordenadas de  $f(u_1)$ ,  $f(u_2)$ ,  $f(w_1)$  v  $f(w_2)$  en  $\mathcal{B}$ :

$$f(u_1) = u_1 + 2u_2 = (1, 2, 0, 0)_{\mathcal{B}}$$
  $f(u_2) = u_2 = (0, 1, 0, 0)_{\mathcal{B}}$   
 $f(w_1) = 2w_1 = (0, 0, 2, 0)_{\mathcal{B}}$   $f(w_2) = -w_1 + 2w_2 = (0, 0, -1, 2)_{\mathcal{B}}$ 

La matriz de f en en la base

$$\mathcal{B} = \mathcal{B}_U \cup \mathcal{B}_W = \{u_1, u_2, w_1, w_2\}$$

es diagonal por bloques

$$M_{\mathcal{B}}(f)=\left(\begin{array}{cc|cc}1&0&0&0\\2&1&0&0\\\hline 0&0&2&-1\\0&0&0&2\end{array}\right)\quad \square$$

**5.14.** (\*) Demuestre que si una matriz A es semejante a una matriz que es un bloque de Jordan  $B_n(\lambda)$ , de orden n, entonces A también es semejante a  $B_n(\lambda)^t$ . Utilizando este resultado, demuestre que si A es semejante la una matriz de Jordan J, entonces también es semejante a  $J^t$ . Y como consecuencia A es semejante a  $A^t$ .

**Solución:** Si A es semejante a  $B_n(\lambda)$  y f es el endomorfismo cuya matriz es A, entonces existe una base  $\mathcal{B} = \{v_1, \dots, v_n\}$  tal que

$$\mathfrak{M}_{\mathcal{B}}(f) = B_n(\lambda)$$

La base  $\mathcal{B}$  es de la forma

$$\{v_1, v_2 = (f - \lambda \operatorname{Id})(v_1), \dots, v_n = (f - \lambda \operatorname{Id})^{n-1}(v_1)\}\ \text{con}\ v_1 \in \operatorname{Ker}(f - \lambda \operatorname{Id})^n - \operatorname{Ker}(f - \lambda \operatorname{Id})^{n-1}(v_1)\}$$

Si consideramos la base  $\mathcal{B}' = \{v_n, \dots, v_1\}$ , en la que se ha invertido el orden de los vectores, entonces se puede comprobar fácilmente que  $\mathfrak{M}_{\mathcal{B}'}(f) = B_n(\lambda)^t$ . Podemos concluir que A es semejante a  $B_n(\lambda)^t$ , pues ambas son matrices de la misma aplicación lineal en distintas bases.

Utilizando este resultado, si A es semejante a una matriz de Jordan J cuyos bloques diagonales son bloques de Jordan del tipo  $B_k(\lambda_i)$ , y  $\mathcal{B}$  es la base tal que  $\mathfrak{M}_{\mathcal{B}}(f) = J$ ; entonces basta reordenar los vectores asociados a cada bloque como se hizo antes y se obtiene una base  $\mathcal{B}'$  tal que  $\mathfrak{M}_{\mathcal{B}'}(f) = J^t$  que es semejante a A.

Finalmente, si A es semejante a una matriz de Jordan J, entonces  $A^t$  sería semejante a  $J^t$ . Por el apartado anterior, también A es semejante a  $J^t$ , y dado que la relación de semejanza es una relación de equivalencia, entonces A es semejante a  $A^t$ .  $\square$ 

- **5.15.** Obténganse las posibles matrices de Jordan de un endomorfismo f de un espacio vectorial V real de dimensión 4 que satisface las siguientes condiciones:
  - a) f no es diagonalizable,
  - b)  $\dim \operatorname{Ker}(f 2\operatorname{Id}) = 2$ ,  $\dim \operatorname{Ker}(f + \operatorname{Id}) = 1$ .

**Solución:** De la condición b) se deduce que el endomorfismo tiene dos autovalores  $\lambda_1 = -1$  con multiplicidad geométrica  $g_1 = 1$  y  $\lambda_2 = 2$  con multiplicidad geométrica  $g_2 = 2$ , entonces las multiplicidades algebraicas satisfacen  $a_1 \ge 1$  y  $a_2 \ge 2$ .

Por otro lado, como no es diagonalizable, no puede tener un tercer autovalor distinto:  $\lambda_3$ , porque en tal caso se cumpliría para las multiplicidades geométricas y algebraicas de cada autovalor  $a_i = g_i$ , i = 1, 2, 3. Así, los únicos autovalores de f son  $\lambda_1 = -1$  y  $\lambda_2 = 2$ .

Las multiplicidades algebraicas de dichos autovalores tienen que cumplir

$$a_1 + a_2 = 4$$
 v  $a_i > q_i$ ,  $i = 1, 2$ 

Luego se pueden distinguir dos casos:

1) Si  $a_1 = 2$  y  $a_2 = 2$ , el polinomio característico de f es será

$$p_f(\lambda) = (\lambda - 2)^2 (\lambda + 1)^2$$

Como

$$\dim K^1(2) = g_2 = 2 = a_2$$

entonces hay dos bloques de Jordan asociados al autovalor 2. Para que f no sea diagonalizable tiene que ocurrir  $g_1 < a_1 = 2$ , de donde  $g_1 = 1$  y se tiene un único bloque de Jordan asociado al autovalor  $\lambda_1 = -1$ . La matriz de Jordan es

$$J_1 = \left(\begin{array}{cccc} 2 & 0 & 0 & 0 \\ 0 & 2 & 0 & 0 \\ 0 & 0 & -1 & 0 \\ 0 & 0 & 1 & -1 \end{array}\right)$$

2) Si  $a_1 = 1$  y  $a_2 = 3$ , el polinomio característico de f es

$$p_f(\lambda) = (\lambda - 2)^3 (\lambda + 1)$$

Como

$$\dim K^1(2) = g_2 = 2 < a_2 = 3$$

entonces f no es diagonalizable y se tienen dos bloques de Jordan asociados al autovalor 2. La única posibilidad es que haya un bloque de orden 1 y otro de orden 2. Entonces la matriz de Jordan será

$$J_2 = \left(\begin{array}{cccc} 2 & 0 & 0 & 0 \\ 1 & 2 & 0 & 0 \\ 0 & 0 & 2 & 0 \\ 0 & 0 & 0 & -1 \end{array}\right) \qquad \Box$$

**5.16.** Sea f el endomorfismo de  $\mathbb{R}^4$  cuya matriz en la base canónica  $\mathcal{B}$  es

$$\mathfrak{M}_{\mathcal{B}}(f) = A = \begin{pmatrix} 2 & -1 & 1 & -1 \\ 1 & 0 & 1 & -1 \\ 0 & 0 & 2 & -1 \\ 0 & 0 & 1 & 0 \end{pmatrix}$$

Determine sus autovalores y subespacios propios asociados (dimensiones y ecuaciones) Encuentre la forma canónica de Jordan de f y la base en la que se obtiene.

Solución: Calculamos el polinomio característico aprovechando la estructura en bloques de la matriz

$$p_f(\lambda)=\det\left(\begin{array}{cc|cc}2-\lambda & -1 & 1 & -1\\ 1 & -\lambda & 1 & -1\\ \hline 0 & 0 & 2-\lambda & -1\\ 0 & 0 & 1 & -\lambda\end{array}\right)=\det\left(\begin{pmatrix}2-\lambda & -1\\ 1 & -\lambda\end{pmatrix}\right)^2=(\lambda^2-2\lambda+1)^2=(\lambda-1)^4$$

de donde deducimos que f tiene un único autovalor de multiplicidad algebraica 4

$$\lambda_1 = 1, \ a_1 = 4$$

Calculamos los subespacios propios generalizados hasta obtener el subespacio máximo M(1) que será el que tenga dimensión igual a  $a_1 = 4$ .

$$\operatorname{rg}(A-I) = \begin{pmatrix} 1 & -1 & 1 & -1 \\ 1 & -1 & 1 & -1 \\ 0 & 0 & 1 & -1 \\ 0 & 0 & 1 & -1 \end{pmatrix} = 2 \Rightarrow \dim K^{1}(1) = \dim \operatorname{Ker}(A-I) = 4 - 2 = 2$$

Unas ecuaciones implícitas del subespacio  $K^1(1)$  son

$$K^{1}(1) \equiv \{x_1 - x_2 = 0, \ x_3 - x_4 = 0\}$$

La multiplicidad geométrica del autovalor es  $g_1 = \dim K^1(1) = 2$ . Esto ya nos dice que en la matriz de Jordan habrá dos bloques. Las posibilidades son: dos bloques de dimensión 2 o un bloque de dimensión 3 y otro de dimensión 1. Seguimos con los subespacios generalizados:

$$\operatorname{rg}(A-I)^{2}=\operatorname{rg}\left(\begin{pmatrix}0&0&0&0\\0&0&0&0\\0&0&0&0\\0&0&0&0\end{pmatrix}\right)=0\Rightarrow \dim K^{2}(1)=\dim \operatorname{Ker}(A-I)^{2}=4$$

Entonces, el subespacio máximo es  $K^2(1)=M(1)$  y obtenemos la tabla de la base de Jordan siguiente:

$$\begin{array}{ccc}
\overset{2}{K^{1}(1)} & \subset & \overset{4}{K^{2}(1)} = M(1) = \mathbb{R}^{4} \\
v_{2} & \leftarrow & v_{1} \\
v_{4} & \leftarrow & v_{3}
\end{array}\tag{9.11}$$

Los tamaños de los bloques de la matriz de Jordan los determinan las líneas horizontales en el esquema anterior. Es decir,  $v_1$  y  $v_2$  determinan un bloque de dimensión 2; y  $v_3$  y  $v_4$  determinan otro bloque de dimensión 2. Entonces la matriz de Jordan es

$$\mathfrak{M}_{\mathcal{B}'}(f)=J=\left(\begin{array}{cc|cc}1&0&0&0\\1&1&0&0\\\hline 0&0&1&0\\0&0&1&1\end{array}\right)$$

La base  $\mathcal{B}' = \{v_1, v_2, v_3, v_4\}$  se calcula de modo que  $v_1, v_3 \in K^2(1) - K^1(1)$  y formen una base de un suplementario de  $K^1(1)$  en  $K^2(1)$ , para lo cual determinamos primero una base de  $K^1(1)$ :

$$K^{1}(1) = L((1, 1, 0, 0)_{\mathcal{B}}, (0, 0, 1, 1)_{\mathcal{B}})$$

y ampliamos esta base hasta obtener una de  $K^2(1)$  con los vectores  $v_1$  y  $v_3$ :

$$K^{2}(1) = K^{1}(1) \oplus L(v_{1} = (1, 0.0.0)_{\mathcal{B}}, v_{3} = (0, 0.1.0)_{\mathcal{B}})$$

y se calculan:

$$v_2 = (f - \operatorname{Id})(v_1) = (1, 1, 0, 0)_{\mathcal{B}}; \quad v_4 = (f - \operatorname{Id})(v_3) = (1, 1, 1, 1)_{\mathcal{B}}, \quad v_2, v_4 \in K^1(1)$$

Las coordenadas de estos vectores forman las columnas de la matriz de cambio de base

$$P = \mathfrak{M}_{\mathcal{B}'\mathcal{B}} = \begin{pmatrix} 1 & 1 & 0 & 1 \\ 0 & 1 & 0 & 1 \\ 0 & 0 & 1 & 1 \\ 0 & 0 & 0 & 1 \end{pmatrix}$$

Podemos comprobar que tanto la matriz J como la base  $\mathcal{B}'$  son correctas viendo que se cumple  $P^{-1}AP = J$ , o si queremos evitar invertir la matriz AP = PJ.

$$AP = \begin{pmatrix} 2 & -1 & 1 & -1 \\ 1 & 0 & 1 & -1 \\ 0 & 0 & 2 & -1 \\ 0 & 0 & 1 & 0 \end{pmatrix} \begin{pmatrix} 1 & 1 & 0 & 1 \\ 0 & 1 & 0 & 1 \\ 0 & 0 & 1 & 1 \\ 0 & 0 & 0 & 1 \end{pmatrix} = \begin{pmatrix} 2 & 1 & 1 & 1 \\ 1 & 1 & 1 & 1 \\ 0 & 0 & 2 & 1 \\ 0 & 0 & 1 & 1 \end{pmatrix}$$

$$PJ = \begin{pmatrix} 1 & 1 & 0 & 1 \\ 0 & 1 & 0 & 1 \\ 0 & 0 & 1 & 1 \\ 0 & 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} 1 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 1 & 1 \end{pmatrix} = \begin{pmatrix} 2 & 1 & 1 & 1 \\ 1 & 1 & 1 & 1 \\ 0 & 0 & 2 & 1 \\ 0 & 0 & 1 & 1 \end{pmatrix} \quad \square$$

**5.17.** Sea f un en endomorfismo de  $\mathbb{R}^4$  cuya matriz en la base canónica es

$$A = \begin{pmatrix} \frac{3}{2} & -\frac{1}{2} & 1 & 1 \\ \frac{1}{2} & \frac{1}{2} & 0 & 0 \\ 0 & 0 & 1 & -1 \\ 0 & 0 & 0 & 2 \end{pmatrix}$$

Encuentre las ecuaciones de una recta r y un hiperplano H, de  $\mathbb{R}^4$ , invariantes por f y tales que  $r \cap H = \{0\}$ . El polinomio característico es  $p_f(\lambda) = (\lambda - 1)^3(\lambda - 2)$ .

**Solución**: Sabemos que los subespacios propios generalizados son invariantes, en particular el subespacio máximo asociado a cada autovalor. Además, a la vista del polinomio característico vemos que

$$\mathbb{R}^4 = M(1) \oplus M(2)$$
, con dim  $M(1) = 3 = a_1$ , dim  $M(2) = 1 = a_2$ 

Así, podemos tomar como recta, r = M(2) y como hiperplano H = M(1)

$$r = M(2) = \operatorname{Ker}(f - 2\operatorname{Id}) \equiv (A - 2I)X = 0$$

$$r = \left\{(x_1,x_2,x_3,x_4) : \begin{pmatrix} -\frac{1}{2} & -\frac{1}{2} & 1 & 1 \\ \frac{1}{2} & -\frac{3}{2} & 0 & 0 \\ 0 & 0 & -1 & -1 \\ 0 & 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \\ x_4 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix}\right\}$$

$$r \equiv \left\{-\frac{1}{2}x_2 - \frac{1}{2}x_1 + x_3 + x_4 = 0,\ \frac{1}{2}x_1 - \frac{3}{2}x_2 = 0,\ -x_3 - x_4 = 0\right\}$$
Simplificando

$$r \equiv \left\{x_1 = 0,\ x_2 = 0,\ x_3 + x_4 = 0\right\}$$

Para obtener H calculamos los subespacios generalizados

$$\operatorname{rg}(A-I) = \operatorname{rg}\begin{pmatrix} \frac{1}{2} & -\frac{1}{2} & 1 & 1 \\ \frac{1}{2} & -\frac{1}{2} & 0 & 0 \\ 0 & 0 & 0 & -1 \\ 0 & 0 & 0 & 1 \end{pmatrix} = 3 \Rightarrow \dim K^{1}(1) = 1$$

$$\operatorname{rg}(A-I)^{2} = \operatorname{rg}\begin{pmatrix} 0 & 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & \frac{1}{2} & \frac{1}{2} \\ 0 & 0 & 0 & -1 \\ 0 & 0 & 0 & 1 \end{pmatrix} = 2 \Rightarrow \dim K^{2}(1) = 2$$

$$\operatorname{rg}(A-I)^{3} = \operatorname{rg}\begin{pmatrix} 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & -1 \\ 0 & 0 & 0 & 1 \end{pmatrix} = 1 \Rightarrow \dim K^{3}(1) = 3 = a_{3} \Rightarrow K^{3}(1) = M(1)$$

Unas ecuaciones implícitas de  $M(1) = \text{Ker}(f - \text{Id})^3$  son:

$$H = M(1) = \left\{(x_1,x_2,x_3,x_4) : \begin{pmatrix} 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & -1 \\ 0 & 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \\ x_4 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix} \right\} \Rightarrow H = \{x_4 = 0\}\quad \square$$

- **5.18.** Justificar razonadamente en qué casos existe algún endomorfismo f de  $\mathbb{K}^6$  ( $\mathbb{K} = \mathbb{C}$  o  $\mathbb{R}$ ) que tenga un único autovalor  $\lambda \in \mathbb{K}$  de multiplicidad algebraica 6, tal que para cualquier matriz A de f se cumpla:
  - a)  $rg(A \lambda I) = 4$ ,  $rg(A \lambda I)^2 = 3$ ,  $rg(A \lambda I)^3 = 2$ ,  $rg(A \lambda I)^4 = 0$ .
  - b)  $rg(A \lambda I) = 4$ ,  $rg(A \lambda I)^2 = 3$ ,  $rg(A \lambda I)^3 = 1$ ,  $rg(A \lambda I)^4 = 0$ .
  - c)  $rg(A \lambda I) = 4$ ,  $rg(A \lambda I)^2 = 2$ ,  $rg(A \lambda I)^3 = 1$ ,  $rg(A \lambda I)^4 = 0$ .
  - d)  $rg(A \lambda I) = 3$ ,  $rg(A \lambda I)^2 = 2$ ,  $rg(A \lambda I)^3 = 1$ ,  $rg(A \lambda I)^4 = 0$ .

En los casos en los que exista tal endomorfismo, dar la matriz de Jordan.

**Solución**: En cada caso traducimos las condiciones sobre los rangos de las matrices a las equivalentes sobre las dimensiones de los subespacios generalizados dim  $K^i(\lambda) = 6 - \operatorname{rg}(A - \lambda I)^i$  y representamos la tabla de la base de Jordan del subespacio máximo  $M(\lambda) = \mathbb{K}^6$ . Para abreviar denotamos  $K^i(\lambda) = K^i$ .

a) Calculamos las dimensiones de los subespacios generalizados y las colocamos en la tabla

$$\stackrel{2}{K^1} \subset \stackrel{3}{K^2} \subset \stackrel{4}{K^3} \subset \stackrel{6}{K^4} = M(\lambda)$$

Vemos que dim  $K^1=2$  (=número de filas de la tabla de Jordan). Aplicamos el algoritmo de construcción de la base de Jordan: la diferencia  $r_4=d_4-d_3=\dim K^4-\dim K^3=2$  determina la existencia de los vectores  $v_1,v_5\in K^4-K^3$  en la tabla, y las dos filas de longitud cuatro:

$$\begin{array}{ccccccc}
2 & & 3 & & 4 & & 6 \\
K^{1} & \subset & K^{2} & \subset & K^{3} & \subset & K^{4}=M(\lambda) \\
v_{4} & \leftarrow & v_{3} & \leftarrow & v_{2} & \leftarrow & v_{1} \\
v_{8} & \leftarrow & v_{7} & \leftarrow & v_{6} & \leftarrow & v_{5}
\end{array}$$

Esto es claramente imposible ya que habría en la base de  $M(\lambda)$  al menos 8 vectores, y estamos en un espacio de dimensión 6.

Otra forma de ver que las condiciones del apartado (a) son imposibles es considerar la secuencia  $r_2$ ,  $r_3$ .  $r_4$  de las diferencias de dimensiones entre los subespacios generalizados  $r_i = d_i - d_{i-1}$  para i = 2, 3, 4, que según la Proposición 5.26(5). pág. 218, debe cumplir  $r_2 \ge r_3 \ge r_4$ . En este caso  $r_2 = 1$ .  $r_3 = 1$ ,  $r_4 = 2$ , no cumplen dichas condiciones.

- b) En este caso las dimensiones de los subespacios generalizados son:  $d_1 = 2$ .  $d_2 = 3$ .  $d_3 = 5$  y  $d_4 = 6$ . Las diferencias son  $r_2 = 1$ ,  $r_3 = 2$ ,  $r_4 = 1$ . Nuevamente no cumplen la condición necesaria  $r_2 \ge r_3 \ge r_4$ . Luego no existe un endomorfismo en las condiciones dadas en este caso.
- c) Las diferencias de dimensiones son  $r_2 = 2$ ,  $r_3 = 1$ ,  $r_4 = 1$  que cumplen la condición necesaria  $r_2 \ge r_3 \ge r_4$ . Siguiendo el algoritmo de construcción de la base de Jordan se llega a la siguiente tabla totalmente válida

$$\begin{array}{ccccccc}
\overset{2}{K^{1}(\lambda)} & \subset & \overset{4}{K^{2}(\lambda)} & \subset & \overset{5}{K^{3}(\lambda)} & \subset & \overset{6}{K^{4}(\lambda)} = M(\lambda) \\
v_{4} & \leftarrow & v_{3} & \leftarrow & v_{2} & \leftarrow & v_{1} \\
v_{6} & \leftarrow & v_{5} & & & &
\end{array}$$

que se corresponde con la matriz de Jordan

$$\left(\begin{array}{cccc|cc}\lambda & 0 & 0 & 0 & 0 & 0 \\ 1 & \lambda & 0 & 0 & 0 & 0 \\ 0 & 1 & \lambda & 0 & 0 & 0 \\ 0 & 0 & 1 & \lambda & 0 & 0 \\ \hline 0 & 0 & 0 & 0 & \lambda & 0 \\ 0 & 0 & 0 & 0 & 1 & \lambda\end{array}\right)$$

d) Las diferencias de dimensiones son  $r_2=1, r_3=1, r_4=1$  que cumplen la condición necesaria  $r_2 \geq r_3 \geq r_4$ . Siguiendo el algoritmo de construcción de la base de Jordan se llega a la siguiente tabla totalmente válida

$$\begin{array}{ccccccc}
\overset{3}{K^{1}(\lambda)} & \subset & \overset{4}{K^{2}(\lambda)} & \subset & \overset{5}{K^{3}(\lambda)} & \subset & \overset{6}{K^{4}(\lambda)} = M(\lambda) \\
v_{4} & \leftarrow & v_{3} & \leftarrow & v_{2} & \leftarrow & v_{1} \\
v_{5} & & & & & & \\
v_{6} & & & & & &
\end{array}$$

El número de filas es exactamente dim  $K^1=3$  y será el número de bloques de Jordan. La base se corresponde con la matriz de Jordan

$$\left(\begin{array}{cccc|cc} \lambda & 0 & 0 & 0 & 0 & 0 \\ 1 & \lambda & 0 & 0 & 0 & 0 \\ 0 & 1 & \lambda & 0 & 0 & 0 \\ 0 & 0 & 1 & \lambda & 0 & 0 \\ \hline 0 & 0 & 0 & 0 & \lambda & 0 \\ 0 & 0 & 0 & 0 & 0 & \lambda \end{array}\right)$$

Podemos concluir que existen endomorfismos que cumplen las condiciones c) y d), pero ningún endomorfismo cumple a) ni b).  $\square$ 

**5.19.** Sea f un endomorfismo de  $\mathbb{R}^4$  cuya matriz en la base canónica es

$$\mathfrak{M}_{\mathcal{B}}(f)=\begin{pmatrix}-1&0&0&0\\ a&-1&0&0\\ b&c&1&0\\ 0&d&e&1\end{pmatrix},\quad \text{con } a,b,c,d,e\in\mathbb{R}$$

- a) Determine para qué valores de  $a,b,c,d,e\in\mathbb{R}$  el endomorfismo es diagonalizable.
- b) Para a=c=0 y b=e=d=1; encuentre la forma canónica de Jordan J de f y una matriz P tal que  $J=P^{-1}\mathfrak{M}_{\mathcal{B}}(f)P$ .

**Solución:** a) Como la matriz es triangular, los autovalores están en la diagonal principal. Así, tenemos dos autovalores  $\lambda_1 = 1$  y  $\lambda_2 = -1$  con multiplicidades algebraicas  $a_1 = 2$  y  $a_2 = 2$ . El

endomorfismo será diagonalizable si y sólo si las multiplicidades geométricas son  $g_1 = g_2 = 2$ , lo que equivale a decir que

$$rg(A - I) = rg(A + I) = 4 - 2 = 2$$

Haciendo el estudio matricial correspondiente se tiene que:

$$rg(A+I) = 2 \Leftrightarrow a = 0 \quad v \quad rg(A-I) = 2 \Leftrightarrow e = 0$$

Así, f diagonalizable para todo  $b, c, d \in \mathbb{R}$  y a = e = 0.

b) En este caso tenemos la matriz no diagonalizable

$$\mathfrak{M}_{\mathcal{B}}(f) = \begin{pmatrix} -1 & 0 & 0 & 0\\ 0 & -1 & 0 & 0\\ 1 & 0 & 1 & 0\\ 0 & 1 & 1 & 1 \end{pmatrix}$$

para obtener la forma canónica de Jordan vamos calculando las dimensiones de los subespacios generalizados hasta obtener el máximo:

Para  $\lambda_1 = 1$ :

$$\dim K^{1}(1) = 4 - \operatorname{rg}(M - I) = 1$$
  
$$\dim K^{2}(1) = 4 - \operatorname{rg}(M - I)^{2} = 2 = a_{1} \implies M(1) = K^{2}(1)$$

Se tiene la siguiente tabla de subespacios:

$$\begin{array}{cccc}
 & & & & & & \\
K_1^1(1) & \subset & & K_2^2(1) \\
 & v_2 & \leftarrow & v_1
\end{array}$$

Al haber una única línea, hay un único bloque de Jordan asociado al autovalor  $\lambda_1=1.$ 

Para  $\lambda_2 = -1$ :

$$\dim K^{1}(-1) = 4 - \operatorname{rg}(M+I) = 2 = a_{2} \implies M(-1) = K^{1}(-1)$$

Se tiene el siguiente esquema de subespacios:

$$\begin{gathered} K^{1}\overset{2}{(-1)} \\ v_{3} \\ v_{4} \end{gathered}$$

siendo  $v_3$  y  $v_4$  dos autovectores linealmente independientes de  $K^1(-1) = V_{-1}$ . Se tienen en el esquema dos líneas de longitud 1, por lo tanto, dos bloques de Jordan de dimensión 1.

Así, la forma canónica de Jordan es (salvo permutación de bloques de Jordan)

$$J=\mathfrak{M}_{\mathcal{B}'}(f)=\begin{pmatrix}1&0&0&0\\1&1&0&0\\0&0&-1&0\\0&0&0&-1\end{pmatrix}$$

siendo  $\mathcal{B}' = \{v_1, v_2, v_3, v_4\}.$ 

Para calcular la base, determinamos unas ecuaciones de los subespacios generalizados:

$$\begin{aligned}
K^{1}(1) &= \operatorname{Ker}(f-\operatorname{Id}) = \{(A-I)X=0\} = \{x_{1}=x_{2}=x_{3}=0\};\\
K^{2}(1) &= \operatorname{Ker}(f-\operatorname{Id})^{2} = \{(A-I)^{2}X=0\} = \{x_{1}=x_{2}=0\},\\
K^{1}(-1) &= \operatorname{Ker}(f+\operatorname{Id}) = \{(A+I)X=0\} = \{x_{1}+2x_{3}=0,\ x_{2}+x_{3}+2x_{4}=0\}
\end{aligned}$$

Y tomamos  $v_1 \in K^2(1) - K^1(1)$ ,  $v_2 = (f - \text{Id})(v_1)$ . Nos sirven:

$$v_1 = (0, 0, 1, 0), \ v_2 = (f - \operatorname{Id})(v_1) = (0, 0, 0, 1)$$

Los vectores  $v_3$  y  $v_4$  son una base cualquiera de  $K^1(-1)$ . Por ejemplo:

$$v_3 = (2, 1, -1, 0), v_4 = (-2, 0, 1, -1/2)$$

La matriz pedida es la de cambio de base  $P=\mathfrak{M}_{\mathcal{B}'\mathcal{B}}$  ya que

$$J = \mathfrak{M}_{\mathcal{B}'}(f) = \mathfrak{M}_{\mathcal{B}\mathcal{B}'}\mathfrak{M}_{\mathcal{B}}(f)\mathfrak{M}_{\mathcal{B}'\mathcal{B}} = P^{-1}\mathfrak{M}_{\mathcal{B}}(f)P$$

$$P = \begin{pmatrix} 0 & 0 & 2 & -2 \\ 0 & 0 & 1 & 0 \\ 1 & 0 & -1 & 1 \\ 0 & 1 & 0 & -1/2 \end{pmatrix} \qquad \Box$$

**5.20.** Sea  $\mathcal{B} = \{v_1, v_2, v_3\}$  una base de un espacio vectorial V y f un endomorfismo tal que

$$Ker(f - Id) \equiv \{ x_1 = x_2 \}, \quad Ker(f - 2 Id) \equiv \{ x_1 = 2x_2 = 2x_3 \}$$

Halle la matriz de f en la base  $\mathcal{B}$ .

**Solución:** Nos dan los subespacios propios  $V_1$  y  $V_2$ , luego se tienen dos autovalores  $\lambda_1=1$  y  $\lambda_2=2$ , de multiplicidades geométricas  $g_1=\dim \operatorname{Ker}(f-\operatorname{Id})=2$  y  $g_2=\dim \operatorname{Ker}(f-2\operatorname{Id})=1$ . Como las multiplicidades algebraicas cumplen  $a_1+a_2\leq 3, a_1\geq g_1, a_2\geq g_2$ , entonces  $a_1=g_1=2$  y  $a_2=g_2=1$ , por lo que el endomorfismo es diagonalizable. La forma canónica de Jordan de f es:

$$\mathfrak{M}_{\mathcal{B}'}(f) = \left(\begin{array}{ccc} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 2 \end{array}\right)$$

donde  $\mathcal{B}' = \{u, v, w\}$  tal que  $u, v \in \text{Ker}(f - \text{Id}) = M(1)$  y  $w \in \text{Ker}(f - 2 \text{Id}) = M(2)$ .

Tomando  $u = (1, 1, 0)_{\mathcal{B}}$ ,  $v = (0, 0, 1)_{\mathcal{B}}$  y  $w = (2, 1, 1)_{\mathcal{B}}$  y haciendo el cambio de base de  $\mathcal{B}'$  a  $\mathcal{B}$  obtenemos la matriz pedida:

$$\mathfrak{M}_{\mathcal{B}}(f) = P\mathfrak{M}_{\mathcal{B}'}(f)P^{-1} = \begin{pmatrix} 1 & 0 & 2 \\ 1 & 0 & 1 \\ 0 & 1 & 1 \end{pmatrix} \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 2 \end{pmatrix} \begin{pmatrix} 1 & 0 & 2 \\ 1 & 0 & 1 \\ 0 & 1 & 1 \end{pmatrix}^{-1} = \begin{pmatrix} 3 & -2 & 0 \\ 1 & 0 & 0 \\ 1 & -1 & 1 \end{pmatrix} \square$$

**5.21.** Sea  $\mathcal{B}$  la base canónica de  $\mathbb{K}^4$  y f un endomorfismo tal que

$$\begin{aligned}
\operatorname{Ker}(f-\mathrm{Id})^3 &\equiv \{x_1 - x_2 + x_3 - x_4 = 0\} \\
\operatorname{Ker}(f-\mathrm{Id})^2 &\equiv \{x_1 - x_2 + x_3 = 0,\ x_4 = 0\} \\
\operatorname{Ker}(f-\mathrm{Id}) &\equiv \{x_1 + x_3 = 0,\ x_4 = 0,\ x_2 = 0\} \\
\operatorname{Ker}(f) &\equiv \{x_1 = x_2 = x_3 = 0\}
\end{aligned}$$

Determine una base  $\mathcal{B}'$  tal que  $\mathfrak{M}_{\mathcal{B}'}(f)$  sea la forma canónica de Jordan de un endomorfismo f que cumpla las condiciones anteriores. Calcular la matriz de f en la base  $\mathcal{B}$ .

**Solución:** Con los datos del problema tenemos dos autovalores:

$$\lambda_1 = 1$$
,  $a_1 = 3$ ,  $g_1 = 1 = \dim \text{Ker}(f - \text{Id})$   
 $\lambda_2 = 0$ ,  $a_2 = 1$ ,  $g_2 = 1 = \dim \text{Ker}(f)$ 

Como las multiplicidades geométricas son iguales a 1. entonces sólo hay un bloque por cada autovalor, y por tanto una única línea en cada tabla de la base de Jordan de los subespacios máximos:

$$\begin{array}{cccccccccccccccccccccccccccccccccccc$$

Por lo tanto, la matriz de Jordan de dicho endomorfismo es:

$$J = \left(\begin{array}{ccc|c} 1 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 \\ 0 & 1 & 1 & 0 \\ \hline 0 & 0 & 0 & 0 \end{array}\right)$$

Si f es un endomorfismo en las condiciones dadas, la base  $\mathcal{B}'$  tal que  $\mathfrak{M}_{\mathcal{B}'}(f)=J$  tendrá que cumplir

$$\mathcal{B}' = \{v_1, v_2 = (f - \mathrm{Id})(v_1), v_3 = (f - \mathrm{Id})^2(v_1), v_4\}, \text{ con } v_1 \in K^3(1) - K^2(1)$$

Entonces, tomando unos vectores concretos:

$$v_1 \in \text{Ker}(f - \text{Id})^3 - \text{Ker}(f - \text{Id})^2$$
, por ejemplo  $v_1 = (1, 0, 0, 1)$ .

$$v_2 \in \text{Ker}(f - \text{Id})^2 - \text{Ker}(f - \text{Id})$$
. por ejemplo  $v_2 = (1, 1, 0, 0)$ ,

$$v_3 \in \text{Ker}(f - \text{Id}), \text{ por ejemplo } v_3 = (1, 0, -1, 0);$$

los tres linealmente independientes, y el autovector asociado al autovalor 0:

$$v_4 \in \text{Ker}(f)$$
. por ejemplo  $v_4 = (0, 0, 0, 1)$ .

determinamos un endomorfismo concreto f tal que

$$(f - \operatorname{Id})(v_1) = v_2$$
,  $(f - \operatorname{Id})(v_2) = v_3$ .  $(f - \operatorname{Id})(v_3) = 0$ .  $f(v_4) = 0$ 

La matriz en la base  $\mathcal{B}'$  de este endomorfismo es la forma canónica de Jordan J. La matriz en la base canónica se obtiene haciendo el cambio de base de  $\mathcal{B}'$  a  $\mathcal{B}$ .

$$\begin{aligned}
\mathfrak{M}_{\mathcal{B}}(f) &= PJP^{-1} = \mathfrak{M}_{\mathcal{B}'\mathcal{B}}\,\mathfrak{M}_{\mathcal{B}'}(f)\,\mathfrak{M}_{\mathcal{B}\mathcal{B}'} \\
&= \begin{pmatrix} 1 & 1 & 1 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & -1 & 0 \\ 1 & 0 & 0 & 1 \end{pmatrix}
\begin{pmatrix} 1 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 \\ 0 & 1 & 1 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}
\begin{pmatrix} 1 & 1 & 1 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & -1 & 0 \\ 1 & 0 & 0 & 1 \end{pmatrix}^{-1} \\
&= \begin{pmatrix} 1 & 1 & 1 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & -1 & 0 \\ 1 & 0 & 0 & 1 \end{pmatrix}
\begin{pmatrix} 1 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 \\ 0 & 1 & 1 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}
\begin{pmatrix} 1 & -1 & 1 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & -1 & 0 \\ -1 & 1 & -1 & 1 \end{pmatrix} \\
&= \begin{pmatrix} 2 & 0 & 1 & 0 \\ 1 & 0 & 1 & 0 \\ 0 & -1 & 1 & 0 \\ 1 & -1 & 1 & 0 \end{pmatrix}\quad \Box
\end{aligned}$$

- **5.22.** Sea f un endomorfismo de  $\mathbb{C}^n$  y  $A = \mathfrak{M}_{\mathcal{B}}(f)$  su matriz respecto a una base dada  $\mathcal{B}$ . Sabiendo que A es una matriz de rango 1, se pide:
  - a) Demostrar que A tiene como mucho un autovalor no nulo.
  - b) Determinar la multiplicidad algebraica del autovalor 0.
  - c) ¿En qué casos es f diagonalizable?
  - d) Determinar las posibles formas de Jordan de f.

**Solución:** a) Procedamos por reducción al absurdo y supongamos que A tiene dos autovalores no nulos  $\lambda_1$  y  $\lambda_2$ . Consideremos dos autovectores no nulos  $v_1$  y  $v_2$  asociados a dichos autovalores. Estos vectores son linealmente independientes, por lo que podemos formar una base de  $\mathbb{C}^n$  de la forma  $\mathcal{B}' = \{v_1, v_2, v_3, \dots, v_n\}$ . Las dos primeras columnas de la matriz de f respecto a dicha base son de la forma

$$B = \mathfrak{M}_{\mathcal{B}'}(f) = \begin{pmatrix} \lambda_1 & 0 & & & \\ 0 & \lambda_2 & & & \\ \vdots & 0 & & B_{n-2} & \\ \vdots & \vdots & & & \\ 0 & 0 & & & \end{pmatrix}$$

y como  $\lambda_1$  y  $\lambda_2$  son no nulos, entonces el rango de B es mayor o igual que 2. Como el rango es un invariante por cambios de base, entonces también el rango de A es mayor o igual que 2. Una contradicción.

b) En primer lugar, vemos que  $\lambda = 0$  es autovalor ya que

$$\dim V_0 = \dim \operatorname{Ker}(f - 0 \cdot \operatorname{Id}) = \dim \operatorname{Ker}(f) = n - \operatorname{rg}(A) = n - 1$$

Así, la multiplicidad geométrica es g=n-1, luego la multiplicidad algebraica es  $a \geq g=n-1$ . Dado que el polinomio característico tiene n raíces en  $\mathbb C$  y  $\lambda=0$  es una raíz de multiplicidad al menos n-1, entonces tenemos dos posibilidades:

- b.1) a = n, con lo que  $\lambda = 0$  sería el único autovalor, o bien
- b.2) a = n 1, con lo que tendríamos dos autovalores:

$$\lambda_1 = 0. \ a_1 = n - 1 = g_1:$$
  
 $\lambda_2 \neq 0. \ a_2 = 1 = g_2$ 

- c) Para que sea diagonalizable tienen que coincidir las multiplicidades algebraicas y geométricas, luego el único caso es b.2) del apartado anterior. Entonces, f es diagonalizable si y sólo si posee un autovalor no nulo.
- d) Formas de Jordan:

Caso b.1)  $\lambda=0$  es el único autovalor con multiplicidad algebraica a=n y geométrica g=n-1. No es diagonalizable y su forma canónica de Jordan está formada por g=n-1 bloques de Jordan. Entonces, la única posibilidad es tener 1 bloque de tamaño  $2\times 2$  y n-2 bloques de tamaño  $1\times 1$ :

$$J=\left(\begin{array}{cc|ccc}0&0&0&\cdots&0\\1&0&0&\cdots&0\\\hline 0&0&\boxed{0}&\cdots&0\\\vdots&\vdots&\vdots&\ddots&\vdots\\0&0&0&\cdots&\boxed{0}\end{array}\right)$$

Caso b.2) La matriz es diagonal  $J = \text{diag}(0, \stackrel{n-1}{\dots}, 0, \lambda_2)$ .

**5.23.** Determine la forma de Jordan real  $J_{\mathbb{R}}$  y la base  $\mathcal{B}$  tal que  $\mathfrak{M}_{\mathcal{B}}(f) = J_{\mathbb{R}}$ , del endomorfismo de  $\mathbb{R}^4$  cuya matriz en la base canónica es

$$A = \left(\begin{array}{rrrr} 1 & 0 & 1 & -1 \\ 0 & 1 & 2 & -1 \\ -1 & -1 & -1 & 0 \\ 2 & 1 & 0 & 3 \end{array}\right)$$

**Solución:** Polinomio característico:

$$p_f(\lambda) = \det(A - \lambda I) = \lambda^4 - 4\lambda^3 + 8\lambda^2 - 8\lambda + 4 = (\lambda^2 - 2\lambda + 2)^2$$
  
raíces :  $1 + i$  (doble).  $1 - i$  (doble)

Como el endomorfismo es real y tiene raíces complejas, seguimos los pasos descritos en la página 236.

- 1.- Consideramos el endomorfismo extensión compleja  $\hat{f}$  de  $\mathbb{C}^4$  con matriz  $\mathfrak{M}_{\mathcal{B}}(\hat{f}) = A$  cuyo polinomio característico es es mismo que el de f.
- 2.- Construimos la base de Jordan compleja  $\mathcal{B}'$  del endomorfismo complejo  $\hat{f}$  y su forma canónica de Jordan compleja  $J(\hat{f}) = \mathfrak{M}_{\mathcal{B}'}(\hat{f})$ .

Autovalores de  $\hat{f}$ :  $\lambda = 1 + i$  (doble) y  $\overline{\lambda} = 1 - i$  (doble).

Subespacios propios:

$$A-(1+i)I=\begin{pmatrix}-i&0&1&-1\\0&-i&2&-1\\-1&-1&-2-i&0\\2&1&0&2-i\end{pmatrix}\longrightarrow$$

$$\begin{aligned}f_3&\to f_3+i f_1\\ f_4&\to f_4-2i f_1\end{aligned}\quad\longrightarrow\quad\begin{pmatrix}-i&0&1&-1\\0&-i&2&-1\\0&-1&-2&-i\\0&1&-2i&2+i\end{pmatrix}$$

$$\begin{aligned}f_3&\to f_3+i f_2\\ f_4&\to f_4-i f_2\end{aligned}\quad\longrightarrow\quad\begin{pmatrix}-i&0&1&-1\\0&-i&2&-1\\0&0&-2+2i&-2i\\0&0&-4i&2+2i\end{pmatrix},\quad \operatorname{rg}=3$$

Entonces,  $\operatorname{rg}(A-(1+i)I)=3$  y por tanto  $\dim K^1(1+i)=1$ . Una base de  $K^1(1+i)$  está formada por el vector (-1-i,-2i,1+i,2i).

Calculamos  $K^2(1+i)$ 

$$(A-(1+i)I)^2=\begin{pmatrix}-4&-2&-2-2i&-2+2i\\-4&-4&-4-4i&-2+2i\\2+2i&2+2i&4i&2\\4-4i&2-2i&4&-4i\end{pmatrix}$$

$$\begin{array}{rcl}f_1&\to&\frac{1}{2}f_1\\f_2&\to&f_2-2f_1\\f_3&\to&f_3+(1+i)f_1\\f_4&\to&f_4+(2-2i)f_1\end{array}\quad\longrightarrow\quad\begin{pmatrix}-2&-1&-1-i&-1+i\\0&-2&-2-2i&0\\0&1+i&2i&0\\0&0&0&0\end{pmatrix}$$

$$f_3\to f_3+\frac{1}{2}(1+i)f_2\quad\longrightarrow\quad\begin{pmatrix}-2&-1&-1-i&-1+i\\0&-2&-2-2i&0\\0&0&0&0\\0&0&0&0\end{pmatrix}$$

Entonces, dim  $K^2(1+i) = 2$ , es decir  $K^2(1+i) = M(1+i)$ , y tenemos el siguiente esquema de subespacios generalizados

$$\begin{array}{ccc} K^1(1+i) & \subset & K^2(1+i) \\ v_2 & \leftarrow & v_1 \end{array}$$

donde  $v_1 \in K^2(1+i) - K^1(1+i)$ . Por tanto, la matriz de Jordan de  $\hat{f}$  es

$$\mathfrak{M}_{\mathcal{B}'}(\hat{f}) = \left(\begin{array}{cc|cc} 1+i & 0 & 0 & 0 \\ 1 & 1+i & 0 & 0 \\ \hline 0 & 0 & 1-i & 0 \\ 0 & 0 & 1 & 1-i \end{array}\right)$$

respecto de la base compleja  $\mathcal{B}' = \{v_1, v_2, \overline{v}_1, \overline{v}_2\}$ . Para calcular la base buscamos unas ecuaciones de este subespacio

$$K^{2}(1+i) \equiv \{-2x + (-1+i)t = 0, y + (1+i)z = 0\}$$
 Base de  $K^{2}(1+i) = \{(0, 1+i, -1, 0), (-1+i, 0, 0, 2)\}$ 

Podemos tomar  $v_1 = (0, 1+i, -1, 0)$  y así  $v_2 = (f - (1+i) \operatorname{Id})(v_1) = (-1, -1-i, 1, 1+i)$ 

3- La base real  $\mathcal{B}''$  de  $\mathbb{R}^4$  tal que  $J_{\mathbb{R}}(f) = \mathfrak{M}_{\mathcal{B}''}(f)$  se obtiene tomando las partes reales e imaginarias de los vectores de la base compleja:

$$v_1 = (0.1, -1.0) + i(0.1, 0, 0), v_2 = (-1, -1, 1.1) + i(0. -1, 0.1)$$
  
$$\mathcal{B}'' = \{(0.1, -1, 0), (0, 1.0, 0), (-1, -1, 1.1), (0, -1, 0.1)\}$$

La forma de Jordan real de f es

$$J_{\mathbb{R}} = \mathfrak{M}_{\mathcal{B}''}(f) = \left(\begin{array}{c|c} C(1+i) & 0 \\ \hline I_2 & C(1+i) \end{array}\right) = \left(\begin{array}{cc|cc} 1 & 1 & 0 & 0 \\ -1 & 1 & 0 & 0 \\ \hline 1 & 0 & 1 & 1 \\ 0 & 1 & -1 & 1 \end{array}\right)$$

Comprobamos si la base es correcta viendo si se cumple

$$\mathfrak{M}_{\mathcal{B}\,\mathcal{B}^{\prime\prime}}\,\mathfrak{M}_{\mathcal{B}}(f)\,\mathfrak{M}_{\mathcal{B}^{\prime\prime}\,\mathcal{B}}=\mathfrak{M}_{\mathcal{B}^{\prime\prime}}(f)$$

que abreviadamente es  $P^{-1}AP=J_{\mathbb{R}}.$  Para evitar calcular la inversa, podemos comprobar que  $AP=PJ_{\mathbb{R}}:$ 

$$AP = \begin{pmatrix} 1 & 0 & 1 & -1 \\ 0 & 1 & 2 & -1 \\ -1 & -1 & -1 & 0 \\ 2 & 1 & 0 & 3 \end{pmatrix} \begin{pmatrix} 0 & 0 & -1 & 0 \\ 1 & 1 & -1 & -1 \\ -1 & 0 & 1 & 0 \\ 0 & 0 & 1 & 1 \end{pmatrix} = \begin{pmatrix} -1 & 0 & -1 & -1 \\ -1 & 1 & 0 & -2 \\ 0 & -1 & 1 & 1 \\ 1 & 1 & 0 & 2 \end{pmatrix}$$

$$PJ_{\mathbb{R}} = \begin{pmatrix} 0 & 0 & -1 & 0 \\ 1 & 1 & -1 & -1 \\ -1 & 0 & 1 & 0 \\ 0 & 0 & 1 & 1 \end{pmatrix} \begin{pmatrix} 1 & 1 & 0 & 0 \\ -1 & 1 & 0 & 0 \\ 1 & 0 & 1 & 1 \\ 0 & 1 & -1 & 1 \end{pmatrix} = \begin{pmatrix} -1 & 0 & -1 & -1 \\ -1 & 1 & 0 & -2 \\ 0 & -1 & 1 & 1 \\ 1 & 1 & 0 & 2 \end{pmatrix} \qquad \square$$

- **5.24.** Determine las posibles formas de Jordan reales de un endomorfismo f de  $\mathbb{R}^8$  cuyo polinomio característico tiene por raíz  $\lambda = 2i$  con multiplicidad 4 en los siguientes casos:
  - a) dim Ker $(\hat{f} 2i \text{ Id})^4 = 4$  y dim Ker $(\hat{f} 2i \text{ Id})^3 < 4$
  - b) dim Ker $(\hat{f} 2i \operatorname{Id})^2 = 3$  y dim Ker $(\hat{f} 2i \operatorname{Id}) = 2$ .

Solución: En ambos casos comenzamos determinando una base de Jordan compleja del endomorfismo  $\hat{f}: \mathbb{C}^8 \to \mathbb{C}^8$  extensión compleja de f.

a) Los datos que se dan para el autovalor  $\lambda=2i$  de  $\hat{f}$  coinciden con los del conjugado  $\bar{\lambda}=-2i$ . Elegimos uno de los dos y determinamos una base de Jordan compleja  $\mathcal{B}'$  del subespacio máximo. Si  $\lambda=2i$  es un autovalor de  $\hat{f}$  de multiplicidad algebraica 4, entonces de (a) deducimos que  $\mathrm{Ker}(\hat{f}-2i\operatorname{Id})^4=K^4(2i)=M(2i)$ . Las dimensiones crecientes de los subespacios generalizados hacen que la única tabla posible sea la siguiente

$$\begin{array}{cccccccccccccccccccccccccccccccccccc$$

Se tiene una única línea de longitud 4, y por tanto un único bloque de Jordan de orden 4. La matriz de Jordan compleja de  $\hat{f}$  es

$$J(\hat{f})=\left(\begin{array}{cccc|cccc}2i&0&0&0&0&0&0&0\\1&2i&0&0&0&0&0&0\\0&1&2i&0&0&0&0&0\\0&0&1&2i&0&0&0&0\\\hline 0&0&0&0&-2i&0&0&0\\0&0&0&0&1&-2i&0&0\\0&0&0&0&0&1&-2i&0\\0&0&0&0&0&0&1&-2i\end{array}\right)=\left(\begin{array}{c|c}J(f|_{M(2i)})&0\\\hline 0&J(f|_{M(-2i)})\end{array}\right)$$

respecto de la base de Jordan compleja  $\mathcal{B}' = \{v_1, \dots, v_4, \overline{v}_1, \dots, \overline{v}_4\}$ . Nos quedamos con la base de Jordan de M(2i) que es la correspondiente al primer bloque y tomamos las partes reales e imaginarias de los vectores  $\mathcal{B}'' = \{\text{Re}(v_1), \text{Im}(v_1), \dots, \text{Re}(v_4), \text{Im}(v_4)\}$ . Respecto de  $\mathcal{B}''$  se obtiene la forma de Jordan real de f:

$$\mathfrak{M}_{\mathcal{B}''}(f) = J_{\mathbb{R}}(f) = \begin{pmatrix} C_{2i} & 0 & 0 & 0 \\ I_{2} & C_{2i} & 0 & 0 \\ 0 & I_{2} & C_{2i} & 0 \\ 0 & 0 & I_{2} & C_{2i} \end{pmatrix}; \quad I_{2} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}, \quad C_{2i} = \begin{pmatrix} 0 & 2 \\ -2 & 0 \end{pmatrix}$$

b) Si dim  $K^1(2i)=2$  y dim  $K^2(2i)=3$ , entonces dim  $K^3(2i)=4$  que es la multiplicidad algebraica, luego  $K^3(2i)=M(2i)$ . La tabla de la base de Jordan compleja del subespacio máximo M(2i) de  $\hat{f}$  es

$$\begin{array}{cccccccccccccccccccccccccccccccccccc$$

La forma canónica de Jordan de  $\hat{f}|_{M(2i)}$  es

$$\left(\begin{array}{ccc|c}
2i & 0 & 0 & 0 \\
1 & 2i & 0 & 0 \\
0 & 1 & 2i & 0 \\
\hline
0 & 0 & 0 & 2i
\end{array}\right)$$

Se tienen dos bloques, uno por cada línea de la tabla. El primero es de orden 3, igual al número de vectores de la primera línea, y el segundo de orden 1, igual al número de vectores de la segunda línea. A partir de la matriz compleja se obtiene la forma de Jordan real

$$J_{\mathbb{R}}(f)=\left(\begin{array}{ccc|c} C_{2i} & 0 & 0 & 0 \\ I_{2} & C_{2i} & 0 & 0 \\ 0 & I_{2} & C_{2i} & 0 \\ \hline 0 & 0 & 0 & C_{2i} \end{array}\right).\quad I_{2}=\begin{pmatrix}1 & 0 \\ 0 & 1\end{pmatrix}.\quad C_{2i}=\begin{pmatrix}0 & 2 \\ -2 & 0\end{pmatrix}\quad \square$$

## Ejercicios del capítulo 6

**6.1.** Sean f y g endomorfismos de V. Demuestre que si f y g conmutan, entonces los subespacios Ker(f) e Im(f) son subespacios g—invariantes.

**Solución:** Ker(f) es g-invariante si y sólo si para todo  $v \in \text{Ker}(f)$ , se cumple que  $g(v) \in \text{Ker}(f)$ . Si  $v \in \text{Ker}(f)$ , entonces f(v) = 0, de donde

$$0 = g(f(v)) = (g \circ f)(v) = (f \circ g)(v) = f(g(v))$$

luego  $g(v) \in \text{Ker}(f)$ .

 $\operatorname{Im}(f)$  es g-invariante si y sólo si para todo  $v \in \operatorname{Im}(f)$ , se cumple que  $g(v) \in \operatorname{Im}(f)$ . Sea  $v \in \operatorname{Im}(f)$ , entonces existe  $u \in V$  tal que f(u) = v. Así, g(f(u)) = g(v) y aplicando la conmutatividad entre f y g se tiene f(g(u)) = g(v), lo que implica que  $g(v) \in \operatorname{Im}(f)$ .  $\square$ 

**6.2.** Si U y W son subespacios invariantes de un endomorfismo f, entonces los subespacios  $U \cap W$  y U + W también son invariantes por f.

Solución: Veamos que el resultado es cierto para la intersección:

$$u \in U \cap W \Rightarrow \left\{ \begin{array}{l} u \in U \\ u \in W \end{array} \right. \Rightarrow \left\{ \begin{array}{l} f(u) \in U \\ f(u) \in W \end{array} \right. \Rightarrow f(u) \in U \cap W$$

Y que también lo es para la unión:

$$u_1 + u_2 \in U + W \text{ con } \begin{cases} u_1 \in U \\ u_2 \in W \end{cases} \Rightarrow \begin{cases} f(u_1) \in U \\ f(u_2) \in W \end{cases} \Rightarrow f(u_1 + u_2) = f(u_1) + f(u_2) \in U + W \square$$

**6.3.** Demuestre, exhibiendo algún ejemplo, que los subespacios generalizados pueden ser tanto reducibles como irreducibles.

**Solución:** Consideremos un endomorfismo f cuya matriz de Jordan con respecto a una base  $\mathcal{B} = \{v_1, v_2, v_3, v_4\}$  es

$$J = \mathfrak{M}_{\mathcal{B}}(f) = \left(\begin{array}{cc|cc} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ \hline 0 & 0 & 2 & 0 \\ 0 & 0 & 1 & 2 \end{array}\right)$$

El subespacio

$$K^1(1) = M(1) = L(v_1) \oplus L(v_2)$$

es reducible, mientras que el subespacio

$$K^{2}(2) = M(2) = L(v_3, v_4)$$

es irreducible por ser 2-cíclico ya que  $v_4 = (f - 2 \operatorname{Id})(v_3)$ .

6.4. Determine los subespacios invariantes de los endomorfismos cuyas matrices de Jordan son

$$(a) \ J_{1} = \begin{pmatrix} -1 & 0 & 0 & 0 \\ 0 & -1 & 0 & 0 \\ 0 & 0 & 2 & 0 \\ 0 & 0 & 1 & 2 \end{pmatrix}, \qquad (b) \ J_{2} = \begin{pmatrix} -1 & 0 & 0 & 0 \\ 0 & -1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 2 \end{pmatrix}$$
$$(c) \ J_{3} = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 \\ 0 & 1 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix} \qquad (d) \ J_{4} = \begin{pmatrix} 0 & 0 & 0 & 0 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 1 & 1 \end{pmatrix}$$

**Solución:** En cada caso, sea f el endomorfismo que respecto de una base  $\mathcal{B} = \{v_1, v_2, v_3, v_4\}$  tiene como matriz a  $J_i$ .

Caso (a) Matriz y tabla de la base de Jordan

$$J_{1} = \begin{pmatrix} -1 & 0 & 0 & 0 \\ 0 & -1 & 0 & 0 \\ 0 & 0 & 2 & 0 \\ 0 & 0 & 1 & 2 \end{pmatrix} \qquad \begin{matrix} 1 \\ K^{1}(2) & \subset & K^{2}(2) = M(2) \\ v_{4} & \leftarrow & v_{3} \end{matrix} \qquad \begin{matrix} 2 \\ K^{1}(-1) = M(-1) \\ v_{1} \\ v_{2} \end{matrix}$$

El espacio vectorial se descompone en  $V = M(-1) \oplus M(2)$ .

- Subespacios irreducibles contenidos en M(-1):
  - Todas las rectas, dado que  $K^1(-1)=M(-1)=L(v_1,v_2)$ . Son de la forma

$$R_{a,b} = L(av_1 + bv_2) \equiv \{bx_1 - ax_2 = 0, x_3 = 0, x_4 = 0\}, a, b \in \mathbb{K}, (a, b) \neq (0, 0)\}$$

- No hay planos irreducibles: el único plano contenido en M(-1) es él mismo y es reducible

$$M(-1) = L(v_1) \oplus L(v_2) \equiv \{x_3 = 0, x_4 = 0\}.$$

- Subespacios irreducibles contenidos en M(2) (no hay reducibles pues la matriz de f restringido a M(2) está formada por un único bloque de Jordan):
  - Una única recta  $R = K^1(2) = L(v_4) \equiv \{x_1 = 0, x_2 = 0, x_3 = 0\}.$
  - El plano  $P = M(2) = L(v_3, v_4) \equiv \{x_1 = 0, x_2 = 0\}$
- Subespacios invariantes reducibles:

Se obtienen como suma de los subespacios anteriormente obtenidos. Son de la forma:

Planos:  $P_{a,b} = R_{a,b} \oplus R$  con  $a,b \in \mathbb{K}$  y  $M(-1) = L(v_1) \oplus L(v_2)$ .

Hiperplanos:  $H_{a,b} = R_{a,b} \oplus P$  y  $R \oplus M(-1)$ .

Nótese que con las sumas  $P_{a,b}+R$  no se obtienen hiperplanos ya que  $R\subsetneq P_{a,b}$ , luego  $P_{a,b}+R=P_{a,b}$ .

No hay hiperplanos invariantes irreducibles, porque no puede haber ningún subespacio de dimensión 3 contenido en los subespacios máximos. Se puede comprobar que se obtienen los mismos hiperplanos calculando sus ecuaciones a través de los autovalores de  $J_1^t$ .

Caso (b) Matriz y tabla de la base de Jordan

$$J_2 = \begin{pmatrix} -1 & 0 & 0 & 0 \\ 0 & -1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 2 \end{pmatrix} \qquad \begin{array}{c} 2 \\ K^1(-1) = M(-1) \\ v_1 \\ v_2 \end{array} \qquad \begin{array}{c} 1 \\ K^1(1) = M(1) \\ v_3 \end{array} \qquad \begin{array}{c} 1 \\ K^1(2) = M(2) \\ v_4 \end{array}$$

El espacio vectorial se descompone en  $V = M(-1) \oplus M(1) \oplus M(2)$ .

- Subespacios irreducibles contenidos en M(-1):
  - Todas las rectas, dado que  $K^1(-1) = M(-1) = L(v_1, v_2)$ . Son de la forma

$$R_{a,b} = L(av_1 + bv_2) \equiv \{bx_1 - ax_2 = 0, x_3 = 0, x_4 = 0\}, a, b \in \mathbb{K}, (a,b) \neq (0,0)$$

En esta familia están las rectas  $R_1 = L(v_1)$  y  $R_2 = L(v_2)$ .

- No hay planos irreducibles: el único plano contenido en M(-1) es él mismo y es reducible

$$M(-1) = L(v_1) \oplus L(v_2) \equiv \{x_3 = 0, x_4 = 0\}.$$

- Subespacios irreducibles contenidos en M(1):
  - Una única recta  $R_3 = M(1) = L(v_3) \equiv \{x_1 = 0, x_2 = 0, x_4 = 0\}.$
- Subespacios irreducibles contenidos en M(2):
  - Una única recta  $R_4 = M(2) = L(v_4) \equiv \{x_1 = 0, x_2 = 0, x_3 = 0\}.$
- Subespacios invariantes reducibles:
   Se obtienen como suma de los subespacios anteriormente obtenidos. Son de la forma:
   Planos:

$$P_{a,b,3} = R_{a,b} \oplus R_3 \equiv \{b x_1 - a x_2 = 0,\ x_4 = 0\}$$

$$P_{a,b,4} = R_{a,b} \oplus R_4 \equiv \{b x_1 - a x_2 = 0,\ x_3 = 0\}$$

$$P_{3,4} = R_3 \oplus R_4 \equiv \{x_1 = 0,\ x_2 = 0\}$$

$$P_{-1} = M(-1) = L(v_1) \oplus L(v_2) \equiv \{x_3 = 0,\ x_4 = 0\}$$

Hiperplanos: son todos reducibles

$$\begin{aligned}
H_{a,b} &= P_{a,b,3} \oplus R_4 = P_{a,b,4} \oplus R_3 = P_{3,4} \oplus R_{a,b} \\
&= L(av_1 + bv_2, v_3, v_4) \equiv \{bx_1 - ax_2 = 0\} \\
H_{1,2,3} &= P_{-1} \oplus R_3 = L(v_1, v_2, v_3) \equiv \{x_4 = 0\} \\
H_{1,2,4} &= P_{-1} \oplus R_4 = L(v_1, v_2, v_4) \equiv \{x_3 = 0\}
\end{aligned}$$

Como se puede ver a continuación, es más fácil calcular los hiperplanos invariantes por el método de los autovalores de  $J_2^t$ , ya que de todas las combinaciones de subespacios invariantes de dimensión 1 y 2, la mayoría dan lugar a las mismos subespacios suma.

Se calculan los autovalores de  $J_2^t$ .

Para el autovalor -1:

$$(J_2^{t}+I)X=0 \Rightarrow \begin{pmatrix}0&0&0&0\\0&0&0&0\\0&0&2&0\\0&0&0&3\end{pmatrix}\begin{pmatrix}x_1\\x_2\\x_3\\x_4\end{pmatrix}=\begin{pmatrix}0\\0\\0\\0\end{pmatrix}\Rightarrow x_3=0,\ x_4=0$$

Así las coordenadas en  $\mathcal{B}$  de los autovectores no nulos asociados a  $\lambda = -1$  son (c, d, 0, 0) con  $c, d \in \mathbb{K}$  y  $(c, d) \neq (0, 0)$  que dan lugar a los hiperplanos invariantes:

$$H_{c,d} \equiv cx_1 + dx_2 + 0x_3 + 0x_4 = 0$$

que son la misma familia que los  $H_{a,b}$  que obtuvimos anteriormente.

Del mismo modo se calculan los autovectores no nulos asociados a  $\lambda = 1$  con  $a \neq 0$  que tienen coordenadas (0, 0, a, 0) y generan el hiperplano de ecuaciones:

$$H \equiv \{x_3 = 0\}$$

Los autovectores no nulos de  $J_2^t$  asociados a  $\lambda = 2$  tienen coordenadas (0,0,0,b) con  $b \neq 0$  y generan el hiperplano de ecuaciones:

$$H \equiv \{x_4 = 0\}$$

Caso (c) Matriz y tabla de la base de Jordan

$$J_{3} = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 \\ 0 & 1 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix} \qquad \begin{array}{ccccc} 2 & & 3 & & 4 \\ K^{1}(1) & \subset & K^{2}(1) & \subset & K^{3}(1)=M(1) \\ v_{3} & \leftarrow & v_{2} & \leftarrow & v_{1} \\ v_{4} & & & & \end{array}$$

El espacio vectorial total es V = M(1).

• Rectas invariantes: Todas las contenidas en  $K^1(1) = L(v_3, v_4)$ . Son de la forma

$$R_{a,b} = L(av_3 + bv_4) \equiv \{x_1 = 0, x_2 = 0, bx_3 - ax_4 = 0\}, a, b \in \mathbb{K}, (a, b) \neq (0, 0)\}$$

- Planos reducibles: se obtienen como suma de rectas invariantes y todas están contenidas en  $K^1(1)$ , así el único plano reducible invariante es  $K^1(1) = L(v_3) \oplus L(v_4)$ .
- Planos invariantes irreducibles: por la Proposición 6.11 son de la forma L(v, (f Id)(v)) con  $v \in K^2(1) K^1(1)$ . Unas ecuaciones de estos subespacios generalizados son:

$$K^{1}(1) = L(v_3, v_4) \equiv \{x_1 = 0, x_2 = 0\}, K^{2}(1) = L(v_2, v_3, v_4) \equiv \{x_1 = 0\}$$

Luego un vector  $v \in K^2(1) - K^1(1)$  tiene coordenadas  $v = (0, a, b, c)_{\mathcal{B}}$ , con  $a \neq 0$ . Calculamos las coordenadas de  $(f - \mathrm{Id})(v)$ :

$$\begin{pmatrix} 0 & 0 & 0 & 0 \\ 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} 0 \\ a \\ b \\ c \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ a \\ 0 \end{pmatrix} \Rightarrow (f - \mathrm{Id})(v) = (0, 0, a, 0)_{\mathcal{B}}$$