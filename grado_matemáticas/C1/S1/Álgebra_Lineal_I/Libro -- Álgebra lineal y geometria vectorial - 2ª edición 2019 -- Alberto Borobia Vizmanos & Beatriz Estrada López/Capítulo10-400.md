# Soluciones de los ejercicios

# Ejercicios del capítulo 1

1.1. Dadas tres matrices A, B y C de orden n, demuestre que si A y B conmutan y A y C conmutan entonces A y BC conmutan.

Solución: Hay que demostrar que

$$AB = BA$$
 y  $AC = CA \Rightarrow A(BC) = (BC)A$ 

Aplicando la propiedad asociativa del producto de matrices tenemos que:

$$A(BC) = (AB)C = (BA)C = B(AC) = B(CA) = (BC)A \qquad \Box$$

- 1.2. Demuestre cada una de las siguientes afirmaciones:
  - a) Las entradas de la diagonal de una matriz antisimétrica son iguales a 0.
  - b) Las entradas de la diagonal de una matriz hermítica son números reales.

**Solución:** Sea A una matriz cuadrada y sea  $a_{kk}$  la entrada (k,k) de A.

a) Si A es antisimétrica entonces  $A = -A^t$ . La entrada (k, k) de  $-A^t$  es  $-a_{kk}$ . Luego

$$a_{kk} = -a_{kk} \Rightarrow 2a_{kk} = 0 \Rightarrow a_{kk} = 0$$

b) Si A es hermítica entonces  $A=A^*$  donde  $A^*$  es la matriz traspuesta conjugada de A. Si  $a_{kk}=a_k+ib_k$  entonces la entrada (k,k) de  $A^*$  es  $\overline{a_{kk}}=a_k-ib_k$ . Luego

$$a_{kk} = \overline{a_{kk}} \implies a_k + ib_k = a_k - ib_k \implies 2ib_k = 0 \implies b_k = 0$$

1.3. Justifique la veracidad o falsedad de la siguiente afirmación: Si el rango de la suma de dos matrices cuadradas y el de su diferencia son ambos 0, las dos matrices son nulas.

**Solución1**: Sean A y B matrices cuadradas de orden n tales que  $\operatorname{rg}(A+B)=\operatorname{rg}(A-B)=0$ . Como la única matriz que tiene rango cero es la matriz nula, entonces A+B=A-B=0. De donde se sigue que A=B=0. Luego la afirmación es verdadera.

**Solución2**: Este ejercicio se resuelve de manera muy sencilla como se acaba de ver. No obstante, para ilustrar su aplicación, vamos a resolverlo usando el Teorema 1.53 que nos dice que el rango de una suma de matrices es menor o igual que la suma de los rangos de las matrices:

$$rg(2A) = rg((A+B) + (A-B)) \le rg(A+B) + rg(A-B) = 0 + 0 = 0.$$

$$rg(2B) = rg((B+A) + (B-A)) \le rg(B+A) + rg(B-A) = rg(A+B) + rg(A-B) = 0.$$

luego

$$rg(A) = rg(2A) = 0 \Rightarrow A = 0$$
 y  $rg(B) = rg(2B) = 0 \Rightarrow B = 0$ 

1.4. Demuestre que el producto de matrices triangulares superiores es una matriz triangular superior, y el producto de matrices triangulares inferiores es una matriz triangular inferior.

Solución: Lo demostraremos por inducción en el número de matrices:

a) Probamos el resultado para el producto de dos matrices triangulares superiores. Sean A y B matrices triangulares superiores de orden n. Para todo  $1 \le i, j \le n$ 

$$[AB]_{ij} = \sum_{k=1}^{n} a_{ik} b_{kj} = \underbrace{a_{i1}b_{1j} + \ldots + a_{i,i-1}b_{i-1,j}}_{n_{i}} + \underbrace{a_{ii}b_{ij} + \cdots + a_{in}b_{nj}}_{n_{i}}$$

La matriz AB es triangular superior si y sólo si para todo i, j con  $n \ge i > j \ge 1$  tenemos  $[AB]_{ij} = 0$ . Son las entradas de AB que se encuentran por debajo de la diagonal principal. En cada sumando del primer grupo hay un  $a_{ik}$  con i > k y por tanto  $a_{ik} = 0$ . En cada sumando del segundo grupo hay un  $b_{hj}$  con  $h \ge i > j$  y por tanto  $b_{hj} = 0$ . Luego  $[AB]_{ij} = 0$ .

- b) Asumimos el resultado para el producto de k matrices triangulares superiores.
- c) Probamos el resultado para el producto de k+1 matrices triangulares superiores. Sean  $A_1, \ldots, A_k, A_{k+1}$  k+1 matrices triangulares superiores. Consideramos el producto

$$A_1 \cdot \ldots \cdot A_k \cdot A_{k+1} = (A_1 \cdot \ldots \cdot A_k) \cdot A_{k+1}$$

Por hipótesis de inducción  $A_1 \cdots A_k$  es triangular superior, y por tanto queda el producto de dos matrices triangulares superiores que es una matriz triangular superior.

Para demostrar que el producto de matrices triangulares inferiores es una matriz triangular inferior desarrolle una argumentación análoga.  $\Box$ 

1.5. Escriba todas las posibles matrices escalonadas reducidas de orden  $2 \times 4$  (sugerencia: ordénelas por rango creciente).

Solución: Vamos a hacer un estudio exhaustivo según el rango:

- a) Si el rango es 0, sólo tenemos la matriz nula  $\begin{pmatrix} 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}$ .
- b) Si el rango es 1, sólo hay un pivote y por tanto una fila no nula. El pivote puede estar en cualquier posición de la primera fila. Se nos presentan las siguientes posibilidades:

$$\begin{pmatrix} 1 & \alpha & \beta & \gamma \\ 0 & 0 & 0 & 0 \end{pmatrix}, \begin{pmatrix} 0 & 1 & \alpha & \beta \\ 0 & 0 & 0 & 0 \end{pmatrix}, \begin{pmatrix} 0 & 0 & 1 & \alpha \\ 0 & 0 & 0 & 0 \end{pmatrix}, \begin{pmatrix} 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix}.$$

c) Si el rango es 2, entonces hay dos pivotes y por tanto las dos filas son no nulas. El pivote de la segunda fila tiene que estar a la derecha del pivote de la primera fila. Encima del pivote de la segunda fila tiene que haber un 0. Se nos presentan las siguientes posibilidades:

1) El pivote de la primera fila está en la primera columna

$$\begin{pmatrix} 1 & 0 & \alpha & \beta \\ 0 & 1 & \gamma & \delta \end{pmatrix} \cdot \begin{pmatrix} 1 & \alpha & 0 & \beta \\ 0 & 0 & 1 & \gamma \end{pmatrix} \cdot \begin{pmatrix} 1 & \alpha & \beta & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}.$$

2) El pivote de la primera fila está en la segunda columna

$$\begin{pmatrix} 0 & 1 & 0 & \alpha \\ 0 & 0 & 1 & \beta \end{pmatrix}, \begin{pmatrix} 0 & 1 & \alpha & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}.$$

3) El pivote de la primera fila está en la tercera columna

$$\begin{pmatrix} 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}.$$

En todos los casos  $\alpha$ ,  $\beta$ ,  $\gamma$  y  $\delta$  son cualesquiera escalares pertenecientes al cuerpo en el que se esté trabajando.  $\square$ 

1.6. Calcule el rango de la matriz A dependiendo del valor de  $\alpha$ .

$$A = \begin{pmatrix} \alpha & 0 & 1\\ 1 & \alpha - 1 & 1\\ 1 & 0 & \alpha \end{pmatrix}$$

Solución: Calculamos el determinante de A por la regla de Sarrus

$$\det \begin{pmatrix} \alpha & 0 & 1 \\ 1 & \alpha - 1 & 1 \\ 1 & 0 & \alpha \end{pmatrix} = \alpha(\alpha - 1)\alpha - (\alpha - 1) = \alpha^3 - \alpha^2 - \alpha + 1 = (\alpha - 1)^2(\alpha + 1)$$

a) Si  $\alpha \neq 1, -1$  entonces  $\det(A) \neq 0$  y  $\operatorname{rg}(A) = 3$ .

b) Si 
$$\alpha = 1$$
 entonces  $A = \begin{pmatrix} 1 & 0 & 1 \\ 1 & 0 & 1 \\ 1 & 0 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 0 & 1 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}$  y por tanto  $rg(A) = 1$ .

c) Si 
$$\alpha = -1$$
 entonces  $A = \begin{pmatrix} -1 & 0 & 1 \\ 1 & -2 & 1 \\ 1 & 0 & -1 \end{pmatrix} \sim_f \begin{pmatrix} -1 & 0 & 1 \\ 0 & -2 & 2 \\ 0 & 0 & 0 \end{pmatrix}$  y por tanto  $rg(A) = 2$ .  $\square$ 

1.7. Decida, sin calcular el determinante, si la siguiente matriz tiene inversa para algún  $a \in \mathbb{R}$ .

$$A = \left(\begin{array}{rrrr} 1 & 3 & -2 & 0 \\ 1 & 4 & 1 & 3 \\ 0 & 2 & 3 & a \\ 2 & 4 & 1 & 1 \end{array}\right)$$

Solución: Una condición necesaria y suficiente para que una matriz tenga inversa es que su rango sea igual a su orden, es decir, A tiene inversa si y sólo si rg(A) = 4. Para calcular el rango de A aplicamos operaciones elementales de filas hasta convertirla en una matriz escalonada

$$\begin{pmatrix} 1 & 3 & -2 & 0 \\ 1 & 4 & 1 & 3 \\ 0 & 2 & 3 & a \\ 2 & 4 & 1 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 3 & -2 & 0 \\ 0 & 1 & 3 & 3 \\ 0 & 2 & 3 & a \\ 0 & -2 & 5 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 3 & -2 & 0 \\ 0 & 1 & 3 & 3 \\ 0 & 0 & -3 & a - 6 \\ 0 & 0 & 11 & 7 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 3 & -2 & 0 \\ 0 & 1 & 3 & 3 \\ 0 & 0 & -3 & a - 6 \\ 0 & 0 & 0 & \frac{11a - 45}{3} \end{pmatrix}$$

El rango es igual al número de filas no nulas de cualquier matriz escalonada equivalente, luego rg(A)=4 si y sólo si  $a\neq \frac{45}{11}$ . Por lo tanto A es invertible si y sólo si  $a\neq \frac{45}{11}$ .  $\square$ 

## 1.8. Dadas las siguientes matrices

$$A = \begin{pmatrix} 1 & 0 & 2 & 0 \\ 0 & 1 & 3 & -2 \\ 2 & 3 & 1 & 6 \\ 3 & 0 & 0 & 6 \end{pmatrix}, \quad B = \begin{pmatrix} 1 & 1 & 2 & 1 \\ 2 & 1 & 3 & 2 \\ 2 & 1 & 1 & 4 \\ 4 & 1 & 0 & 9 \end{pmatrix}$$

$$C = \begin{pmatrix} 1 & 2 & 4 & 0 \\ 2 & 5 & 9 & 1 \\ 3 & -4 & 2 & 0 \\ -2 & 3 & -1 & -1 \end{pmatrix}, \quad D = \begin{pmatrix} 1 & 2 & 5 & 5 \\ 2 & 1 & 7 & 4 \\ 1 & -1 & 2 & -1 \\ -1 & 1 & -2 & 1 \end{pmatrix}$$

- a) ¿Qué rango tiene cada una?
- b) Determine cuáles de ellas son equivalentes por filas.
- c) Determine cuáles de ellas son equivalentes.

**Solución** El rango de una matriz P es el número de filas independientes de P, y coincide con el número de filas no nulas de cualquier matriz escalonada equivalente a P. Dos matrices P y Q son equivalentes si y sólo si tienen el mismo rango. De manera que calculando para cada matriz de las dadas una matriz escalonada equivalente resolvemos las preguntas (a) y (c).

Y dos matrices son equivalentes por filas si y sólo si tienen la misma forma de Hermite por filas. Para resolver la pregunta (b) no nos basta con llegar a una matriz escalonada, tenemos que seguir hasta calcular la forma de Hermite por filas de cada una de las matrices dadas.

Como al final vamos a necesitar la forma de Hermite por filas de cada una de las matrices, la calculamos y así respondemos a todas las preguntas.

$$A = \begin{pmatrix} 1 & 0 & 2 & 0 \\ 0 & 1 & 3 & -2 \\ 2 & 3 & 1 & 6 \\ 3 & 0 & 0 & 6 \end{pmatrix} \xrightarrow{f_3 \to f_3 - 2f_1} \begin{pmatrix} 1 & 0 & 2 & 0 \\ 0 & 1 & 3 & -2 \\ 0 & 3 & -3 & 6 \\ 0 & 0 & -6 & 6 \end{pmatrix}$$

$$\xrightarrow{f_3 \to f_3 - 3f_2} \begin{pmatrix} 1 & 0 & 2 & 0 \\ 0 & 1 & 3 & -2 \\ 0 & 0 & -12 & 12 \\ 0 & 0 & -6 & 6 \end{pmatrix} \xrightarrow{f_4 \to f_4 - \frac{1}{2}f_3} \begin{pmatrix} 1 & 0 & 2 & 0 \\ 0 & 1 & 3 & -2 \\ 0 & 0 & -12 & 12 \\ 0 & 0 & 0 & 0 \end{pmatrix}$$

$$\xrightarrow{f_3 \to \frac{1}{-12}f_3} \begin{pmatrix} 1 & 0 & 2 & 0 \\ 0 & 1 & 3 & -2 \\ 0 & 0 & 1 & -1 \\ 0 & 0 & 0 & 0 \end{pmatrix} \xrightarrow{f_1 \to f_1 - 2f_3} \begin{pmatrix} 1 & 0 & 0 & 2 \\ 0 & 1 & 0 & 1 \\ 0 & 0 & 1 & -1 \\ 0 & 0 & 0 & 0 \end{pmatrix} = H_f(A)$$

$$B = \begin{pmatrix} 1 & 1 & 2 & 1 \\ 2 & 1 & 3 & 2 \\ 2 & 1 & 1 & 4 \\ 4 & 1 & 0 & 9 \end{pmatrix} \sim_{f} \begin{pmatrix} 1 & 1 & 2 & 1 \\ 0 & -1 & -1 & 0 \\ 0 & -1 & -3 & 2 \\ 0 & -3 & -8 & 5 \end{pmatrix} \sim_{f} \begin{pmatrix} 1 & 1 & 2 & 1 \\ 0 & -1 & -1 & 0 \\ 0 & 0 & -2 & 2 \\ 0 & 0 & -5 & 5 \end{pmatrix} \sim_{f} \begin{pmatrix} 1 & 1 & 2 & 1 \\ 0 & -1 & -1 & 0 \\ 0 & 0 & -2 & 2 \\ 0 & 0 & 0 & 0 \end{pmatrix}$$
$$\sim_{f} \begin{pmatrix} 1 & 1 & 2 & 1 \\ 0 & 1 & 1 & 0 \\ 0 & 0 & 1 & -1 \\ 0 & 0 & 0 & 0 \end{pmatrix} \sim_{f} \begin{pmatrix} 1 & 1 & 0 & 3 \\ 0 & 1 & 0 & 1 \\ 0 & 0 & 1 & -1 \\ 0 & 0 & 0 & 0 \end{pmatrix} \sim_{f} \begin{pmatrix} 1 & 0 & 0 & 2 \\ 0 & 1 & 0 & 1 \\ 0 & 0 & 1 & -1 \\ 0 & 0 & 0 & 0 \end{pmatrix} = H_{f}(B)$$

$$C = \begin{pmatrix} 1 & 2 & 4 & 0 \\ 2 & 5 & 9 & 1 \\ 3 & -4 & 2 & 0 \\ -2 & 3 & -1 & -1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 4 & 0 \\ 0 & 1 & 1 & 1 \\ 0 & -10 & -10 & 0 \\ 0 & 7 & 7 & -1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 4 & 0 \\ 0 & 1 & 1 & 1 \\ 0 & 0 & 0 & 10 \\ 0 & 0 & 0 & 0 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 4 & 0 \\ 0 & 1 & 1 & 1 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 4 & 0 \\ 0 & 1 & 1 & 1 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 4 & 0 \\ 0 & 1 & 1 & 0 \\ 0 & 1 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 0 & 2 & 0 \\ 0 & 1 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix} = H_f(C)$$

$$D = \begin{pmatrix} 1 & 2 & 5 & 5 \\ 2 & 1 & 7 & 4 \\ 1 & -1 & 2 & -1 \\ -1 & 1 & -2 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 5 & 5 \\ 0 & -3 & -3 & -6 \\ 0 & 3 & 3 & 6 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 5 & 5 \\ 0 & -3 & -3 & -6 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}$$
$$\sim_f \begin{pmatrix} 1 & 2 & 5 & 5 \\ 0 & 1 & 1 & 2 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 0 & 3 & 1 \\ 0 & 1 & 1 & 2 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix} = H_f(D)$$

Podemos concluir que

$$rg(A) = rg(B) = rg(C) = 3$$
 v  $rg(D) = 2$   $\Rightarrow$   $A \sim B \sim C \not\sim D$ 

Por otra parte

$$H_f(A) = H_f(B) \neq H_f(C) \Rightarrow A \sim_f B \not\sim_f C$$

1.9. Encuentre una matriz invertible P que transforme la matriz D del ejercicio anterior en su forma de Hermite por filas, esto es, tal que  $PD = H_f(D)$ .

Solución: Como en el ejercicio anterior, procederemos a transformar D en  $H_f(D)$  por medio de operaciones elementales de filas. Pero en este caso ampliamos la transformación a ( $D \mid I_4$ ) de manera que D se transforma en  $H_f(D)$  y simultáneamente  $I_4$  se transforma en P:

$$(D \mid I_4) = \begin{pmatrix} 1 & 2 & 5 & 5 & 1 & 0 & 0 & 0 \\ 2 & 1 & 7 & 4 & 0 & 1 & 0 & 0 \\ 1 & -1 & 2 & -1 & 0 & 0 & 0 & 0 \\ -1 & 1 & -2 & 1 & 0 & 0 & 0 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 5 & 5 & 1 & 0 & 0 & 0 \\ 0 & -3 & -3 & -6 & -2 & 1 & 0 & 0 \\ 0 & -3 & -3 & -6 & 1 & 0 & 1 & 0 \\ 0 & 0 & 0 & 0 & 0 & 1 & -1 & 1 & 0 \\ 0 & 0 & 0 & 0 & 0 & -1 & 1 & 0 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 5 & 5 & 1 & 0 & 0 & 0 \\ 0 & -3 & -3 & -6 & 1 & 0 & 1 & 0 \\ 0 & 3 & 3 & 6 & 1 & 0 & 0 & 0 \\ 1 & 0 & 0 & 0 & 1 \end{pmatrix}$$

$$\sim_f \begin{pmatrix} 1 & 2 & 5 & 5 & 1 & 0 & 0 & 0 \\ 0 & -3 & -3 & -6 & 1 & 0 & 1 & 0 \\ 0 & 0 & 0 & 0 & 1 & 1 & 0 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 5 & 5 & 1 & 0 & 0 & 0 \\ 0 & 1 & 1 & 2 & 2/3 & -1/3 & 0 & 0 \\ 0 & 0 & 0 & 0 & 1 & -1 & 1 & 0 & 1 \end{pmatrix} = (H_f(D) \mid P)$$

$$\sim_f \begin{pmatrix} 1 & 0 & 3 & 1 & -1/3 & 2/3 & 0 & 0 \\ 0 & 1 & 1 & 2 & 2/3 & -1/3 & 0 & 0 \\ 0 & 0 & 0 & 0 & 1 & -1 & 1 & 0 \\ 0 & 0 & 0 & 0 & 1 & -1 & 1 & 0 \\ 0 & 0 & 0 & 0 & 1 & -1 & 1 & 0 \end{pmatrix} = (H_f(D) \mid P)$$

Siendo P una matriz invertible tal que

$$PD = H_f(D)$$

como comprobamos a continuación:

$$PD = \begin{pmatrix} -1/3 & 2/3 & 0 & 0 \\ 2/3 & -1/3 & 0 & 0 \\ 1 & -1 & 1 & 0 \\ -1 & 1 & 0 & 1 \end{pmatrix} \begin{pmatrix} 1 & 2 & 5 & 5 \\ 2 & 1 & 7 & 4 \\ 1 & -1 & 2 & -1 \\ -1 & 1 & -2 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 0 & 3 & 1 \\ 0 & 1 & 1 & 2 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix} = H_f(D) \qquad \Box$$

#### 1.10. Demuestre que si

$$A = \begin{pmatrix} 1 & 1 & 1 \\ 0 & 1 & 1 \\ 0 & 0 & 1 \end{pmatrix}$$

entonces para todo  $n \in \mathbb{N}$  la matriz  $A^n$  tiene la forma general

$$A^{n} = \begin{pmatrix} 1 & n & \frac{n(n+1)}{2} \\ 0 & 1 & n \\ 0 & 0 & 1 \end{pmatrix} \tag{*}$$

Solución: Vamos a dar dos demostraciones distintas de este resultado.

Método 1: Cuando dos matrices P y Q de orden n conmutan. PQ = QP. entonces se puede aplicar a P + Q la fórmula del binomio de Newton:

$$(P+Q)^n = \sum_{i=0}^n \binom{n}{i} P^{n-i} Q^i$$

Aprovechando que la identidad commuta con cualquier matriz, descomponemos A como

$$A = \begin{pmatrix} 1 & 1 & 1 \\ 0 & 1 & 1 \\ 0 & 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} + \begin{pmatrix} 0 & 1 & 1 \\ 0 & 0 & 1 \\ 0 & 0 & 0 \end{pmatrix} = I_3 + B$$

Observamos que B es nilpotente

$$B = \begin{pmatrix} 0 & 1 & 1 \\ 0 & 0 & 1 \\ 0 & 0 & 0 \end{pmatrix}. \ B^2 = \begin{pmatrix} 0 & 0 & 1 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}. \ B^3 = \begin{pmatrix} 0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix} \Rightarrow B^k = 0 \text{ para todo } k \ge 3$$

De manera que tenemos

$$A^{n} = (I_{3} + B)^{n} = \binom{n}{0} I_{3}^{n} + \binom{n}{1} I_{3}^{n-1} B + \binom{n}{2} I_{3}^{n-2} B^{2}$$

$$= \binom{1}{0} \begin{pmatrix} 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} + n \binom{0}{0} \begin{pmatrix} 1 & 1 \\ 0 & 0 & 1 \\ 0 & 0 & 0 \end{pmatrix} + \frac{n(n-1)}{2} \begin{pmatrix} 0 & 0 & 1 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix} = \begin{pmatrix} 1 & n & \frac{n(n+1)}{2} \\ 0 & 1 & n \\ 0 & 0 & 1 \end{pmatrix}$$

 $M\acute{e}todo$  2: En la demostración anterior no hemos necesitado conocer de antemano la forma general de  $A^n$ , hemos llegado a ella a través de argumentos matemáticos. Pero cuando nos dan la forma general es razonable intentar demostrar el resultado por inducción. Para ello deben seguirse los siguientes pasos:

- a) Se comprueba que la forma general es cierta para n=1. Es trivial comprobarlo.
- b) Se asume que la forma general es cierta para n = k.

c) Se demuestra que la forma general es cierta para n = k + 1. Calculamos  $A^{k+1}$ 

$$A^kA = \begin{pmatrix} 1 & k & \frac{k(k+1)}{2} \\ 0 & 1 & k \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} 1 & 1 & 1 \\ 0 & 1 & 1 \\ 0 & 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & k+1 & 1+k+\frac{k(k+1)}{2} \\ 0 & 1 & k+1 \\ 0 & 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & k+1 & \frac{(k+1)(k+2)}{2} \\ 0 & 1 & k+1 \\ 0 & 0 & 1 \end{pmatrix}$$

y por lo tanto la forma general es cierta para n = k + 1.

#### 1.11. Resuelva la ecuación

$$\det \begin{pmatrix} 1+x & x & x & x \\ x & 1+x & x & x \\ x & x & 1+x & x \\ x & x & x & 1+x \end{pmatrix} = 0$$

Solución: Utilizaremos operaciones elementales para simplificar el determinante. Tenemos que

$$\begin{pmatrix}
1+x & x & x & x \\
x & 1+x & x & x \\
x & x & 1+x & x \\
x & x & x & 1+x
\end{pmatrix}
\xrightarrow{f_i \to f_i - f_1, i = 2.3, 4}
\begin{pmatrix}
1+x & x & x & x \\
-1 & 1 & 0 & 0 \\
-1 & 0 & 1 & 0 \\
-1 & 0 & 0 & 1
\end{pmatrix}$$

$$\xrightarrow{c_1 \to c_1 + c_2 + c_3 + c_4}
\begin{pmatrix}
1+x & x & x & x \\
-1 & 1 & 0 & 0 \\
-1 & 0 & 0 & 1
\end{pmatrix}$$

Ninguna de las operaciones elementales aplicadas modifican el determinante, por lo tanto

$$\det \begin{pmatrix} 1+x & x & x & x \\ x & 1+x & x & x \\ x & x & 1+x & x \\ x & x & x & 1+x \end{pmatrix} = \det \begin{pmatrix} 1+4x & x & x & x \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix} = 1+4x$$

La ecuación queda reducida a 1 + 4x = 0 cuya solución es  $x = -\frac{1}{4}$ .

# 1.12. Describa un esquema para resolver cada uno de los siguientes problemas:

- a) Si H(A) es la forma de Hermite de A, encuentre dos matrices P y Q invertibles tales que PAQ = H(A).
- b) Si A y B son dos matrices cuya forma de Hermite por filas coincide, encuentre una matriz invertible P tal que PA = B.
- c) Si A y B son dos matrices cuya forma de Hermite por columnas coincide, encuentre una matriz invertible Q tal que AQ = B.

## Solución:

- a) ¿Cómo encontramos dos matrices P y Q invertibles tales que PAQ = H(A)?
  - Se calcula una matriz invertible P tal que  $PA = H_f(A)$ .
  - Se calcula una matriz invertible Q tal que  $H_f(A)Q = H(A)$ .
  - -PAQ = H(A) puesto que  $PAQ = H_f(A)Q = H(A)$ .
- b) Si  $H_f(A) = H_f(B)$  ¿cómo encontramos una matriz invertible P tal que PA = B?
  - Se calcula una matriz invertible  $P_1$  tal que  $P_1A = H_f(A)$ .
  - Se calcula una matriz invertible  $P_2$  tal que  $P_2B = H_f(B)$ .
  - Como  $P_1A = P_2B$ , multiplicando por la izquierda por  $P_2^{-1}$  se tiene  $P_2^{-1}P_1A = P_2^{-1}P_2B^{=}B$ . Luego  $P = P_2^{-1}P_1$  es una matriz invertible tal que PA = B.
- c) Se deja como ejercicio.  $\square$
- **1.13.** Sean  $D \in \mathfrak{M}_{n \times p}(\mathbb{K})$  y  $C \in \mathfrak{M}_n(\mathbb{K})$ . Demuestre que si  $\operatorname{rg}(C) = n$  entonces  $\operatorname{rg}(CD) = \operatorname{rg}(D)$ .

**Solución:** Es el apartado (5) del Teorema 1.53. Si  $\operatorname{rg}(C) = n$ , entonces por el Teorema 1.46. C es producto de matrices elementales  $C = E_1 \cdots E_k$ , luego  $CD = E_1 \cdots E_k D$  y por tanto  $CD \sim_f D$ . Por ser matrices equivalentes por filas, Teorema 1.43, tienen el mismo rango.  $\square$ 

- 1.14. Sea A una matriz de orden  $m \times n$ . Utilice la definición de rango de una matriz para demostrar las siguientes afirmaciones.
  - a) Si rg(A) < m entonces existe una matriz no nula B tal que BA = 0.
  - b) Si rg(A) < n entonces existe una matriz no nula B tal que AB = 0.

Solución: El rango de una matriz es el máximo número de filas independientes que tiene.

a) Si  $\operatorname{rg}(A) < m$  entonces sus filas  $F_1, \ldots, F_m$  son dependientes, esto es, existen escalares  $\alpha_1, \ldots, \alpha_m$  no todos nulos tales que

$$\alpha_1 F_1 + \dots + \alpha_m F_m = 0$$

Si definimos la matriz fila  $B=(\begin{array}{ccc} \alpha_1 & \cdots & \alpha_m \end{array})$  entonces  $BA=\alpha_1F_1+\cdots+\alpha_mF_m=0.$ 

b) Se razona igual, ahora con las columnas de A. El rango de una matriz es el máximo número de columnas independientes que tiene. Si  $\operatorname{rg}(A) < n$  entonces sus columnas  $C_1, \ldots, C_n$  son dependientes, esto es, existen escalares  $\beta_1, \ldots, \beta_n$  no todos nulos tales que

$$\beta_1 C_1 + \dots + \beta_n C_n = 0$$

Si definimos la matriz columna  $B = \begin{pmatrix} \beta_1 \\ \vdots \\ \beta_n \end{pmatrix}$  entonces  $AB = \beta_1 C_1 + \dots + \beta_n C_n = 0$ .

**1.15.** Demuestre que si A es una matriz de tamaño  $n \times 1$  y B es una matriz de tamaño  $1 \times n$  con n > 1, entonces AB no es invertible. Determine el rango de AB si A y B no son nulas.

**Solución:** Si A o B son nulas, entonces AB=0 y por tanto no es invertible. En particular su rango es 0. Supongamos que A y B son no nulas. La matriz AB de orden n es

$$AB = \begin{pmatrix} a_1 \\ \vdots \\ a_n \end{pmatrix} (b_1 \cdots b_n) = \begin{pmatrix} a_1b_1 & \cdots & a_1b_n \\ \vdots & \ddots & \vdots \\ a_nb_1 & \cdots & a_nb_n \end{pmatrix} = \begin{pmatrix} Ab_1 \mid \cdots \mid Ab_n \end{pmatrix} = \begin{pmatrix} \underline{a_1B} \\ \underline{\cdots} \\ a_nB \end{pmatrix}$$

donde se puede ver que tanto sus filas como sus columnas son proporcionales. Además, como AB no es nula entonces rg(AB) = 1 < n. Luego AB no es invertible.

Otra forma de obtener el rango, cuando A y B son no nulas, es utilizando la siguiente propiedad:

$$1 < \operatorname{rg}(AB) < \min\{\operatorname{rg}(A), \operatorname{rg}(B)\} = 1$$

- 1.16. Demuestre la veracidad de las siguientes afirmaciones:
  - a) Dos matrices semejantes tienen el mismo determinante.
  - b) La relación de semejanza entre matrices es de equivalencia.
  - c) La relación de congruencia entre matrices es de equivalencia.

Solución: Sean A, B y C tres matrices cualesquiera de orden n.

a) Supongamos que A y B son semejantes. Entonces existe una matriz P regular de orden n tal que  $B = P^{-1}AP$ . Usando que  $\det(CD) = \det(DC)$  tenemos que

$$\det(B) = \det(P^{-1}AP) = \det(PP^{-1}A) = \det(A)$$

- b) Vamos a demostrar cada una de las propiedades de una relación de equivalencia:
  - $\bullet$  Reflexiva: A es semejante a A ya que  $A=I_n^{-1}AI_n$
  - Simétrica: Si A es semejante a B, entonces existe una matriz P regular tal que  $B = P^{-1}AP$ , y por lo tanto

$$PBP^{-1} = PP^{-1}APP^{-1} = A$$

Dado que  $P^{-1}$  es una matriz regular y  $(P^{-1})^{-1} = P$ , entonces B es semejante a A.

■ Transitiva: Si A es semejante a B y B es semejante a C, entonces existen matrices regulares P y Q tales que  $B = P^{-1}AP$  y  $C = Q^{-1}BQ$ . Por lo tanto

$$C = Q^{-1}BQ = Q^{-1}P^{-1}APQ = (PQ)^{-1}A(PQ)$$

Dado que PQ es una matriz regular, entonces A es semejante a C.

c) Se demuestra del mismo modo que (2).  $\Box$