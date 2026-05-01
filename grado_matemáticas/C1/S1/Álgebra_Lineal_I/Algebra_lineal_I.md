•  $\mathfrak{M}_{m\times n}(\mathbb{K})$  es el conjunto de las matrices de tamaño  $m\times n$  cuyas entradas son elementos de  $\mathbb{K}$ . Una **matriz fila** es una matriz de  $\mathfrak{M}_{1\times n}(\mathbb{K})$  y una **matriz columna** es una matriz de  $\mathfrak{M}_{m\times 1}(\mathbb{K})$ . Por ejemplo

$$(3 \quad -1 \quad 1 \quad 4) \longrightarrow \text{ matriz fila}, \qquad \begin{pmatrix} 2\\1\\7 \end{pmatrix} \longrightarrow \text{ matriz columna}$$

Una matriz de  $\mathfrak{M}_{m\times n}(\mathbb{K})$  está formada por m matrices filas o por n matrices columnas.

• Una matriz cuadrada es una matriz con igual número de filas que de columnas. Una matriz cuadrada que tiene n filas y n columnas es una matriz de orden n. Al conjunto  $\mathfrak{M}_{n\times n}(\mathbb{K})$  lo denotamos de forma abreviada por  $\mathfrak{M}_n(\mathbb{K})$ . Por ejemplo

$$A = \begin{pmatrix} 3 & -1+i & 4i \\ 2i & 0 & -2 \\ 1 & 6 & -3+i \end{pmatrix} \in \mathfrak{M}_3(\mathbb{C})$$

Una matriz de orden n se escribe de forma compacta como  $A = (a_{ij})_{i,i=1}^n$ .

- Sea A una matriz de orden n.
  - La diagonal o diagonal principal de A está formada por las entradas  $(a_{11}, a_{22}, \dots, a_{nn})$ .
  - La **traza** de A es la suma de los elementos de su diagonal, esto es,

$$tr(A) = \sum_{i=1}^{n} a_{ii} = a_{11} + a_{22} + \dots + a_{nn}$$

- La **subdiagonal** de A está formada por las entradas  $(a_{21}, a_{32}, \dots, a_{n,n-1})$ .
- La **superdiagonal** de A está formada por las entradas  $(a_{12}, a_{23}, \dots, a_{n-1,n})$ .

La matriz

$$A = \begin{pmatrix} 3 & -1 & 4 \\ 5 & 2 & -2 \\ 1 & 6 & -7 \end{pmatrix}$$

tiene diagonal (3, 2, -7), subdiagonal (5, 6), superdiagonal (-1, -2) y tr(A) = 3 + 2 - 7 = -2.

• La matriz traspuesta de la matriz  $A \in \mathfrak{M}_{m \times n}(\mathbb{K})$  es la matriz  $A^t \in \mathfrak{M}_{n \times m}(\mathbb{K})$  cuya entrada (i, j) es igual a la entrada (j, i) de A. Es decir,  $[A]_{ij} = [A^t]_{ji}$ . Por ejemplo.

$$A = \begin{pmatrix} 3 & -3 & 1 \\ \hline 1 & 0 & 2 \\ \hline 2 & 4 & 1 \\ 5 & -1 & 0 \end{pmatrix} \implies A^{t} = \begin{pmatrix} 3 & 1 \\ -3 & 0 \\ 1 & 2 & 1 \\ \hline 1 & 0 \end{pmatrix}$$

La fila i de A se convierte en la columna i de  $A^t$  y la columna j de A se convierte en la fila j de  $A^t$ . El tamaño de A coincide con el tamaño de  $A^t$  si y sólo si m = n. En particular  $(A^t)^t = A$ .

• Una matriz simétrica es una matriz cuadrada que coincide con su traspuesta. Esto es,  $A \in \mathfrak{M}_n(\mathbb{K})$  es una matriz simétrica si  $A^t = A$ . Un ejemplo de matriz simétrica es

$$\left(\begin{array}{ccc}
1 & -2 & 5 \\
-2 & 4 & 7 \\
5 & 7 & 0
\end{array}\right)$$

Una matriz antisimétrica es una matriz cuadrada que coincide con su matriz traspuesta cambiada de signo. Esto es,  $A \in \mathfrak{M}_n(\mathbb{K})$  es una matriz antisimétrica si  $A^t = -A$ . Por ejemplo,

$$\left(\begin{array}{ccc}
0 & -2 & 5 \\
2 & 0 & 7 \\
-5 & -7 & 0
\end{array}\right)$$

es una matriz antisimétrica. Observamos que las entradas situadas en la diagonal principal son iguales a 0. Esta propiedad es válida para cualquier matriz antisimétrica, ¿por qué?

• La matriz traspuesta conjugada de la matriz  $A \in \mathfrak{M}_{m \times n}(\mathbb{C})$  es la matriz  $A^* \in \mathfrak{M}_{n \times m}(\mathbb{C})$  cuya entrada (i,j) es el número complejo conjugado de la entrada (j,i) de A, esto es,  $a_{ij}^* = \overline{a_{ji}}$  (recordamos que  $\overline{a+ib} = a-bi$ ). Por ejemplo,

$$A = \begin{pmatrix} i & -3-i & 1 & 2 \\ 2 & 4+i & 4 & 3 \\ 5i & -1 & 7 & -1+i \end{pmatrix} \implies A^* = \begin{pmatrix} -i & 2 & -5i \\ -3+i & 4-i & -1 \\ 1 & 4 & 7 \\ 2 & 3 & -1-i \end{pmatrix}$$

Los tamaños de  $A \in \mathfrak{M}_{m \times n}(\mathbb{C})$  y  $A^* \in \mathfrak{M}_{n \times m}(\mathbb{C})$  coinciden si y sólo si m = n.

• Una matriz hermítica es una matriz cuadrada que coincide con su matriz traspuesta conjugada. Esto es,  $A \in \mathfrak{M}_n(\mathbb{C})$  es una matriz hermítica si  $A^* = A$ . Por ejemplo, la siguiente matriz es hermítica:

$$\left(\begin{array}{cccc}
3 & -3+i & i \\
-3-i & 4 & 1 \\
-i & 1 & 0
\end{array}\right)$$

Observamos que los elementos de la diagonal principal son reales. Esta propiedad es válida para cualquier matriz hermítica, ¿por qué?

• Una matriz triangular superior es una matriz de orden n con todas las entrada situadas por debajo de su diagonal principal iguales a 0. Y una matriz triangular inferior es una matriz de orden n con todas las entradas situadas por encima de su diagonal principal iguales a 0. Sean

$$A = \begin{pmatrix} 4 & 7 - 3i & i \\ 0 & 1 + i & -2 \\ 0 & 0 & 5 \end{pmatrix} \quad \mathbf{y} \quad B = \begin{pmatrix} 4 & 0 & 0 \\ 3 & 5 & 0 \\ 1 & 2 & 9 \end{pmatrix},$$

la matriz  $A \in \mathfrak{M}_3(\mathbb{C})$  es triangular superior y la matriz  $B \in \mathfrak{M}_3(\mathbb{R})$  es triangular inferior.

• Una **matriz diagonal** es una matriz de orden n tal que toda entrada de A situada fuera de su diagonal principal es igual a 0. Denotaremos por diag $(d_1, \ldots, d_n)$  a la matriz diagonal de orden n tal que las entradas situadas en su diagonal principal son  $d_1, \ldots, d_n$ . Por ejemplo

$$\operatorname{diag}(2, -5, 1, 6) = \begin{pmatrix} 2 & 0 & 0 & 0 \\ 0 & -5 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 6 \end{pmatrix}$$

Toda matriz diagonal es triangular superior y triangular inferior.

• La identidad de orden n, que denotamos por  $I_n$ , es la matriz diagonal de orden n con todas las entradas situadas en la diagonal principal iguales a 1. Por ejemplo

$$I_1 = \begin{pmatrix} 1 \end{pmatrix}, \ I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}, \ I_3 = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}. \ I_4 = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix} \dots$$

• Una matriz nula es una matriz con todas sus entradas iguales a 0. Denotaremos por  $0_{m \times n}$  a la matriz nula de tamaño  $m \times n$  o, cuando no se produzca ambigüedad, simplemente 0. Por ejemplo.

$$0_{3\times3} = \begin{pmatrix} 0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}$$

Una matriz nula de orden n es un matriz diagonal con ceros en la diagonal principal.

• Una fila de una matriz es una fila nula si todas sus entradas son iguales a 0, y una columna es una columna nula si todas sus entradas iguales a 0. Sea

$$A = \begin{pmatrix} 3 & -1 & 0 & 4 \\ 0 & 0 & 0 & 0 \\ 1 & 4 & 0 & -3 \end{pmatrix}$$

la segunda fila de A es una fila nula y la tercera columna de A es una columna nula.

• Una submatriz de A es cualquier matriz que se obtenga a partir de A eliminando una o varias de sus filas y/o columnas. También se considera a A como una submatriz de A. Por ejemplo, si

$$A = \begin{pmatrix} 3 & -1 & 1 & 4 \\ 2 & 3 & 2 & -2 \\ 1 & 4 & 6 & -3 \\ 0 & 5 & 0 & 4 \end{pmatrix} \quad \mathbf{y} \quad B = \begin{pmatrix} 3 & -1 & 4 \\ 1 & 4 & -3 \end{pmatrix}$$

entonces B es una submatriz de A que se obtiene eliminando de A las filas 2 y 4 y la columna 3.

• Submatrices fila y columna de una matriz A. Denotaremos por  $F_i(A)$  a la matriz fila formada por las entradas de la fila i-ésima de A, y por  $C_j(A)$  a la matriz columna formada por las entradas de la columna j-ésima de A. Si A es una matriz de tamaño  $m \times n$  entonces

$$F_i(A) = (a_{i1} \dots a_{in})$$
 y  $C_j(A) = \begin{pmatrix} a_{1j} \\ \vdots \\ a_{mj} \end{pmatrix}$ 

Cuando se sobreentienda la matriz a la que nos estamos refiriendo, las matrices fila y columna se llamarán simplemente  $F_1, \ldots, F_m$  y  $C_1, \ldots, C_n$ . Por ejemplo, para

$$A = \begin{pmatrix} 3 & -1 & 1 & 4 \\ 2 & 3 & 2 & -2 \\ 1 & 4 & 6 & -3 \end{pmatrix}$$
 tenemos  $F_2 = \begin{pmatrix} 2 & 3 & 2 & -2 \end{pmatrix}$  y  $C_3 = \begin{pmatrix} 1 \\ 2 \\ 6 \end{pmatrix}$ 

# 1.1. Operaciones con matrices

El contenido de esta sección es esencial, aunque pueda resultar un poco árido, ya que en ella se presentan las operaciones elementales que se pueden realizar con matrices y se demuestran todas las propiedades fundamentales que debe cumplir dicha operativa.

### Suma de matrices y del producto por escalares

• La suma de dos matrices A y B del mismo tamaño es la matriz A + B cuya entrada (i, j) es

$$[A+B]_{ij} = a_{ij} + b_{ij}$$

Es decir,

$$A + B = \begin{pmatrix} a_{11} & \dots & a_{1n} \\ \vdots & \ddots & \vdots \\ a_{m1} & \dots & a_{mn} \end{pmatrix} + \begin{pmatrix} b_{11} & \dots & b_{1n} \\ \vdots & \ddots & \vdots \\ b_{m1} & \dots & b_{mn} \end{pmatrix} = \begin{pmatrix} a_{11} + b_{11} & \dots & a_{1n} + b_{1n} \\ \vdots & \ddots & \vdots \\ a_{m1} + b_{m1} & \dots & a_{mn} + b_{mn} \end{pmatrix}$$

Por ejemplo

$$\begin{pmatrix} 3 & -3 & 1 \\ 1 & 0 & 2 \end{pmatrix} + \begin{pmatrix} 0 & 4 & 1 \\ 1 & 5 & -1 \end{pmatrix} = \begin{pmatrix} 3 & 1 & 2 \\ 2 & 5 & 1 \end{pmatrix}$$

• El producto de un escalar  $\lambda$  por una matriz A es la matriz  $\lambda A$  cuya entrada (i,j) es

$$[\lambda A]_{ij} = \lambda a_{ij}$$

Es decir,

$$\lambda A = \lambda \begin{pmatrix} a_{11} & \dots & a_{1n} \\ \vdots & \ddots & \vdots \\ a_{m1} & \dots & a_{mn} \end{pmatrix} = \begin{pmatrix} \lambda a_{11} & \dots & \lambda a_{1n} \\ \vdots & \ddots & \vdots \\ \lambda a_{m1} & \dots & \lambda a_{mn} \end{pmatrix}$$

Por ejemplo

$$3 \cdot \begin{pmatrix} 3 & -2 \\ 1 & 0 \\ 2 & 1 \end{pmatrix} = \begin{pmatrix} 9 & -6 \\ 3 & 0 \\ 6 & 3 \end{pmatrix}$$

### Ejemplo 1.1

Calcule las matrices 3A, 2B, A + C y 3A + 2B siendo

$$A = \begin{pmatrix} 3 & -3 & 1 \\ 1 & 0 & 2 \\ 2 & 4 & 1 \\ 5 & -1 & 0 \end{pmatrix}, \quad B = \begin{pmatrix} 0 & 4 & 1 \\ 7 & 4 & 2 \\ 1 & 5 & -1 \\ 2 & 3 & 3 \end{pmatrix} \quad \text{y} \quad C = \begin{pmatrix} 2 & -1 & 2 \\ 1 & 0 & 2 \\ 1 & -1 & 0 \end{pmatrix}$$

**Solución:** La suma A+C no tiene sentido pues A y C tienen distinto tamaño. El resto de las operaciones sí tiene sentido:

$$3A = \begin{pmatrix} 9 & -9 & 3 \\ 3 & 0 & 6 \\ 6 & 12 & 3 \\ 15 & -3 & 0 \end{pmatrix}, \quad 2B = \begin{pmatrix} 0 & 8 & 2 \\ 14 & 8 & 4 \\ 2 & 10 & -2 \\ 4 & 6 & 6 \end{pmatrix}, \quad 3A + 2B = \begin{pmatrix} 9 & -1 & 5 \\ 17 & 8 & 10 \\ 8 & 22 & 1 \\ 19 & 3 & 6 \end{pmatrix} \quad \Box$$

#### Teorema 1.2

### Leyes de la suma de matrices y del producto por escalares

Sean  $A, B, C \in \mathfrak{M}_{m \times n}(\mathbb{K})$  y  $\alpha, \beta \in \mathbb{K}$ . La suma de matrices cumple las leves:

- 1. Asociativa: (A + B) + C = A + (B + C).
- 2. Conmutativa: A + B = B + A.
- 3. Existencia de elemento neutro:  $A + 0_{m \times n} = A = 0_{m \times n} + A$ .
- 4. Existencia de elemento opuesto:  $A + (-A) = 0_{m \times n} = (-A) + A$ .

Y, además, para el producto por escalares se cumplen las leyes:

- 5. Distributiva respecto de la suma de matrices:  $\alpha(A+B) = \alpha A + \alpha B$ .
- 6. Distributiva respecto de la suma de escalares:  $(\alpha + \beta)A = \alpha A + \beta A$ .
- 7. Asociativa respecto del producto por escalares:  $(\alpha\beta)A = \alpha(\beta A)$ .
- 8. La unidad del cuerpo,  $1 \in \mathbb{K}$ , cumple que 1 A = A.

**Demostración:** Probaremos, para cada una de las leyes, que la ley se cumple en todas las entradas. Para ello emplearemos las propiedades de la suma y del producto de elementos de  $\mathbb{K}$ .

1. Para demostrar la igualdad de las matrices (A + B) + C y A + (B + C) hay que demostrar que cada entrada (i, j) de (A + B) + C es igual a la entrada (i, j) de A + (B + C). Es decir,  $[(A + B) + C]_{ij} = [A + (B + C)]_{ij}$ . Veámoslo.

$$[(A+B)+C]_{ij} = [A+B]_{ij} + [C]_{ij} = (a_{ij}+b_{ij}) + c_{ij} = a_{ij} + (b_{ij}+c_{ij})$$
$$= [A]_{ij} + [B+C]_{ij} = [A+(B+C)]_{ij}$$

Nótese que en la tercera igualdad hemos aplicado la propiedad asociativa en  $\mathbb{K}$ .

Del mismo modo se demuestran el resto de propiedades.

2. 
$$[A+B]_{ij} = a_{ij} + b_{ij} = b_{ij} + a_{ij} = [B+A]_{ij}$$
.

3. 
$$[A + 0_{m \times n}]_{ij} = a_{ij} + 0 = a_{ij} = 0 + a_{ij} = [0_{m \times n} + A]_{ij}$$
.

4. 
$$[A + (-A)]_{ij} = a_{ij} + (-a_{ij}) = 0 = (-a_{ij}) + a_{ij} = [(-A) + A]_{ij}$$
.

5. 
$$[\alpha(A+B)]_{ij} = \alpha[A+B]_{ij} = \alpha(a_{ij}+b_{ij}) = \alpha a_{ij} + \alpha b_{ij} = [\alpha A]_{ij} + [\alpha B]_{ij} = [\alpha A + \alpha B]_{ij}$$

6. 
$$[(\alpha + \beta)A]_{ij} = (\alpha + \beta)a_{ij} = \alpha a_{ij} + \beta a_{ij} = [\alpha A]_{ij} + [\beta A]_{ij} = [\alpha A + \beta A]_{ij}$$
.

7. 
$$[(\alpha\beta)A]_{ij} = (\alpha\beta)a_{ij} = \alpha(\beta a_{ij}) = \alpha[\beta A]_{ij} = [\alpha(\beta A)]_{ij}$$
.

8. 
$$[1A]_{ij} = 1a_{ij} = a_{ij}$$
.

#### Producto de matrices

• El **producto de dos matrices** tiene sentido si el número de columnas de la primera es igual al número de filas de la segunda. Dadas las matrices

$$A = \begin{pmatrix} a_{11} & \dots & a_{1n} \\ \vdots & \ddots & \vdots \\ a_{m1} & \dots & a_{mn} \end{pmatrix} \quad \mathbf{y} \quad B = \begin{pmatrix} b_{11} & \dots & b_{1p} \\ \vdots & \ddots & \vdots \\ b_{n1} & \dots & b_{np} \end{pmatrix}$$

de tamaños  $m \times n$  y  $n \times p$  respectivamente, el producto AB es la matriz AB de tamaño  $m \times p$  cuya entrada (i,j) se obtiene multiplicando la fila i de A por la columna j de B según la regla

$$[AB]_{ij} = F_i(A) C_j(B) = \begin{pmatrix} a_{i1} & \cdots & a_{in} \end{pmatrix} \begin{pmatrix} b_{1j} \\ \vdots \\ b_{nj} \end{pmatrix} = a_{i1}b_{1j} + \dots + a_{in}b_{nj} = \sum_{k=1}^n a_{ik}b_{kj}$$

Ejemplo 1.3 Si 
$$A = \begin{pmatrix} 3 & -3 & 1 \\ 1 & 0 & 2 \\ 2 & 4 & 1 \\ 5 & -1 & 0 \end{pmatrix}$$
.  $B = \begin{pmatrix} -1 & 0 \\ 2 & 1 \\ 3 & 1 \end{pmatrix}$ .  $C = \begin{pmatrix} 0 & 4 & 1 \\ 7 & 4 & 2 \end{pmatrix}$  entonces

$$AB = \begin{pmatrix} 3 & -3 & 1 \\ 1 & 0 & 2 \\ 2 & 4 & 1 \\ 5 & -1 & 0 \end{pmatrix} \begin{pmatrix} -1 & 0 \\ 2 & 1 \\ 3 & 1 \end{pmatrix} = \begin{pmatrix} 3 \cdot (-1) + (-3) \cdot 2 + 1 \cdot 3 & 3 \cdot 0 + (-3) \cdot 1 + 1 \cdot 1 \\ 1 \cdot (-1) + 0 \cdot 2 + 2 \cdot 3 & 1 \cdot 0 + 0 \cdot 1 + 2 \cdot 1 \\ 2 \cdot (-1) + 4 \cdot 2 + 1 \cdot 3 & 2 \cdot 0 + 4 \cdot 1 + 1 \cdot 1 \\ 5 \cdot (-1) + (-1) \cdot 2 + 0 \cdot 3 & 5 \cdot 0 + (-1) \cdot 1 + 0 \cdot 1 \end{pmatrix} = \begin{pmatrix} -6 & -2 \\ 5 & 2 \\ 9 & 5 \\ -7 & -1 \end{pmatrix}$$

$$BC = \begin{pmatrix} -1 & 0 \\ 2 & 1 \\ 3 & 1 \end{pmatrix} \begin{pmatrix} 0 & 4 & 1 \\ 7 & 4 & 2 \end{pmatrix} = \begin{pmatrix} 0 & -4 & -1 \\ 7 & 12 & 4 \\ 7 & 16 & 5 \end{pmatrix}$$
$$CB = \begin{pmatrix} 0 & 4 & 1 \\ 7 & 4 & 2 \end{pmatrix} \begin{pmatrix} -1 & 0 \\ 2 & 1 \\ 3 & 1 \end{pmatrix} = \begin{pmatrix} 11 & 5 \\ 7 & 6 \end{pmatrix}$$

mientras que AC, BA y CA carecen de sentido.

#### Teorema 1.4

### Leyes del producto de matrices

Sean  $A \in \mathfrak{M}_{m \times n}(\mathbb{K})$ ,  $B, C \in \mathfrak{M}_{n \times p}(\mathbb{K})$ ,  $D \in \mathfrak{M}_{p \times q}(\mathbb{K})$  y  $\alpha \in \mathbb{K}$ . El producto cumple las leyes:

- 1. Asociativa: (AB)D = A(BD).
- 2. Existencia de elemento neutro por la derecha:  $AI_n = A$ .
- 3. Existencia de elemento neutro por la izquierda:  $I_m A = A$ .
- 4. Asociativa respecto del producto por escalares:  $\alpha(AB) = (\alpha A)B = A(\alpha B)$ .
- 5. Distributiva respecto de la suma de matrices por la derecha: A(B+C)=AB+AC.
- 6. Distributiva respecto de la suma de matrices por la izquierda: (B+C)D=BD+CD.

Demostración: Probaremos, para cada una de las leyes, que la ley se cumple en todas las entradas.

1. 
$$[(AB)D]_{ij} = \sum_{k=1}^{p} [AB]_{ik} d_{kj} = \sum_{k=1}^{p} (\sum_{h=1}^{n} a_{ih} b_{hk}) d_{kj} = \sum_{k=1}^{p} \sum_{h=1}^{n} a_{ih} b_{hk} d_{kj} = \sum_{h=1}^{n} \sum_{k=1}^{p} a_{ih} b_{hk} d_{kj}$$
  

$$= \sum_{h=1}^{n} a_{ih} (\sum_{k=1}^{p} b_{hk} d_{kj}) = \sum_{h=1}^{n} a_{ih} [BD]_{hj} = [A(BD)]_{ij}.$$

2. 
$$[AI_n]_{ij} = \sum_{k=1}^n a_{ik} [I_n]_{kj} = a_{ij}$$
 ya que  $[I_n]_{jj} = 1$  y  $[I_n]_{kj} = 0$  para  $k \neq j$ .

3. La demostración es análoga a la del apartado 2.

4. 
$$[\alpha(AB)]_{ij} = \alpha[AB]_{ij} = \alpha(\sum_{k=1}^{n} a_{ik}b_{kj}) = \sum_{k=1}^{n} \alpha a_{ik}b_{kj} = \sum_{k=1}^{n} [\alpha A]_{ik}b_{kj} = [(\alpha A)B]_{ij}.$$

La demostración de la igualdad  $[\alpha(AB)]_{ij} = [A(\alpha B)]_{ij}$  es análoga.

5. 
$$[A(B+C)]_{ij} = \sum_{k=1}^{n} a_{ik}[B+C]_{kj} = \sum_{k=1}^{n} a_{ik}(b_{kj}+c_{kj}) = \sum_{k=1}^{n} a_{ik}b_{kj} + \sum_{k=1}^{n} a_{ik}c_{kj} = [AB]_{ij} + [AC]_{ij}.$$

6. La demostración es análoga a la del apartado 5.  $\Box$ 

### Otras propiedades del producto de matrices

• Puede ocurrir que AB = 0 siendo A y B no nulas.

$$A = \begin{pmatrix} 3 & -1 \\ -6 & 2 \end{pmatrix}, B = \begin{pmatrix} 3 & -1 \\ 9 & -3 \end{pmatrix} \implies AB = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}$$

 $\bullet$  Veamos cómo es el producto AB cuando B es una matriz columna.

Si  $A \in \mathfrak{M}_{m \times n}(\mathbb{K})$  y  $B \in \mathfrak{M}_{n \times 1}(\mathbb{K})$  entonces  $AB \in \mathfrak{M}_{m \times 1}(\mathbb{K})$ . Aplicando que el producto es conmutativo en  $\mathbb{K}$  y las propiedades de la suma de matrices y del producto por escalares tenemos:

$$\begin{pmatrix} a_{11} & \dots & a_{1n} \\ \vdots & \ddots & \vdots \\ a_{m1} & \dots & a_{mn} \end{pmatrix} \begin{pmatrix} b_{11} \\ \vdots \\ b_{n1} \end{pmatrix} = b_{11} \begin{pmatrix} a_{11} \\ \vdots \\ a_{m1} \end{pmatrix} + \cdots + b_{n1} \begin{pmatrix} a_{1n} \\ \vdots \\ a_{mn} \end{pmatrix}$$

Es decir, podemos escribir AB como suma de múltiplos de las columnas de A. Por ejemplo

$$\begin{pmatrix} 2 & 1 & 1 \\ 2 & 0 & 1 \\ 2 & 2 & 1 \\ 3 & 1 & 1 \end{pmatrix} \begin{pmatrix} -2 \\ 4 \\ 3 \end{pmatrix} = -2 \begin{pmatrix} 2 \\ 2 \\ 2 \\ 3 \end{pmatrix} + 4 \begin{pmatrix} 1 \\ 0 \\ 2 \\ 1 \end{pmatrix} + 3 \begin{pmatrix} 1 \\ 1 \\ 1 \\ 1 \end{pmatrix} = \begin{pmatrix} 3 \\ -1 \\ 7 \\ 1 \end{pmatrix}$$

 $\bullet$  Veamos cómo es el producto CA cuando C es una matriz fila.

Si  $C \in \mathfrak{M}_{1 \times m}(\mathbb{K})$  y  $A \in \mathfrak{M}_{m \times n}(\mathbb{K})$  entonces  $CA \in \mathfrak{M}_{1 \times n}(\mathbb{K})$ . Aplicando que el producto es commutativo en  $\mathbb{K}$  y las propiedades de la suma de matrices y del producto por escalares tenemos:

$$(c_{11} \ldots c_{1m}) \begin{pmatrix} a_{11} \ldots a_{1n} \\ \vdots & \ddots & \vdots \\ a_{m1} \ldots & a_{mn} \end{pmatrix} = (c_{11}a_{11} + \cdots + c_{1m}a_{m1} \cdots c_{11}a_{1n} + \cdots + c_{1m}a_{mn})$$

$$= c_{11}(a_{11} \ldots a_{1n}) + \cdots + c_{1m}(a_{m1} \ldots a_{mn})$$

Es decir, podemos escribir CA como suma de múltiplos de las filas de A. Por ejemplo

$$\begin{pmatrix} 3 & 4 & -2 & 2 \end{pmatrix} \begin{pmatrix} 2 & 1 & 1 \\ 2 & 0 & 1 \\ 2 & 2 & 1 \\ 3 & 1 & 1 \end{pmatrix} = 3 \begin{pmatrix} 2 & 1 & 1 \end{pmatrix} + 4 \begin{pmatrix} 2 & 0 & 1 \end{pmatrix} - 2 \begin{pmatrix} 2 & 2 & 1 \end{pmatrix} + 2 \begin{pmatrix} 3 & 1 & 1 \end{pmatrix} = \begin{pmatrix} 16 & 1 & 7 \end{pmatrix}$$

- No se cumple la ley commutativa para el producto de matrices.
  - $\triangleright$  Puede darse que AB tenga sentido mientras que BA no lo tenga:

$$A = \begin{pmatrix} 3 & -1 & 1 \\ 1 & 0 & 2 \\ 2 & 1 & 1 \end{pmatrix}, B = \begin{pmatrix} 2 & 0 \\ -3 & 2 \\ 2 & 1 \end{pmatrix} \implies AB = \begin{pmatrix} 11 & -1 \\ 6 & 2 \\ 3 & 3 \end{pmatrix}$$

y BA no tiene sentido ya que el número de columnas de B es distinto del número de filas de A.

 $\triangleright$  AB y BA pueden tener ambos sentido y no coincidir sus tamaños:

$$A = \begin{pmatrix} 3 & -1 & 1 \end{pmatrix}, B = \begin{pmatrix} 0 \\ 2 \\ 1 \end{pmatrix} \implies AB = \begin{pmatrix} -1 \end{pmatrix}, BA = \begin{pmatrix} 0 & 0 & 0 \\ 6 & -2 & 2 \\ 3 & -1 & 1 \end{pmatrix}$$

 $\triangleright AB$  y BA pueden tener ambos sentido, tener igual tamaño y no coincidir:

$$A = \begin{pmatrix} 3 & -1 \\ 1 & 2 \end{pmatrix}, \ B = \begin{pmatrix} 0 & 1 \\ 2 & -3 \end{pmatrix} \quad \Longrightarrow \quad \begin{pmatrix} -2 & 6 \\ 4 & -5 \end{pmatrix} = AB \neq BA = \begin{pmatrix} 1 & 2 \\ 3 & -8 \end{pmatrix}$$

 $\triangleright$  La expresión  $A^2 = AA$  tiene sentido si y sólo si A es cuadrada. Luego la expresión  $(A+B)^2$  tiene sentido si y sólo si A+B es cuadrada, esto es, si y sólo si A y B son matrices cuadradas del mismo tamaño. De manera que si  $A, B \in \mathfrak{M}_n(\mathbb{K})$  entonces tenemos que

$$(A+B)^2 = (A+B)(A+B) = A^2 + AB + BA + B^2$$

y la fórmula del binomio de Newton se cumple únicamente cuando A y B conmutan, esto es,

$$(A+B)^2 = A^2 + 2AB + B^2 \quad \text{si y solo si} \quad AB = BA$$

• No se cumple la propiedad de cancelación, es decir AB = AC no implica B = C.

$$\begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix} \begin{pmatrix} 2 & 3 \\ 1 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix} \begin{pmatrix} 0 & 1 \\ 2 & 2 \end{pmatrix} \quad \text{y sin embargo} \quad \begin{pmatrix} 2 & 3 \\ 1 & 1 \end{pmatrix} \neq \begin{pmatrix} 0 & 1 \\ 2 & 2 \end{pmatrix}$$

#### Matrices por bloques

Dada una matriz A de tamaño  $m \times n$  podemos utilizar líneas verticales y horizontales para dividirla en submatrices que se denominan **bloques**.

Ejemplo 1.5

La matriz

$$A = \begin{pmatrix} 1 & -1 & | & 1 \\ 1 & 0 & | & 2 \\ \hline 1 & 1 & | & 2 \end{pmatrix}$$

está dividida en cuatro submatrices o bloques  $A_{11},\,A_{12},\,A_{21}$  y  $A_{22}$  tal como se indica

$$A = \begin{pmatrix} A_{11} & A_{12} \\ \hline A_{21} & A_{22} \end{pmatrix} \text{ con } A_{11} = \begin{pmatrix} 1 & -1 \\ 1 & 0 \end{pmatrix}, \ A_{12} = \begin{pmatrix} 1 \\ 2 \end{pmatrix}, \ A_{21} = \begin{pmatrix} 1 & 1 \end{pmatrix} \text{ y } A_{22} = \begin{pmatrix} 2 \end{pmatrix}$$

Damos otra división de A, ahora utilizando sólo una línea horizontal:

$$A = \begin{pmatrix} 1 & -1 & 1 \\ 1 & 0 & 2 \\ \hline 1 & 1 & 2 \end{pmatrix} = \begin{pmatrix} B \\ \hline C \end{pmatrix} \text{ con } B = \begin{pmatrix} 1 & -1 & 1 \\ 1 & 0 & 2 \end{pmatrix} \text{ y } C = \begin{pmatrix} 1 & 1 & 2 \end{pmatrix}$$

Un caso particular de matriz por bloques es cuando dividimos la matriz en sus submatrices fila o en sus submatrices columna:

$$A = \begin{pmatrix} \frac{F_1}{F_2} \\ \vdots \\ F_m \end{pmatrix}, \quad A = (C_1 | C_2 | \cdots | C_n)$$

Sean A y B dos matrices por bloques, tal y como se indica a continuación:

$$A = \begin{pmatrix} A_{11} & A_{12} & \dots & A_{1n} \\ A_{21} & A_{22} & \dots & A_{2n} \\ \vdots & \ddots & \vdots & \\ A_{m1} & A_{m2} & \dots & A_{mn} \end{pmatrix} \quad \mathbf{y} \quad B = \begin{pmatrix} B_{11} & B_{12} & \dots & B_{1q} \\ B_{21} & B_{22} & \dots & B_{2q} \\ \vdots & \ddots & \vdots & \\ B_{p1} & B_{p2} & \dots & B_{pq} \end{pmatrix}$$

Si n = p y los tamaños de los bloques cumplen que para todo  $i \in \{1, ..., m\}$ ,  $j \in \{1, ..., n\}$  y  $k \in \{1, ..., q\}$  el producto  $A_{ij}B_{jk}$  tiene sentido, esto es, el número de columnas de  $A_{ij}$  es igual al número de filas de  $B_{jk}$ ; entonces el producto AB es una matriz formada por mq bloques tal que el bloque de AB en la posición (i, j) se obtiene según la regla

$$(A_{i1} \quad \cdots \quad A_{in}) \begin{pmatrix} B_{1j} \\ \vdots \\ B_{nj} \end{pmatrix} = A_{i1}B_{1j} + \ldots + A_{in}B_{nj}$$

Una matriz cuadrada es diagonal por bloques si tiene una estructura de bloques

$$A = \begin{pmatrix} A_{11} & 0 & \dots & 0 \\ \hline 0 & A_{22} & \ddots & \vdots \\ \hline \vdots & \ddots & \ddots & 0 \\ \hline 0 & \dots & 0 & A_{np} \end{pmatrix} \text{ o de modo más esquemático } A = \begin{pmatrix} A_{11} & \dots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \dots & A_{pp} \end{pmatrix}$$

con  $A_{ii}$ ,  $i = 1, \ldots, p$  matrices cuadradas y el resto de bloques matrices nulas.

Si A y B son matrices diagonales por bloques de orden n y para  $i = 1, \ldots, p$  los bloques  $A_{ii}$  y  $B_{ii}$  son del mismo orden  $n_i$ , con  $n_1 + \cdots + n_p = n$ , entonces su cálculo se simplifica mucho

$$AB = \begin{pmatrix} A_{11} & \dots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \dots & A_{pp} \end{pmatrix} \begin{pmatrix} B_{11} & \dots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \dots & B_{pp} \end{pmatrix} = \begin{pmatrix} A_{11}B_{11} & \dots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \dots & A_{pp}B_{pp} \end{pmatrix}$$

#### Las potencias de una matriz cuadrada

La **potencia** k-ésima de una matriz A de orden n es el producto de A por sí misma k veces

$$A^k = A \stackrel{k}{\cdots} A$$
 para  $k \ge 1$  y por convenio  $A^0 = I_n$ 

Algunas matrices cuadradas tienen un comportamiento especial con respecto a la potencia. Así, por ejemplo, decimos que  $A \in \mathfrak{M}_n(\mathbb{K})$  es **idempotente** si  $A^2 = A$ , decimos que A es **nilpotente** si existe un entero k > 0 tal que  $A^k = 0$ , y decimos que A es **involutiva** si  $A^2 = I_n$ .

Ejemplo 1.6  $|_{S\epsilon}$ 

Sean las matrices

$$A = \begin{pmatrix} -3 & -4 & -8 \\ 1 & 2 & 2 \\ 1 & 1 & 3 \end{pmatrix}, \quad B = \begin{pmatrix} -3 & -4 & -7 \\ 1 & 0 & 1 \\ 1 & 2 & 3 \end{pmatrix} \quad \text{y} \quad C = \begin{pmatrix} 0 & 2 & 3 \\ -1 & -3 & -3 \\ 1 & 2 & 2 \end{pmatrix}$$

Podemos comprobar que  $A^2=A$  luego A es idempotente, que  $B^3=0$  luego B es nilpotente, y que  $C^2=I_3$  luego C es involutiva.  $\square$ 

Para las matrices diagonales es especialmente sencillo calcular sus potencias:

$$A = \operatorname{diag}(d_1, d_2, \dots, d_n) \Rightarrow A^k = \operatorname{diag}(d_1^k, d_2^k, \dots, d_n^k)$$

y lo mismo ocurre a las matrices diagonales por bloques

$$A = \begin{pmatrix} A_{11} & \cdots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \cdots & A_{pp} \end{pmatrix} \Rightarrow A^k = \begin{pmatrix} A_{11}^k & \cdots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \cdots & A_{pp}^k \end{pmatrix}$$

#### La fórmula del binomio de Newton

Si A y B son matrices de orden n, entonces podremos calcular las potencias de la matriz suma A + B utilizando la fórmula del binomio de Newton si las matrices A y B conmutan (ya se mencionó anteriormente en el caso  $(A + B)^2$ ). Es decir:

Si 
$$AB = BA$$
 entonces  $(A+B)^k = \sum_{i=0}^k \binom{k}{i} A^{k-i} B^i$ 

Esta fórmula cobra especial interés cuando una de las dos matrices A o B es nilpotente. Veamos un ejemplo en el que determinamos la potencia k-ésima de la matriz

$$C = \left(\begin{array}{ccc} 2 & 2 & 1\\ 0 & 2 & 2\\ 0 & 0 & 2 \end{array}\right)$$

Para ello descomponemos C como suma de dos matrices que conmuten, una de ellas nilpotente

$$C = \left( \begin{array}{ccc} 2 & 0 & 0 \ 0 & 2 & 0 \ 0 & 0 & 2 \end{array} \right) + \left( \begin{array}{ccc} 0 & 2 & 1 \ 0 & 0 & 2 \ 0 & 0 & 0 \end{array} \right) = 2I_3 + B$$

Comprobamos que B es nilpotente

$$B = \begin{pmatrix} 0 & 2 & 1 \\ 0 & 0 & 2 \\ 0 & 0 & 0 \end{pmatrix}, \ B^2 = \begin{pmatrix} 0 & 0 & 4 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}, \ B^3 = 0 \ \Rightarrow \ B^k = B^{k-3}B^3 = 0 \text{ si } k \ge 3.$$

Como las matrices  $2I_3$  y B conmutan se puede calcular la potencia k-ésima como sigue

$$C^{k} = (2I_{3} + B)^{k} = \sum_{i=0}^{k} {k \choose i} (2I_{3})^{k-i} B^{i}$$

Los únicos sumandos no nulos son aquéllos en los que aparecen  $B^0 = I_3$ , B o  $B^2$ . Es decir

$$C^{k} = \begin{pmatrix} k \\ 0 \end{pmatrix} (2I_{3})^{k} B^{0} + \begin{pmatrix} k \\ 1 \end{pmatrix} (2I_{3})^{k-1} B + \begin{pmatrix} k \\ 2 \end{pmatrix} (2I_{3})^{k-2} B^{2}$$

y operando y simplificando queda

$$C^k = 2^k I_3 + k \, 2^{k-1} \, I_3 B + \frac{k(k-1)}{2} \, 2^{k-2} \, I_3 B^2 = \left( \begin{array}{ccc} 2^k & k \, 2^k & k^2 \, 2^{k-1} \\ 0 & 2^k & k \, 2^k \\ 0 & 0 & 2^k \end{array} \right) \quad \text{para todo} \ \ k \geq 1.$$

### Propiedades de la traspuesta

#### Teorema 1.7

Si la suma o el producto de matrices tiene sentido en cada uno de los casos que enunciamos a continuación, entonces son ciertas las afirmaciones:

- 1.  $(A+B)^t = A^t + B^t$ .
- 2.  $(A_1 + \cdots + A_k)^t = A_1^t + \cdots + A_k^t$
- 3.  $(\alpha A)^t = \alpha A^t$  para todo  $\alpha \in \mathbb{K}$ .
- 4.  $(AB)^t = B^t A^t$ .
- 5.  $(A_1 \cdots A_k)^t = A_k^t \cdots A_1^t$ .

**Demostración:** Probaremos que las propiedades 1, 3 y 4 se cumplen en cada entrada, mientras que la propiedad 2 será consecuencia de la propiedad 1 y la propiedad 5 de la propiedad 4:

- 1.  $[(A+B)^t]_{ij} = [A+B]_{ii} = a_{ji} + b_{ji} = [A^t]_{ij} + [B^t]_{ij}$ .
- 2.  $(A_1 + \dots + A_k)^t = (A_1 + (A_2 + \dots + A_k))^t = A_1^t + (A_2 + \dots + A_k)^t = \dots = A_1^t + \dots + A_k^t$
- 3.  $[(\alpha A)^t]_{ij} = [\alpha A]_{ji} = \alpha a_{ji} = [\alpha A^t]_{ij}$ .
- 4. Si  $A \in \mathfrak{M}_{m \times n}$  y  $B \in \mathfrak{M}_{n \times p}$ ,  $[(AB)^t]_{ij} = [AB]_{ji} = \sum_{k=1}^n a_{jk} b_{ki} = \sum_{k=1}^n b_{ki} a_{jk} = [B^t A^t]_{ii}$ .
- 5.  $(A_1 \cdots A_k)^t = (A_1(A_2 \cdots A_k))^t = (A_2 \cdots A_k)^t A_1^t = \cdots = A_k^t \cdots A_1^t$ .  $\square$

#### Corolario 1.8

Si A es una matriz cuadrada entonces

- 1.  $A + A^t$  es simétrica y  $A A^t$  es antisimétrica.
- $2.\ A$  se puede escribir como la suma de una matriz simétrica y una antisimétrica.
- 3.  $AA^{t}$  es simétrica.

Demostración: El apartado 1 se demuestra aplicando la propiedad 1 del Teorema 1.7:

$$(A + A^{t})^{t} = A^{t} + (A^{t})^{t} = A^{t} + A = A + A^{t}$$
$$(A - A^{t})^{t} = A^{t} - (A^{t})^{t} = A^{t} - A = -(A - A^{t})$$

El apartado 2 se deduce del apartado 1, ya que  $A=\frac{A+A'}{2}+\frac{A-A'}{2}.$ 

Y el apartado 3 se deduce de la propiedad 4 del Teorema 1.7, ya que  $(AA^t)^t = (A^t)^t A^t = AA^t$ 

Un ejemplo ilustra cómo escribimos una matriz como suma de una matriz simétrica y de una antisimétrica. Dada

$$A = \left(\begin{array}{rrr} -3 & -4 & -8 \\ 1 & 2 & 2 \\ 1 & 1 & 3 \end{array}\right)$$

podemos comprobar que A = B + C con

$$B = \frac{A+A^t}{2} = \frac{1}{2} \begin{bmatrix} \begin{pmatrix} -3 & -4 & -8 \\ 1 & 2 & 2 \\ 1 & 1 & 3 \end{pmatrix} + \begin{pmatrix} -3 & 1 & 1 \\ -4 & 2 & 1 \\ -8 & 2 & 3 \end{pmatrix} \end{bmatrix} = \begin{pmatrix} -3 & -\frac{3}{2} & -\frac{7}{2} \\ -\frac{3}{2} & 2 & \frac{3}{2} \\ -\frac{7}{2} & \frac{3}{2} & 3 \end{pmatrix}$$
$$C = \frac{A-A^t}{2} = \frac{1}{2} \begin{bmatrix} \begin{pmatrix} -3 & -4 & -8 \\ 1 & 2 & 2 \\ 1 & 1 & 3 \end{pmatrix} - \begin{pmatrix} -3 & 1 & 1 \\ -4 & 2 & 1 \\ -8 & 2 & 3 \end{pmatrix} \end{bmatrix} = \begin{pmatrix} 0 & -\frac{5}{2} & -\frac{9}{2} \\ \frac{5}{2} & 0 & \frac{1}{2} \\ \frac{9}{2} & -\frac{1}{2} & 0 \end{pmatrix}$$

#### Propiedades de la traza

#### Teorema 1.9

Si la suma o el producto de matrices tiene sentido en cada uno de los casos que enunciamos a continuación, entonces son ciertas las afirmaciones:

- 1. tr(A + B) = tr(A) + tr(B).
- 2.  $tr(\lambda A) = \lambda tr(A)$ .
- 3.  $\operatorname{tr}(A) = \operatorname{tr}(A^t)$ .
- 4.  $\operatorname{tr}(AB) = \operatorname{tr}(BA)$ .

**Demostración:** En las tres primeras propiedades suponemos que A y B son matrices de orden n.

- 1.  $\operatorname{tr}(A+B) = \sum_{i=1}^{n} [A+B]_{ii} = \sum_{i=1}^{n} [A]_{ii} + \sum_{i=1}^{n} [B]_{ii} = \operatorname{tr}(A) + \operatorname{tr}(B)$ .
- 2.  $\operatorname{tr}(\lambda A) = \sum_{i=1}^{n} [\lambda A]_{ii} = \lambda \sum_{i=1}^{n} [A]_{ii} = \lambda \operatorname{tr}(A)$ .
- 3. Es evidente pues A y  $A^t$  tienen los mismos elementos en la digonal principal.
- 4. Para que los productos AB y BA tengan ambos sentido necesariamente serán  $A \in \mathfrak{M}_{n \times m}(\mathbb{K})$  y  $B \in \mathfrak{M}_{m \times n}(\mathbb{K})$ , siendo AB una matriz de orden n y BA de orden m. En tal caso

$$\operatorname{tr}(AB) = \sum_{i=1}^{n} [AB]_{ii} = \sum_{i=1}^{n} \sum_{j=1}^{m} a_{ij} b_{ji} = \sum_{i=1}^{m} \sum_{j=1}^{n} b_{ji} a_{ij} = \sum_{j=1}^{m} [BA]_{jj} = \operatorname{tr}(BA) \qquad \Box$$

## 1.2. Método de Gauss

En esta sección describiremos un proceso de transformación de una matriz mediante la realización de transformaciones en sus filas denominadas operaciones elementales. Con este procedimiento convertiremos la matriz original en una matriz escalonada en la que determinaremos propiedades de la matriz original más fácilmente. La propiedad fundamental que queremos estudiar es la dependencia o independencia lineal de sus filas. La manipulación de matrices por medio de operaciones elementales de filas es de vital importancia en el Álgebra Lineal, por eso es imprescindible su correcto aprendizaje así como su utilización sistemática y fluida. El proceso es conocido como **método de Gauss**<sup>2</sup> y se utilizará en secciones y capítulos posteriores para:

- Calcular el determinante y rango de una matriz de forma eficiente.
- Resolver sistemas lineales.
- Determinar la dependencia e independencia lineal de un conjunto de vectores.
- Determinar unas ecuaciones implícitas de un subespacio vectorial.

#### Combinación lineal de filas de una matriz

#### Definición 1.10

Sean  $F_1, \ldots, F_k \in \mathfrak{M}_{1 \times n}(\mathbb{K})$  matrices filas. La matriz fila

$$F = \alpha_1 F_1 + \dots + \alpha_k F_k \quad \text{con } \alpha_1, \dots, \alpha_k \in \mathbb{K}$$

es una combinación lineal de  $F_1, \ldots, F_k$  con coeficientes  $\alpha_1, \ldots, \alpha_k$ .

Las matrices fila  $F_1, \ldots, F_k$  son **dependientes** (o linealmente dependientes) si alguna de ellas es combinación lineal de las demás. En caso contrario se dice que  $F_1, \ldots, F_k$  son **independientes** (o linealmente independientes).

Cada fila de  $A \in \mathfrak{M}_{m \times n}(\mathbb{K})$  es una matriz fila de tamaño  $1 \times n$ . De las propiedades de la suma de matrices y del producto por escalares se deduce que una combinación lineal de filas de A es un matriz fila de tamaño  $1 \times n$ .

Ejemplo 1.11 | En la

En la matriz

$$A = \begin{pmatrix} 0 & 0 & 1 & 3 \\ 3 & 6 & 1 & 2 \\ 1 & 2 & 0 & 1 \\ 0 & 0 & 3 & 5 \end{pmatrix} \xrightarrow{\rightarrow F_1} F_2$$

$$2F_1 = \begin{pmatrix} 0 & 0 & 2 & 6 & \end{pmatrix}$$

$$F_2 = \begin{pmatrix} 3 & 6 & 1 & 2 & \end{pmatrix}$$

$$-3F_3 = \begin{pmatrix} -3 & -6 & 0 & -3 & \end{pmatrix}$$

$$2F_1 + F_2 - 3F_3 = \begin{pmatrix} 0 & 0 & 3 & 5 & \end{pmatrix} = F_4$$

Las filas de A son dependientes pues, como se ve,  $F_4$  es combinación lineal de  $F_1$ ,  $F_2$  y  $F_3$ .  $\square$ 

<sup>&</sup>lt;sup>2</sup>Johann Carl Friedrich Gauss (Brunswick, 1777 - Gotinga, 1855).