# **Capítulo 1: Matrices**

Las matrices son uno de los objetos matemáticos más destacados en el estudio del Álgebra Lineal, tanto por sus propiedades como por su versatilidad. En los siguientes capítulos veremos que las matrices se utiliimn para representar y manipular de forma cómoda otros objetos propios del Álgebra Lineal como sistemas lineales, conjuntos de vectores, aplicaciones lineales ... de manera que se pueden deducir propiedades de éstos a partir del estudio matricial. Además. las matrices se pueden manipular e implementar de forma muy natural en los ordenadores, lo que permite resolver con ellas muchos problemas de índole algorítmico y computacional. En este capítulo presentaremos formalmente las matrices y estudiaremos sus propiedades más importantes.

- Una **matriz** $A$ de tamaño o de orden $m \times n$ es un conjunto de $m · n$ escalares o elementos de un cuerpo $\mathbb{K}$ [^1] que están ordenados en $m$ filas y $n$ columnas de la forma 

$$
A = \begin{pmatrix} a_{11} & a_{12} & \cdots & a_{1n} \\ a_{21} & a_{22} & \cdots & a_{2n} \\ \vdots & \vdots & \ddots & \vdots \\ a_{m1} & a_{m2} & \cdots & a_{mn} \end{pmatrix}
$$

La **entrada** _(i, j)_ es el elemento de A que se encuentra en la **fila** _i_ y en la **columna** _j_, y lo denotamos por $a_{ij}$ o $[A]_{ij}$ . Podemos ver una matriz como una tabla que recoge información que depende de dos índices. Una matriz se puede escribir de forma abreviada como $A = (a_{ij})$ con i = 1, ... ,m y j = 1,...,n 0. cuando se sobreentienda su tamaño, simplemente $A = (a_{ij})$. La matriz

$$
\begin{pmatrix}1 & -1 & 1 & 5 \\
2 & 3 & 7 & -2 \\
1 & 4 & -1 & -3\end{pmatrix}
$$

tiene 3 filas y 4 columnas. y su entrada (2, 3) es $a_{23} = 7$.


- $\mathfrak{M}_{m \times n}(\mathbb{K})$ es el conjunto de las matrices de tamaño $m \times n$ cuyas entradas son elementos de $\mathbb{K}$. Una matriz fila es una matriz de $\mathfrak{M}_{1 \times n}(\mathbb{K})$ y una matriz columna es una matriz de $\mathfrak{M}_{m \times 1}(\mathbb{K})$. Por ejemplo

$$
(3 \quad -1 \quad 1 \quad 4) \longrightarrow \text{ matrix file, } \begin{pmatrix} 2 \\ 1 \\ 7 \end{pmatrix} \longrightarrow \text{ matrix columna}
$$

Una matriz de $\mathfrak{M}_{m \times n}(\mathbb{K})$ está formada por $m$ matrices filas o por $n$ matrices columnas.

- Una matriz cuadrada es una matriz con igual número de filas que de columnas. Una matriz cuadrada que tiene $n$ filas y $n$ columnas es una matriz de orden $n$. Al conjunto $\mathfrak{M}_{n \times n}(\mathbb{K})$ lo denotamos de forma abreviada por $\mathfrak{M}_n(\mathbb{K})$. Por ejemplo

$$
A = \begin{pmatrix} 3 & -1+i & 4i \\ 2i & 0 & -2 \\ 1 & 6 & -3+i \end{pmatrix} \in \mathfrak{M}_3(\mathbb{C})
$$

Una matriz de orden $n$ se escribe de forma compacta como $A = (a_{ij})^n_{i,j=1}$

- Sea A una matriz de orden $n$. 
	- La diagonal o diagonal principal de $A$ está formada por las entradas $(a_{11},a_{22}.....a_{nn})$.
	- La traza de A es la suma de los elementos de su diagonal, esto es,

$$
tr(A) = \sum_{i=1}^{n} a_{ii} = a_{11} + a_{22} + \dots + a_{nn}
$$

	- La subdiagonal de A está formada por las entradas $(a_{21},a_{32}.....a_{n,n-1})$.
	- La superdiagonal de A está formada por las entradas $(a_{12},a_{23}.....a_{n-1,n})$.

La matriz

$$
A = \begin{pmatrix} 3 & -1 & 4 \\ 5 & 2 & -2 \\ 1 & 6 & -7 \end{pmatrix}
$$

tiene diagonal (3, 2, - 7), subdiagonal (5, 6). superdiagonal (-1, -2) y $tr( A) = 3 + 2 - 7 = -2$.

- La matriz traspuesta de la matriz $A \in \mathfrak{M}_{n \times m}(\mathbb{K})$ es la matriz $A^{t}\in \mathfrak{M}_{m \times n}(\mathbb{K})$ cuya entrada $(i.j)$ es igual a la entrada $(j,i)$ de $A$. Es decir. $|A|_{ij} = |A^{t}|_{ji}$. Por ejemplo.
$$
A =
\begin{pmatrix}
3 & -3 & 1 \\
\boxed{1} & \boxed{0} & \boxed{2} \\
2 & 4 & 1 \\
5 & -1 & 0
\end{pmatrix}
\;\Longrightarrow\;
A^t =
\begin{pmatrix}
3 & \boxed{1} & 2 & 5 \\
-3 & \boxed{0} & 4 & -1 \\
1 & \boxed{2} & 1 & 0
\end{pmatrix}
$$
La fila $i$ de $A$ se convierte en la columna $i$ de $A^t$ y la columna $j$ de $A$ se convierte en la fila $j$ de $A^t$.  El tamaño de $A$ coincide con el tamaño de $A^t$ si y sólo si $m = n.$ En particular $(A^t)^t = A$. 

- Una **matriz simétrica** es una matriz cuadrada que coincide con su traspuesta. Esto es, $A \in \mathfrak{M}_{n}(\mathbb{K})$ es una matriz simétrica si $A^{t}=A$. Un ejemplo de matriz simétrica es

$$
\left(\begin{array}{ccc}1 & -2 & 5 \\
-2 & 4 & 7 \\
5 & 7 & 0\end{array}\right)
$$

Una **matriz antisimétrica** es una matriz cuadrada que coincide con su matriz traspuesta cambiada de signo. Esto es, $A \in \mathfrak{M}_{n}(\mathbb{K})$ es una matriz antisimétrica si $A^{t}=-A$. Por ejemplo,

$$
\left(\begin{array}{ccc} 0 & -2 & 5 \\ 2 & 0 & 7 \\ -5 & -7 & 0 \end{array}\right)
$$

es una matriz antisimétrica. Observamos que las entradas situadas en la diagonal principal son iguales a 0. Esta propiedad es válida para cualquier matriz antisimétrica, ¿por qué?

- La **matriz traspuesta conjugada** de la matriz $A \in \mathfrak{M}_{n \times m}(\mathbb{C})$ es la matriz $A^{*} \in \mathfrak{M}_{m \times n}(\mathbb{C})$) cuya entrada $(i, j)$ es el número complejo conjugado de la entrada $(j, i)$ de A, esto es, $a^{*}_{i,j} = \overline{a_{j,i}}$ (recordamos que $\overline{a+ib}=a-bi$). Por ejemplo,

$$
A = \begin{pmatrix} i & -3-i & 1 & 2 \\ 2 & 4+i & 4 & 3 \\ 5i & -1 & 7 & -1+i \end{pmatrix} \implies A^* = \begin{pmatrix} -i & 2 & -5i \\ -3+i & 4-i & -1 \\ 1 & 4 & 7 \\ 2 & 3 & -1-i \end{pmatrix}
$$

Los tamaños de $A \in \mathfrak{M}_{m \times n}(\mathbb{C})$ y $A^{*} \in \mathfrak{M}_{n \times m}(\mathbb{C})$ coinciden si y sólo si $m=n$.

- Una **matriz hermítica** es una matriz cuadrada que coincide con su matriz traspuesta conjugada. Esto es, $A \in \mathfrak{M}_{n}(\mathbb{C})$  es una matriz hermítica si $A^{*}=A$. Por ejemplo, la siguiente matriz es hermítica:

$$
\left(\begin{array}{ccc}3 & -3+i & i\\-3-i & 4 & 1\\-i & 1 & 0\end{array}\right)
$$

Observamos que los elementos de la diagonal principal son reales. Esta propiedad es válida para cualquier matriz hermítica, ¿por qué?

- Una **matriz triangular superior** es una matriz de orden $n$ con todas las entrada situadas por debajo de su diagonal principal iguales a 0. Y una **matriz triangular inferior** es una matriz de orden $n$ con todas las entradas situadas por encima de su diagonal principal iguales a 0. Sean

$$
A = \begin{pmatrix} 4 & 7 - 3i & i \\ 0 & 1 + i & -2 \\ 0 & 0 & 5 \end{pmatrix} \quad \text{y} \quad B = \begin{pmatrix} 4 & 0 & 0 \\ 3 & 5 & 0 \\ 1 & 2 & 9 \end{pmatrix},
$$

la matriz $A \in \mathfrak{M}_{n}(\mathbb{C})$ es triangular superior y la matriz $B \in \mathfrak{M}_{n}(\mathbb{R})$ es triangular inferior.

- Una **matriz diagonal** es una matriz de orden $n$ tal que toda entrada de $A$ situada fuera de su diagonal principal es igual a 0. Denotaremos por $diag(d_{1}....d_{n})$ a la matriz diagonal de orden $n$ tal que las entradas situadas en su diagonal principal son $d_{1}....d_{n}$. Por ejemplo


$$
diag(2, -5, 1, 6) = \begin{pmatrix} 2 & 0 & 0 & 0 \\ 0 & -5 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 6 \end{pmatrix}
$$

Toda matriz diagonal es triangular superior y triangular inferior.



- La **identidad** de orden $n$ que denotamos por $I_n$, es la matriz diagonal de orden $n$ con todas las entradas situadas en la diagonal principal iguales a 1. Por ejemplo

$$
I_1 = \begin{pmatrix} 1\end{pmatrix},\ I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix},\ I_3 = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix},\ I_4 = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}, \dots
$$

- Una **matriz nula** es una matriz con todas sus entradas iguales a 0. Denotaremos por $0_{m\times n}$ a la matriz nula de tamaño ${m \times n}$ o, cuando no se produzca ambigüedad. simplemente 0. Por ejemplo.

$$
0_{3\times3} = \begin{pmatrix} 0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}
$$
Una matriz nula de orden $n$ es un matriz diagonal con ceros en la diagonal principal.

- Una fila de una matriz es una **fila nula** si todas sus entradas son iguales a 0, y una columna es una **columna nula** si todas sus entradas iguales a 0. Sea

$$
A = \begin{pmatrix} 3 & -1 & 0 & 4 \\ 0 & 0 & 0 & 0 \\ 1 & 4 & 0 & -3 \end{pmatrix}
$$

la segunda fila de A es una fila nula y la tercera columna de A es una columna nula.

- Una **submatriz** de $A$ es cualquier matriz que se obtenga a partir de $A$ eliminando una o varias de sus filas y o columnas. También se considera a A como una submatriz de A. Por ejemplo. si

$$
A = \begin{pmatrix} 3 & -1 & 1 & 4 \\ 2 & 3 & 2 & -2 \\ 1 & 4 & 6 & -3 \\ 0 & 5 & 0 & 4 \end{pmatrix} \quad \text{y} \quad B = \begin{pmatrix} 3 & -1 & 4 \\ 1 & 4 & -3 \end{pmatrix}
$$

entonces *B* es una subrnatriz de $A$ que se obtiene eliminando de $A$ las filas 2 y 4 y la columna 3.

- **Submatrices fila y columna** de una matriz $A$. Denotaremos por $F_{i} (A)$ a la matriz fila formada por las entradas de la fila i-ésima de $A$. y por $C_{j}(A)$ a la matriz columna formada por las entradas de la columna j-ésima de *A.* Si $A$ es una matriz de tamaño $m \times n$ entonces

$$
F_i(A) = (a_{i1} \dots a_{in}) \quad \text{y} \quad C_j(A) = \begin{pmatrix} a_{1j} \\ \vdots \\ a_{mj} \end{pmatrix}
$$

Cuando se sobreentienda la matriz a la que nos estamos refiriendo, las matrices fila y columna se llamarán simplemente $F_{1} , ... , F_{m}$ $ , y $C_{1}, ... C_{n}$. Por ejemplo, para

$$
A = \begin{pmatrix} 3 & -1 & 1 & 4 \\ 2 & 3 & 2 & -2 \\ 1 & 4 & 6 & -3 \end{pmatrix} \; \mathrm{tenemos} \;  F_2 = \begin{pmatrix} 2 & 3 & 2 & -2 \end{pmatrix} \; \mathrm{y} \; C_3 = \begin{pmatrix} 1 \\ 2 \\ 6 \end{pmatrix} 
$$

## 1.1. Operaciones con matrices

El contenido de esta sección es esencial, aunque pueda resultar un poco árido, ya que en ella se presentan las operaciones elementales que se pueden realizar con matrices y se demuestran todas las propiedades fundamentales que debe cumplir dicha operativa.

### Suma de matrices y del producto por escalares

• La suma de dos matrices A y B del mismo tamaño es la matriz A+B cuya entrada (i,j) es

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

#### Ejemplo 1.1

Calcule las matrices 3A, 2B, A + C y 3A + 2B siendo

$$A = \begin{pmatrix} 3 & -3 & 1 \\ 1 & 0 & 2 \\ 2 & 4 & 1 \\ 5 & -1 & 0 \end{pmatrix}, \quad B = \begin{pmatrix} 0 & 4 & 1 \\ 7 & 4 & 2 \\ 1 & 5 & -1 \\ 2 & 3 & 3 \end{pmatrix} \quad \text{y} \quad C = \begin{pmatrix} 2 & -1 & 2 \\ 1 & 0 & 2 \\ 1 & -1 & 0 \end{pmatrix}$$

**Solución:** La suma A+C no tiene sentido pues A y C tienen distinto tamaño. El resto de las operaciones sí tiene sentido:

$$3A = \begin{pmatrix} 9 & -9 & 3 \\ 3 & 0 & 6 \\ 6 & 12 & 3 \\ 15 & -3 & 0 \end{pmatrix}, \quad 2B = \begin{pmatrix} 0 & 8 & 2 \\ 14 & 8 & 4 \\ 2 & 10 & -2 \\ 4 & 6 & 6 \end{pmatrix}, \quad 3A + 2B = \begin{pmatrix} 9 & -1 & 5 \\ 17 & 8 & 10 \\ 8 & 22 & 1 \\ 19 & 3 & 6 \end{pmatrix} \quad \Box$$

#### Teorema 1.2

**Leyes de la suma de matrices y del producto por escalares**

Sean  $A, B, C \in \mathfrak{M}_{m \times n}(\mathbb{K})$  y  $\alpha, \beta \in \mathbb{K}$ . La suma de matrices cumple las leves:

1. Asociativa: (A + B) + C = A + (B + C).
2. Conmutativa: A + B = B + A.
3. Existencia de elemento neutro:  $A + 0_{m \times n} = A = 0_{m \times n} + A$ .
4. Existencia de elemento opuesto:  $A + (-A) = 0_{m \times n} = (-A) + A$ .

Y, además, para el producto por escalares se cumplen las leyes:

5. Distributiva respecto de la suma de matrices:  $\alpha(A+B) = \alpha A + \alpha B$ .
6. Distributiva respecto de la suma de escalares:  $(\alpha + \beta)A = \alpha A + \beta A$ .
7. Asociativa respecto del producto por escalares:  $(\alpha\beta)A = \alpha(\beta A)$ .
8. La unidad del cuerpo,  $1 \in \mathbb{K}$ , cumple que 1 A = A.

**Demostración:** Probaremos, para cada una de las leyes, que la ley se cumple en todas las entradas. Para ello emplearemos las propiedades de la suma y del producto de elementos de  $\mathbb{K}$ .

1. Para demostrar la igualdad de las matrices (A + B) + C y A + (B + C) hay que demostrar que cada entrada (i, j) de (A + B) + C es igual a la entrada (i, j) de A + (B + C). Es decir,  $[(A + B) + C]_{ij} = [A + (B + C)]_{ij}$ . Veámoslo.

$$[(A+B)+C]_{ij} = [A+B]_{ij} + [C]_{ij} = (a_{ij}+b_{ij}) + c_{ij} = a_{ij} + (b_{ij}+c_{ij})$$
$$= [A]_{ij} + [B+C]_{ij} = [A+(B+C)]_{ij}$$

Nótese que en la tercera igualdad hemos aplicado la propiedad asociativa en K.

Del mismo modo se demuestran el resto de propiedades.

2. 
$$[A+B]_{ij} = a_{ij} + b_{ij} = b_{ij} + a_{ij} = [B+A]_{ij}$$
3. 
$$[A + 0_{m \times n}]_{ij} = a_{ij} + 0 = a_{ij} = 0 + a_{ij} = [0_{m \times n} + A]_{ij}$$

4. 
$$[A + (-A)]_{ij} = a_{ij} + (-a_{ij}) = 0 = (-a_{ij}) + a_{ij} = [(-A) + A]_{ij}$$
5. 
$$[\alpha(A+B)]_{ij} = \alpha[A+B]_{ij} = \alpha(a_{ij}+b_{ij}) = \alpha a_{ij} + \alpha b_{ij} = [\alpha A]_{ij} + [\alpha B]_{ij} = [\alpha A + \alpha B]_{ij}$$
6. 
$$[(\alpha + \beta)A]_{ij} = (\alpha + \beta)a_{ij} = \alpha a_{ij} + \beta a_{ij} = [\alpha A]_{ij} + [\beta A]_{ij} = [\alpha A + \beta A]_{ij}$$
7. 
$$[(\alpha\beta)A]_{ij} = (\alpha\beta)a_{ij} = \alpha(\beta a_{ij}) = \alpha[\beta A]_{ij} = [\alpha(\beta A)]_{ij}$$
8. 
$$[1A]_{ii} = 1a_{ii} = a_{ii}$$
### Producto de matrices

• El **producto de dos matrices** tiene sentido si el número de columnas de la primera es igual al número de filas de la segunda. Dadas las matrices

$$A = \begin{pmatrix} a_{11} & \dots & a_{1n} \\ \vdots & \ddots & \vdots \\ a_{m1} & \dots & a_{mn} \end{pmatrix} \quad \mathbf{y} \quad B = \begin{pmatrix} b_{11} & \dots & b_{1p} \\ \vdots & \ddots & \vdots \\ b_{n1} & \dots & b_{np} \end{pmatrix}$$

de tamaños  $m \times n$  y  $n \times p$  respectivamente, el producto AB es la matriz AB de tamaño  $m \times p$  cuya entrada (i, j) se obtiene multiplicando la fila i de A por la columna j de B según la regla

$$[AB]_{ij} = F_i(A) C_j(B) = \begin{pmatrix} a_{i1} & \cdots & a_{in} \end{pmatrix} \begin{pmatrix} b_{1j} \\ \vdots \\ b_{nj} \end{pmatrix} = a_{i1}b_{1j} + \dots + a_{in}b_{nj} = \sum_{k=1}^n a_{ik}b_{kj}$$

#### Ejemplo 1.3 
Si 
$$A = \begin{pmatrix} 3 & -3 & 1 \\ 1 & 0 & 2 \\ 2 & 4 & 1 \\ 5 & -1 & 0 \end{pmatrix}
.  B = \begin{pmatrix} -1 & 0 \\ 2 & 1 \\ 3 & 1 \end{pmatrix} .  C = \begin{pmatrix} 0 & 4 & 1 \\ 7 & 4 & 2 \end{pmatrix}  

$$
entonces
$$
AB = \begin{pmatrix} 3 & -3 & 1 \\ 1 & 0 & 2 \\ 2 & 4 & 1 \\ 5 & -1 & 0 \end{pmatrix} \begin{pmatrix} -1 & 0 \\ 2 & 1 \\ 3 & 1 \end{pmatrix} = \begin{pmatrix} 3 \cdot (-1) + (-3) \cdot 2 + 1 \cdot 3 & 3 \cdot 0 + (-3) \cdot 1 + 1 \cdot 1 \\ 1 \cdot (-1) + 0 \cdot 2 + 2 \cdot 3 & 1 \cdot 0 + 0 \cdot 1 + 2 \cdot 1 \\ 2 \cdot (-1) + 4 \cdot 2 + 1 \cdot 3 & 2 \cdot 0 + 4 \cdot 1 + 1 \cdot 1 \\ 5 \cdot (-1) + (-1) \cdot 2 + 0 \cdot 3 & 5 \cdot 0 + (-1) \cdot 1 + 0 \cdot 1 \end{pmatrix} = \begin{pmatrix} -6 & -2 \\ 5 & 2 \\ 9 & 5 \\ -7 & -1 \end{pmatrix}$$

$$BC = \begin{pmatrix} -1 & 0 \\ 2 & 1 \\ 3 & 1 \end{pmatrix} \begin{pmatrix} 0 & 4 & 1 \\ 7 & 4 & 2 \end{pmatrix} = \begin{pmatrix} 0 & -4 & -1 \\ 7 & 12 & 4 \\ 7 & 16 & 5 \end{pmatrix}$$
$$CB = \begin{pmatrix} 0 & 4 & 1 \\ 7 & 4 & 2 \end{pmatrix} \begin{pmatrix} -1 & 0 \\ 2 & 1 \\ 3 & 1 \end{pmatrix} = \begin{pmatrix} 11 & 5 \\ 7 & 6 \end{pmatrix}$$

mientras que AC, BA y CA carecen de sentido.  $\square$ 

#### Teorema 1.4

**Leyes del producto de matrices**

Sean  $A \in \mathfrak{M}_{m \times n}(\mathbb{K})$ ,  $B, C \in \mathfrak{M}_{n \times p}(\mathbb{K})$ ,  $D \in \mathfrak{M}_{p \times q}(\mathbb{K})$  y  $\alpha \in \mathbb{K}$ . El producto cumple las leyes:

- 1. Asociativa: (AB)D = A(BD).
- 2. Existencia de elemento neutro por la derecha:  $AI_n = A$ .
- 3. Existencia de elemento neutro por la izquierda:  $I_m A = A$ .
- 4. Asociativa respecto del producto por escalares:  $\alpha(AB) = (\alpha A)B = A(\alpha B)$ .
- 5. Distributiva respecto de la suma de matrices por la derecha: A(B+C) = AB + AC.
- 6. Distributiva respecto de la suma de matrices por la izquierda: (B+C)D = BD + CD.

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

6. La demostración es análoga a la del apartado 5.

### Otras propiedades del producto de matrices

• Puede ocurrir que AB = 0 siendo  $A \vee B$  no nulas.

$$A = \begin{pmatrix} 3 & -1 \\ -6 & 2 \end{pmatrix}, B = \begin{pmatrix} 3 & -1 \\ 9 & -3 \end{pmatrix} \implies AB = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}$$

 $\bullet$  Veamos cómo es el producto AB cuando B es una matriz columna.

Si  $A \in \mathfrak{M}_{m \times n}(\mathbb{K})$  y  $B \in \mathfrak{M}_{n \times 1}(\mathbb{K})$  entonces  $AB \in \mathfrak{M}_{m \times 1}(\mathbb{K})$ . Aplicando que el producto es conmutativo en  $\mathbb{K}$  y las propiedades de la suma de matrices y del producto por escalares tenemos:

$$\begin{pmatrix} a_{11} & \dots & a_{1n} \\ \vdots & \ddots & \vdots \\ a_{m1} & \dots & a_{mn} \end{pmatrix} \begin{pmatrix} b_{11} \\ \vdots \\ b_{n1} \end{pmatrix} = b_{11} \begin{pmatrix} a_{11} \\ \vdots \\ a_{m1} \end{pmatrix} + \cdots + b_{n1} \begin{pmatrix} a_{1n} \\ \vdots \\ a_{mn} \end{pmatrix}$$

Es decir, podemos escribir AB como suma de múltiplos de las columnas de A. Por ejemplo

$$\begin{pmatrix} 2 & 1 & 1 \\ 2 & 0 & 1 \\ 2 & 2 & 1 \\ 3 & 1 & 1 \end{pmatrix} \begin{pmatrix} -2 \\ 4 \\ 3 \end{pmatrix} = -2 \begin{pmatrix} 2 \\ 2 \\ 2 \\ 3 \end{pmatrix} + 4 \begin{pmatrix} 1 \\ 0 \\ 2 \\ 1 \end{pmatrix} + 3 \begin{pmatrix} 1 \\ 1 \\ 1 \\ 1 \end{pmatrix} = \begin{pmatrix} 3 \\ -1 \\ 7 \\ 1 \end{pmatrix}$$

 $\bullet$  Veamos cómo es el producto CA cuando C es una matriz fila.

Si  $C \in \mathfrak{M}_{1 \times m}(\mathbb{K})$  y  $A \in \mathfrak{M}_{m \times n}(\mathbb{K})$  entonces  $CA \in \mathfrak{M}_{1 \times n}(\mathbb{K})$ . Aplicando que el producto es commutativo en  $\mathbb{K}$  y las propiedades de la suma de matrices y del producto por escalares tenemos:

$$(c_{11} \ldots c_{1m}) \begin{pmatrix} a_{11} \ldots a_{1n} \\ \vdots & \ddots & \vdots \\ a_{m1} \ldots a_{mn} \end{pmatrix} = (c_{11}a_{11} + \cdots + c_{1m}a_{m1} \cdots c_{11}a_{1n} + \cdots + c_{1m}a_{mn})$$

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

y la fórmula del binomio de Newton se cumple únicamente cuando A y B conmutan, esto es.

$$(A + B)^2 = A^2 + 2AB + B^2$$
 si y sólo si  $AB = BA$ 

• No se cumple la propiedad de cancelación, es decir AB = AC no implica B = C.

$$\begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix} \begin{pmatrix} 2 & 3 \\ 1 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix} \begin{pmatrix} 0 & 1 \\ 2 & 2 \end{pmatrix} \quad \text{y sin embargo} \quad \begin{pmatrix} 2 & 3 \\ 1 & 1 \end{pmatrix} \neq \begin{pmatrix} 0 & 1 \\ 2 & 2 \end{pmatrix}$$

### Matrices por bloques

Dada una matriz A de tamaño  $m \times n$  podemos utilizar líneas verticales y horizontales para dividirla en submatrices que se denominan **bloques**.

#### Ejemplo 1.5

La matriz

$$A = \begin{pmatrix} 1 & -1 & | & 1 \\ 1 & 0 & | & 2 \\ \hline 1 & 1 & | & 2 \end{pmatrix}$$

está dividida en cuatro submatrices o bloques  $A_{11},\,A_{12},\,A_{21}$  y  $A_{22}$  tal como se indica

$$A = \begin{pmatrix} A_{11} & A_{12} \\ \hline A_{21} & A_{22} \end{pmatrix} \text{ con } A_{11} = \begin{pmatrix} 1 & -1 \\ 1 & 0 \end{pmatrix}, \ A_{12} = \begin{pmatrix} 1 \\ 2 \end{pmatrix}, \ A_{21} = \begin{pmatrix} 1 & 1 \end{pmatrix} \text{ y } A_{22} = \begin{pmatrix} 2 \end{pmatrix}$$

Damos otra división de A, ahora utilizando sólo una línea horizontal:

$$A = \begin{pmatrix} 1 & -1 & 1 \\ 1 & 0 & 2 \\ \hline 1 & 1 & 2 \end{pmatrix} = \begin{pmatrix} B \\ \hline C \end{pmatrix} \text{ con } B = \begin{pmatrix} 1 & -1 & 1 \\ 1 & 0 & 2 \end{pmatrix} \text{ y } C = \begin{pmatrix} 1 & 1 & 2 \end{pmatrix}$$

Un caso particular de matriz por bloques es cuando dividimos la matriz en sus submatrices fila o en sus submatrices columna:

$$A = \left( \begin{array}{c} \frac{F_1}{F_2} \ \hline \vdots \ F_m \end{array} \right), \quad A = \left( \left. C_1 \left| \left. C_2 \left| \cdots \right| C_n \right. \right)$$

Sean A y B dos matrices por bloques, tal y como se indica a continuación:

$$A = \begin{pmatrix} A_{11} & A_{12} & \dots & A_{1n} \\ A_{21} & A_{22} & \dots & A_{2n} \\ \vdots & \ddots & \vdots & \\ A_{m1} & A_{m2} & \dots & A_{mn} \end{pmatrix} \quad \mathbf{y} \quad B = \begin{pmatrix} B_{11} & B_{12} & \dots & B_{1q} \\ B_{21} & B_{22} & \dots & B_{2q} \\ \vdots & \ddots & \vdots & \\ B_{p1} & B_{p2} & \dots & B_{pq} \end{pmatrix}$$

Si n = p y los tamaños de los bloques cumplen que para todo  $i \in \{1, ..., m\}$ ,  $j \in \{1, ..., n\}$  y  $k \in \{1, ..., q\}$  el producto  $A_{ij}B_{jk}$  tiene sentido, esto es, el número de columnas de  $A_{ij}$  es igual al número de filas de  $B_{jk}$ ; entonces el producto AB es una matriz formada por mq bloques tal que el bloque de AB en la posición (i, j) se obtiene según la regla

$$(A_{i1} \quad \cdots \quad A_{in}) \begin{pmatrix} B_{1j} \\ \vdots \\ B_{nj} \end{pmatrix} = A_{i1}B_{1j} + \ldots + A_{in}B_{nj}$$

Una matriz cuadrada es diagonal por bloques si tiene una estructura de bloques

$$A = \begin{pmatrix} A_{11} & 0 & \dots & 0 \\ \hline 0 & A_{22} & \ddots & \vdots \\ \hline \vdots & \ddots & \ddots & 0 \\ \hline 0 & \dots & 0 & A_{np} \end{pmatrix} \text{ o de modo más esquemático } A = \begin{pmatrix} A_{11} & \dots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \dots & A_{pp} \end{pmatrix}$$

con  $A_{ii}$ ,  $i = 1, \ldots, p$  matrices cuadradas y el resto de bloques matrices nulas.

Si A y B son matrices diagonales por bloques de orden n y para  $i = 1, \ldots, p$  los bloques  $A_{ii}$  y  $B_{ii}$  son del mismo orden  $n_i$ , con  $n_1 + \cdots + n_p = n$ , entonces su cálculo se simplifica mucho

$$AB = \begin{pmatrix} A_{11} & \dots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \dots & A_{pp} \end{pmatrix} \begin{pmatrix} B_{11} & \dots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \dots & B_{pp} \end{pmatrix} = \begin{pmatrix} A_{11}B_{11} & \dots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \dots & A_{pp}B_{pp} \end{pmatrix}$$

### Las potencias de una matriz cuadrada

La **potencia** k-ésima de una matriz A de orden n es el producto de A por sí misma k veces

$$A^k = A \stackrel{k}{\cdots} A$$
 para  $k \ge 1$  y por convenio  $A^0 = I_n$ 

Algunas matrices cuadradas tienen un comportamiento especial con respecto a la potencia. Así, por ejemplo, decimos que  $A \in \mathfrak{M}_n(\mathbb{K})$  es **idempotente** si  $A^2 = A$ , decimos que A es **nilpotente** si existe un entero k > 0 tal que  $A^k = 0$ , y decimos que A es **involutiva** si  $A^2 = I_n$ .

#### Ejemplo 1.6

Sean las matrices

$$A = \begin{pmatrix} -3 & -4 & -8 \\ 1 & 2 & 2 \\ 1 & 1 & 3 \end{pmatrix}, \quad B = \begin{pmatrix} -3 & -4 & -7 \\ 1 & 0 & 1 \\ 1 & 2 & 3 \end{pmatrix} \quad \text{y} \quad C = \begin{pmatrix} 0 & 2 & 3 \\ -1 & -3 & -3 \\ 1 & 2 & 2 \end{pmatrix}$$

Podemos comprobar que  $A^2=A$  luego A es idempotente, que  $B^3=0$  luego B es nilpotente, y que  $C^2=I_3$  luego C es involutiva.  $\square$ 

Para las matrices diagonales es especialmente sencillo calcular sus potencias:

$$A = \operatorname{diag}(d_1, d_2, \dots, d_n) \Rightarrow A^k = \operatorname{diag}(d_1^k, d_2^k, \dots, d_n^k)$$

y lo mismo ocurre a las matrices diagonales por bloques

$$A = \begin{pmatrix} A_{11} & \cdots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \cdots & A_{pp} \end{pmatrix} \Rightarrow A^k = \begin{pmatrix} A_{11}^k & \cdots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \cdots & A_{pp}^k \end{pmatrix}$$

### La fórmula del binomio de Newton

Si  $A \ y \ B$  son matrices de orden n, entonces podremos calcular las potencias de la matriz suma A + B utilizando la fórmula del binomio de Newton si las matrices  $A \ y \ B$  conmutan (ya se mencionó anteriormente en el caso  $(A + B)^2$ ). Es decir:

Si 
$$AB = BA$$
 entonces  $(A+B)^k = \sum_{i=0}^k \binom{k}{i} A^{k-i} B^i$ 

Esta fórmula cobra especial interés cuando una de las dos matrices A o B es nilpotente. Veamos un ejemplo en el que determinamos la potencia k-ésima de la matriz

$$C = \left(\begin{array}{ccc} 2 & 2 & 1\\ 0 & 2 & 2\\ 0 & 0 & 2 \end{array}\right)$$

Para ello descomponemos C como suma de dos matrices que conmuten, una de ellas nilpotente

$$C = \left( \begin{array}{ccc} 2 & 0 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & 2 \end{array} \right) + \left( \begin{array}{ccc} 0 & 2 & 1 \\ 0 & 0 & 2 \\ 0 & 0 & 0 \end{array} \right) = 2I_3 + B$$

Comprobamos que B es nilpotente

$$B = \begin{pmatrix} 0 & 2 & 1 \\ 0 & 0 & 2 \\ 0 & 0 & 0 \end{pmatrix}, \ B^2 = \begin{pmatrix} 0 & 0 & 4 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}, \ B^3 = 0 \ \Rightarrow \ B^k = B^{k-3}B^3 = 0 \text{ si } k \ge 3.$$

Como las matrices  $2I_3$  y B conmutan se puede calcular la potencia k-ésima como sigue

$$C^{k} = (2I_{3} + B)^{k} = \sum_{i=0}^{k} {k \choose i} (2I_{3})^{k-i} B^{i}$$

Los únicos sumandos no nulos son aquéllos en los que aparecen  $B^0=I_3,\ B$  o  $B^2.$  Es decir

$$C^{k} = \begin{pmatrix} k \\ 0 \end{pmatrix} (2I_{3})^{k} B^{0} + \begin{pmatrix} k \\ 1 \end{pmatrix} (2I_{3})^{k-1} B + \begin{pmatrix} k \\ 2 \end{pmatrix} (2I_{3})^{k-2} B^{2}$$

y operando y simplificando queda

$$C^k = 2^k I_3 + k \, 2^{k-1} \, I_3 B + \frac{k(k-1)}{2} \, 2^{k-2} \, I_3 B^2 = \left( \begin{array}{ccc} 2^k & k \, 2^k & k^2 \, 2^{k-1} \\ 0 & 2^k & k \, 2^k \\ 0 & 0 & 2^k \end{array} \right) \quad \text{para todo} \ \ k \geq 1.$$

### Propiedades de la traspuesta

#### Teorema 1.7

Si la suma o el producto de matrices tiene sentido en cada uno de los casos que enunciamos a continuación, entonces son ciertas las afirmaciones:

- 1.  $(A+B)^t = A^t + B^t$ .
- 2.  $(A_1 + \dots + A_k)^t = A_1^t + \dots + A_k^t$
- 3.  $(\alpha A)^t = \alpha A^t$  para todo  $\alpha \in \mathbb{K}$ .
- 4.  $(AB)^t = B^t A^t$ .
- 5.  $(A_1 \cdots A_k)^t = A_k^t \cdots A_1^t$ .

**Demostración:** Probaremos que las propiedades 1.3 y 4 se cumplen en cada entrada, mientras que la propiedad 2 será consecuencia de la propiedad 1 y la propiedad 5 de la propiedad 4:

- 1.  $[(A+B)^t]_{ij} = [A+B]_{ji} = a_{ji} + b_{ji} = [A^t]_{ij} + [B^t]_{ij}$ .
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

### Propiedades de la traza

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

En esta sección describiremos un proceso de transformación de una matriz mediante la realización de transformaciones en sus filas denominadas operaciones elementales. Con este procedimiento convertiremos la matriz original en una matriz escalonada en la que determinaremos propiedades de la matriz original más fácilmente. La propiedad fundamental que queremos estudiar es la dependencia o independencia lineal de sus filas. La manipulación de matrices por medio de operaciones elementales de filas es de vital importancia en el Álgebra Lineal, por eso es imprescindible su correcto aprendizaje así como su utilización sistemática y fluida. El proceso es conocido como [**método de Gauss**][2] y se utilizará en secciones y capítulos posteriores para:

- Calcular el determinante y rango de una matriz de forma eficiente.
- Resolver sistemas lineales.
- Determinar la dependencia e independencia lineal de un conjunto de vectores.
- Determinar unas ecuaciones implícitas de un subespacio vectorial.

### Combinación lineal de filas de una matriz

#### Definición 1.10

Sean  $F_1, \ldots, F_k \in \mathfrak{M}_{1 \times n}(\mathbb{K})$  matrices filas. La matriz fila

$$F = \alpha_1 F_1 + \dots + \alpha_k F_k \quad \text{con } \alpha_1, \dots, \alpha_k \in \mathbb{K}$$

es una combinación lineal de  $F_1, \ldots, F_k$  con coeficientes  $\alpha_1, \ldots, \alpha_k$ .

Las matrices fila  $F_1, \ldots, F_k$  son **dependientes** (o linealmente dependientes) si alguna de ellas es combinación lineal de las demás. En caso contrario se dice que  $F_1, \ldots, F_k$  son **independientes** (o linealmente independientes).

Cada fila de  $A \in \mathfrak{M}_{m \times n}(\mathbb{K})$  es una matriz fila de tamaño  $1 \times n$ . De las propiedades de la suma de matrices y del producto por escalares se deduce que una combinación lineal de filas de A es un matriz fila de tamaño  $1 \times n$ .

#### Ejemplo 1.11
En la matriz

$$\begin{array}{cc}
A=
\left(
\begin{array}{cccc}
0&0&1&3\\
3&6&1&2\\
1&2&0&1\\
0&0&3&5
\end{array}
\right)
&
\begin{array}{l}
\rightarrow F_1\\
\rightarrow F_2\\
\rightarrow F_3\\
\rightarrow F_4
\end{array}
\qquad\qquad
\begin{array}{rcl}
2F_1 &=& \begin{array}{cccc}(\hphantom{-}0 & \hphantom{-}0 & \hphantom{-}2 & \hphantom{-}6)\end{array}\\
F_2 &=& \begin{array}{cccc}(\hphantom{-}3 & \hphantom{-}6 & \hphantom{-}1 & \hphantom{-}2)\end{array}\\
-3F_3 &=& \begin{array}{cccc}(-3 & -6 & \hphantom{-}0 & -3)\end{array}\\
\hline
2F_1+F_2-3F_3 &=& \begin{array}{cccc}(\hphantom{-}0 & \hphantom{-}0 & \hphantom{-}3 & \hphantom{-}5)\end{array}=F_4
\end{array}
\end{array}
$$

Las filas de A son dependientes pues, como se ve,  $F_4$  es combinación lineal de  $F_1$ ,  $F_2$  y  $F_3$ .

Una combinación lineal trivial de matrices fila es aquélla en la que todos los coeficientes son 0.

#### Proposición 1.12

Sean  $F_1, \ldots, F_k$  matrices fila del mismo tamaño, entonces  $F_1, \ldots, F_k$  son dependientes si y sólo existen escalares  $\alpha_1, \ldots, \alpha_k$  no todos nulos tales que

$$\alpha_1 F_1 + \dots + \alpha_k F_k = 0$$

#### Demostración:

 $\Rightarrow$ ) Supongamos que las filas  $F_1, \ldots, F_k$  son dependientes, entonces existe una fila, que sin pérdida de generalidad podemos suponer es  $F_k$ , que es una combinación lineal de las demás. Es decir

$$F_k = \alpha_1 F_1 + \dots + \alpha_{k-1} F_{k-1}$$
, con  $\alpha_i \in \mathbb{K}$ 

Entonces,

$$\alpha_1 F_1 + \cdots + \alpha_{k-1} F_{k-1} - F_k = 0$$

que es una combinación lineal no trivial de  $F_1, \ldots, F_k$ , dado que  $\alpha_k = -1 \neq 0$ .

 $\Leftarrow$ ) Ahora, supongamos que existe una combinación lineal no trivial  $\alpha_1 F_1 + \cdots + \alpha_k F_k = 0$ , es decir que algún  $\alpha_i \neq 0$ . Entones, podemos despejar  $F_i$  obteniendo:

$$F_i = \frac{-\alpha_1}{\alpha_i} F_1 + \dots + \frac{-\alpha_{i-1}}{\alpha_i} F_{i-1} + \frac{-\alpha_{i+1}}{\alpha_i} F_{i+1} + \dots + \frac{-\alpha_k}{\alpha_i} F_k$$

Luego la fila  $F_i$  es una combinación lineal de las demás y así  $F_1, \ldots, F_k$  son dependientes.

**Observación**: Como consecuencia del resultado anterior, si  $F_1, \ldots, F_k$  son matrices fila independientes del mismo tamaño, entonces ninguna de ellas es nula. En efecto, si alguna fuese nula, por ejemplo  $F_1 = 0$ , obtendríamos la combinación lineal no trivial  $\alpha_1 F_1 + 0 F_2 + \cdots + 0 F_k = 0$  con  $\alpha_1 \neq 0$ , lo que implicaría que  $F_1, \ldots, F_k$  serían dependientes.

Para nuestros objetivos será importante saber el número máximo de filas independientes que tiene una matriz. Vamos a describir un proceso para construir un conjunto S con el máximo número de filas independientes. Sea  $A \in \mathfrak{M}_{m \times n}(\mathbb{K})$  y sean  $F_1, \ldots, F_m$  las filas de A. Una fila nula, como acabamos de observar, no puede formar parte de ningún conjunto de filas independientes, por lo que podemos suponer que A no tiene filas nulas (sino las eliminaríamos). Empezamos construyendo el conjunto  $S_1 = \{F_1\}$ . De forma recursiva construimos el conjunto  $S_k$  para  $k = 2, \ldots, m$  como sigue: si  $F_k$  es una combinación lineal de las filas de  $S_{k-1}$  entonces  $S_k = S_{k-1}$ , y si  $F_k$  no es una combinación lineal de las filas de  $S_{k-1}$  entonces la añadimos al conjunto  $S_k = S_{k-1} \cup \{F_k\}$ . De este modo el conjunto  $S_k = S_m$  está compuesto por filas independientes, y todas las filas que no están en S son combinación lineal de filas de S. Más adelante se demuestra que este procedimiento da lugar a un conjunto que tiene el máximo número posible de filas independientes.

#### Ejemplo 1.13

Encontrar un conjunto máximo de filas independientes en las matrices

$$A = \begin{pmatrix} 0 & 1 & 1 & 2 \\ 0 & 2 & 2 & 4 \\ 3 & 4 & 3 & 6 \\ 3 & 2 & 1 & 2 \end{pmatrix} \quad \mathbf{y} \quad B = \begin{pmatrix} 0 & 3 & 1 & 2 \\ 0 & 2 & 2 & 2 \\ 1 & 1 & 0 & 0 \end{pmatrix}$$

**Solución:** Comenzamos con A. Partimos del conjunto  $S_1 = \{F_1\}$ . Como  $F_2 = 2F_1$  entonces  $S_2 = \{F_1\}$ . Como  $F_3$  no es proporcional a  $F_1$ , entonces  $S_3 = \{F_1, F_3\}$ . Como  $F_4 = -2F_1 + F_3$  entonces  $S_4 = \{F_1, F_3\}$ . Luego  $S_4$  es un conjunto con el máximo número de filas independientes de A.

Seguimos con la matriz B. Partimos del conjunto  $S_1 = \{F_1\}$ . Como  $F_2 = \alpha F_1$  no tiene solución (ya que  $F_2$  no es proporcional a  $F_1$ ), entonces  $S_2 = \{F_1, F_2\}$ . Como  $F_3 = \alpha F_1 + \beta F_2$  no tiene solución (ya que la primera entrada de  $F_3$  es 1 y la primera entrada de  $\alpha F_1 + \beta F_2$  es cero para cualesquiera valores  $\alpha, \beta \in \mathbb{K}$ ), entonces  $S_3 = \{F_1, F_2, F_3\}$ . Luego todas las filas de B son independientes.  $\square$ 

### Operaciones elementales de filas. Matrices elementales

Las transformaciones que se pueden aplicar a una matriz en el conocido como método de Gauss se denominan **operaciones elementales de filas**. Son de tres tipos y consisten en lo siguiente:

**Tipo I:** Intercambiar las filas  $i \vee j$ . Se denota  $f_i \leftrightarrow f_i$ .

**Tipo II:** Sumar a la fila i la fila j multiplicada por un escalar. Se denota  $f_i \to f_i + \beta f_j$ .

**Tipo III:** Multiplicar la fila i por un escalar no nulo. Se denota  $f_i \to \beta f_i$  con  $\beta \neq 0$ .

#### Ejemplo 1.14

Vemos un ejemplo de cada uno de los tipos de operaciones elementales de filas:

- (1) Una operación elemental de Tipo I:  $\begin{pmatrix} 0 & 2 & 2 \\ 2 & 0 & 4 \\ 3 & -1 & 3 \\ 0 & 1 & 2 \end{pmatrix} \xrightarrow{f_1 \leftrightarrow f_3} \begin{pmatrix} 3 & -1 & 3 \\ 2 & 0 & 4 \\ 0 & 2 & 2 \\ 0 & 1 & 2 \end{pmatrix}$
- (2) Una operación elemental de Tipo II:  $\begin{pmatrix} 0 & 2 & 2 \\ 2 & 0 & 4 \\ 3 & -1 & 3 \\ 0 & 1 & 2 \end{pmatrix} \xrightarrow{f_3 \to f_3 + 2f_1} \begin{pmatrix} 0 & 2 & 2 \\ 2 & 0 & 4 \\ 3 & 3 & 7 \\ 0 & 1 & 2 \end{pmatrix}$
- (3) Una operación elemental de Tipo III:  $\begin{pmatrix} 0 & 2 & 2 \\ 2 & 0 & 4 \\ 3 & -1 & 3 \\ 0 & 1 & 2 \end{pmatrix} \xrightarrow{f_2 \to 3f_2} \begin{pmatrix} 0 & 2 & 2 \\ 6 & 0 & 12 \\ 3 & -1 & 3 \\ 0 & 1 & 2 \end{pmatrix} \quad \Box$

Asociadas a las operaciones elementales de filas están las denominadas matrices elementales.

#### Definición 1.15

Una matriz elemental de orden n es una matriz resultante de aplicar a la matriz identidad  $I_n$  una operación elemental de filas. Las hay de tres tipos:

•  $E_{f_i \leftrightarrow f_j}$ : Matriz resultante de aplicar a  $I_n$  la operación elemental  $f_i \leftrightarrow f_j$ .

$$I_n \xrightarrow{f_i \leftrightarrow f_j} E_{f_i \leftrightarrow f_j}$$

•  $E_{f_i \to f_i + \beta f_j}$ : Matriz resultante de aplicar a  $I_n$  la operación elemental  $f_i \to f_i + \beta f_j$ .

$$I_n \xrightarrow{f_i \to f_i + \beta f_j} E_{f_i \to f_i + \beta f_j}$$

•  $E_{f_i \to \beta f_i}$ : Matriz resultante de aplicar a  $I_n$  la operación elemental  $f_i \to \beta f_i, \ \beta \neq 0$ .

$$I_n \xrightarrow{f_i \to \beta f_i} E_{f_i \to \beta f_i}$$

#### Ejemplo 1.16
Veamos, para orden 4, un ejemplo de cada tipo de matriz elemental:

$$E_{f_1 \leftrightarrow f_3} = \begin{pmatrix} 0 & 0 & 1 & 0 \\ 0 & 1 & 0 & 0 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}, \quad E_{f_3 \to f_3 + \beta f_1} = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ \beta & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}, \quad E_{f_2 \to \beta f_2} = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & \beta & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}$$

Realizar una operación elemental en las filas de una matriz A es equivalente a multiplicar A por la izquierda por la matriz elemental que corresponde a dicha operación elemental. Este hecho queda reflejado en el siguiente esquema:

$$A \xrightarrow{f_i \leftrightarrow f_j} E_{f_i \leftrightarrow f_j} \cdot A \qquad A \xrightarrow{f_i \to f_i + \beta f_j} E_{f_i \to f_i + \beta f_j} \cdot A \qquad A \xrightarrow{f_i \to \beta f_i} E_{f_i \to \beta f_i} \cdot A$$

#### Ejemplo 1.17
Lo ilustramos con cada tipo de operación elemental:

(1) Operación elemental de Tipo I:

$$\begin{pmatrix}
0 & 2 & 2 \\
2 & 0 & 4 \\
3 & -1 & 3 \\
0 & 1 & 2
\end{pmatrix}
\xrightarrow{f_1 \leftrightarrow f_3}
\begin{pmatrix}
3 & -1 & 3 \\
2 & 0 & 4 \\
0 & 2 & 2 \\
0 & 1 & 2
\end{pmatrix} =
\underbrace{\begin{pmatrix}
0 & 0 & 1 & 0 \\
0 & 1 & 0 & 0 \\
1 & 0 & 0 & 0 \\
0 & 0 & 0 & 1
\end{pmatrix}}
\begin{pmatrix}
0 & 2 & 2 \\
2 & 0 & 4 \\
3 & -1 & 3 \\
0 & 1 & 2
\end{pmatrix}$$

(2) Operación elemental de Tipo II:

$$\begin{pmatrix}
0 & 2 & 2 \\
2 & 0 & 4 \\
3 & -1 & 3 \\
0 & 1 & 2
\end{pmatrix}
\xrightarrow{f_3 \to f_3 + 2f_1}
\begin{pmatrix}
0 & 2 & 2 \\
2 & 0 & 4 \\
3 & 3 & 7 \\
0 & 1 & 2
\end{pmatrix} =
\overbrace{\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
2 & 0 & 1 & 0 \\
0 & 0 & 0 & 1
\end{pmatrix}}
\begin{pmatrix}
0 & 2 & 2 \\
2 & 0 & 4 \\
3 & -1 & 3 \\
0 & 1 & 2
\end{pmatrix}$$

(3) Operación elemental de Tipo III:

$$\begin{pmatrix}
0 & 2 & 2 \\
2 & 0 & 4 \\
3 & -1 & 3 \\
0 & 1 & 2
\end{pmatrix}
\xrightarrow{f_2 \to 3f_2}
\begin{pmatrix}
0 & 2 & 2 \\
6 & 0 & 12 \\
3 & -1 & 3 \\
0 & 1 & 2
\end{pmatrix} =
\overbrace{\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 3 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & 1
\end{pmatrix}}
\begin{pmatrix}
0 & 2 & 2 \\
2 & 0 & 4 \\
3 & -1 & 3 \\
0 & 1 & 2
\end{pmatrix}$$

### Matrices escalonadas y escalonadas reducidas

El primer elemento no nulo de cada una de las filas de una matriz se denomina **pivote**. Una fila nula no tiene pivote. Introducimos a continuación dos tipos de matrices que están caracterizadas por dónde están colocados y por cómo son sus pivotes.

#### Definición 1.18

La matriz A es **escalonada** (o escalonada por filas) si cumple las siguientes propiedades:

- Si A tiene k filas nulas, éstas son las k últimas.
- Todo pivote de A tiene más ceros a su izquierda que el pivote de la fila anterior. Como es lógico, esta propiedad no afecta al pivote de la primera fila.

La matriz A es **escalonada reducida** si es escalonada v además cumple que:

- Todos los pivotes de A son iguales a 1.
- Toda entrada de A situada en la misma columna que un pivote es igual a 0.

#### Ejemplo 1.19

La matriz

$$\begin{pmatrix}
-4 & 1 & -2 & -3 & 2 & 1 \\
0 & 3 & 6 & 4 & 0 & 4 \\
0 & 1 & 1 & -3 & 2 & -3 \\
0 & 0 & 0 & 0 & 1 & 1
\end{pmatrix}$$

no es escalonada porque el pivote de la fila 3 tiene a su izquierda igual número de ceros que el pivote de la fila 2. De manera informal, la matriz dada tiene un peldaño de altura 2 y los peldaños de una

matriz escalonada tienen altura 1. Las matrices

$$\begin{pmatrix}
-i & 0 & 0 & -4 & 0 & -4 \\
0 & i & 0 & 4+i & 0 & -1 \\
0 & 0 & 0 & 0 & 2 & 3 \\
0 & 0 & 0 & 0 & 0 & 0
\end{pmatrix} \quad y \quad
\begin{pmatrix}
1 & 0 & 0 & 5 & 7 & 0 \\
0 & 0 & 1 & -3 & 0 & -1 \\
0 & 0 & 0 & 0 & 1 & 2 \\
0 & 0 & 0 & 0 & 0 & 0
\end{pmatrix}$$

son escalonadas, pero no son escalonadas reducidas: la primera porque no todo pivote es igual a 1, y la segunda porque no toda entrada situada en la misma columna que un pivote es igual a 0. La matriz

$$\begin{pmatrix}
0 & 1 & 9 & 0 & 7 & 0 & 0 \\
0 & 0 & 0 & 1 & 2 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 & 1 & 0 \\
0 & 0 & 0 & 0 & 0 & 0 & 1
\end{pmatrix}$$

es escalonada reducida.

**Observaciones:** 
1. La matriz nula es escalonada y escalonada reducida.
2. La única matriz escalonada reducida de orden n con n filas no nulas es la identidad  $I_n$ .

### Matrices equivalentes por filas

Cuando aplicamos una sucesión de operaciones elementales de filas a una matriz estamos estableciendo una conexión entre la matriz original y la matriz final.

#### Definición 1.20

Dos matrices A y B son **equivalentes por filas**,  $A \sim_f B$ , si A = B o si se puede transformar A en B mediante una sucesión finita de operaciones elementales de filas. Esta última propiedad es igual a decir que existen matrices elementales  $E_1, \ldots, E_k$  tales que  $B = E_k \cdots E_1 A$ .

#### Ejemplo 1.21

Las matrices

$$A = \begin{pmatrix} 0 & -3 & 3 \\ 2 & 6 & 0 \\ 1 & -3 & 2 \end{pmatrix} \quad \mathbf{y} \quad B = \begin{pmatrix} 1 & -3 & 2 \\ 0 & 12 & -4 \\ 0 & 0 & 2 \end{pmatrix}$$

son equivalentes por filas ya que

$$\begin{pmatrix} 0 & -3 & 3 \\ 2 & 6 & 0 \\ 1 & -3 & 2 \end{pmatrix} \xrightarrow{f_1 \leftrightarrow f_3} \begin{pmatrix} 1 & -3 & 2 \\ 2 & 6 & 0 \\ 0 & -3 & 3 \end{pmatrix} \xrightarrow{f_2 \to f_2 - 2f_1} \begin{pmatrix} 1 & -3 & 2 \\ 0 & 12 & -4 \\ 0 & -3 & 3 \end{pmatrix} \xrightarrow{f_3 \to f_3 + \frac{1}{4}f_2} \begin{pmatrix} 1 & -3 & 2 \\ 0 & 12 & -4 \\ 0 & 0 & 2 \end{pmatrix}$$

es una sucesión de operaciones elementales de filas que transforma A en B.  $\square$ 

Si transformamos una matriz A en B aplicando una operación elemental, podemos invertir el proceso v transformar B en A aplicando la **operación elemental inversa**:

$$f_i \leftrightarrow f_j$$
 es la operación elemental inversa de  $f_i \leftrightarrow f_j$  
$$f_i \to f_i - \beta f_j$$
 es la operación elemental inversa de  $f_i \to f_i + \beta f_j$  
$$f_i \to \frac{1}{\beta} f_i$$
 es la operación elemental inversa de  $f_i \to \beta f_i, \beta \neq 0$ 

La existencia de las operaciones elementales inversas permite establecer una relación de equivalencia.

#### Teorema 1.22

La equivalencia por filas es una relación de equivalencia.

**Demostración:** Sean A, B y C matrices del mismo tamaño. Vamos a demostrar que se cumplen las tres propiedades que definen una relación de equivalencia:

Reflexiva:  $A \sim_I A$ . Se cumple por definición.

Simétrica: Si  $A \sim_f B$ , entonces  $B \sim_f A$ .

Supongamos que B se obtiene a partir de A mediante una sucesión finita de operaciones elementales. Entonces, podemos revertir el proceso pasando de B a A mediante la aplicación en orden contrario de las operaciones elementales inversas correspondientes. Luego  $B \sim_f A$ .

Transitiva: Si  $A \sim_f B$  y  $B \sim_f C$ , entonces  $A \sim_f C$ .

Asumimos que  $A \sim_f B$  y  $B \sim_f C$ . Entonces, podemos trasformar A en C aplicando las operaciones elementales que transforman A en B y después las que transforman B en C. Luego  $A \sim_f C$ .  $\square$ 

### Combinación lineal de filas en matrices equivalentes por filas

Supongamos que A se transforma en B mediante una operación elemental de filas. Sean  $F_1, \ldots, F_n$  las filas de A y nos fijamos en las posibles transformaciones que sufre  $F_i$  tras aplicarle la operación elemental: i)  $f_i \leftrightarrow f_j$ : ii)  $f_i \to f_i + \alpha f_j$ : iii)  $f_i \to \alpha f_i$ . En todos los casos la fila i de B que obtenemos es combinación lineal de filas de A.

Si A se transforma en B mediante una sucesión de operaciones elementales de filas

$$A = A_0 \longrightarrow A_1 \longrightarrow \cdots \longrightarrow A_k = B$$

entonces cada fila de  $A_k$  es una combinación lineal de las filas de  $A_{k-1}$ . A su vez, cada fila de  $A_{k-1}$  es

una combinación lineal de las filas de  $A_{k-2}$ , y así hasta llegar a  $A_0$ . Por lo tanto cada fila de  $B=A_k$  es combinación lineal de filas de  $A=A_0$ .

Si  $A \sim_f B$  entonces toda fila de B es combinación lineal de filas de A

#### Ejemplo 1.23

Las matrices

$$A = \begin{pmatrix} 0 & 0 & 2 & 6 \\ 3 & 6 & 1 & 2 \\ 3 & 6 & 0 & -1 \\ 0 & 0 & 1 & 5 \end{pmatrix} \quad \mathbf{y} \quad B = \begin{pmatrix} 3 & 6 & 1 & 2 \\ 0 & 0 & 2 & 6 \\ 0 & 0 & 0 & 2 \\ 0 & 0 & 0 & 0 \end{pmatrix}$$

son equivalentes por filas. Esto lo probaremos en el siguiente ejemplo, donde veremos que

$$A \xrightarrow{f_1 \leftrightarrow f_2} \overrightarrow{f_3 \rightarrow f_3 - f_1} \xrightarrow{f_3 \rightarrow f_3 + \frac{1}{2}f_2} \overrightarrow{f_4 \rightarrow f_4 - \frac{1}{2}f_2} \xrightarrow{f_3 \leftrightarrow f_4} B$$

Lo que ahora nos interesa es comprobar el efecto que tiene en las filas originales de A esta sucesión de operaciones elementales. Tenemos que

$$A = \begin{pmatrix} F_{1} \\ F_{2} \\ F_{3} \\ F_{4} \end{pmatrix} \xrightarrow{f_{1} \leftrightarrow f_{2}} \begin{pmatrix} F_{2} \\ F_{1} \\ F_{3} \\ F_{4} \end{pmatrix} \xrightarrow{f_{3} \to f_{3} - f_{1}} \begin{pmatrix} F_{2} \\ F_{3} \\ F_{3} - F_{2} \\ F_{4} \end{pmatrix} \xrightarrow{f_{3} \to f_{3} + \frac{1}{2}f_{2}} \begin{pmatrix} F_{2} \\ F_{3} - F_{2} + \frac{1}{2}F_{1} \\ F_{3} - F_{2} + \frac{1}{2}F_{1} \\ F_{3} - F_{2} + \frac{1}{2}F_{1} \end{pmatrix} \xrightarrow{f_{3} \leftrightarrow f_{4}} \begin{pmatrix} F_{2} \\ F_{1} \\ F_{4} - \frac{1}{2}F_{1} \\ F_{3} - F_{2} + \frac{1}{2}F_{1} \end{pmatrix} = B$$

Y así hemos escrito cada fila de B como una combinación lineal de filas de A. Además, del hecho de que la última fila de B sea nula, es decir,  $F_3 - F_2 + \frac{1}{2}F_1 = 0$ , podemos deducir, entre otras relaciones, que  $F_3 = F_2 + \frac{1}{2}F_1$ . Es decir, que la fila 3 de A es combinación lineal de las filas 1 y 2 de A.  $\square$ 

### Equivalencia por filas a una matriz escalonada

En el Ejemplo 1.21 vimos que partiendo de una matriz dada hemos llegado a una matriz escalonada a través de operaciones elementales de filas de **Tipo I** y **II**. En realidad esto es posible hacerlo siempre, como afirma el siguiente resultado. En la demostración describiremos un proceso que modifica paso a paso una matriz mediante operaciones elementales de filas con el objeto de ir detectando y transformando en nulas aquellas filas que sean combinación lineal del resto. Al final del proceso se llega a una matriz escalonada cuyas filas no nulas son independientes.

#### Teorema 1.24

Toda matriz es equivalente por filas a una matriz escalonada.

**Demostración:** Detallamos en forma de algoritmo los pasos que se deben seguir para transformar A en una matriz escalonada utilizando únicamente operaciones elementales de **Tipo I** y **II**:

- 1. Buscamos la primera columna de A que tenga algún elemento distinto de 0. Supongamos que es la columna j. Buscamos en esta columna j de A el primer elemento distinto de 0. Supongamos que éste se encuentra en la fila h y que es igual a  $\lambda \neq 0$ . Entonces aplicamos la operación elemental de **Tipo I**:  $f_1 \leftrightarrow f_h$  y obtenemos una matriz que tiene un pivote igual a  $\lambda$  en la posición (1,j).
- 2. Para cada  $i \neq 1$  sea  $\gamma$  el elemento que se encuentra en la posición (i,j). Si  $\gamma \neq 0$  realizamos la operación elemental de **Tipo II**:  $f_i \to f_i \frac{\gamma}{\lambda} f_1$ . De esta forma obtenemos una matriz con pivote igual a  $\lambda$  en la posición (1,j) y ceros por debajo. Si  $\gamma = 0$  no se hace nada en la fila i.
- 3. Si la matriz que hemos obtenido es escalonada entonces ya hemos terminado. En caso contrario lo que hacemos es dejar fijadas la primera fila y las primeras j columnas, y con el el resto de la matriz comenzar de nuevo el proceso volviendo al paso 1.  $\Box$

El procedimiento que acabamos de describir, de transformación de un matriz en una matriz escalonada. se conoce como **método de escalonamiento de Gauss** o **método de Gauss**.

#### Ejemplo 1.25

Encuéntrese una matriz escalonada equivalente por filas a

$$\begin{pmatrix}
0 & 0 & 2 & 6 \\
3 & 6 & 1 & 2 \\
3 & 6 & 0 & -1 \\
0 & 0 & 1 & 5
\end{pmatrix}$$

**Solución:** Seguiremos el procedimiento descrito en la demostración del Teorema 1.24:

1. La primera columna con algún elemento no nulo es la columna 1, y el primer elemento no nulo de la columna 1 se encuentra en la fila 2. Realizamos una transformación de **Tipo I**:

$$\begin{pmatrix}
0 & 0 & 2 & 6 \\
3 & 6 & 1 & 2 \\
3 & 6 & 0 & -1 \\
0 & 0 & 1 & 5
\end{pmatrix}
\xrightarrow{f_1 \leftrightarrow f_2}
\begin{pmatrix}
3 & 6 & 1 & 2 \\
0 & 0 & 2 & 6 \\
3 & 6 & 0 & -1 \\
0 & 0 & 1 & 5
\end{pmatrix}$$

2. Hacemos ceros por debajo del primer pivote. Como hay un único elemento distinto de 0, que se encuentra en la fila 3, sólo necesitamos una transformación de **Tipo II**:

$$\xrightarrow{f_3 \to f_3 - f_1} 
\begin{pmatrix}
3 & 6 & 1 & 2 \\
0 & 0 & 2 & 6 \\
0 & 0 & -1 & -3 \\
0 & 0 & 1 & 5
\end{pmatrix}$$

- 3. La matriz no es escalonada, así que dejamos fijadas la fila 1 y la columna 1, y con el resto de la matriz (que hemos enmarcado) comenzamos de nuevo el proceso.
- 1'. En la matriz enmarcada la primera columna que no tiene todos sus elementos iguales a 0 es la columna 2 y el primer elemento no nulo de la columna 2 se encuentra en la fila 1. Por lo que en este caso no necesitamos una transformación de **Tipo I**.
- 2'. Hacemos ceros por debajo del segundo pivote. Como hay dos elementos distintos de 0 necesitamos dos transformaciones de **Tipo II**:

$$\frac{1}{f_3 \to f_3 + \frac{1}{2}f_2} \begin{pmatrix} \boxed{3} & 6 & 1 & 2 \\ 0 & 0 & 2 & 6 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 1 & 5 \end{pmatrix} \xrightarrow{f_4 \to f_4 - \frac{1}{2}f_2} \begin{pmatrix} \boxed{3} & 6 & 1 & 2 \\ 0 & 0 & \boxed{2} & 6 \\ 0 & 0 & 0 & \boxed{0} \\ 0 & 0 & 0 & \boxed{2} \end{pmatrix}$$

- 3'. La matriz no es escalonada, así que dejamos fijadas la fila 1 y 2 y las columnas 1, 2 y 3. Y con el resto de la matriz (que hemos enmarcado) comenzamos de nuevo el proceso.
- 1". En la nueva matriz enmarcada la primera columna que no tiene todos sus elementos iguales a 0 es la columna 1 y el primer elemento no nulo de la columna 1 se encuentra en la fila 2. Realizamos una transformación de **Tipo I**:

$$\overrightarrow{f_3 \leftrightarrow f_4} \begin{pmatrix} 3 & 6 & 1 & 2 \\ 0 & 0 & 2 & 6 \\ 0 & 0 & 0 & 2 \\ 0 & 0 & 0 & 0 \end{pmatrix}$$

- 2". Hacemos ceros por debajo del tercer pivote. Como no hay elementos que sean distintos de 0 no necesitamos ninguna transformación del **Tipo II**.
- $3^{\prime\prime}$ . La matriz obtenida es escalonada, luego el proceso termina aquí.

Si a una matriz le aplicamos el algoritmo descrito en la demostración del Teorema 1.24 llegamos a una matriz escalonada. Pero si a esa misma matriz le aplicamos una sucesión diferente de operaciones elementales de filas podemos llegar a otra matriz escalonada diferente. Luego **una matriz no es equivalente por filas a una única matriz escalonada**.

#### Ejemplo 1.26

Vamos a convertir la matriz

$$A = \begin{pmatrix} 6 & 2 & -2 \\ 2 & 1 & 3 \\ 8 & 4 & 5 \end{pmatrix}$$

en escalonada utilizando dos sucesiones distintas de operaciones elementales por filas:

1. Siguiendo el método descrito en el Teorema 1.24

$$A \xrightarrow{f_2 \to f_2 - \frac{1}{3}f_1} \begin{pmatrix} 6 & 2 & -2 \\ 0 & \frac{1}{3} & \frac{11}{3} \\ 8 & 4 & 5 \end{pmatrix} \xrightarrow{f_3 \to f_3 - \frac{4}{3}f_1} \begin{pmatrix} 6 & 2 & -2 \\ 0 & \frac{1}{3} & \frac{11}{3} \\ 0 & \frac{4}{3} & \frac{23}{3} \end{pmatrix} \xrightarrow{f_3 \to f_3 - 4f_2} \begin{pmatrix} 6 & 2 & -2 \\ 0 & \frac{1}{3} & \frac{11}{3} \\ 0 & 0 & -\frac{21}{3} \end{pmatrix} = B$$

2. Siguiendo otra sucesión de operaciones elementales de filas

$$A \xrightarrow{f_1 \leftrightarrow f_2} \begin{pmatrix} 2 & 1 & 3 \\ 6 & 2 & -2 \\ 8 & 4 & 5 \end{pmatrix} \xrightarrow{f_2 \to f_2 - 3f_1} \begin{pmatrix} 2 & 1 & 3 \\ 0 & -1 & -11 \\ 8 & 4 & 5 \end{pmatrix} \xrightarrow{f_3 \to f_3 - 4f_1} \begin{pmatrix} 2 & 1 & 3 \\ 0 & -1 & -11 \\ 0 & 0 & -7 \end{pmatrix} = C$$

Luego  $A \sim_f B$  y  $A \sim_f C$  siendo B y C matrices escalonada distintas.

### Equivalencia por filas a una matriz escalonada reducida

A menudo interesa transformar una matriz dada en una matriz equivalente por filas escalonada reducida. Por ejemplo esto es útil para encontrar las soluciones de un sistema de ecuaciones lineales.

En la demostración del Teorema 1.24 dimos un algoritmo que partiendo de una matriz A finalizaba encontrando una matriz escalonada equivalente por filas a A. En la demostración del siguiente teorema vemos como dicho algoritmo se puede continuar hasta llegar a una matriz escalonada reducida equivalente por filas a A.

#### Teorema 1.27

Toda matriz es equivalente por filas a una matriz escalonada reducida.

**Demostración:** Detallamos los pasos que se deben seguir para transformar una matriz A en una matriz escalonada reducida utilizando operaciones elementales de filas de **Tipo I. II** v **III**:

- 1. Aplicando el método desarrollado en la demostración del Teorema 1.24 la matriz A se transforma en una matriz escalonada B utilizando operaciones elementales de filas de **Tipo I** y **II**. Supongamos que los pivotes de B se encuentran en las posiciones  $(1, j_1), \ldots, (k, j_k)$  con  $j_1 < \ldots < j_k$  y tienen valor igual a  $\lambda_1, \ldots, \lambda_k$  respectivamente.
- 2. Empezamos por el pivote  $\lambda_k$  situado en la posición  $(k, j_k)$ . Si  $\lambda_k \neq 1$  aplicamos una operación elemental de **Tipo III**:  $f_k \to \frac{1}{\lambda_k} f_k$  y obtenemos una matriz que tiene un pivote igual a 1 en la posición  $(k, j_k)$ .
- 3. Para cada i < k sea  $\gamma$  el elemento que se encuentra en la posición  $(i, j_k)$ . Si  $\gamma \neq 0$  realizamos la operación elemental de **Tipo II**:  $f_i \to f_i \gamma f_k$ . De esta forma obtenemos una matriz con pivote igual a 1 en la posición  $(k, j_k)$  y ceros en el resto de elementos de la columna  $j_k$ .
- 4. Repetimos los pasos 2 y 3 con el resto de los pivotes. El orden que se sigue es de derecha a izquierda, es decir, se continua con el pivote de la posición  $(k-1, j_{k-1})$  y así hasta llegar al pivote de la posición  $(1, j_1)$ . Al final tendremos una matriz escalonada reducida.  $\square$


El procedimiento que acabamos de describir, de transformación de un matriz en una matriz escalonada reducida, completa el método de escalonamiento de Gauss y se conoce como **método de Gauss-Jordan**[^3].

#### Ejemplo 1.28

Encuéntrese una matriz escalonada reducida que sea equivalente por filas a la

siguiente matriz

$$\begin{pmatrix}
0 & 0 & 2 & 6 \\
3 & 6 & 1 & 2 \\
3 & 6 & 0 & -1 \\
0 & 0 & 1 & 5
\end{pmatrix}$$

**Solución:** En el Ejemplo 1.25 ya vimos que

$$\begin{pmatrix} 0 & 0 & 2 & 6 \\ 3 & 6 & 1 & 2 \\ 3 & 6 & 0 & -1 \\ 0 & 0 & 1 & 5 \end{pmatrix} \sim_f \begin{pmatrix} 3 & 6 & 1 & 2 \\ 0 & 0 & 2 & 6 \\ 0 & 0 & 0 & 2 \\ 0 & 0 & 0 & 0 \end{pmatrix}$$

y tenemos que continuar hasta llegar a una escalonada reducida. Seguimos el procedimiento descrito en la demostración del Teorema 1.27. En primer lugar trabajamos con el pivote que se encuentra en la fila 3 (que es la última fila no nula), para posteriormente pasar al pivote de la fila 2 y luego al pivote de la fila 1:

$$\begin{pmatrix}
3 & 6 & 1 & 2 \\
0 & 0 & 2 & 6 \\
0 & 0 & 0 & 2 \\
0 & 0 & 0 & 0
\end{pmatrix}
\xrightarrow{f_3 \to \frac{1}{2}f_3}
\begin{pmatrix}
3 & 6 & 1 & 2 \\
0 & 0 & 2 & 6 \\
0 & 0 & 0 & 1 \\
0 & 0 & 0 & 0
\end{pmatrix}
\xrightarrow{f_1 \to f_1 - 2f_3}
\begin{pmatrix}
3 & 6 & 1 & 0 \\
0 & 0 & 2 & 6 \\
0 & 0 & 0 & 1 \\
0 & 0 & 0 & 0
\end{pmatrix}
\xrightarrow{f_2 \to f_2 - 6f_3}
\begin{pmatrix}
3 & 6 & 1 & 0 \\
0 & 0 & 2 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 0 & 0
\end{pmatrix}$$

$$\xrightarrow{f_2 \to \frac{1}{2}f_2}
\begin{pmatrix}
3 & 6 & 1 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 0 & 0
\end{pmatrix}
\xrightarrow{f_1 \to f_1 - f_2}
\begin{pmatrix}
3 & 6 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 0 & 0
\end{pmatrix}
\xrightarrow{f_1 \to \frac{1}{3}f_1}
\begin{pmatrix}
1 & 2 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 0 & 0
\end{pmatrix}$$

### La forma de Hermite por filas de una matriz

El Teorema 1.24 afirma que para cada matriz A existe una matriz escalonada equivalente por filas a A. Después vimos con un ejemplo que la matriz escalonada a la que podemos llegar partiendo de A y aplicando sucesivas operaciones elementales de filas no es única. El Teorema 1.27 afirma que para cada matriz A existe una matriz escalonada reducida B equivalente por filas a A, y nos describe un procedimiento algorítmico para construir B. ¿Es B la única matriz escalonada reducida equivalente por filas a A? La respuesta es sí. Para demostrarlo vemos previamente un resultado auxiliar.

#### Lema 1.29

Si A y B son matrices escalonadas reducidas y  $A \sim_f B$  entonces A = B.

**Demostración:** Recordemos que si  $A \sim_f B$  entonces cada fila de A es combinación lineal de filas de B, y viceversa, cada fila de B es combinación lineal de las de A.

Vamos a demostrar que si el pivote en la primera fila de A está en la columna i y el pivote de la primera fila de B está en la columna j entonces i = j. Procedemos por reducción al absurdo suponiendo que i < j. En tal caso la primera fila de A no se podría escribir como combinación lineal de las filas de B, ya que todos los elementos de la columna i de B serían iguales a B. Un argumento similar, intercambiando los papeles de A y B, valdría para descartar que i > j. Luego i = j.

Observamos que si expresamos las filas  $F_2(B), \ldots, F_m(B)$  de B como combinación lineal de las filas de A, en ninguna de ellas aparecerá la primera fila de A,  $F_1(A)$ , ya que eso haría que apareciera una entrada distinta de B debajo del pivote de la primera fila de B. Se puede hacer un argumento similar intercambiando los papeles de A y B. De manera que podemos eliminar la primera fila de A y la primera de B y obtendremos dos matrices  $A_1$  y  $B_1$  que son escalonadas reducidas y que preservan la propiedad de que cada fila de cada una de ellas es combinación lineal de las filas de la otra.

Si repetimos el mismo argumento hasta que se nos acaben las filas no nulas podemos concluir que los pivotes de A y de B se encuentran situados en las mismas posiciones:  $(1, j_1), \ldots, (h, j_h)$ . A partir de la fila h, todas las filas de A y B son nulas y, por tanto, coinciden. Ahora supongamos que para  $k \in \{1, \ldots, h\}$  la fila k de B es igual a una combinación lineal de filas de A. En ese caso la fila k de A tiene que aparecer con coeficiente igual a 1, ya que es la única fila con entrada distinta de 0 en la columna  $j_k$  (concretamente  $a_{kj_k} = b_{kj_k} = 1$ ), y cualquier otra fila no nula de A.  $F_l(A)$ , no puede aparecer con un coeficiente distinto de 0, puesto que eso introduciría una entrada distinta de 0 en la columna del pivote correspondiente a la fila  $F_l(B)$ . Por lo tanto la fila k de B y la fila k de A son iguales para  $k \in \{1, \ldots, h\}$ , luego A = B.  $\square$ 

Por el Teorema 1.27 sabemos que toda matriz es equivalente por filas a una matriz escalonada reducida. Y por el Lema 1.29 sabemos que no hay dos matrices escalonadas reducidas distintas y equivalentes. Luego concluimos que esa matriz escalonada reducida es única.

#### Teorema 1.30

Toda matriz es equivalente por filas a una única matriz escalonada reducida.

#### Definición 1.31

La forma de Hermite<[^4] por filas o forma escalonada reducida de A es la única matriz escalonada reducida equivalente por filas a A. La denotaremos por  $H_f(A)$ .

1.2. Método de Gauss

El Teorema 1.30 dice que cada clase de equivalencia definida por  $\sim_f$  contiene a una única matriz escalonada reducida, que será la forma de Hermite por filas de todas las matrices que pertenecen a dicha clase de equivalencia. Por otra parte, si dos matrices tienen la misma forma de Hermite por filas entonces son equivalentes por filas entre sí por ser equivalentes por filas a una misma matriz.

#### Teorema 1.32

A y B son equivalentes por filas si y sólo si  $H_f(A) = H_f(B)$ .

#### Ejemplo 1.33

En el Ejemplo 1.28 vimos que

$$A = \begin{pmatrix} 0 & 0 & 2 & 6 \\ 3 & 6 & 1 & 2 \\ 3 & 6 & 0 & -1 \\ 0 & 0 & 1 & 5 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix} = H_f(A)$$

Por otra parte, siguiendo el proceso descrito en los Teoremas 1.24 y 1.27 tenemos que

$$B = \begin{pmatrix} 1 & 1 & 1 & 2 \\ -1 & -1 & 0 & 4 \\ 3 & 3 & 2 & 1 \\ 0 & 0 & 1 & 6 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix} = H_f(B)$$

Como  $H_f(A) \neq H_f(B)$  entonces, por el Teorema 1.32, A y B no son equivalentes por filas.  $\square$ 

### Alternativas a los métodos de Gauss y de Gauss-Jordan

Aunque no se puede describir de forma sistemática, hay situaciones en las que es conveniente alterar ligeramente los algoritmos de escalonamiento dados en los Teoremas 1.24 y 1.27 para simplificar los cálculos que permiten transformar una matriz dada en una matriz escalonada o escalonada reducida. Por ejemplo, en una columna en la que buscamos un pivote no nulo es preferible, en lugar de tomar el primer elemento no nulo de dicha columna, escoger como pivote un elemento no nulo del menor valor absoluto posible. Esto tiene una especial ventaja cuando dicho elemento divide al resto de elementos de la columna y trabajamos con matrices cuyas entradas son enteros, pues evitaremos la aparición de fracciones.

También, en algunas ocasiones podemos realizar de una sola vez operaciones elementales ahorrando en el número de matrices que hay que escribir. Más adelante veremos que no se pueden agrupar cualquier tipo de operaciones elementales. Mostramos algunas de las agrupaciones que no dan lugar a error:

1. Cuando utilizamos una misma fila para modificar a otras filas:

$$\begin{pmatrix} 1 & 1 & 2 & 1 \\ 2 & 1 & 3 & 2 \\ 2 & 1 & 1 & 4 \end{pmatrix} \xrightarrow{f_2 \to f_2 - 2f_1} \begin{pmatrix} 1 & 1 & 2 & 1 \\ 0 & -1 & -1 & 0 \\ 0 & -1 & -3 & 2 \end{pmatrix}$$

2. Cuando multiplicamos algunas de las filas, cada una por una constante:

$$\begin{pmatrix} 2 & 2 & 4 & 2 \\ 0 & 1 & 3 & 1 \\ 0 & 0 & -3 & 6 \end{pmatrix} \xrightarrow{f_1 \to \frac{1}{2}f_1} \begin{pmatrix} 1 & 1 & 2 & 1 \\ 0 & 1 & 3 & 1 \\ f_3 \to -\frac{1}{3}f_3 \end{pmatrix}$$

3. Cuando una operación elemental  $f_i \to \alpha f_i$ , con  $\alpha \neq 0$  va seguida de una operación elemental  $f_i \to f_i + \beta f_j$  las podemos agrupar denotando el resultado por  $f_i \to \alpha f_i + \beta f_j$ .

$$\begin{pmatrix} 3 & 1 & 2 & 1 \\ 2 & -1 & 1 & 2 \\ 2 & 1 & 1 & 4 \end{pmatrix} \xrightarrow{f_2 \to 3f_2 - 2f_1} \begin{pmatrix} 3 & 1 & 2 & 1 \\ 0 & -5 & -1 & 4 \\ 2 & 1 & 1 & 4 \end{pmatrix}$$

#### Ejemplo 1.34 
Vamos a proceder a transformar una matriz dada en escalonada reducida sin seguir una pauta ordenada y agrupando operaciones elementales por filas.

$$\begin{pmatrix}
-4 & 8 & 0 & 0 \\
0 & 0 & 4 & 2 \\
2 & -4 & -3 & 0 \\
-2 & 4 & 3 & 0
\end{pmatrix}
\xrightarrow{f_1 \to f_1 + 2f_3}
\begin{pmatrix}
0 & 0 & -6 & 0 \\
0 & 0 & 4 & 2 \\
2 & -4 & -3 & 0 \\
0 & 0 & 0 & 0
\end{pmatrix}
\xrightarrow{f_2 \to 3f_2 + 2f_1}
\begin{pmatrix}
0 & 0 & -6 & 0 \\
0 & 0 & 0 & 6 \\
4 & -8 & 0 & 0 \\
0 & 0 & -6 & 0 \\
0 & 0 & -6 & 0 \\
0 & 0 & 0 & 6
\end{pmatrix}
\xrightarrow{f_1 \to f_2 \to f_3 \to f_1}
\begin{pmatrix}
4 & -8 & 0 & 0 \\
0 & 0 & -6 & 0 \\
0 & 0 & 0 & 6 \\
0 & 0 & 0 & 0
\end{pmatrix}
\xrightarrow{f_1 \to \frac{1}{4}f_1}
\begin{pmatrix}
1 & -2 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 0 & 0
\end{pmatrix}
\xrightarrow{f_3 \to \frac{1}{6}f_3}$$

### Errores habituales al agrupar operaciones elementales

Hay que destacar la importancia de aplicar de forma secuencial las operaciones elementales: se aplican en el orden que se indique y de una en una, es decir, cada operación elemental va transformando la matriz en la que actúa en otra distinta. Alguna agrupación de operaciones puede dar lugar a error al perderse esta noción de secuencialidad. Por ejemplo, cuando en la lista de operaciones elementales de filas que agrupamos generamos un ciclo en el siguiente sentido: modificamos la fila  $i_1$  empleando la fila  $i_2$ , modificamos la fila  $i_2$  empleando la fila  $i_3$ , ..., modificamos la fila  $i_{k-1}$  empleando la fila  $i_k$ , y modificamos la fila  $i_k$  empleando la fila  $i_1$ . Un ejemplo sencillo nos servirá como ilustración:

$$\begin{pmatrix} 2 & 4 \\ 1 & 2 \end{pmatrix} \xrightarrow{f_1 \to f_1 - 2f_2} \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}$$
$$f_2 \to f_2 - \frac{1}{2}f_1$$

Aparentemente hemos realizado correctamente cada una de las operaciones elementales de filas teniendo en cuenta la matriz original, sin embargo el resultado al que hemos llegado no es correcto ya que no es posible comenzar con una matriz distinta de 0 y tras aplicarle una serie de operaciones elementales de filas acabar en la matriz 0.

Vamos a ver la diferencia que existe al realizar esas mismas operaciones elementales de filas de forma secuencial:

$$\begin{pmatrix} 2 & 4 \\ 1 & 2 \end{pmatrix} \xrightarrow{f_1 \to f_1 - 2f_2} \begin{pmatrix} 0 & 0 \\ 1 & 2 \end{pmatrix} \xrightarrow{f_2 \to f_2 - \frac{1}{2}f_1} \begin{pmatrix} 0 & 0 \\ 1 & 2 \end{pmatrix}$$

Evitaremos el problema que acabamos de describir si imponemos que **ninguna fila que se va a modificar se puede a sus vez emplear en la misma operación para modificar a otra fila.** De esta forma el resultado será el mismo que el que se obtendría aplicando operaciones elementales de filas de forma secuencial.

Otros errores frecuentes ocurren al realizar la operación elemental  $f_i \to f_i + \frac{1}{\alpha} f_j$  o bien  $f_i \to \alpha f_i$ , siendo  $\alpha$  un parámetro que pueda llegar a ser 0. Por ejemplo, la operación elemental

$$\begin{pmatrix} \alpha & 3 \\ 1 & 4 \end{pmatrix} \xrightarrow{f_2 \to f_2 - \frac{1}{\alpha} f_1} \begin{pmatrix} \alpha & 3 \\ 0 & 4 - \frac{3}{\alpha} \end{pmatrix}$$

no es correcta si existe la posibilidad de que  $\alpha = 0$ .

### Operaciones elementales por columnas

El contenido de esta sección ha sido desarrollado trabajando por filas. Podemos obtener resultados análogos si trabajamos por columnas. Empezamos definiendo las **operaciones elementales por columnas** que se pueden aplicar a una matriz. Son de tres tipos:

- **Tipo I:** Intercambiar dos columnas. Se denota  $c_i \leftrightarrow c_j$ .
- **Tipo II:** Sumar a una columna otra multiplicada por un escalar. Se denota  $c_i \to c_i + \beta c_j$ .
- **Tipo III:** Multiplicar una columna por un escalar no nulo. Se denota  $c_i \to \beta c_i$  con  $\beta \neq 0$ .

Una matriz elemental de orden n que opera por columnas se obtiene al aplicar a la matriz identidad  $I_n$  la correspondiente operación elemental por columnas. Las hay de tres tipos:

•  $F_{c_i \leftrightarrow c_j}$  es la matriz resultante de aplicar a  $I_n$  la operación elemental  $c_i \leftrightarrow c_j$ .

$$I_n \xrightarrow[c_i \leftrightarrow c_j]{} F_{c_i \leftrightarrow c_j}$$

•  $F_{c_i \to c_i + \beta c_j}$  es la matriz resultante de aplicar a  $I_n$  la operación elemental  $c_i \to c_i + \beta c_j$ .

$$I_n \xrightarrow[c_i \to c_i + \beta c_i]{} F_{c_i \to c_i + \beta c_j}$$

•  $F_{c_i \to \beta c_i}$  es la matriz resultante de aplicar a  $I_n$  la operación elemental  $c_i \to \beta c_i$  con  $\beta \neq 0$ .

$$I_n \xrightarrow[c_i \to \beta c_i]{} F_{c_i \to \beta c_i}$$

Realizar una operación elemental en las columnas de una matriz A es equivalente a multiplicar A por la derecha por la matriz elemental que corresponde a dicha operación elemental. Este hecho queda reflejado en el siguiente esquema:

$$A \xrightarrow[c_i \leftrightarrow c_j]{} A \cdot F_{c_i \leftrightarrow c_j} \qquad A \xrightarrow[c_i \to c_i + \beta c_j]{} A \cdot F_{c_i \to c_i + \beta c_j} \qquad A \xrightarrow[c_i \to \beta c_i]{} A \cdot F_{c_i \to \beta c_i}$$

Vamos a ilustrar con un ejemplo cada tipo de operación elemental por columnas:

$$\begin{pmatrix} 0 & 2 & 2 \\ 2 & 0 & 4 \\ 3 & -1 & 3 \\ 0 & 1 & 2 \end{pmatrix} \xrightarrow{c_1 \leftrightarrow c_3} \begin{pmatrix} 2 & 2 & 0 \\ 4 & 0 & 2 \\ 3 & -1 & 3 \\ 2 & 1 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 2 & 2 \\ 2 & 0 & 4 \\ 3 & -1 & 3 \\ 0 & 1 & 2 \end{pmatrix} \xrightarrow{c_3 \to c_3 - 2c_2} \begin{pmatrix} 0 & 2 & -2 \\ 2 & 0 & 4 \\ 3 & -1 & 8 \\ 0 & 1 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 2 & 2 \\ 2 & 0 & 4 \\ 3 & -1 & 3 \\ 0 & 1 & 2 \end{pmatrix} \xrightarrow{c_3 \to c_3 - 2c_2} \begin{pmatrix} 0 & 2 & -2 \\ 2 & 0 & 4 \\ 3 & -1 & 8 \\ 0 & 1 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 2 & 2 \\ 2 & 0 & 4 \\ 3 & -1 & 3 \\ 0 & 1 & 2 \end{pmatrix} \xrightarrow{F_{c_1 \leftrightarrow c_3}} \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & -2 \\ 0 & 0 & 1 \end{pmatrix}$$

$$\begin{pmatrix} 0 & 2 & 2 \\ 2 & 0 & 4 \\ 3 & -1 & 3 \\ 0 & 1 & 2 \end{pmatrix} \xrightarrow{c_2 \to 3c_2} \begin{pmatrix} 0 & 6 & 2 \\ 2 & 0 & 4 \\ 3 & -3 & 3 \\ 0 & 3 & 2 \end{pmatrix} = \begin{pmatrix} 0 & 2 & 2 \\ 2 & 0 & 4 \\ 3 & -1 & 3 \\ 0 & 1 & 2 \end{pmatrix} \xrightarrow{F_{c_2 \to 3c_2}} \begin{pmatrix} 1 & 0 & 0 \\ 0 & 3 & 0 \\ 0 & 0 & 1 \end{pmatrix}$$

#### Definición 1.35

Dos matrices A y B son **equivalentes por columnas**,  $A \sim_c B$ , si se puede transformar A en B mediante una sucesión finita de operaciones elementales de columnas. Esta última propiedad es igual a decir que existen matrices elementales  $F_1, \ldots, F_h$  tales que  $B = AF_1 \cdots F_h$ .

#### Ejemplo 1.36 
$$C = \begin{pmatrix} 0 & 2 & 1 \\ -3 & 6 & -3 \\ 3 & 0 & 2 \end{pmatrix}
\text{ y } D = \begin{pmatrix} 1 & 0 & 0 \\ -3 & 12 & 0 \\ 2 & -4 & 2 \end{pmatrix}  \text {son equivalente por columnas ya que} $$
$$\begin{pmatrix} 0 & 2 & 1 \\ -3 & 6 & -3 \\ 3 & 0 & 2 \end{pmatrix} \xrightarrow{c_1 \leftrightarrow c_3} \begin{pmatrix} 1 & 2 & 0 \\ -3 & 6 & -3 \\ 2 & 0 & 3 \end{pmatrix} \xrightarrow{c_2 \to c_2 - 2c_1} \begin{pmatrix} 1 & 0 & 0 \\ -3 & 12 & -3 \\ 2 & -4 & 3 \end{pmatrix} \xrightarrow{c_3 \to c_3 + \frac{1}{4}c_2} \begin{pmatrix} 1 & 0 & 0 \\ -3 & 12 & 0 \\ 2 & -4 & 2 \end{pmatrix}$$

es una sucesión de operaciones elementales de columnas que transforma C en D.  $\square$ 

Si nos fijamos con detalle en los Ejemplos 1.21 y 1.36 observamos que  $C = A^t$ , que  $D = B^t$ , que las operaciones por filas en A se comportan como las operaciones por columnas en  $A^t$ , y que la sucesión de matrices que obtenemos en un caso son las traspuestas de las que obtenemos en el otro caso. Lo que ahonda en la idea de que todo lo que queramos hacer por columnas a una matriz es equivalente a trasponer la matriz y hacerlo por filas. En particular,  $A \sim_f B$  si y sólo si  $A^t \sim_c B^t$ .

La relación entre las matrices elementales (por filas) y las elementales por columnas es la siguiente:

$$F_{c_i \leftrightarrow c_j} = E_{f_i \leftrightarrow f_j}, \quad F_{c_i \to c_i + \beta c_j} = E_{f_i \to f_j + \beta f_i}, \quad F_{c_i \to \beta c_i} = E_{f_i \to \beta f_i}$$

#### Teorema 1.37

La equivalencia por columnas es una relación de equivalencia.

Una matriz A es **escalonada (escalonada reducida) por columnas** si su traspuesta  $A^t$  es escalonada (escalonada reducida). La **forma de Hermite por columnas** de A, que denotaremos por  $H_c(A)$ , es la única matriz escalonada reducida por columnas equivalente por columnas a A.

### Matrices equivalentes

De los conceptos de equivalencia por filas y equivalencia por columnas podemos pasar al concepto genérico de equivalencia si permitimos que se puedan realizar todo tipo de operaciones elementales.

#### Definición 1.38

Dos matrices A y B son **equivalentes**,  $A \sim B$ , si se puede transformar A en B mediante una sucesión finita de operaciones elementales por filas y/o columnas. Equivalentemente, si existen matrices elementales  $E_1, \ldots, E_k, F_1, \ldots, F_h$  tales que  $B = E_k \cdots E_1 A F_1 \cdots F_h$ .

#### Ejemplo 1.39 
$$A = \begin{pmatrix} 1 & -3 & 1 \\ -2 & 7 & 0 \\ 1 & -6 & -5 \end{pmatrix} \text{ y } B = \begin{pmatrix} 7 & -3 & 4 \\ -2 & 1 & 1 \\ 6 & -3 & -3 \end{pmatrix} \text{ son equivalentes ya que}$$

$$\begin{pmatrix} 1 & -3 & 1 \\ -2 & 7 & 0 \\ 1 & -6 & -5 \end{pmatrix} \sim_f \begin{pmatrix} 1 & -3 & 1 \\ 0 & 1 & 2 \\ 1 & -6 & -5 \end{pmatrix} \sim_f \begin{pmatrix} 1 & -3 & 1 \\ 0 & 1 & 2 \\ 0 & -3 & -6 \end{pmatrix} \sim_f \begin{pmatrix} 1 & -3 & 4 \\ 0 & 1 & 1 \\ 0 & -3 & -3 \end{pmatrix} \sim_c \begin{pmatrix} 7 & -3 & 4 \\ -2 & 1 & 1 \\ 6 & -3 & -3 \end{pmatrix}$$

es una sucesión de operaciones elementales (de filas y de columnas) que transforma A en B.  $\square$ 

De forma análoga a como se hizo con el Teorema 1.22 se puede demostrar el siguiente resultado.

#### Teorema 1.40

La equivalencia de matrices es una relación de equivalencia.

## 1.3. El rango de una matriz

En esta sección vamos a estudiar caracterizaciones y propiedades del rango de una matriz, un concepto que juega un papel central en todo el Álgebra Lineal.

#### Definición 1.41

El rango de una matriz A, rg(A), es el máximo número de filas independientes que tiene A.

**Observación:** El rango de una matriz que tiene n filas será un valor entre 0 y n. En un extremo tenemos, por ejemplo, a la identidad  $I_n$  ya que  $\operatorname{rg}(I_n) = n$  al ser sus n filas independientes. En el otro extremo el rango es 0 y tenemos únicamente a la matriz nula, ya que una fila nula no forma parte de ningún conjunto de filas independientes.

El método de Gauss sirve para detectar precisamente el número de filas independientes de una matriz. Si una fila  $F_i$  de una matriz A es combinación lineal de otras filas.  $F_i = \alpha_1 F_1 + \ldots + \alpha_k F_k$ , entonces podemos obtener una matriz equivalente por filas A' cuyas filas sean todas iguales a las de A salvo  $F_i$  que será nula. Lo podemos hacer aplicando las operaciones elementales agrupadas

$$A \xrightarrow{f_i \to f_i - (\alpha_1 f_1 + \ldots + \alpha_k f_k)} A'$$

Esto es lo que hace el algoritmo de escalonamiento del Teorema 1.24: se queda con un conjunto máximo de filas independientes y convierte en nulas al resto que son combinaciones lineales de aquéllas. Vamos a demostrar esto formalmente.

#### Proposición 1.42

El rango de una matriz escalonada es igual al número de filas no nulas que tiene.

**Demostración:** Las filas nulas de una matriz no forman parte de ningún conjunto de filas independientes, luego basta demostrar que todas las filas no nulas son independientes. Sea  $A \in \mathfrak{M}_{m \times n}(\mathbb{K})$  una matriz escalonada cuyas filas no nulas son  $F_1, \ldots, F_t$ . Procedemos por reducción al absurdo suponiendo que dichas filas son dependientes, entonces existen  $\alpha_1, \ldots, \alpha_t \in \mathbb{K}$  no todos nulos tales que

$$\alpha_1 F_1 + \dots + \alpha_t F_t = 0$$

Sea k el menor natural para el que  $\alpha_k \neq 0$ . Entonces

$$\alpha_1 F_1 + \dots + \alpha_{k-1} F_{k-1} + \alpha_k F_k + \dots + \alpha_t F_t = \alpha_k F_k + \dots + \alpha_t F_t = 0$$

ya que  $\alpha_1 = \cdots = \alpha_{k-1} = 0$ . Sin embargo, la fila resultante de la combinación lineal  $\alpha_k F_k + \cdots + \alpha_t F_t$  no puede ser nula ya que si  $a_{kj}$  es el pivote de la fila  $F_k$ , por ser la matriz escalonada, no hay ningún elemento distinto de 0, salvo él, en la columna j de las filas  $F_{k+1}, \ldots, F_t$ . Así,  $\alpha_k F_k + \cdots + \alpha_t F_t$  tendrá un elemento no nulo  $\alpha_k a_{kj}$  en la posición j, lo que nos lleva a una contradicción. Entonces, todas las filas no nulas de la matriz escalonada son independientes, como queríamos demostrar.

### Matrices equivalentes por filas y rango

Una de las propiedades más importantes del rango de una matriz es que se trata de un invariante por operaciones elementales de filas.

#### Teorema 1.43

Si dos matrices son equivalentes por filas entonces tienen igual rango.

**Demostración:** Supongamos que A y B son dos matrices equivalentes por filas. Sabemos que entonces coinciden sus formas de Hermite por filas, esto es,  $H_f(A) = H_f(B)$ . Por otra parte, la Proposición 1.42 nos dice que el rango de la forma de Hermite por filas es igual al número de filas no nulas. Por lo tanto, para demostrar que  $\operatorname{rg}(A) = \operatorname{rg}(B)$  bastará con demostrar que el rango de una matriz es igual al número de filas no nulas de su forma de Hermite por filas, ya que entonces

$$\operatorname{rg}(A) = \operatorname{rg}(H_f(A)) = \operatorname{rg}(H_f(B)) = \operatorname{rg}(B)$$

Veamos pues que  $\operatorname{rg}(A) = \operatorname{rg}(H_f(A))$ . Asumimos que  $\operatorname{rg}(A) = k$ . Sin pérdida de generalidad, reordenando filas si fuera necesario, supongamos que  $F_1, \ldots, F_k$  son k filas de A independientes y que las restantes son combinación lineal suya. Entonces, mediante operaciones elementales de filas, podemos transformar A en una matriz C cuyas primeras k-filas son las mismas de A y las restantes nulas. Si la forma de Hermite por filas de C,  $H_f(C)$ , tuviera menos de k filas no nulas (no puede tener más) entonces alguna fila de entre  $F_1, \ldots, F_k$  se habría convertido en nula. Salvo operaciones elementales de tipo I, intercambio de filas, en el proceso de transformación de C en su escalonada reducida equivalente  $H_f(C)$ , una fila  $F_i$  sufre la siguiente transformación:

$$F_i \longrightarrow \beta F_i + \alpha_1 F_1 + \dots + \alpha_{i-1} F_{i-1} + \alpha_{i+1} F_{i+1} + \dots + \alpha_k F_k, \quad \beta \neq 0$$

Si  $F_i$  se hubiese transformado en nula, entonces

$$F_{i} = \frac{-1}{\beta}(\alpha_{1}F_{1} + \dots + \alpha_{i-1}F_{i-1} + \alpha_{i+1}F_{i+1} + \dots + \alpha_{k}F_{k})$$

por lo que  $F_i$  sería una combinación lineal de las demás filas, lo que supone una contradicción. Luego el número de filas no nulas de  $H_f(C)$  es k, y por tanto  $\operatorname{rg}(H_f(C)) = k$ .  $\square$ 

**Nota:** El recíproco de este teorema no es cierto en general: dos matrices con el mismo rango no tienen por qué ser equivalentes. Podemos verlo en el Ejemplo 1.33 de la página 29, donde las matrices A y B tienen rango 3 y no son equivalentes por filas pues  $H_f(A) \neq H_f(B)$ .

Del Teorema 1.43 y la Proposición 1.42 obtenemos una caracterización práctica del rango.

#### Corolario 1.44

El rango de una matriz A es igual al número de filas no nulas que tiene cualquier matriz escalonada equivalente por filas a A.

#### Ejemplo 1.45

Vamos a calcular en función de  $\alpha$ ,  $\beta$  y  $\gamma$  el rango de la matriz

$$A = \begin{pmatrix} 2 & 3 & 5 & \alpha \\ 4 & 8 & 12 & \beta \\ 6 & 7 & 13 & \gamma \end{pmatrix}$$

Procedemos a escalonar A:

$$\begin{pmatrix} 2 & 3 & 5 & \alpha \\ 4 & 8 & 12 & \beta \\ 6 & 7 & 13 & \gamma \end{pmatrix} \sim_f \begin{pmatrix} 2 & 3 & 5 & \alpha \\ 0 & 2 & 2 & \beta - 2\alpha \\ 6 & 7 & 13 & \gamma \end{pmatrix} \sim_f \begin{pmatrix} 2 & 3 & 5 & \alpha \\ 0 & 2 & 2 & \beta - 2\alpha \\ 0 & -2 & -2 & \gamma - 3\alpha \end{pmatrix} \sim_f \begin{pmatrix} 2 & 3 & 5 & \alpha \\ 0 & 2 & 2 & \beta - 2\alpha \\ 0 & 0 & 0 & \gamma + \beta - 5\alpha \end{pmatrix} = A'$$

Luego 
$$\operatorname{rg}(A) = \operatorname{rg}(A') = 3 \operatorname{si} \gamma + \beta - 5\alpha \neq 0 \ \text{y} \ \operatorname{rg}(A) = 2 \operatorname{si} \gamma + \beta - 5\alpha = 0.$$

Terminamos el apartado con un resultado que caracteriza las matrices de orden n y rango n.

#### Teorema 1.46

Una matriz de orden n tiene rango n si y sólo si es producto de matrices elementales.

**Demostración:** Sea A una matriz de orden n. Por el Teorema 1.43 tenemos que  $\operatorname{rg}(A) = n$  si y sólo si  $\operatorname{rg}(H_f(A)) = n$ . Como la única matriz escalonada reducida de orden n y rango n es  $I_n$ . entonces  $\operatorname{rg}(A) = n$  si y sólo si  $H_f(A) = I_n$  si y sólo si  $A \sim_f I_n$ . Por otro lado, como la relación de equivalencia por filas es simétrica, entonces  $\operatorname{rg}(A) = n$  si y sólo si  $I_n \sim_f A$ , es decir, si y sólo si existen matrices elementales  $E_1, \ldots, E_k$  tales que  $A = E_k \cdots E_1 I_n = E_k \cdots E_1$ .  $\square$ 

### Matrices equivalentes y rango

Ahora podemos combinar las operaciones elementales por filas y por columnas para ver cómo se comporta el rango con respecto a la equivalencia de matrices. El siguiente lema técnico nos será de gran utilidad.

Sean 
$$H_r = \begin{pmatrix} I_r & 0 \\ \hline 0 & 0 \end{pmatrix}$$
 y  $H_s = \begin{pmatrix} I_s & 0 \\ \hline 0 & 0 \end{pmatrix}$  de igual tamaño. Entonces  $H_r \sim H_s$  si y sólo si  $r = s$ .

**Demostración:**  $\Rightarrow$ ) Procederemos por reducción al absurdo Supongamos que  $r \neq s$ . Sin pérdida de generalidad podemos suponer que r < s. Como  $H_r \sim H_s$  entonces  $H_s = E_k \cdots E_1 H_r F_1 \cdots F_h$  para una serie de matrices elementales  $E_i$  y  $F_j$ , que se corresponden con operaciones elementales de filas y columnas, respectivamente. Entonces, se tiene que  $H_s \sim_f H_r F_1 \cdots F_h$  y por el Teorema 1.43  $\operatorname{rg}(H_s) = \operatorname{rg}(H_r F_1 \cdots F_h)$ . Por otro lado, la matriz  $H_r F_1 \cdots F_h$ , resultante de hacer operaciones elementales con las columnas de  $H_r$ , es una matriz cuyas únicas filas no nulas son las r primeras. luego  $\operatorname{rg}(H_r F_1 \cdots F_h) \leq r$ . Entonces,  $s = \operatorname{rg}(H_s) \leq r$  lo que supone una contradicción con la hipótesis r < s. Por lo tanto, r = s. $\Leftarrow$) Si  $r = s$  entonces  $H_r = H_s$  y por tanto  $H_r \sim H_s$ .

####  Lema 1.48

Sean A y  $H_r = \begin{pmatrix} I_r & 0 \\ \hline 0 & 0 \end{pmatrix}$  matrices de igual tamaño. Entonces  $A \sim H_r$  si y solo si rg(A) = r.

**Demostración:**  $\Leftarrow$  Supongamos que el rango de A es r. Sea  $H_f(A) = (h_{ij})$  la forma escalonada reducida de A. Como  $A \sim_f H_f(A)$ , entonces  $H_f(A)$  tiene exactamente r filas no nulas y los pivotes de  $H_f(A)$  se encuentran en las posiciones  $(1,j_1),\ldots,(r,j_r)$ . Para cada  $k=1,\ldots,r$  la columna  $j_k$  de  $H_f(A)$  tiene como única entrada no nula a  $h_{kj_k}=1$ . Para cada fila k con  $1 \leq k \leq r$ , mediante operaciones elementales de columnas  $c_l \to c_l - h_{kl} c_{j_k}$  con  $l > j_k$ ; haremos que todas las entradas de la fila k, salvo  $h_{kj_k}$ , sean iguales a 0. Con estas operaciones obtenemos una matriz C con r entradas iguales a 1 en las posiciones  $(1,j_1),\ldots,(r,j_r)$  de los pivotes y con el resto de entradas iguales a 0. Mediante intercambio de columnas podemos transformar C en  $H_r$ . Luego  $A \sim_f H_f(A) \sim_c C \sim_c H_r$  y, por lo tanto,  $A \sim H_r$  como queríamos demostrar.

 $\Rightarrow$  Supongamos que  $A\sim H_r$  y sea  $\operatorname{rg}(A)=s.$  Según acabamos de ver  $A\sim H_s.$  Luego  $H_r\sim H_s$  y del Lemma 1.47 se sigue que s=r.  $\qed$ 

El concepto de equivalencia de matrices permite obtener la siguiente caracterización del rango.

#### Teorema 1.49

Dos matrices de igual tamaño son equivalentes si y sólo si tienen igual rango.

**Demostración:** Sean A y B dos matrices de igual tamaño con rg(A) = r y rg(B) = s. El Lema 1.48 nos dice que  $A \sim H_r$  y que  $B \sim H_s$ . Por el Lema 1.47  $H_r \sim H_s$  si y sólo si r = s. Y como  $\sim$  es una relación de equivalencia entonces  $A \sim B$  si y sólo si r = s.  $\square$ 

Del Teorema 1.49 y el Lema 1.48 se sigue que todas las matrices del mismo tamaño y rango son equivalentes a una misma matriz que es a la vez escalonada reducida por filas y por columnas.

#### Definición 1.50

La forma de Hermite de una matriz A de rango r es  $H(A) = \begin{pmatrix} I_r & 0 \\ \hline 0 & 0 \end{pmatrix}$  del orden de A.

**Nota:** En la demostración Lema 1.48 se describen las operaciones elementales de columnas necesarias para obtener la forma de Hermite de una matriz a partir de su forma escalonada reducida. Veamos un ejemplo práctico. En el Ejemplo 1.28 vimos que

$$A = \begin{pmatrix} 0 & 0 & 2 & 6 \\ 3 & 6 & 1 & 2 \\ 3 & 6 & 0 & -1 \\ 0 & 0 & 1 & 5 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 2 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix} = H_f(A)$$

Podemos aplicar ahora operaciones elementales por columnas hasta llegar a la forma de Hermite de A. En cada fila no nula hay un pivote y utilizamos la columna del pivote para conseguir hacer ceros el resto de elementos de la fila. En este caso sólo hay que hacerlo con la primera fila:

$$\begin{pmatrix} 1 & 2 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix} \xrightarrow{c_2 \to c_2 - 2c_1} \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix}$$

Cuando los únicos elementos no nulos de la matriz son los pivotes, todos iguales a 1. entonces hacemos intercambios de columnas:

$$\begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix} \xrightarrow{c_2 \leftrightarrow c_3} \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix} \xrightarrow{c_3 \leftrightarrow c_4} \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ \hline 0 & 0 & 0 & 0 \end{pmatrix} = \begin{pmatrix} I_3 & 0 \\ \hline 0 & 0 \end{pmatrix} = H(A)$$

### El rango de la matriz traspuesta

#### Teorema 1.51

Sean A y B dos matrices de tamaño  $m \times n$ . Son ciertas las afirmaciones:

- 1.  $A \sim B$  si y sólo si  $A^t \sim B^t$ .
- 2. Si A es cuadrada entonces  $A \sim A^t$ .
- 3.  $rg(A) = rg(A^t)$ .
- 4. Si A tiene tamaño  $m \times n$  entonces  $rg(A) \le min\{m, n\}$ .

**Demostración:** 1. Si  $A \sim B$  entonces

$$B = E_t \cdots E_1 A F_1 \cdots F_h$$

donde las  $E_i$  y  $F_j$  son matrices elementales. Luego

$$B^t = (E_k \cdots E_1 A F_1 \cdots F_h)^t = F_h^t \cdots F_1^t A^t E_1^t \cdots E_k^t$$

y concluimos que  $A^t \sim B^t$  puesto que las  $E_i^t$  y las  $F_i^t$  son matrices elementales.

De manera análoga tenemos que si  $A^t \sim B^t$  entonces  $(A^t)^t \sim (B^t)^t$ , esto es.  $A \sim B$ .

2. Sea  $\operatorname{rg}(A) = r$ . Por el Lema 1.48  $A \sim H_r$ , y según el apartado 1 tenemos que  $A^t \sim H_r^t$ . Teniendo en cuenta que  $H_r^t = H_r$  entonces

$$A^t \sim H_r^t = H_r \sim A$$

y por ser $\sim$ una relación de equivalencia se tiene  $A\sim A^t.$ 

3. Sea  $A \in \mathfrak{M}_{m \times n}(\mathbb{K})$ . El resultado para m=n se sigue del apartado anterior y del Teorema 1.49. Supongamos ahora, sin perdida de generalidad, que m < n. Sea C la matriz de orden n que se obtiene añadiéndole a A n-m filas nulas. La matriz  $C^t$  es la matriz que se obtiene añadiéndole a  $A^t$  n-m columnas nulas. Se cumple que  $\operatorname{rg}(A)=\operatorname{rg}(C)$  y  $\operatorname{rg}(A^t)=\operatorname{rg}(C^t)$ . Por otro lado, como C es una matriz cuadrada, aplicando la propiedad (2)  $\operatorname{rg}(C)=\operatorname{rg}(C^t)$ , y por tanto

$$rg(A) = rg(C) = rg(C^t) = rg(A^t)$$

4. Por la definición de rango tenemos que  $\operatorname{rg}(A) \leq m$ . Y como  $A^t \in \mathfrak{M}_{n \times m}(\mathbb{K})$  tenemos que  $\operatorname{rg}(A^t) \leq n$ . El resultado se sigue entonces ya que  $\operatorname{rg}(A) = \operatorname{rg}(A^t)$ .  $\square$ 

El número de columnas linealmente independientes de A es igual al número de filas linealmente independientes de  $A^t$ . Teniendo en cuenta que  $\operatorname{rg}(A) = \operatorname{rg}(A^t)$  llegamos a la conclusión de que **el rango de una matriz también es el máximo número de columnas linealmente independientes que tiene**. Esto es análogo a la Definción 1.41 de rango de una matriz utilizando su estructura por columnas en lugar de por filas. Todos los resultados que relacionan el rango de una matriz con su estructura de filas pueden ser enunciados en relación a su estructura de columnas.

#### Ejemplo 1.52

Sea

$$A = \begin{pmatrix} 2 & 0 & 0 & 0 \\ 4 & 0 & 0 & 0 \\ 6 & 7 & 0 & 0 \\ 1 & 5 & 2 & 0 \end{pmatrix}$$

Dado que  $rg(A) = rg(A^t)$  tenemos que

$$\operatorname{rg}\begin{pmatrix} 2 & 0 & 0 & 0 \\ 4 & 0 & 0 & 0 \\ 6 & 7 & 0 & 0 \\ 1 & 5 & 2 & 0 \end{pmatrix} = \operatorname{rg}\begin{pmatrix} 2 & 4 & 6 & 1 \\ 0 & 0 & 7 & 5 \\ 0 & 0 & 0 & 2 \\ 0 & 0 & 0 & 0 \end{pmatrix} = 3$$

Habitualmente estamos trabajando con equivalencia por filas y con matrices escalonadas por filas. Por eso nos resulta sencillo ver que  $A^t$  es una matriz escalonada que tiene 3 filas no nulas y concluir que  $\operatorname{rg}(A) = \operatorname{rg}(A^t) = 3$ . Pero también podríamos haber dicho directamente que A es una matriz escalonada por columnas que tiene 3 columnas no nulas y que por tanto  $\operatorname{rg}(A) = 3$ .  $\square$ 

### El rango de la suma y del producto de matrices

Terminamos el estudio del rango viendo cómo se comporta con respecto a las operaciones con matrices.

#### Teorema 1.53

Sean  $A, B \in \mathfrak{M}_{m \times n}(\mathbb{K})$  y  $D \in \mathfrak{M}_{n \times p}(\mathbb{K})$ . Son ciertas las afirmaciones:

- 1.  $|\operatorname{rg}(A) \operatorname{rg}(B)| \le \operatorname{rg}(A+B) \le \operatorname{rg}(A) + \operatorname{rg}(B)$ .
- 2.  $rg(A) = rg(\alpha A)$  para todo  $\alpha \in \mathbb{K}$  con  $\alpha \neq 0$ .
- 3.  $\operatorname{rg}(AD) \le \min\{\operatorname{rg}(A), \operatorname{rg}(D)\}.$
- 4. Si  $C \in \mathfrak{M}_n(\mathbb{K})$  y  $\operatorname{rg}(C) = n$  entonces  $\operatorname{rg}(AC) = \operatorname{rg}(A)$ .
- 5. Si  $C \in \mathfrak{M}_n(\mathbb{K})$  y  $\operatorname{rg}(C) = n$  entonces  $\operatorname{rg}(CD) = \operatorname{rg}(D)$ .

**Demostración:**

1. Consideramos la matriz  $\left(\frac{A+B}{B}\right)$  de tamaño  $2m \times n$ . Si le aplicamos las m operaciones elementales

$$f_i \to f_i - f_{i+m}$$
 con  $i = 1, \dots, m$ 

la transformaremos en la matriz  $\left(\frac{A}{B}\right)$ . Ambas matrices tienen igual rango por ser equivalentes por filas. Entonces

$$\operatorname{rg}(A+B) \le \operatorname{rg}\left(\frac{A+B}{B}\right) = \operatorname{rg}\left(\frac{A}{B}\right) \le \operatorname{rg}(A) + \operatorname{rg}(B)$$

La primera desigualdad es obvia. La segunda desigualdad se debe a que el número de filas independientes de  $\left(\frac{A}{B}\right)$  será menor o igual al número de filas independientes de A más el número de filas independientes de B.

Por otro lado, como

$$A = (A + B) + (-B)$$

entonces

$$rg(A) \le rg(A+B) + rg(-B) = rg(A+B) + rg(B) \quad (*)$$

y como

$$B = (A+B) + (-A)$$

entonces

$$rg(B) \le rg(A+B) + rg(-A) = rg(A+B) + rg(A) \quad (**)$$

De (\*) y (\*\*) se sigue que

$$rg(A+B) \ge max\{rg(A) - rg(B), rg(B) - rg(A)\} = |rg(A) - rg(B)|$$

- 2. Las matrices A y  $\alpha A$  son equivalentes por filas ya que podemos pasar de A a  $\alpha A$  mediante una sucesión de operaciones elementales de filas que consisten en multiplicar cada fila de A por  $\alpha$ . El resultado es, por tanto, consecuencia del Teorema 1.49.
- 3. Sean  $H=H_f(A)$  y  $G=H_c(D)$  las formas de Hermite por filas de A y por columnas de D. Entonces

$$H = E_k \cdots E_1 A$$
 y  $G = DF_1 \cdots F_h$ 

donde las  $E_i$  y  $F_i$  son ciertas matrices elementales. Dado que

$$HG = E_k \cdots E_1 ADF_1 \cdots F_h$$

entonces  $AD \sim HG$ . Si  $\operatorname{rg}(A) = r$  entonces H tiene r filas no nulas y HG tiene como mucho r filas no nulas. Si  $\operatorname{rg}(D) = s$  entonces G tiene s columnas no nulas y HG tiene como mucho s columnas no nulas. Por tanto

$$rg(AD) = rg(HG) \le min\{r, s\}$$

- 4. Si  $\operatorname{rg}(C) = n$  entonces, Teorema 1.46,  $C = E_1 \cdots E_k$  donde  $E_1, \ldots, E_k$  son matrices elementales. Luego  $AC = AE_1 \cdots E_k$  y  $AC \sim_c A$ . Dado que  $AC \sim_c A$  entonces también se tiene que  $AC \sim A$  y aplicando el Teorema 1.49 se deduce que  $\operatorname{rg}(AC) = \operatorname{rg}(A)$ .
- 5. Se demuestra de manera análoga al apartado anterior (véase Ejercicio 1.13.).

## 1.4. La inversa de una matriz cuadrada

El producto de matrices cuadradas de orden n es una operación interna en  $\mathfrak{M}_n(\mathbb{K})$ , es asociativo, no es conmutativo y la matriz identidad de orden n es su elemento neutro. Esto nos lleva a preguntarnos por la existencia de elemento inverso.

#### Definición 1.54

Una matriz A de orden n es invertible o regular si existe una matriz de orden n, que se llama matriz inversa de A y se denota por  $A^{-1}$ , tal que

$$A \cdot A^{-1} = I_n = A^{-1} \cdot A$$

De estas igualdades se sigue que si A es invertible entonces su inversa es invertible y  $(A^{-1})^{-1} = A$ . Diremos que una matriz es **singular** si no tiene inversa.

No todas las matrices tienen inversa. El ejemplo más sencillo es la matriz nula 0 de orden n, ya que para cualquier otra matriz B de orden n tenemos que  $B \cdot 0 = 0 \cdot B = 0$ .

Ejemplo 1.55

Calcular, si existe, una matriz inversa de  $A = \begin{pmatrix} 1 & -2 \\ 1 & -1 \end{pmatrix}$ .

**Solución:** Sea  $B = \begin{pmatrix} \alpha & \beta \\ \gamma & \delta \end{pmatrix}$  una matriz tal que  $AB = I_2$ , esto es,

$$\begin{pmatrix} 1 & -2 \\ 1 & -1 \end{pmatrix} \begin{pmatrix} \alpha & \beta \\ \gamma & \delta \end{pmatrix} = \begin{pmatrix} \alpha - 2\gamma & \beta - 2\delta \\ \alpha - \gamma & \beta - \delta \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$$

Igualando las entradas y resolviendo queda  $\alpha = -1$ ,  $\beta = 2$ ,  $\gamma = -1$ ,  $\delta = 1$ . La matriz  $B = \begin{pmatrix} -1 & 2 \\ -1 & 1 \end{pmatrix}$  es, por tanto, la única candidata a ser una matriz inversa de A. Para que lo sea también se tiene que verificar que  $BA = I_2$ . Vemos que esto también lo cumple:

$$\begin{pmatrix} -1 & 2 \\ -1 & 1 \end{pmatrix} \begin{pmatrix} 1 & -2 \\ 1 & -1 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} \qquad \Box$$

En la solución del ejemplo hemos visto que A tiene una única matriz inversa. ¿Puede darse que una matriz tenga más de una matriz inversa? En el siguiente resultado veremos que eso no es posible.

#### Teorema 1.56

Una matriz invertible tiene una única inversa.

**Demostración:** Si A es invertible y C y D son inversas de A entonces

$$C = CI_n = C(AD) = (CA)D = I_nD = D \qquad \Box$$

En el siguiente resultado vemos que las matrices elementales tienen inversa y cómo se calcula.

#### Proposición 1.57

La matriz inversa de cada tipo de matriz elemental viene dada por:

- (i)  $E_{f_i \leftrightarrow f_j}^{-1} = E_{f_i \leftrightarrow f_j}$ .
- (ii)  $E_{f_i \to f_i + \beta f_j}^{-1} = E_{f_i \to f_i \beta f_j}$ .
- (iii)  $E_{f_i \to \beta f_i}^{-1} = E_{f_i \to \frac{1}{\beta} f_i} \text{ con } \beta \neq 0.$

**Demostración:** La comprobación en cada caso es inmediata. Observamos que las inversas coinciden con las matrices elementales asociadas a las operaciones elementales inversas (pág. 22).

Describimos a continuación el comportamiento de la inversa con respecto a la traspuesta y al producto.

#### Teorema 1.58

Sean  $A, B, A_1, \ldots, A_k$  matrices de orden n. Son ciertas las afirmaciones:

- 1. A es invertible si y sólo si  $A^t$  es invertible. Además,  $(A^t)^{-1} = (A^{-1})^t$ .
- 2. Si A y B son invertibles entonces AB es invertible y su inversa es  $(AB)^{-1} = B^{-1}A^{-1}$ .
- 3. Si  $A_1, \ldots, A_k$  son invertibles entonces  $(A_1 \cdots A_k)^{-1} = A_k^{-1} \cdots A_1^{-1}$ .

**Demostración:** 1. Si A es invertible entonces podemos comprobar que  $(A^{-1})^t$  es la inversa de  $A^t$ :

$$A^{t}(A^{-1})^{t} = (A^{-1}A)^{t} = I_{n}^{t} = I_{n}$$
 y  $(A^{-1})^{t}A^{t} = (AA^{-1})^{t} = I_{n}^{t} = I_{n}$ 

En sentido contrario, si  $A^t$  es invertible entonces su traspuesta  $(A^t)^t = A$  es invertible.

2. Veamos que  $B^{-1}A^{-1}$  es la inversa de AB:

$$(AB)(B^{-1}A^{-1}) = ABB^{-1}A^{-1} = AI_nA^{-1} = AA^{-1} = I_n$$
  
 $(B^{-1}A^{-1})(AB) = B^{-1}A^{-1}AB = B^{-1}I_nB = B^{-1}B = I_n$ 

3. 
$$(A_1A_2\cdots A_k)^{-1}=(A_1(A_2\cdots A_k))^{-1}=(A_2\cdots A_k)^{-1}A_1^{-1}=\cdots=A_k^{-1}\cdots A_2^{-1}A_1^{-1}.$$

#### Ejemplo 1.59
Calcule  $A = E_1 E_2 E_3 E_4$  y la matriz inversa de A siendo

$$E_1 = \begin{pmatrix} 0 & 0 & 1 \\ 0 & 1 & 0 \\ 1 & 0 & 0 \end{pmatrix}, E_2 = \begin{pmatrix} 1 & 0 & 0 \\ -1 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}, E_3 = \begin{pmatrix} 1 & 0 & 3 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}, E_4 = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 2 \end{pmatrix}$$

**Solución:** Calculamos A:

$$A = E_1 E_2 E_3 E_4 = \begin{pmatrix} 0 & 0 & 1 \\ 0 & 1 & 0 \\ 1 & 0 & 0 \end{pmatrix} \begin{pmatrix} 1 & 0 & 0 \\ -1 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} 1 & 0 & 3 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 2 \end{pmatrix} = \begin{pmatrix} 0 & 0 & 2 \\ -1 & 1 & -6 \\ 1 & 0 & 6 \end{pmatrix}$$

Si escribimos una matriz como producto de matrices elementales, el cálculo de su inversa se puede realizar utilizando el Teorema 1.58 y la Proposición 1.57. En concreto tenemos que

$$A^{-1} = E_4^{-1} E_3^{-1} E_2^{-1} E_1^{-1} = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1/2 \end{pmatrix} \begin{pmatrix} 1 & 0 & -3 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} 1 & 0 & 0 \\ 1 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} 0 & 0 & 1 \\ 0 & 1 & 0 \\ 1 & 0 & 0 \end{pmatrix} = \begin{pmatrix} -3 & 0 & 1 \\ 0 & 1 & 1 \\ 1/2 & 0 & 0 \end{pmatrix}$$

### Caracterización de las matrices invertibles

#### Teorema 1.60

Sea A una matriz de orden n. Son equivalentes las afirmaciones:

- 1. A tiene inversa.
- 2. Si BA = CA entonces B = C.
- 3. Si BA = 0 entonces B = 0.
- 4. A tiene rango n.

**Demostración:**  $1 \Rightarrow 2$ . Supongamos que A tiene inversa y BA = CA, entonces se deduce que B y C tienen el mismo tamaño  $m \times n$ , y dado que A tiene inversa entonces

$$B = BI_n = BAA^{-1} = CAA^{-1} = CI_n = C$$

- $2 \Rightarrow 3$ . Obvio, basta con tomar C = 0.
- $3\Rightarrow 4$ . Procedemos por reducción al absurdo. Supongamos que  $\operatorname{rg}(A) < n$ . La forma de Hermite por filas de  $A, H_f(A) = E_k \cdots E_1 A$ , donde las  $E_i$  son matrices elementales, tiene rango menor que n y por tanto las entradas de su última fila son iguales a 0. Si  $D=(0\ldots 0\ 1)\in \mathfrak{M}_{1\times n}$  entonces es fácil comprobar que  $DH_f(A)=0$ , esto es, que  $DE_k\cdots E_1 A=0$ . Dado que el producto  $E_k\cdots E_1$  tiene rango n, del cuarto apartado del Teorema 1.53 se sigue que

$$\operatorname{rg}(DE_k\cdots E_1)=\operatorname{rg}(D)=1$$

y esto nos lleva a contradecir la condición 3 pues  $DE_k\cdots E_1A=0$  y  $DE_k\cdots E_1\neq 0$ .

 $4 \Rightarrow 1$ . Por el Teorema 1.46  $A = E_k \cdots E_1$  donde  $E_1, \dots, E_k$  son matrices elementales. Entonces

$$(E_1^{-1}\cdots E_k^{-1})A = E_1^{-1}\cdots E_k^{-1}E_k\cdots E_1 = I_n = E_k\cdots E_1E_1^{-1}\cdots E_k^{-1} = A(E_1^{-1}\cdots E_k^{-1})$$

luego  $E_1^{-1} \cdots E_k^{-1}$  es la inversa de A.  $\square$ 

Nota: Más adelante utilizaremos el hecho de que una matriz invertible se puede escribir como producto de matrices elementales para desarrollar un método efectivo para el cálculo de su inversa.

#### Ejemplo 1.61
El Teorema 1.60 nos dice que una matriz A de orden n tiene inversa si y sólo si rg(A) = n, o lo que es lo mismo, si y sólo si las n filas de A son independientes. Las filas de la matriz

$$A = \begin{pmatrix} 2 & 3 & 5 \\ 1 & 1 & 3 \\ 3 & 8 & 4 \end{pmatrix}$$

no son independientes puesto que  $5F_1 - 7F_2 - F_3 = 0$ . Luego rg(A) < 3 y A no tiene inversa. Sea B la matriz fila cuyas entradas son los coeficientes de esta ecuación. Entonces

$$BA = \begin{pmatrix} 5 & -7 & -1 \end{pmatrix} \begin{pmatrix} 2 & 3 & 5 \\ 1 & 1 & 3 \\ 3 & 8 & 4 \end{pmatrix} = 5F_1 - 7F_2 - F_3 = 5\begin{pmatrix} 2 & 3 & 5 \end{pmatrix} - 7\begin{pmatrix} 1 & 1 & 3 \end{pmatrix} - \begin{pmatrix} 3 & 8 & 4 \end{pmatrix} = \begin{pmatrix} 0 & 0 & 0 \end{pmatrix}$$

Tenemos un ejemplo que prueba que si  $A \neq 0$  no tiene inversa entonces BA = 0 no implica B = 0. Como ya sabíamos, el producto de dos matrices no nulas puede ser una matriz nula [^5].  $\square$ 

Podemos completar el Teorema 1.60 viendo qué cosas pasan cuando se multiplica una matriz invertible por la derecha.

#### Teorema 1.62

Sea A una matriz de orden n. Son equivalentes las afirmaciones:

- 1'. A tiene inversa.
- 2'. Si AB = AC entonces B = C.
- 3'. Si AB=0 entonces B=0.

**Demostración:** El razonamiento es análogo al de la demostración del Teorema 1.60, teniendo en cuenta que ahora al multiplicar A por la derecha aparecen operaciones elementales por columnas.

#### Corolario 1.63

Sean A, B y C matrices de orden n. Son ciertas las afirmaciones:

- 1. Si  $AB = I_n$  entonces  $B = A^{-1}$ .
- 2. Si  $CA = I_n$  entonces  $C = A^{-1}$ .



**Demostración:** 1. Si  $AB = I_n$  entonces

$$n = \operatorname{rg}(I_n) = \operatorname{rg}(AB) \le \min\{\operatorname{rg}(A), \operatorname{rg}(B)\} \le n$$

Luego rg(A) = n y, por el Teorema 1.60, A tiene inversa. Entonces, multiplicando en la ecuación  $AB = I_n$  por la izquierda por  $A^{-1}$  se tiene

$$A^{-1}AB = A^{-1}I_n \Leftrightarrow I_nB = A^{-1} \Leftrightarrow B = A^{-1}$$

2. Se demuestra de forma análoga.

Una consecuencia de este resultado es que si tenemos una matriz B como candidata a ser la inversa de una matriz A, basta con que comprobemos una de las dos condiciones:  $AB = I_n$  o bien  $BA = I_n$ .

### Matrices congruentes y matrices semejantes

Dos matrices A y B de orden n son **congruentes** si existe una matriz regular P, del mismo orden, tal que  $B = P^t A P$ .

Una consecuencia de los Teoremas anteriores es que dos matrices congruentes tienen el mismo rango. En efecto, si P es regular entonces también  $P^t$  es regular v

$$rg(A) = rg(AP) = rg(P^tAP) = rg(B)$$

Dos matrices A y B de orden n son **semejantes** si existe una matriz regular P, del mismo orden, tal que  $B = P^{-1}AP$ . Del mismo modo se demuestra que dos matrices semejantes tienen el mismo rango

$$\operatorname{rg}(A) = \operatorname{rg}(AP) = \operatorname{rg}(P^{-1}AP) = \operatorname{rg}(B)$$

También se cumple que dos matrices semejantes tienen la misma traza.

$$\operatorname{tr}(B) = \operatorname{tr}(P^{-1}AP) = \operatorname{tr}((P^{-1}A)P) = \operatorname{tr}(P(P^{-1}A)) = \operatorname{tr}(I_nA) = \operatorname{tr}(A)$$

**Cálculo de las matrices que transforman A en $H_f(A)$ y A en $H_c(A)$**

Dada una matriz A de tamaño  $m \times n$ , ¿cómo podemos calcular una matriz invertible P de orden m tal que  $PA = H_f(A)$ ? ¿y cómo podemos calcular una matriz invertible Q de orden n tal que  $AQ = H_c(A)$ ? Vamos a describir un procedimiento sencillo para calcular P y Q:

1. Aplicamos a A operaciones elementales por filas hasta obtener  $H_f(A)$ :

$$A \xrightarrow{f_{i_1} \to \cdots} \xrightarrow{f_{i_2} \to \cdots} \cdots \xrightarrow{f_{i_k} \to \cdots} H_f(A)$$

Sean  $E_1, \ldots, E_k$  las matrices elementales de orden m asociadas a dichas operaciones. Entonces

$$(E_k \cdots E_1) A = H_f(A)$$

Para calcular  $P = E_k \cdots E_1$  se aplican las mismas operaciones elementales a  $I_m$ :

$$I_m \xrightarrow{f_{i_1} \to \cdots} \xrightarrow{f_{i_2} \to \cdots} \cdots \xrightarrow{f_{i_n} \to \cdots} E_k \cdots E_1$$

Podemos aplicar las operaciones elementales por filas a la vez a A y a  $I_m$  del siguiente modo

$$(A | I_m) \xrightarrow{f_{i_1} \to \cdots} \xrightarrow{f_{i_2} \to \cdots} \cdots \xrightarrow{f_{i_k} \to \cdots} (H_f(A) | E_k \cdots E_1)$$

2. Aplicamos a A operaciones elementales por columnas hasta obtener  $H_c(A)$ :

$$A \xrightarrow[c_{i_1} \to \cdots]{} c_{i_2} \xrightarrow[c_{i_2} \to \cdots]{} \cdots \xrightarrow[c_{i_h} \to \cdots]{} H_c(A)$$

Sean  $F_1, \ldots, F_h$  las matrices elementales de orden n asociadas a dichas operaciones. Entonces

$$A(F_1\cdots F_h)=H_c(A)$$

Para calcular  $Q = F_1 \cdots F_h$  se aplican las mismas operaciones elementales a  $I_n$ :

$$I_n \xrightarrow[c_{i_1} \to \cdots]{} \overrightarrow{c_{i_2} \to \cdots} \xrightarrow[c_{i_h} \to \cdots]{} F_1 \cdots F_h$$

Podemos aplicar las operaciones elementales por columnas a la vez a A y a  $I_n$  del siguiente modo

$$\left(\begin{array}{c} A \\ \hline I_n \end{array}\right) \quad \overrightarrow{c_{i_1} \to \cdots} \quad \overrightarrow{c_{i_2} \to \cdots} \quad \cdots \quad \overrightarrow{c_{i_h} \to \cdots} \quad \left(\begin{array}{c} H_c(A) \\ \hline F_1 \cdots F_h \end{array}\right)$$

#### Ejemplo 1.64

Sea

$$A = \begin{pmatrix} 1 & 3 & 3 & 1 \\ 0 & 1 & 2 & 0 \\ 1 & 3 & 1 & 1 \\ 1 & 2 & 1 & 1 \end{pmatrix}$$

- 1. Calcule  $H_f(A)$  y una matriz invertible P tal que  $PA = H_f(A)$ .
- 2. Calcule  $H_c(A)$  y una matriz invertible Q tal que  $AQ = H_c(A)$ .

**Solución:** Empezamos calculando  $H_f(A)$  y P:

$$(A | I_4) = \begin{pmatrix} 1 & 3 & 3 & 1 & 1 & 0 & 0 & 0 \\ 0 & 1 & 2 & 0 & 0 & 1 & 0 & 0 \\ 1 & 3 & 1 & 1 & 0 & 0 & 0 & 1 & 0 \\ 1 & 2 & 1 & 1 & 0 & 0 & 0 & 1 \end{pmatrix} \xrightarrow{f_3 \to f_3 - f_1} \begin{pmatrix} 1 & 3 & 3 & 1 & 1 & 0 & 0 & 0 \\ 0 & 1 & 2 & 0 & 0 & 1 & 0 & 0 \\ 0 & 0 & -2 & 0 & -1 & 0 & 1 & 0 \\ 0 & -1 & -2 & 0 & -1 & 0 & 0 & 1 \end{pmatrix}$$

$$\xrightarrow{f_1 \to f_1 - 3f_2} \begin{pmatrix} 1 & 0 & -3 & 1 & 1 & -3 & 0 & 0 \\ 0 & 1 & 2 & 0 & 0 & 0 & -1 & 1 & 0 & 0 \\ 0 & 0 & -2 & 0 & -1 & 1 & 0 & 1 \end{pmatrix} \xrightarrow{f_3 \to \frac{1}{2}f_3} \begin{pmatrix} 1 & 0 & -3 & 1 & 1 & -3 & 0 & 0 \\ 0 & 1 & 2 & 0 & 0 & 1 & 0 & 0 \\ 0 & 0 & -2 & 0 & -1 & 1 & 0 & 1 \end{pmatrix} \xrightarrow{f_3 \to \frac{1}{2}f_3} \begin{pmatrix} 1 & 0 & -3 & 1 & 1 & -3 & 0 & 0 \\ 0 & 1 & 2 & 0 & 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 & \frac{1}{2} & 0 & -\frac{1}{2} & 0 \\ 0 & 0 & 0 & 0 & -1 & 1 & 0 & 1 \end{pmatrix}$$

$$\xrightarrow{f_1 \to f_1 + 3f_3} \begin{pmatrix} 1 & 0 & 0 & 1 & \frac{5}{2} & -3 & -\frac{3}{2} & 0 \\ 0 & 0 & 0 & 0 & -1 & 1 & 0 & 1 \end{pmatrix} = (H_f(A) | P)$$

$$\xrightarrow{f_2 \to f_2 - 2f_3} \begin{pmatrix} 1 & 0 & 0 & 1 & \frac{1}{2} & 0 & -\frac{1}{2} & 0 \\ 0 & 0 & 0 & 0 & -1 & 1 & 0 & 1 \end{pmatrix} = (H_f(A) | P)$$

con  $PA = H_f(A)$  (compruebe que es cierto).

Y ahora calculamos  $H_c(A)$  y Q:

con  $AQ = H_c(A)$  (compruebe que es cierto).  $\square$ 

Dado que una matriz es invertible si y sólo si es producto de matrices elementales, podemos caracterizar en términos de matrices invertibles la equivalencia de matrices.

#### Proposición 1.65

Sean A v B dos matrices del mismo tamaño. Son ciertas las afirmaciones:

- 1.  $A \sim_f B$  si y sólo si existe una matriz invertible P tal que PA = B.
- 2.  $A \sim_c B$  si y sólo si existe una matriz invertible Q tal que AQ = B.
- 3.  $A \sim B$  si y sólo si existen matrices invertibles P y Q tales que PAQ = B.

#### Ejemplo 1.66

¿Son equivalentes

$$A = \begin{pmatrix} 1 & -6 & 3 \\ -2 & 12 & -5 \end{pmatrix} \quad \text{y} \quad B = \begin{pmatrix} 2 & 3 & 3 \\ -2 & -2 & 1 \end{pmatrix} ?$$

Si lo son encuentre dos matrices invertibles P y Q tales que PAQ = B.

**Solución:** El Teorema 1.49 nos dice que dos matrices son equivalentes si y sólo si tienen igual rango. Luego A y B son equivalentes puesto que rg(A) = rg(B) = 2.

Para calcular P y Q vamos a proceder según el siguiente esquema:

- 1. Se calcula una matriz  $P_1$  invertible tal que  $P_1A = H_f(A)$ .
- 2. Se calcula una matriz  $Q_1$  invertible tal que  $H_f(A)Q_1=H(A)$ .
- 3. Se calcula una matriz  $P_2$  invertible tal que  $P_2B = H_f(B)$ .
- 4. Se calcula una matriz  $Q_2$  invertible tal que  $H_f(B)Q_2 = H(B)$ .
- 5. Entonces  $P=P_2^{-1}P_1$  y  $Q=Q_1Q_2^{-1}$  son matrices invertibles tales que PAQ=B ya que

$$H(A) = H(B) \Rightarrow H_f(A)Q_1 = H_f(B)Q_2 \Rightarrow P_1AQ_1 = P_2BQ_2 \Rightarrow P_2^{-1}P_1AQ_1Q_2^{-1} = B$$

Así que manos a la obra:

1. Cálculo de  $P_1$  y  $H_f(A)$ :

$$(A \mid I_2) = \begin{pmatrix} 1 & -6 & 3 & 1 & 0 \\ -2 & 12 & -5 & 0 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & -6 & 3 & 1 & 0 \\ 0 & 0 & 1 & 2 & 1 \end{pmatrix}$$

$$\sim_f \begin{pmatrix} 1 & -6 & 0 & -5 & -3 \\ 0 & 0 & 1 & 2 & 1 \end{pmatrix} = (H_f(A) \mid P_1)$$

2. Cálculo de  $Q_1$  y H(A):

$$\left(\begin{array}{c}
H_f(A) \\
\hline
I_3
\end{array}\right) = \begin{pmatrix}
1 & -6 & 0 \\
0 & 0 & 1 \\
\hline
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & 1
\end{pmatrix}
\sim_c \begin{pmatrix}
1 & 0 & 0 \\
0 & 0 & 1 \\
\hline
1 & 6 & 0 \\
0 & 1 & 0 \\
0 & 0 & 1
\end{pmatrix}
\sim_c \begin{pmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
\hline
1 & 0 & 6 \\
0 & 0 & 1 \\
0 & 1 & 0
\end{pmatrix}
= \begin{pmatrix}
H(A) \\
\hline
Q_1
\end{pmatrix}$$

3. Cálculo de  $P_2$  y  $H_f(B)$ :

$$(B \mid I_2) = \begin{pmatrix} 2 & 3 & 3 & 1 & 0 \\ -2 & -2 & 1 & 0 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 2 & 3 & 3 & 1 & 0 \\ 0 & 1 & 4 & 1 & 1 \end{pmatrix}$$

$$\sim_f \begin{pmatrix} 2 & 0 & -9 & -2 & -3 \\ 0 & 1 & 4 & 1 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 0 & -9/2 & -1 & -3/2 \\ 0 & 1 & 4 & 1 & 1 \end{pmatrix} = (H_f(B) \mid P_2)$$

4. Cálculo de  $Q_2$  y H(B):

$$\left(\begin{array}{c}
\frac{H_f(B)}{I_3}
\right) = \begin{pmatrix}
\frac{1}{0} & 0 & -9/2 \\
0 & 1 & 4 \\
\hline
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & 1
\end{pmatrix}
\sim_c
\begin{pmatrix}
\frac{1}{0} & 0 & 0 \\
0 & 1 & 4 \\
\hline
1 & 0 & 9/2 \\
0 & 1 & 0 \\
0 & 0 & 1
\end{pmatrix}
\sim_c
\begin{pmatrix}
\frac{1}{0} & 0 & 0 \\
0 & 1 & 0 \\
\hline
1 & 0 & 9/2 \\
0 & 1 & -4 \\
0 & 0 & 1
\end{pmatrix}
=
\begin{pmatrix}
\frac{H(B)}{Q_2}
\end{pmatrix}$$

5. Cálculo de  $P = P_2^{-1}P_1$  y  $Q = Q_1Q_2^{-1}$ :

$$P = P_2^{-1} P_1 = \begin{pmatrix} -1 & -3/2 \\ 1 & 1 \end{pmatrix}^{-1} \begin{pmatrix} -5 & -3 \\ 2 & 1 \end{pmatrix} = \begin{pmatrix} 2 & 3 \\ -2 & -2 \end{pmatrix} \begin{pmatrix} -5 & -3 \\ 2 & 1 \end{pmatrix} = \begin{pmatrix} -4 & -3 \\ 6 & 4 \end{pmatrix}$$

$$Q = Q_1 Q_2^{-1} = \begin{pmatrix} 1 & 0 & 6 \\ 0 & 0 & 1 \\ 0 & 1 & 0 \end{pmatrix} \begin{pmatrix} 1 & 0 & 9/2 \\ 0 & 1 & -4 \\ 0 & 0 & 1 \end{pmatrix}^{-1} = \begin{pmatrix} 1 & 0 & 6 \\ 0 & 0 & 1 \\ 0 & 1 & 0 \end{pmatrix} \begin{pmatrix} 1 & 0 & -9/2 \\ 0 & 1 & 4 \\ 0 & 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 0 & 3/2 \\ 0 & 0 & 1 \\ 0 & 1 & 4 \end{pmatrix}$$

Y ahora llega el momento de comprobar que todo está bien, que PAQ = B:

$$PAQ = \begin{pmatrix} -4 & -3 \\ 6 & 4 \end{pmatrix} \begin{pmatrix} 1 & -6 & 3 \\ -2 & 12 & -5 \end{pmatrix} \begin{pmatrix} 1 & 0 & 3/2 \\ 0 & 0 & 1 \\ 0 & 1 & 4 \end{pmatrix} = \begin{pmatrix} 2 & 3 & 3 \\ -2 & -2 & 1 \end{pmatrix} \qquad \Box$$

### Cálculo de la matriz inversa usando el método de Gauss

Sea A una matriz invertible de orden n. Según el Teorema 1.60 A tiene rango n. Dado que la única matriz escalonada reducida de rango n es la identidad, tenemos que  $H_f(A) = I_n$  y también  $H_c(A) = I_n$ . Particularizaremos lo visto en el apartado anterior al caso de matrices invertibles.

1. **Cálculo de la inversa de A con operaciones elementales de filas.**

Transformamos  $(A|I_n)$  mediante operaciones elementales de filas en la matriz  $(I_n|P)$  tal que  $PA = I_n$ . Según el Corolario 1.17.  $P = A^{-1}$ . De forma esquemática

$$(A | I_n) \xrightarrow{f_{i_1} \to \cdots} \cdots \xrightarrow{f_{i_k} \to \cdots} (I_n | A^{-1})$$

2. **Cálculo de la inversa de  ${\cal A}$  con operaciones elementales de columnas.**

Transformamos  $\left(\frac{A}{I_n}\right)$  mediante operaciones elementales de columnas en la matriz  $\left(\frac{I_n}{Q}\right)$  tal que  $AQ = I_n$ . Según el Corolario 1.17.  $Q = A^{-1}$ . De forma esquemática

$$\left(\begin{array}{c} A \\ \hline I_n \end{array}\right) \quad \overline{c_{i_1} \to \cdots} \quad \cdots \quad \overline{c_{i_h} \to \cdots} \quad \left(\begin{array}{c} I_n \\ \hline A^{-1} \end{array}\right)$$

#### Ejemplo 1.67
Calcule la matriz inversa de

$$A = \left(\begin{array}{rrr} 1 & 1 & 1 \\ 1 & 2 & 4 \\ -2 & -4 & -7 \end{array}\right)$$

Solución: Aplicamos el procedimiento que acabamos de describir:

$$\begin{pmatrix} A \mid I_3 \end{pmatrix} = \begin{pmatrix} 1 & 1 & 1 & 1 & 1 & 0 & 0 \\ 1 & 2 & 4 & 0 & 1 & 0 \\ -2 & -4 & -7 & 0 & 0 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 1 & 1 & 1 & 1 & 0 & 0 \\ 0 & 1 & 3 & -1 & 1 & 0 \\ 0 & -2 & -5 & 2 & 0 & 1 \end{pmatrix}$$

$$\sim_f \begin{pmatrix} 1 & 0 & -2 & 2 & -1 & 0 \\ 0 & 1 & 3 & -1 & 1 & 0 \\ 0 & 0 & 1 & 0 & 2 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 0 & 0 & 2 & 3 & 2 \\ 0 & 1 & 0 & -1 & -5 & -3 \\ 0 & 0 & 1 & 0 & 2 & 1 \end{pmatrix} = \begin{pmatrix} I_3 \mid A^{-1} \end{pmatrix}$$

Luego

$$A^{-1} = \left(\begin{array}{ccc} 2 & 3 & 2 \\ -1 & -5 & -3 \\ 0 & 2 & 1 \end{array}\right) \quad \Box$$

### Inversas laterales

#### Definición 1.68

Sea A una matriz de tamaño  $m \times n$ .

- Una inversa por la izquierda de A es una matriz X de tamaño  $n \times m$  tal que  $XA = I_n$ .
- Una inversa por la derecha de A es una matriz Y de tamaño  $n \times m$  tal que  $AY = I_m$ .

#### Proposición 1.69

Una matriz A de tamaño  $m \times n$  tiene inversa por la izquierda si y sólo si rg(A) = n, y tiene inversa por la derecha si y sólo si rg(A) = m. Si rg(A) = m = n entonces la inversa de A coincide con la única inversa de A por la izquierda y con la única inversa de A por la derecha.

Demostración: Vamos a dividir la demostración en los distintos casos posibles:

- 1. rg(A) < n. Entonces A no tiene inversa por la izquierda ya que para cualquier matriz X de tamaño  $n \times m$  se tiene que  $rg(XA) \le min\{rg(X), rg(A)\} < n$ .
- 2. rg(A) < m. Entonces A no tiene inversa por la derecha ya que para cualquier matriz Y de tamaño  $n \times m$  se tiene que  $rg(AY) \le min\{rg(A), rg(Y)\} < m$ .
- 3. rg(A) = n < m. Transformamos  $(A|I_m)$  mediante operaciones elementales de filas en  $(H_f(A)|P)$ :

$$(A \mid I_m) \xrightarrow{f_{i_1} \to \cdots} \cdots \xrightarrow{f_{i_k} \to \cdots} (H_f(A) \mid P) = \begin{pmatrix} I_n \mid P_1 \\ 0 \mid P_2 \end{pmatrix}$$

Entonces P es una matriz de orden m tal que  $PA = H_f(A)$ . Teniendo en cuenta que

$$\left(\frac{I_n}{0}\right) = H_f(A) = PA = \left(\frac{P_1}{P_2}\right)A = \left(\frac{P_1A}{P_2A}\right)$$
 con  $P_1$  de tamaño  $n \times m$ 

se sigue que  $P_1A = I_n$  y, por lo tanto, que  $P_1$  es una inversa por la izquierda de A.

4.  $\operatorname{rg}(A) = m < n$ . Transformamos  $\left(\frac{A}{I_n}\right)$  con operaciones elementales de columnas en  $\left(\frac{H_c(A)}{Q}\right)$ :

$$\left(\begin{array}{c} A \\ \hline I_n \end{array}\right) \quad \overline{c_{i_1} \to \cdots} \quad \cdots \quad \overline{c_{i_h} \to \cdots} \quad \left(\begin{array}{c} H_c(A) \\ \hline Q \end{array}\right) = \left(\begin{array}{c|c} I_m & 0 \\ \hline Q_1 & Q_2 \end{array}\right)$$

Entonces Q es una matriz de orden n tal que  $AQ = H_c(A)$ . Teniendo en cuenta que

$$(I_m \mid 0\,) = H_c(A) = AQ = A(Q_1 \mid Q_2\,) = (AQ_1 \mid AQ_2\,) \quad \text{con } Q_1 \text{ de tamaño } n \times m$$

se sigue que  $AQ_1 = I_m$  y, por lo tanto, que  $Q_1$  es una inversa por la derecha de A.

5. rg(A) = m = n. La inversa de A es única y es inversa por la izquierda y por la derecha.

Ejemplo 1.70

Calcule una inversa por la izquierda de la matriz

$$A = \begin{pmatrix} 1 & 1 \\ 1 & 2 \\ -2 & -4 \end{pmatrix}$$

**Solución:** El rango de A es 2 y, por tanto, A tiene inversa por la izquierda. La calculamos por el procedimiento que acabamos de describir, aplicando operaciones elementales por filas a la matriz  $(A | I_3)$  hasta transformar A en  $H_f(A)$ :

$$(A \mid I_3) = \begin{pmatrix} 1 & 1 & 1 & 0 & 0 \\ 1 & 2 & 0 & 1 & 0 \\ -2 & -4 & 0 & 0 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 1 & 1 & 0 & 0 \\ 0 & 1 & -1 & 1 & 0 \\ 0 & -2 & 2 & 0 & 1 \end{pmatrix} \sim_f \begin{pmatrix} 1 & 0 & 2 & -1 & 0 \\ 0 & 1 & -1 & 1 & 0 \\ 0 & 0 & 0 & 2 & 1 \end{pmatrix} = \begin{pmatrix} I_2 \mid P_1 \\ 0 \mid P_2 \end{pmatrix}$$

Una inversa por la izquierda de A es  $P_1$ . Vamos a comprobarlo:

$$P_1 A = \begin{pmatrix} 2 & -1 & 0 \\ -1 & 1 & 0 \end{pmatrix} \begin{pmatrix} 1 & 1 \\ 1 & 2 \\ -2 & -4 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$$

Nota: Si una matriz admite inversa por la izquierda, ésta no es única. Puede comprobarse que otra inversa por la izquierda de A es la matriz

$$C = \left( \begin{array}{ccc} 2 & -1/5 & 2/5 \\ -1 & 1/5 & -2/5 \end{array} \right) \qquad \Box$$

Un ejemplo de cálculo de una inversa por la derecha según el método desarrollado en la demostración de la Proposición anterior se puede encontrar en el Ejercicio 1.17.

## 1.5. El determinante de una matriz cuadrada

#### Definición 1.71

Definimos el **determinante** de la matriz  $A \in \mathfrak{M}_n(\mathbb{K})$ , det(A), de forma recursiva:

- Si n = 1 y A = (a), entonces det(A) = a.
- Si n > 1 entonces el determinante de A viene dado por la fórmula

$$\det(A) = \sum_{i=1}^{n} (-1)^{i+1} a_{i1} \det(A_{i1})$$

$$= a_{11} \det(A_{11}) - a_{21} \det(A_{21}) + \dots + (-1)^{n+1} a_{n1} \det(A_{n1})$$

donde  $A_{ij}$  denota a la submatriz de A de orden n-1 que se obtiene eliminando la fila i y la columna j de A.

Se denomina adjunto o cofactor del elemento  $a_{ij}$  de A al escalar

$$\alpha_{ij} = (-1)^{i+j} \det(A_{ij})$$

de manera que

$$\det(A) = \sum_{i=1}^{n} a_{i1}\alpha_{i1} = a_{11}\alpha_{11} + \dots + a_{n1}\alpha_{n1}$$

y se conoce como fórmula de Laplace[^6] del determinante por la primera columna.

Para referirnos al determinante de A también emplearemos la notación

$$\det(A) = \begin{vmatrix} a_{11} & \cdots & a_{1n} \\ \vdots & \ddots & \vdots \\ a_{n1} & \cdots & a_{nn} \end{vmatrix}$$

El determinante de una matriz A de orden 2 viene dado por

$$\begin{vmatrix} a_{11} & a_{12} \\ a_{21} & a_{22} \end{vmatrix} = a_{11}a_{22} - a_{21}a_{12}$$

ya que

$$\det(A) = a_{11}\alpha_{11} + a_{21}\alpha_{21} = a_{11}\det(A_{11}) - a_{21}\det(A_{21}) = a_{11}a_{22} - a_{21}a_{12}$$



**Regla de Sarrus**[^7]: El determinante de una matriz A de orden 3 viene dado por

$$\begin{vmatrix} a_{11} & a_{12} & a_{13} \\ a_{21} & a_{22} & a_{23} \\ a_{31} & a_{32} & a_{33} \end{vmatrix} = a_{11}a_{22}a_{33} + a_{12}a_{23}a_{31} + a_{13}a_{21}a_{32} - a_{11}a_{23}a_{32} - a_{12}a_{21}a_{33} - a_{13}a_{22}a_{31}$$

ya que

$$\det(A) = a_{11}\alpha_{11} + a_{21}\alpha_{21} + a_{31}\alpha_{31}$$

$$= a_{11}\det(A_{11}) - a_{21}\det(A_{21}) + a_{31}\det(A_{31})$$

$$= a_{11}\begin{vmatrix} a_{22} & a_{23} \\ a_{32} & a_{33} \end{vmatrix} - a_{21}\begin{vmatrix} a_{12} & a_{13} \\ a_{32} & a_{33} \end{vmatrix} + a_{31}\begin{vmatrix} a_{12} & a_{13} \\ a_{22} & a_{23} \end{vmatrix}$$

$$= a_{11}(a_{22}a_{33} - a_{23}a_{32}) - a_{21}(a_{12}a_{33} - a_{13}a_{32}) + a_{31}(a_{12}a_{23} - a_{13}a_{22})$$

$$= a_{11}a_{22}a_{33} + a_{12}a_{23}a_{31} + a_{13}a_{21}a_{32} - a_{11}a_{23}a_{32} - a_{12}a_{21}a_{33} - a_{13}a_{22}a_{31}$$

#### Ejemplo 1.72

Aplicamos las fórmulas que acabamos de dar para matrices de orden 2 y 3:

$$\begin{vmatrix} 2 & 3 \\ 4 & 1 \end{vmatrix} = 2 - 12 = -10; \qquad \begin{vmatrix} -2 & 3 & -1 \\ 0 & 0 & 2 \\ 4 & 3 & 1 \end{vmatrix} = 0 + 24 + 0 - (-12) - 0 - 0 = 36$$

Ahora calculamos el determinante de una matriz de orden 4 por medio de la fórmula de Laplace:

$$\begin{vmatrix} 2 & 0 & 2 & 3 \\ 0 & 2 & 1 & 1 \\ 1 & 0 & 0 & 2 \\ 0 & 1 & 3 & 1 \end{vmatrix} = 2(-1)^{1+1} \begin{vmatrix} 2 & 1 & 1 \\ 0 & 0 & 2 \\ 1 & 3 & 1 \end{vmatrix} + 0(-1)^{2+1} \begin{vmatrix} 0 & 2 & 3 \\ 0 & 0 & 2 \\ 1 & 3 & 1 \end{vmatrix} + 1(-1)^{3+1} \begin{vmatrix} 0 & 2 & 3 \\ 2 & 1 & 1 \\ 1 & 3 & 1 \end{vmatrix} + 0(-1)^{4+1} \begin{vmatrix} 0 & 2 & 3 \\ 2 & 1 & 1 \\ 0 & 0 & 2 \end{vmatrix}$$
$$= 2 \cdot 1 \cdot (-10) + 0 \cdot (-1) \cdot 4 + 1 \cdot 1 \cdot 13 + 0 \cdot (-1) \cdot (-8) = -7 \qquad \Box$$

Si desarrollamos la fórmula de Laplace para una matriz de orden n aparecen n! sumandos, y cada sumando es el producto de n elementos de la matriz situados en filas y columnas distintas. Si n crece entonces el número de operaciones crece tan rápidamente que el cálculo resulta impracticable incluso para un ordenador potente. Más adelante veremos cómo se puede calcular el determinante de forma más eficiente. No obstante, en el caso de las matrices triangulares sí resulta práctico el cálculo del determinante desarrollando por la primera columna.

## Proposición 1.73

Si A es una matriz de orden n triangular superior entonces el determinante de A es el producto de los n elementos de su diagonal principal, es decir,

$$\det(A) = a_{11}a_{22}\cdots a_{nn}$$

**Demostración:** Procedemos por inducción. El resultado es obvio para n=1. Supongamos que es cierto para matrices de orden n-1. Sea A una matriz de orden n triangular superior y calculemos su determinante desarrollando la fórmula de Laplace por la primera columna. Como A sólo tiene un elemento distinto de 0 en dicha columna, tenemos  $\det(A) = a_{11} \det(A_{11})$ . Ahora bien,  $A_{11}$  es triangular superior de orden n-1 y por hipótesis de inducción  $\det(A_{11}) = a_{22} \cdots a_{nn}$ . Por lo tanto  $\det(A) = a_{11}a_{22} \cdots a_{nn}$ .  $\square$ 

Ejemplo 1.74 Veamos con un ejemplo cómo es el cálculo del determinante de una matriz triangular superior desarrollando siempre por la primera columna:

$$\det \begin{pmatrix} 3 & 6 & 1 & 2 \\ 0 & 2 & 7 & 6 \\ 0 & 0 & 5 & 2 \\ 0 & 0 & 0 & 4 \end{pmatrix} = 3 \det \begin{pmatrix} 2 & 7 & 6 \\ 0 & 5 & 2 \\ 0 & 0 & 4 \end{pmatrix} = 3 \cdot 2 \det \begin{pmatrix} 5 & 2 \\ 0 & 4 \end{pmatrix} = 3 \cdot 2 \cdot 5 \cdot (4) = 3 \cdot 2 \cdot 5 \cdot 4 = 120 \qquad \Box$$

#### Determinante y operaciones elementales

A lo largo de este apartado trabajaremos con matrices  $A = (a_{ij}), B = (b_{ij}), C = (c_{ij})$  de orden n. Comenzamos viendo el efecto que tienen en el determinante las operaciones elementales de filas, y más adelante demostraremos que análogos resultados son válidos también para columnas.

#### Proposición 1.75

Si se intercambian dos filas en una matriz de orden n el determinante cambia de signo.

**Demostración:** Vamos a ver que si  $A \xrightarrow{f_k \leftrightarrow f_h} B$  entonces  $\det(B) = -\det(A)$ . Teniendo en cuenta que A y B se diferencian únicamente en las filas k y h que están intercambiadas, tenemos que probar que

$$\det(B) = \begin{vmatrix} \vdots & \vdots & \vdots \\ a_{h1} & \cdots & a_{hn} \\ \vdots & \vdots & \vdots \\ a_{k1} & \cdots & a_{kn} \\ \vdots & \vdots & \vdots \end{vmatrix} = - \begin{vmatrix} \vdots & \vdots & \vdots \\ a_{k1} & \cdots & a_{kn} \\ \vdots & \vdots & \vdots \\ a_{h1} & \cdots & a_{hn} \\ \vdots & \vdots & \vdots \end{vmatrix} = - \det(A)$$

Lo probaremos primero para el caso en el que las filas sean consecutivas. Emplearemos inducción en el orden n de A. El resultado tiene sentido sólo si  $n \ge 2$ . Si n = 2 entonces

$$\begin{vmatrix} a_{21} & a_{22} \\ a_{11} & a_{12} \end{vmatrix} = a_{21}a_{12} - a_{22}a_{11} = - \begin{vmatrix} a_{11} & a_{12} \\ a_{21} & a_{22} \end{vmatrix}$$

Asumimos que es cierto para matrices de orden n-1 y veamos que es cierto para orden n. Sea B la matriz de orden n que se obtiene intercambiando las filas k y k+1 de A. Desarrollando el determinante

de B por la primera columna y llamando  $\beta_{ij}$  al adjunto del elemento  $b_{ij}$  tenemos

$$\det(B) = \sum_{i=1}^{n} b_{i1} \beta_{i1} 
= b_{k1} \beta_{k1} + b_{k+1,1} \beta_{k+1,1} + \sum_{i \neq k,k+1} b_{i1} \beta_{i1} 
= a_{k+1,1} (-1) \alpha_{k+1,1} + a_{k1} (-1) \alpha_{k1} + \sum_{i \neq k,k+1} a_{i1} (-\alpha_{i1}) 
= -\det(A)$$

En la tercera igualdad hemos utilizado que  $\beta_{i1} = -\alpha_{i1}$  para  $i \neq k, k+1$ : lo que se deduce de la hipótesis de inducción. El resto se deduce de la estructura de B con respecto a la estructura de A.

Supongamos ahora que B se obtiene intercambiando en A dos filas no consecutivas k y h. Entonces podemos obtener B partiendo de A mediante 2(h-k)-1 intercambios de filas consecutivas: k con k+1, k+1 con  $k+2,\ldots,h-1$  con h, h-2 con h-1, ..., k con k+1. Entonces

$$\det(B) = (-1)^{2(h-k)-1} \det(A) = -\det(A)$$

#### Corolario 1.76

Si A tiene dos filas iguales entonces det(A) = 0.

Demostración: Tenemos que probar que

$$\det(A) = \begin{vmatrix} \vdots & \vdots & \vdots \\ a_{k1} & \cdots & a_{kn} \\ \vdots & \vdots & \vdots \\ a_{k1} & \cdots & a_{kn} \\ \vdots & \vdots & \vdots \end{vmatrix} = 0$$

teniendo en cuenta que A tiene dos filas iguales. Si intercambiamos las dos filas iguales de A obtenemos de nuevo A. De la Proposicion 1.75 se sigue que  $\det(A) = -\det(A)$ , luego  $\det(A) = 0$ .  $\square$ 

#### Proposición 1.77

Si se multiplica una fila de una matriz de orden n por un número entonces el determinante de la matriz obtenida queda multiplicado por dicho número.

**Demostración:** Vamos a ver que si  $A \xrightarrow{f_k \to tf_k} B$  entonces  $\det(B) = t \det(A)$ . Teniendo en cuenta que A y B se diferencian únicamente en la fila k tenemos que probar que

$$\det(B) = \begin{vmatrix} \vdots & \vdots & \vdots \\ t a_{k1} & \cdots & t a_{kn} \\ \vdots & \vdots & \vdots \end{vmatrix} = t \begin{vmatrix} \vdots & \vdots & \vdots \\ a_{k1} & \cdots & a_{kn} \\ \vdots & \vdots & \vdots \end{vmatrix} = t \det(A)$$

Procedemos por inducción en el orden n de la matriz A. Si n=1 el resultado es obvio. Asumimos que es cierto para n-1 y veamos que es cierto para n. Sea B la matriz de orden n que se obtiene multiplicando por t la fila k de A. Entonces desarrollando el determinante de B por la primera columna y llamando  $\beta_{ij}$  al adjunto del elemento  $b_{ij}$  tenemos

$$\det(B) = \sum_{i=1}^{n} b_{i1}\beta_{i1} = b_{k1}\beta_{k1} + \sum_{i \neq k} b_{i1}\beta_{i1} = ta_{k1}\alpha_{k1} + \sum_{i \neq k} a_{i1}(t\alpha_{i1}) = t\det(A)$$

En la tercera igualdad hemos utilizado que  $\beta_{i1} = t\alpha_{i1}$  para  $i \neq k$ ; que sigue de la hipótesis de inducción. El resto se deduce de la estructura de B con respecto a la estructura de A.  $\square$ 

#### Corolario 1.78

Si A tiene una fila nula entonces det(A) = 0.

#### Proposición 1.79

Sean A, B y C tres matrices que se diferencian únicamente en su fila k y la fila k de A es igual a la suma de las filas k de B y C. Entonces  $\det(A) = \det(B) + \det(C)$ .

**Demostración:** Tenemos que probar que |A| = |B| + |C|, esto es,

$$\det(A) = \begin{vmatrix} \vdots & \vdots & \vdots & \vdots \\ b_{k1} + c_{k1} & \cdots & b_{kn} + c_{kn} \\ \vdots & \vdots & \vdots & \vdots \end{vmatrix} = \begin{vmatrix} \vdots & \vdots & \vdots \\ b_{k1} & \cdots & b_{kn} \\ \vdots & \vdots & \vdots \end{vmatrix} + \begin{vmatrix} \vdots & \vdots & \vdots \\ c_{k1} & \cdots & c_{kn} \\ \vdots & \vdots & \vdots \end{vmatrix} = \det(B) + \det(C)$$

teniendo en cuenta que las matrices A, B y C se diferencian únicamente en la fila k.

Procedemos por inducción en el orden n de las matrices. Si n=1 el resultado es obvio. Asumimos que es cierto para matrices de orden n-1 y veamos que es cierto para matrices de orden n. Sean A, B y C matrices de orden n en las condiciones del enunciado. Entonces desarrollando el determinante de A por la primera columna y llamando  $\beta_{ij}$  y  $\gamma_{ij}$  al adjunto del elemento  $b_{ij}$  de B y  $c_{ij}$  de C, respectivamente, tenemos

$$\det(A) = \sum_{i=1}^{n} a_{i1}\alpha_{i1}$$

$$= a_{k1}\alpha_{k1} + \sum_{i\neq k} a_{i1}\alpha_{i1}$$

$$= (b_{k1} + c_{k1})\alpha_{k1} + \sum_{i\neq k} a_{i1}(\beta_{i1} + \gamma_{i1})$$

$$= (b_{k1}\alpha_{k1} + \sum_{i\neq k} a_{i1}\beta_{i1}) + (c_{k1}\alpha_{k1} + \sum_{i\neq k} a_{i1}\gamma_{i1})$$

$$= (b_{k1}\beta_{k1} + \sum_{i\neq k} b_{i1}\beta_{i1}) + (c_{k1}\gamma_{k1} + \sum_{i\neq k} c_{i1}\gamma_{i1})$$

$$= \det(B) + \det(C)$$

En la tercera igualdad hemos utilizado que  $\alpha_{i1} = \beta_{i1} + \gamma_{i1}$  para  $i \neq k$ ; que se sigue de la hipótesis de inducción. El resto se deduce de la estructura que tienen  $B \ y \ C$  con respecto a la de A.  $\square$ 

#### Proposición 1.80

Si a una fila de una matriz de orden n se le suma un múltiplo de otra fila, el determinante de la matriz obtenida no varía

**Demostración:** Vamos a ver que si  $A \xrightarrow{f_k \to f_k + tf_h} B$  entonces  $\det(B) = \det(A)$ . Teniendo en cuenta que A y B se diferencian únicamente en la fila k tenemos que probar que

$$\det(B) = \begin{vmatrix} \vdots & \vdots & \vdots & \vdots \\ a_{k1} + ta_{h1} & \cdots & a_{kn} + ta_{hn} \\ \vdots & \vdots & \vdots & \vdots \\ a_{h1} & \cdots & a_{hn} \\ \vdots & \vdots & \vdots & \vdots \end{vmatrix} = \begin{vmatrix} \vdots & \vdots & \vdots \\ a_{k1} & \cdots & a_{kn} \\ \vdots & \vdots & \vdots \\ a_{h1} & \cdots & a_{hn} \\ \vdots & \vdots & \vdots \end{vmatrix} = \det(A)$$

Sea C la matriz que se obtiene a partir de A sustituyendo la fila k de A por el múltiplo t de la fila k de A. Entonces las matrices A, B y C se diferencian únicamente en la fila k. Concretamente la fila k de B es igual a la suma de las filas k de A y de C. Por la Proposición 1.79  $\det(B) = \det(A) + \det(C)$ . Sea C' la matriz que se obtiene a partir de C dividiendo por t todas las entradas de su fila k. Entonces por la Proposición 1.77  $\det(C) = t \det(C')$ . Pero C' tiene dos filas iguales, y por el Corolario 1.76  $\det(C') = 0$ . Luego  $\det(B) = \det(A) + t \det(C') = \det(A)$ .  $\square$ 

Los resultados anteriores nos permiten calcular fácilmente el determinante de las matrices elementales.

#### Corolario 1.81

El determinante de las matrices elementales viene dado por:

- 1.  $\det(E_{f_k \leftrightarrow f_h}) = -1$ .
- 2.  $\det(E_{f_k \to f_k + tf_h}) = 1$ .
- 3.  $\det(E_{f_k \to t f_k}) = t$ .

**Demostración:** 1.  $I_n \xrightarrow{f_k \leftrightarrow f_h} E_{f_k \leftrightarrow f_h}$  y por la Proposición 1.75  $\det(E_{f_k \leftrightarrow f_h}) = -\det(I_n) = -1$ .

- 2.  $I_n \xrightarrow{f_k \to f_k + t f_h} E_{f_k \to f_k + t f_h}$ y por la Proposición 1.80  $\det(E_{f_k \to f_k + t f_h}) = \det(I_n) = 1$ .
- 3. En este caso podríamos utilizar la Proposición 1.77, pero lo demostraremos de otro modo. La matriz  $E_{f_k \to t f_k}$  es triangular superior y las entradas de su diagonal son, salvo la entrada (k,k) que es igual a t, iguales a 1. De la Proposición 1.73 se sigue que  $\det(E_{f_k \to t f_k}) = t$ .  $\square$

Del Corolario 1.81 y de las propiedades enunciadas en las Proposiciones 1.75, 1.77 y 1.80 se deduce de forma directa el siguiente resultado.

#### Teorema 1.82

Si  $A \in \mathfrak{M}_n(\mathbb{K})$  y E es una matriz elemental de orden n entonces

$$\det(EA) = \det(E)\det(A)$$

### Cálculo efectivo de determinante

El Teorema 1.82 y la Proposición 1.73 nos permiten calcular de forma efectiva el determinante de una matriz cuadrada A. Basta con transformar A mediante operaciones elementales de filas en una matriz escalonada A'. Toda matriz cuadrada escalonada es triangular superior y su determinante es el producto de los elementos de la diagonal principal. Por otra parte, con cada operación elemental que realizamos el determinante se puede ver afectado por un factor. De manera que el determinante de A será el producto de estos factores por el determinante de A'.

#### Ejemplo 1.83

Calcule el determinante de las matrices

$$A = \begin{pmatrix} 6 & 2 & -2 \\ 2 & 1 & 3 \\ 8 & 4 & 5 \end{pmatrix} \quad \mathbf{y} \quad B = \begin{pmatrix} -4 & 8 & 0 & 4 \\ 2 & -4 & 3 & 5 \\ -2 & 4 & 3 & 4 \\ 1 & -2 & 7 & 3 \end{pmatrix}$$

Solución: Transformamos A en una matriz escalonada equivalente por filas

$$\begin{pmatrix} 6 & 2 & -2 \\ 2 & 1 & 3 \\ 8 & 4 & 5 \end{pmatrix} \xrightarrow{f_1 \leftrightarrow f_2} \begin{pmatrix} 2 & 1 & 3 \\ 6 & 2 & -2 \\ 8 & 4 & 5 \end{pmatrix} \xrightarrow{f_2 \to f_2 - 3f_1} \begin{pmatrix} 2 & 1 & 3 \\ 0 & -1 & -11 \\ 8 & 4 & 5 \end{pmatrix} \xrightarrow{f_3 \to f_3 - 4f_1} \begin{pmatrix} 2 & 1 & 3 \\ 0 & -1 & -11 \\ 0 & 0 & -7 \end{pmatrix}$$

La primera operación elemental aplicada cambia el signo del determinante, mientras que las otras dos dejan el determinante invariante. Luego

$$\det(A) = \det\begin{pmatrix} 6 & 2 & -2 \\ 2 & 1 & 3 \\ 8 & 4 & 5 \end{pmatrix} = (-1)\det\begin{pmatrix} 2 & 1 & 3 \\ 0 & -1 & -11 \\ 0 & 0 & -7 \end{pmatrix} = (-1)\cdot 14 = -14$$

Transformamos ahora B en una matriz escalonada equivalente por filas

$$\begin{pmatrix} -4 & 8 & 0 & 4 \\ 2 & -4 & 3 & 5 \\ -2 & 4 & 3 & 4 \\ 1 & -2 & 7 & 3 \end{pmatrix} \xrightarrow{f_2 \to f_2 + \frac{1}{2}f_1} \begin{pmatrix} -4 & 8 & 0 & 4 \\ 0 & 0 & 3 & 7 \\ 0 & 0 & 3 & 2 \\ 0 & 0 & 7 & 4 \end{pmatrix} \longrightarrow \dots$$

$$f_4 \to f_4 + \frac{1}{4}f_1$$

pero aquí nos paramos, ¿por qué? Aunque esta última matriz no es escalonada, el hecho de que el pivote de la segunda fila no se encuentre en la diagonal principal nos anuncia que la matriz escalonada a la que lleguemos tendrá un 0 en la entrada (2,2) de la diagonal y que, por tanto, su determinante será igual a 0. Luego  $\det(B) = 0$ .  $\Box$ 

### Otras propiedades del determinante

#### Teorema 1.84

Sean A y B dos matrices de orden n. Son ciertas las afirmaciones:

- 1.  $det(A) \neq 0$  si y sólo si A es invertible.
- 2. det(AB) = det(A) det(B) (v por tanto det(AB) = det(BA)).
- 3.  $\det(A) = \det(A^t)$ .

**Demostración:** 1.  $\Leftarrow$ ) Si A es invertible entonces por el Teorema 1.60  $A = E_1 \cdots E_k$  donde las  $E_i$  son matrices elementales. Y por el Teorema 1.82

$$\det(A) = \det(E_1 \cdots E_k) = \det(E_1) \det(E_2 \cdots E_k) = \cdots = \det(E_1) \cdots \det(E_k)$$

Como el determinante de una matriz elemental nunca es 0 entonces  $det(A) \neq 0$ .

 $\Rightarrow$ ) Este sentido de la demostración es equivalente a probar que si A no es invertible, entonces  $\det(A) = 0$ . Supongamos entonces que A no es invertible. Por el Teorema 1.60  $\operatorname{rg}(A) < n$  o lo que es lo mismo A es equivalente a una matriz escalonada A' en la que al menos su última fila es una fila de ceros. Sea  $A' = E_1 \cdots E_k A$  donde las  $E_i$  son matrices elementales, por el Teorema 1.82

$$\det(A') = \det(E_1 \cdots E_k A) = \det(E_1) \det(E_2 \cdots E_k A) = \cdots = \det(E_1) \cdots \det(E_k) \det(A)$$

Como  $det(E_i) \neq 0$  para i = 1, ..., k y det(A') = 0 (ver Corolario 1.78), entonces det(A) = 0.

- 2. Consideramos dos posibilidades:
  - a) A o B no son invertibles. En este caso  $\det(A)\det(B)=0$  pues  $\det(A)=0$  o  $\det(B)=0$ . Por el Teorema 1.53

$$\operatorname{rg}(AB) \le \min\{\operatorname{rg}(A),\operatorname{rg}(B)\} < n$$

luego AB no es invertible y por la propiedad 1 tenemos que det(AB) = 0.

b) A y B son invertibles. Entonces  $A=E_1\cdots E_k$  y  $B=F_1\cdots F_h$  donde las  $E_i$  y las  $F_j$  son matrices elementales. Luego

$$\det(AB) = \det(E_1 \cdots E_k F_1 \cdots F_h) = \det(E_1) \cdots \det(E_k) \det(F_1) \cdots \det(F_h) = \det(A) \det(B)$$

3. Por el Teorema 1.58 si A no tiene inversa entonces  $A^t$  tampoco, y el apartado 1 nos dice que  $\det(A) = \det(A^t) = 0$ . Si A es invertible entonces  $A = E_1 \cdots E_k$  donde las  $E_i$  son matrices elementales, y

$$A^t = (E_1 \cdots E_k)^t = E_k^t \cdots E_1^t$$

Luego por el apartado 2,  $\det(A) = \det(E_1) \cdots \det(E_k)$  y  $\det(A^t) = \det(E_k^t) \cdots \det(E_1^t)$ .

Vamos a demostrar que para toda matriz elemental E se cumple  $\det(E) = \det(E^t)$ , y de ahí se deduce directamente que  $\det(A) = \det(A^t)$ . En primer lugar, si E se corresponde con una operación elemental del tipo I o de tipo III, E es una matriz simétrica, luego  $E = E^t$  y por tanto  $\det(E) = \det(E^t)$ . Por último, si  $E = E_{f_i \to f_i + \beta f_j}$  sabemos que  $\det(E) = 1$ , y su traspuesta es  $E^t = E_{f_i \to f_i + \beta f_i}$  que también tiene determinante 1.  $\square$ 

### Desarrollo del determinante por cualquier fila o columna

El hecho de que una matriz tenga el mismo determinante que su matriz traspuesta (ver Teorema 1.84) nos permite probar que el determinante también lo podemos definir desarrollando por la primera fila en lugar de por la primera columna.

#### Proposición 1.85

El determinante de una matriz A de orden n se puede calcular según la fórmula

$$\det(A) = \sum_{j=1}^{n} a_{1j}\alpha_{1j} = a_{11}\alpha_{11} + \dots + a_{1n}\alpha_{1n}$$

que se conoce como fórmula de Laplace del determinante por la primera fila.

**Demostración:** Sea  $B=A^t$ . Como el determinante de una matriz es igual al de su traspuesta entonces

$$\det(A) = \det(B) = \sum_{i=1}^{n} (-1)^{i+1} b_{i1} \det(B_{i1}) = \sum_{i=1}^{n} (-1)^{1+i} a_{1i} \det(A_{1i}^{t})$$
$$= \sum_{i=1}^{n} (-1)^{1+i} a_{1i} \det(A_{1i}) = \sum_{i=1}^{n} a_{1i} \alpha_{1i} \quad \Box$$

Teniendo en cuenta esta caracterización del determinante utilizando la primera fila se puede demostrar (repitiendo los mismos argumentos que los utilizados en los resultados anteriores cambiando filas por columnas), que se cumplen las mismas propiedades respecto de las operaciones elementales por columnas. Es decir:

- El determinante de una matriz triangular inferior es igual al producto de los elementos de la diagonal principal.
- Si se intercambian dos columnas en una matriz de orden n el determinante cambia de signo.
- Si a una columna de una matriz de orden n se le suma un múltiplo de otra columna, el determinante la matriz obtenida no varía
- Si se multiplica una columna de una matriz de orden n por un número entonces el determinante de la matriz obtenida queda multiplicado por dicho número.
- Si A tiene una columna nula entonces  $\det A = 0$ .
- Si A, B y C se diferencian únicamente en su columna j de manera que la columna j de A es igual a la suma de las columnas j de B y C, entonces  $\det(A) = \det(B) + \det(C)$ .

#### Teorema 1.86

El determinante de una matriz A de orden n se puede calcular según las fórmulas

$$\det(A) = \sum_{i=1}^{n} a_{ij}\alpha_{ij} \quad \text{o} \quad \det(A) = \sum_{i=1}^{n} a_{ij}\alpha_{ij}$$

conocidas como fórmulas de Laplace del determinante por la fila i o por la columna j.

**Demostración:** En la matriz A intercambiamos la fila i con la fila i-1, después intercambiamos la fila i-1 con la fila i-2, y así seguimos hasta que intercambiamos la fila 2 con la fila 1. Sea B la matriz a la que llegamos tras esos i-1 intercambios de filas. Entonces

$$A = \begin{pmatrix} a_{11} & \cdots & a_{1n} \\ \vdots & \vdots & \vdots \\ a_{i-1,1} & \cdots & a_{i-1,n} \\ a_{i1} & \cdots & a_{in} \\ a_{i+1,1} & \cdots & a_{i+1,n} \\ \vdots & \vdots & \vdots \end{pmatrix} \quad y \quad B = \begin{pmatrix} a_{i1} & \cdots & a_{in} \\ a_{11} & \cdots & a_{1n} \\ \vdots & \vdots & \vdots \\ a_{i-1,1} & \cdots & a_{i-1,n} \\ a_{i+1,1} & \cdots & a_{i+1,n} \\ \vdots & \vdots & \vdots \end{pmatrix}$$

Por la Proposición 1.75  $det(B) = (-1)^{i-1} det(A)$ . Si calculamos el determinante de B según la fórmula de Laplace utilizando la fila 1 tenemos

$$\det(B) = \sum_{j=1}^{n} b_{1j} \beta_{1j} = \sum_{j=1}^{n} (-1)^{1+j} b_{1j} \det(B_{1j}) = \sum_{j=1}^{n} (-1)^{1+j} a_{ij} \det(A_{ij})$$

luego

$$\det(A) = (-1)^{i-1} \det(B) = \sum_{j=1}^{n} (-1)^{i+j} a_{ij} \det(A_{ij}) = \sum_{j=1}^{n} a_{ij} \alpha_{ij}$$

La fórmula de Laplace para el determinante usando la columna j se sigue de la igualdad  $det(A) = det(A^t)$ .  $\square$ 

Ejemplo 1.87

Calcule el determinante de la matriz:

$$A = \begin{pmatrix} 3 & 6 & 2 & 2 \\ 4 & 2 & 0 & 6 \\ 0 & 3 & 0 & 0 \\ 3 & 7 & 0 & 4 \end{pmatrix}$$

Solución: Acabamos de demostrar que se puede calcular el determinante de una matriz utilizando la fórmula de Laplace por cualquier fila o columna. Lo más práctico es buscar filas o columnas con un

elevado número de ceros. En este caso elegimos la columna 3 donde sólo  $a_{13} \neq 0$ :

$$\begin{vmatrix} 3 & 6 & 2 & 2 \\ 4 & 2 & 0 & 6 \\ 0 & 3 & 0 & 0 \\ 3 & 7 & 0 & 4 \end{vmatrix} = a_{13}\alpha_{13} = 2 \cdot (-1)^{1+3} \begin{vmatrix} 4 & 2 & 6 \\ 0 & 3 & 0 \\ 3 & 7 & 4 \end{vmatrix} = 2 \cdot 3 \cdot (-1)^{2+2} \begin{vmatrix} 4 & 6 \\ 3 & 4 \end{vmatrix} = 6 \cdot (-2) = -12$$

En la primera igualdad hemos desarrollado el determinante por la tercera columna y en la tercera igualdad por la segunda fila.  $\Box$ 

#### Ejemplo 1.88

Calcule los valores de x que anulan el determinante de la matriz

$$A = \begin{pmatrix} x & 1 & 2 & 3 \\ 1 & x & 3 & 2 \\ 2 & 3 & x & 1 \\ 3 & 2 & 1 & x \end{pmatrix}$$

**Solución:** Utilizaremos operaciones elementales por filas y columnas, y tendremos en cuenta su repercusión en el determinante de la matriz (tal y como se ve en las Proposiciones 1.75, 1.77 y 1.80 para operaciones elementales por filas y en sus homólogas por columnas en la página 61). También nos será útil la fórmula de Laplace para el cálculo del determinante cuando nos aparezcan filas o columnas con una única entrada no nula.

Observamos que la suma de las entradas en cada una de las filas coincide (y es igual a x+6). Este tipo de matrices son conocidas como matrices estocásticas generalizadas. Para el cálculo del determinante de estas matrices se sustituye una de las columnas por la suma de todas ellas. Por ejemplo
$$
\det(A)=
\left|
\begin{array}{cccc}
x&1&2&3\\
1&x&3&2\\
2&3&x&1\\
3&2&1&x
\end{array}
\right|
\underset{c_1\rightarrow c_1+c_2+c_3+c_4}{=}
\left|
\begin{array}{cccc}
x+6&1&2&3\\
x+6&x&3&2\\
x+6&3&x&1\\
x+6&2&1&x
\end{array}
\right|
$$

Esta operación deja invariante el determinante. A continuación hacemos ceros en la columna con operaciones de filas y desarrollamos por dicha columna el determinante

$$

\underset{\scriptstyle
F_i\rightarrow F_i-F_1 \, i=2,3,4
}{=}
\left|
\begin{array}{cccc}
x+6 & 1 & 2 & 3\\
0 & x-1 & 1 & -1\\
0 & 2 & x-2 & -2\\
0 & 1 & -1 & x-3
\end{array}
\right|
=
(x+6)
\left|
\begin{array}{ccc}
x-1 & 1 & -1\\
2 & x-2 & -2\\
1 & -1 & x-3
\end{array}
\right|
$$

y a partir de aquí seguimos como mejor podamos

$$\underset{\scriptstyle
c_1\rightarrow c_1+c_3
}{=}(x+6) \begin{vmatrix} x-2 & 1 & -1 \\ 0 & x-2 & -2 \\ x-2 & -1 & x-3 \end{vmatrix} \underset{\scriptstyle
f_3\rightarrow f_3-f_1 }{=} 
\begin{vmatrix} x-2 & 1 & -1 \\ 0 & x-2 & -2 \\ 0 & -2 & x-2 \end{vmatrix}$$

$$= (x+6)(x-2)\begin{vmatrix} x-2 & -2 \\ -2 & x-2 \end{vmatrix} = (x+6)(x-2)(x-4)x$$

Luego el determinante de A es igual a 0 si y sólo si x = -6, 2, 4 o 0.

**Nota:** En la matriz A también la suma de las entradas en cada una de las columnas coincide, de manera que podríamos haber procedido de forma análoga. En este caso las primeras operaciones elementales nos llevarían a sustituir una de las filas por la suma de todas ellas.  $\Box$ 

### El determinante de una matriz triangular por bloques

El resultado de la Proposición 1.73 se puede generalizar a matrices diagonales por bloques.

#### Proposición 1.89

Si A es una matriz de orden n y B es una matriz de orden m entonces

$$\det\left(\begin{array}{c|c} A & C \\ \hline 0 & B \end{array}\right) = \det(A)\det(B)$$

**Demostración:** Procedemos por inducción sobre n, el orden de la matriz A. Si n=1 el resultado se sigue por la fórmula de Laplace para el cálculo del determinante utilizando la columna 1:

$$\det\left(\begin{array}{c|c} a & C \\ \hline 0 & B \end{array}\right) = a\det(B)$$

Supongamos que el resultado es válido si el orden de A igual a n-1.

Sea A una matriz de orden n y consideramos la matriz  $M = \begin{pmatrix} A & C \\ \hline 0 & B \end{pmatrix}$  de orden n+m. Aplicamos la fórmula de Laplace de cálculo del determinante utilizando la columna 1:

$$\det(M) = \sum_{i=1}^{n+m} (-1)^{i+1} m_{i1} \det(M_{i1}) = \sum_{i=1}^{n} (-1)^{i+1} m_{i1} \det(M_{i1})$$

$$= \sum_{i=1}^{n} (-1)^{i+1} a_{i1} (\det(A_{i1}) \det(B)) = \det(B) \sum_{i=1}^{n} (-1)^{i+1} a_{i1} \det(A_{i1})$$

$$= \det(B) \det(A)$$

donde la segunda igualdad es debida a que  $m_{i1}=0$  si i>n, y la tercera igualdad es debida a la hipótesis de inducción aplicada a  $M_{i1}=\left(\begin{array}{c|c}A_{i1}&C'\\\hline 0&B\end{array}\right)$  con orden de  $A_{i1}$  igual a n-1.  $\square$ 

#### Corolario 1.90

Si A es una matriz de orden n triangular superior (inferior) por bloques tal que las matrices  $A_1, A_2, \ldots, A_n$  situadas en su diagonal son cuadradas, entonces

$$\det(A) = \det(A_1) \det(A_2) \cdots \det(A_n)$$

**Demostración:** Por la Proposición 1.89 tenemos que

$$\det\begin{pmatrix} \frac{A_1}{0} & * & \cdots & * \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & A_n \end{pmatrix} = \det(A_1) \det\begin{pmatrix} A_2 & \cdots & * \\ \vdots & \ddots & \vdots \\ 0 & \cdots & A_n \end{pmatrix} = \cdots = \det(A_1) \det(A_2) \cdots \det(A_n) \quad \Box$$

#### Ejemplo 1.91 
Calculamos el determinante de una matriz triangular por bloques aplicando directamente el resultado anterior:

$$\det \begin{pmatrix} 3 & 5 & 1 & 2 & 1 & 7 \\ 1 & 2 & 7 & 6 & 4 & 0 \\ \hline 0 & 0 & 1 & 2 & 3 & 3 \\ 0 & 0 & 3 & 4 & 1 & 5 \\ \hline 0 & 0 & 0 & 0 & 3 & 8 \\ 0 & 0 & 0 & 0 & 1 & 5 \end{pmatrix} = \det \begin{pmatrix} 3 & 5 \\ 1 & 2 \end{pmatrix} \det \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix} \det \begin{pmatrix} 3 & 8 \\ 1 & 5 \end{pmatrix} = 1 \cdot (-2) \cdot 7 = -14 \qquad \Box$$

### Cálculo de la inversa usando el determinante

Sea  $A = (a_{ij})$  una matriz de orden n. Se llama **matriz adjunta** de A a la matriz que se obtiene sustituyendo cada elemento  $a_{ij}$  por su adjunto o cofactor  $\alpha_{ij}$ . Es decir

$$\operatorname{Adj}(A) = (\alpha_{ij})$$
 donde  $\alpha_{ij} = (-1)^{i+j} \det(A_{ij})$  para  $i, j = 1, \dots, n$ 

Realizamos el producto de las matrices  $Adj(A)^t$  y A:

$$\operatorname{Adj}(A)^{t} \cdot A = \begin{pmatrix} \alpha_{11} & \dots & \alpha_{n1} \\ \vdots & \ddots & \vdots \\ \alpha_{1n} & \dots & \alpha_{nn} \end{pmatrix} \begin{pmatrix} a_{11} & \dots & a_{1n} \\ \vdots & \ddots & \vdots \\ a_{n1} & \dots & a_{nn} \end{pmatrix} = \begin{pmatrix} \sum_{k=1}^{n} \alpha_{k1} a_{k1} & \dots & \sum_{k=1}^{n} \alpha_{k1} a_{kn} \\ \vdots & \ddots & \vdots \\ \sum_{k=1}^{n} \alpha_{kn} a_{k1} & \dots & \sum_{k=1}^{n} \alpha_{kn} a_{kn} \end{pmatrix}$$

y calculamos el valor que tienen las entradas de la última matriz. Para  $i=1,\ldots,n$  tenemos que  $\sum_{k=1}^n a_{ki}\alpha_{ki}$  es la fórmula de Laplace por la columna i del determinante de A. Luego todos las entradas de la diagonal son iguales a  $\det(A)$ . Para  $i,j=1,\ldots,n$  con  $i\neq j$  tenemos que  $\sum_{k=1}^n a_{ki}\alpha_{kj}$  es la fórmula de Laplace por la columna j del determinante de la matriz que se obtiene sustituyendo (no intercambiando) la columna j de A por la columna i de A, y como se trata de una matriz con dos

columnas iguales entonces dicho determinante es 0. Luego todas las entradas de fuera de la diagonal son iguales a 0. Entonces:

$$\operatorname{Adj}(A)^t A = \det(A) I_n$$

Si A es invertible, entonces  $det(A) \neq 0$  y despejando en la igualdad anterior se tiene

$$\frac{\operatorname{Adj}(A)^t}{\det(A)} A = I_n$$

Es decir.

$$A^{-1} = \frac{\operatorname{Adj}(A)^t}{\det A} = \frac{1}{\det A} \begin{pmatrix} \alpha_{11} & \dots & \alpha_{1n} \\ \vdots & \ddots & \vdots \\ \alpha_{n1} & \dots & \alpha_{nn} \end{pmatrix}^t$$

que es una fórmula clásica para el cálculo de la inversa.

#### Ejemplo 1.92

Calcule las matrices inversas de las matrices

$$A = \begin{pmatrix} -3 & -2 \\ 5 & 1 \end{pmatrix}, \quad B = \begin{pmatrix} -3 & 2 & 0 \\ 2 & -3 & 1 \\ 1 & 1 & -1 \end{pmatrix}, \quad D = \begin{pmatrix} 1 & 4 & 0 \\ 2 & 3 & 1 \\ 0 & 1 & 1 \end{pmatrix}$$

**Solución:**  $\triangleright$  Calculamos el determinante de A

$$\det \begin{pmatrix} -3 & -2 \\ 5 & 1 \end{pmatrix} = (-3) - (-10) = 7$$

Como  $det(A) \neq 0$  entonces

$$A^{-1} = \frac{1}{\det(A)} \begin{pmatrix} \alpha_{11} & \alpha_{12} \\ \alpha_{21} & \alpha_{22} \end{pmatrix}^{t} = \frac{1}{7} \begin{pmatrix} 1 & -5 \\ 2 & -3 \end{pmatrix}^{t} = \begin{pmatrix} \frac{1}{7} & \frac{2}{7} \\ -\frac{5}{7} & -\frac{3}{7} \end{pmatrix}$$

 $\triangleright$  Calculamos el determinante de B

$$\det \begin{pmatrix} -3 & 2 & 0 \\ 2 & -3 & 1 \\ 1 & 1 & -1 \end{pmatrix} = (-9 + 2 + 0) - (-3 - 4 + 0) = 0$$

Como det(B) = 0 entonces B no tiene inversa.

 $\triangleright$  Calculamos el determinante de D

$$\det \begin{pmatrix} 1 & 4 & 0 \\ 2 & 3 & 1 \\ 0 & 1 & 1 \end{pmatrix} = (3+0+0) - (1+8+0) = -6$$

Como  $det(D) \neq 0$  entonces

$$D^{-1} = \frac{1}{\det(D)} \begin{pmatrix} \alpha_{11} & \alpha_{12} & \alpha_{13} \\ \alpha_{21} & \alpha_{22} & \alpha_{23} \\ \alpha_{31} & \alpha_{32} & \alpha_{33} \end{pmatrix}' = \frac{1}{-6} \begin{pmatrix} \det\begin{pmatrix} 3 & 1 \\ 1 & 1 \end{pmatrix} & -\det\begin{pmatrix} 2 & 1 \\ 0 & 1 \end{pmatrix} & \det\begin{pmatrix} 2 & 3 \\ 0 & 1 \end{pmatrix} \end{pmatrix}^{t}$$

$$= \frac{1}{-6} \begin{pmatrix} 2 & -2 & 2 \\ -4 & 1 & -1 \\ 4 & -1 & -5 \end{pmatrix}^{t} = \frac{1}{-6} \begin{pmatrix} 2 & -4 & 4 \\ -2 & 1 & -1 \\ 2 & -1 & -5 \end{pmatrix} = \begin{pmatrix} -\frac{1}{3} & \frac{2}{3} & -\frac{2}{3} \\ \frac{1}{3} & -\frac{1}{6} & \frac{1}{6} \\ -\frac{1}{3} & \frac{1}{6} & \frac{5}{6} \end{pmatrix} \quad \Box$$

### Menores y rango

#### Definición 1.93

Un **menor de orden** k de una matriz A es el determinante de una submatriz de A de orden k. Si A es cuadrada, de orden n, el **menor principal** de A de orden k para  $k = 1, \ldots, n$  es

$$\Delta_k(A) = \det \begin{pmatrix} a_{11} & \dots & a_{1k} \\ \vdots & \ddots & \vdots \\ a_{k1} & \dots & a_{kk} \end{pmatrix}$$

#### Ejemplo 1.94
Sea

$$B = \begin{pmatrix} 1 & 0 & -2 & 1 & 2 \\ 2 & -1 & -3 & 0 & -1 \\ 4 & -1 & 1 & 2 & 0 \\ 5 & -2 & -4 & 1 & 3 \end{pmatrix}$$

El menor de orden 2 correspondiente a la submatriz  $2 \times 2$  de B que resulta de eliminar las filas 2 y 3 y las columnas 1, 3 y 4 (también diremos que es el menor cuyos elementos están en las filas 1 y 4, y en las columnas 2 y 5) es:

$$M_1 = \det \begin{pmatrix} 0 & 2 \\ -2 & 3 \end{pmatrix} = -4$$

El menor de orden 3 correspondiente a la submatriz  $3 \times 3$  de B que resulta de eliminar la fila 4 y las columnas 1 y 2 es:

$$M_2 = \det \begin{pmatrix} -2 & 1 & 2 \\ -3 & 0 & -1 \\ 1 & 2 & 0 \end{pmatrix} = -17$$

Los menores de orden 4 correspondientes a las submatrices de B obtenidas eliminando la columna 3 o la 4, respectivamente, son

$$M_3 = \det \begin{pmatrix} 1 & 0 & 1 & 2 \\ 2 & -1 & 0 & -1 \\ 4 & -1 & 2 & 0 \\ 5 & -2 & 1 & 3 \end{pmatrix} = -36 \quad \text{y} \quad M_4 = \det \begin{pmatrix} 1 & 0 & -2 & 2 \\ 2 & -1 & -3 & -1 \\ 4 & -1 & 1 & 0 \\ 5 & -2 & -4 & 3 \end{pmatrix} = 0 \qquad \Box$$

#### Proposición 1.95

Sea A una matriz de orden  $m \times n$  y  $A_p$  una submatriz de A de orden p y rango p. Si rg(A) > p entonces A tiene una submatriz  $A_{p+1}$  de orden p+1 y rango p+1 que contiene a  $A_p$ .

**Demostración:** Salvo permutación de filas y columnas, que no influyen en el rango, podemos suponer que  $A_p$  es la submatriz de A formada por las p primeras filas y columnas de A. Como  $A_p$  tiene orden p y rango p entonces sus filas son independientes, de donde se sigue que las filas  $F_1, \ldots, F_p$  de A son independientes, y lo mismo ocurre con las columnas  $C_1, \ldots, C_p$ . Por otro lado, como  $\operatorname{rg}(A) > p$ , entonces existe al menos otra fila de A, pongamos  $F_s$  con s > p, tal que las filas  $F_1, \ldots, F_p, F_s$  son independientes. Sea  $A'_p$  la submatriz de A de orden  $(p+1) \times n$  formada por las filas  $F_1, \ldots, F_p, F_s$  de A, esto es

$$A_{p} = \begin{pmatrix} a_{11} & \cdots & a_{1p} \\ \vdots & \ddots & \vdots \\ a_{p1} & \cdots & a_{pp} \end{pmatrix} \quad \text{y} \quad A'_{p} = \begin{pmatrix} a_{11} & \cdots & a_{1p} & \cdots & a_{1n} \\ \vdots & \ddots & \vdots & & \vdots \\ a_{p1} & \cdots & a_{pp} & \cdots & a_{pn} \\ \hline a_{s1} & \cdots & a_{sp} & \cdots & a_{sn} \end{pmatrix}$$

Como las filas de  $A'_p$  son independientes, entonces  $\operatorname{rg}(A'_p) = p+1$ . y como el número de filas independientes es igual al de columnas independientes, entonces  $A'_p$  tiene p+1 columnas independientes. Sea  $C_l$ . l>p, una columna de  $A'_p$  tal que las columnas  $C_1,\ldots,C_p$ .  $C_l$  de  $A'_p$  sean independientes. Entonces la matriz  $A_{p+1}$  de orden p+1 que resulta de ampliar  $A_p$  con la fila  $F_s$  y la columna  $C_l$ 

$$A_{p+1} = \begin{pmatrix} a_{11} & \dots & a_{1p} & a_{1l} \\ \vdots & \ddots & \vdots & \vdots \\ a_{p1} & \dots & a_{pp} & a_{pl} \\ \hline a_{s1} & \dots & a_{sp} & a_{sl} \end{pmatrix}$$

es una submatriz de A de orden p+1 y rango p+1 que contiene a  $A_p$ .

Dado que el rango de una matriz es mayor o igual que el rango de cualquier submatriz suya, la Proposiciones 1.95 nos permite dar una definición alternativa de rango utilizando menores.

#### Teorema 1.96

El rango de una matriz A es igual al mayor orden de un menor no nulo de A.

**Demostración:** Sea p el mayor orden de un menor no nulo de A. Entonces A posee una submatriz  $A_p$  de orden p tal que  $\det(A_p) \neq 0$ . Como  $\operatorname{rg}(A_p) = p$  y  $A_p$  es una submatriz de A, se sigue que  $\operatorname{rg}(A) \geq p$ . Veamos que no puede ocurrir  $\operatorname{rg}(A) > p$  y así concluiremos que  $\operatorname{rg}(A) = p$ , como queremos demostrar. En efecto, si fuese  $\operatorname{rg}(A) > p$ , por la Proposición 1.95 existiría una submatriz  $A_{p+1}$  de A, de orden p+1 y rango p+1 que contiene a  $A_p$ . Pero  $\operatorname{rg}(A_{p+1}) = p+1$  implica  $\det(A_{p+1}) \neq 0$ , y por tanto A tendría un menor no nulo de orden p+1. Una contradicción con la hipótesis.  $\square$ 

Recordamos que el rango de una matriz es el máximo número de filas independientes que tiene. La matriz nula tiene rango 0. Una matriz no nula con todas sus filas proporcionales tiene rango 1 puesto que tiene únicamente una fila independiente. Si una matriz contiene dos filas no nulas que no son proporcionales entonces su rango ya será mayor o igual que 2 porque tiene como mínimo dos filas independientes. Localizar en una matriz con dos filas no proporcionales una submatriz de orden 2 y rango 2 es trivial.

### Procedimiento para el cálculo del rango por menores

Teniendo en cuenta todos los resultados anteriores, describimos a continuación un método algorítmico que nos dice cómo proceder de manera sistemática para calcular el rango de una matriz utilizando menores.

#### Ejemplo 1.97

Calcularemos, utilizando menores, el rango de la matriz

$$A = \begin{pmatrix} 1 & 3 & 3 & 1 \\ 0 & 1 & 2 & 0 \\ 1 & 2 & 1 & 1 \\ 1 & 3 & 1 & 1 \end{pmatrix}$$

La matriz A tiene al menos rango 2 ya que sus filas 1 y 2 no son proporcionales. Como submatriz de A de orden 2 y rango 2 podemos tomar aquella cuyos elementos están en las filas 1 y 2 y columnas 1 y 2 ya que det  $\begin{pmatrix} 1 & 3 \\ 0 & 1 \end{pmatrix} = 1 \neq 0$ . Vamos a seguir ahora el procedimiento descrito en la demostración de la Proposición 1.95. Sea

$$A_2 = \begin{pmatrix} 1 & 3 \\ 0 & 1 \end{pmatrix}$$

Comenzamos con la matriz formada por las filas 1 y 2 de A que contienen a  $A_2$  a las que le añadimos la fila 3 de A, esto es,

$$A_2' = \begin{pmatrix} 1 & 3 & 3 & 1 \\ 0 & 1 & 2 & 0 \\ 1 & 2 & 1 & 1 \end{pmatrix}$$

y en  $A_2'$  buscamos una submatriz de orden 3 y rango 3 que contenga a  $A_2$ :

columnas 1, 2, 3 
$$\longrightarrow$$
 det  $\begin{pmatrix} 1 & 3 & 3 \\ 0 & 1 & 2 \\ 1 & 2 & 1 \end{pmatrix} = 0$ ; columnas 1, 2, 4  $\longrightarrow$  det  $\begin{pmatrix} 1 & 3 & 1 \\ 0 & 1 & 0 \\ 1 & 2 & 1 \end{pmatrix} = 0$ 

Por lo tanto  $A'_2$  no tiene una submatriz de orden 3 y rango 3 que contenga a  $A_2$ . A efectos de calcular el rango de A podemos eliminar su fila 3 porque es dependiente de las filas 1 y 2 (compruébese que

 $F_3(A) = F_1(A) - F_2(A)$ ). Si la fila 3 de A hubiera sido independiente de las filas 1 y 2 de A entonces el rango de  $A'_2$  sería 3 y, por la Proposición 1.95,  $A'_2$  tendría una submatriz de orden 3 y rango 3 que contiene a  $A_2$ . Y hemos visto que eso no sucede.

Consideramos ahora la matriz formada por las filas 1 y 2 de A que contienen a  $A_2$  a las que le añadimos la fila 4 de A, esto es,

$$A_2'' = \begin{pmatrix} 1 & 3 & 3 & 1 \\ 0 & 1 & 2 & 0 \\ 1 & 3 & 1 & 1 \end{pmatrix}$$

y en  $A_2''$  buscamos una submatriz de orden 3 y rango 3 que contenga a  $A_2$ :

columnas 1, 2, 3 
$$\longrightarrow \det \begin{pmatrix} 1 & 3 & 3 \\ 0 & 1 & 2 \\ 1 & 3 & 1 \end{pmatrix} = -2 \neq 0$$

Hemos encontrado un menor de orden 3 en  $A_2''$  no nulo por lo que ya no seguimos con la casuística. Además, ya podemos concluir que el rango de A es 3 pues ya no nos quedan más filas.  $\Box$ 

#### Ejemplo 1.98

Vamos a demostrar que la siguiente matriz tiene rango 2

$$A = \begin{pmatrix} 1 & 0 & 2 & 1 \\ 2 & -1 & -3 & 0 \\ 4 & -1 & 1 & 2 \\ 5 & -2 & -4 & 1 \end{pmatrix}$$

La matriz A tiene al menos rango 2 ya que sus dos primeras filas no son proporcionales. Una submatriz de A de orden 2 y rango 2 es, por ejemplo, la submatriz  $\begin{pmatrix} 1 & 0 \\ 2 & -1 \end{pmatrix}$  cuyos elementos están en las filas 1 y 2 y en las columnas 1 y 2 de A, puesto que

$$\det\begin{pmatrix} 1 & 0 \\ 2 & -1 \end{pmatrix} = -1 \neq 0$$

Por el Teorema 1.96 si rg(A) > 2 entonces A debe tener un menor no nulo de orden 3. Las submatrices de orden 3 de A se obtienen eliminando una fila y una columna de A. Hay 4 posibles filas a eliminar y 4 posibles columnas a eliminar. Luego hay 16 submatrices distintas de orden 3, que son

$$\begin{array}{c|ccccc}
* \begin{pmatrix} 1 & 0 & 2 \\ 2 & -1 & -3 \\ \hline
4 & -1 & 1 \end{pmatrix} & * \begin{pmatrix} 1 & 0 & 2 \\ 2 & -1 & -3 \\ \hline
5 & -2 & -4 \end{pmatrix} & \begin{pmatrix} 1 & 0 & 2 \\ 4 & -1 & 1 \\ 5 & -2 & -4 \end{pmatrix} & \begin{pmatrix} 2 & -1 & -3 \\ 4 & -1 & 1 \\ 5 & -2 & -4 \end{pmatrix} \\
& * \begin{pmatrix} 1 & 0 & 1 \\ 2 & -1 & 0 \\ \hline
4 & -1 & 2 \end{pmatrix} & * \begin{pmatrix} 1 & 0 & 1 \\ 2 & -1 & 0 \\ \hline
5 & -2 & 1 \end{pmatrix} & \begin{pmatrix} 1 & 0 & 1 \\ 4 & -1 & 2 \\ 5 & -2 & 1 \end{pmatrix} & \begin{pmatrix} 2 & -1 & 0 \\ 4 & -1 & 2 \\ 5 & -2 & 1 \end{pmatrix}
\end{array}$$

$$\begin{pmatrix}
1 & 2 & 1 \\
2 & -3 & 0 \\
4 & 1 & 2
\end{pmatrix} \qquad
\begin{pmatrix}
1 & 2 & 1 \\
2 & -3 & 0 \\
5 & -4 & 1
\end{pmatrix} \qquad
\begin{pmatrix}
1 & 2 & 1 \\
4 & 1 & 2 \\
5 & -4 & 1
\end{pmatrix} \qquad
\begin{pmatrix}
2 & -3 & 0 \\
4 & 1 & 2 \\
5 & -4 & 1
\end{pmatrix}$$

$$\begin{pmatrix}
0 & 2 & 1 \\
-1 & -3 & 0 \\
-1 & 1 & 2
\end{pmatrix} \qquad
\begin{pmatrix}
0 & 2 & 1 \\
-1 & 1 & 2 \\
-2 & -4 & 1
\end{pmatrix} \qquad
\begin{pmatrix}
-1 & -3 & 0 \\
-1 & 1 & 2 \\
-2 & -4 & 1
\end{pmatrix}$$

Se puede comprobar que todas ellas tienen determinante 0. Por otra parte, la única submatriz de orden 4 de A es la propia A, y también se puede comprobar que  $\det(A) = 0$ . Por lo tanto rg A = 2.

En realidad no hace falta calcular tantos menores. Podemos usar la Proposición 1.95 que nos dice que si A tiene rango mayor que 2 entonces tiene que existir una submatriz de A orden 3 con determinante no nulo que contiene a la submatriz  $\begin{pmatrix} 1 & 0 \\ 2 & -1 \end{pmatrix}$ . Luego sólo teníamos que haber estudiado los menores correspondientes a las 4 submatrices de A de orden 3 que resultan de ampliar  $\begin{pmatrix} 1 & 0 \\ 2 & -1 \end{pmatrix}$ , que son las 4 matrices que se han marcado con un asterisco.

Nota: El método de estudio del rango por menores (que implica el cálculo sistemático de determinantes) es menos eficiente que el método de Gauss de escalonamiento. Véase el Ejercicio 1.18. en el que se calcula el rango de una matriz de tamaño  $4 \times 5$  por ambos métodos.

## 1.6. Ejercicios propuestos

- **1.1.** Dadas tres matrices A, B y C de orden n, demuestre que si A y B conmutan y A y C conmutan entonces A y BC conmutan.
- **1.2.** Demuestre cada una de las siguientes afirmaciones:
  - a) Las entradas de la diagonal de una matriz antisimétrica son iguales a 0.
  - b) Las entradas de la diagonal de una matriz hermítica son números reales.
- **1.3.** Justifique la veracidad o falsedad de la siguiente afirmación: Si el rango de la suma de dos matrices cuadradas y el de su diferencia son ambos 0, las dos matrices son nulas.
- **1.4.** Demuestre que el producto de matrices triangulares superiores es una matriz triangular superior, y que el producto de matrices triangulares inferiores es una matriz triangular inferior.
- **1.5.** Escriba todas las posibles matrices escalonadas reducidas de orden  $2 \times 4$  (sugerencia: ordénelas por rango creciente).
- **1.6.** Calcule el rango de la matriz A dependiendo del valor de  $\alpha$ .

$$A = \begin{pmatrix} \alpha & 0 & 1 \\ 1 & \alpha - 1 & 1 \\ 1 & 0 & \alpha \end{pmatrix}$$

- **1.7.** Decida, sin calcular el determinante, si la siguiente matriz tiene inversa para algún  $a \in \mathbb{R}$ .

$$A = \left(\begin{array}{rrrr} 1 & 3 & -2 & 0 \\ 1 & 4 & 1 & 3 \\ 0 & 2 & 3 & a \\ 2 & 4 & 1 & 1 \end{array}\right)$$

- **1.8.** Dadas las siguientes matrices

$$A = \begin{pmatrix} 1 & 0 & 2 & 0 \\ 0 & 1 & 3 & -2 \\ 2 & 3 & 1 & 6 \\ 3 & 0 & 0 & 6 \end{pmatrix}, \quad B = \begin{pmatrix} 1 & 1 & 2 & 1 \\ 2 & 1 & 3 & 2 \\ 2 & 1 & 1 & 4 \\ 4 & 1 & 0 & 9 \end{pmatrix}$$

$$C = \begin{pmatrix} 1 & 2 & 4 & 0 \\ 2 & 5 & 9 & 1 \\ 3 & -4 & 2 & 0 \\ -2 & 3 & -1 & -1 \end{pmatrix}, \quad D = \begin{pmatrix} 1 & 2 & 5 & 5 \\ 2 & 1 & 7 & 4 \\ 1 & -1 & 2 & -1 \\ -1 & 1 & -2 & 1 \end{pmatrix}$$

	- a) ¿Qué rango tiene cada una?
	- b) Determine cuáles de ellas son equivalentes.
	- c) Determine cuáles de ellas son equivalentes por filas.

- **1.9.** Encuentre una matriz invertible P que transforme la matriz D del ejercicio anterior en su forma de Hermite por filas, esto es, tal que  $PD = H_f(D)$ .
- **1.10.** Demuestre que si

$$A = \begin{pmatrix} 1 & 1 & 1 \\ 0 & 1 & 1 \\ 0 & 0 & 1 \end{pmatrix}$$

entonces para todo  $n \in \mathbb{N}$  la matriz  $A^n$  tiene la forma general

$$A^{n} = \begin{pmatrix} 1 & n & \frac{n(n+1)}{2} \\ 0 & 1 & n \\ 0 & 0 & 1 \end{pmatrix} \tag{1.1}$$

- **1.11.** Resuelva la ecuación

$$\det \left( \begin{array}{cccc} 1+x & x & x & x \\ x & 1+x & x & x \\ x & x & 1+x & x \\ x & x & x & 1+x \end{array} \right) = 0$$

- **1.12.** Describa un esquema para resolver cada uno de los siguientes problemas:
	- a) Si H(A) es la forma de Hermite de A, encuentre dos matrices P y Q invertibles tales que PAQ = H(A).
	- b) Si A y B son dos matrices cuya forma de Hermite por filas coincide, encuentre una matriz invertible P tal que PA = B?
	- c) Si A y B son dos matrices cuya forma de Hermite por columnas coincide, encuentre una matriz invertible Q tal que AQ = B?
- **1.13.** Sean  $D \in \mathfrak{M}_{n \times p}(\mathbb{K})$  y  $C \in \mathfrak{M}_n(\mathbb{K})$ . Demuestre que si  $\operatorname{rg}(C) = n$  entonces  $\operatorname{rg}(CD) = \operatorname{rg}(D)$ .
- **1.14.** Sea A una matriz de orden  $m \times n$ . Utilice la definición de rango de una matriz para demostrar las siguientes afirmaciones.
	- a) Si rg(A) < m entonces existe una matriz no nula B tal que BA = 0.
	- b) Si rg(A) < n entonces existe una matriz no nula B tal que AB = 0.
- **1.15.** Demuestre que si A es una matriz de tamaño  $n \times 1$  y B es una matriz de tamaño  $1 \times n$  con n > 1, entonces AB no es invertible. Determine el rango de AB si A y B no son nulas.
- **1.16.** Demuestre la veracidad de las siguientes afirmaciones:
	- a) Dos matrices semejantes tienen el mismo determinante.
	- b) La relación de semejanza entre matrices es de equivalencia.
	- c) La relación de congruencia entre matrices es de equivalencia.

- **1.17.** Utilice el método descrito en la demostración de la Proposición 1.69 para calcular una inversa por la derecha de la matriz

$$A = \begin{pmatrix} 1 & 2 & 1 \\ -1 & -1 & 2 \end{pmatrix}$$

- **1.18.** Determine el rango de la matriz

$$B = \begin{pmatrix} 1 & 2 & 1 & 0 & -1 \\ 2 & 4 & 1 & 2 & 3 \\ 3 & 6 & 1 & 4 & 7 \\ -1 & -2 & 0 & 1 & 2 \end{pmatrix}$$

por el método de menores y por el método de Gauss de escalonamiento.

- **1.19.** (\*) Calcule la matriz inversa de la matriz

$$A = \begin{pmatrix} 1 & \alpha_1 & 0 & 0 & \cdots & 0 & 0 \\ 0 & 1 & \alpha_2 & 0 & \cdots & 0 & 0 \\ 0 & 0 & 1 & \alpha_3 & \cdots & 0 & 0 \\ \vdots & \vdots & \vdots & \ddots & \ddots & \vdots & \vdots \\ \vdots & \vdots & \vdots & \vdots & \ddots & \ddots & \vdots \\ 0 & 0 & 0 & 0 & \cdots & 1 & \alpha_{n-1} \\ 0 & 0 & 0 & 0 & \cdots & 0 & 1 \end{pmatrix}$$

- **1.20.** (\*) Definimos la función

$$f: \mathfrak{M}_n(\mathbb{K}) \xrightarrow{} \mathbb{Z}$$

$$A \neq 0 \mapsto f(A) = \min\{j - i : a_{ij} \neq 0\}$$

$$0 \mapsto f(0) = n$$

	Demuestre que:

	- a)  $f(A) \ge 0$  si y sólo si A es triangular superior.
	- b) Si  $f(A) \ge 0$  y  $f(B) \ge 0$  entonces  $f(AB) \ge 0$ .
	- c) Si  $f(A) \ge 1$  y f(B) < n entonces f(AB) > f(B).
	- d) Si  $f(A) \ge 1$  entonces existe un entero k tal que  $A^k = 0$ .
- **1.21.** (\*) Demuestre que el determinante de la matriz

$$A = \begin{pmatrix} 1 & 1 & 1 & \cdots & 1 \\ \alpha_1 & \alpha_2 & \alpha_3 & \cdots & \alpha_n \\ \alpha_1^2 & \alpha_2^2 & \alpha_3^2 & \cdots & \alpha_n^2 \\ \vdots & \vdots & \vdots & \ddots & \vdots \\ \alpha_1^{n-1} & \alpha_2^{n-1} & \alpha_3^{n-1} & \cdots & \alpha_n^{n-1} \end{pmatrix}.$$

denotado por  $\Delta(\alpha_1, \ldots, \alpha_n)$  y denominado determinante de Vandermonde, viene dado por

$$\Delta(\alpha_1, \dots, \alpha_n) = \prod_{1 \le i \le j \le n} (\alpha_j - \alpha_i)$$

## Notas
[^1]:  A lo largo de todo el texto consideraremos que $\mathbb{K}= \mathbb{R}$ (cuerpo de los números reales) o $\mathbb{K}= \mathbb{C}$ (cuerpo de los números complejos).
[^2]: Johann Carl Friedrich Gauss (Brunswick, 1777 - Gotinga, 1855).
[^3]: Wilhelm Jordan (Eilwangen, 1842 Hannover, 1899).
[^4]: Charles Hermite (Dieuze, 1822 París, 1901).
[^5]: Con lenguaje algebraico decimos que el anillo  $\mathfrak{M}_n(\mathbb{K})$  tiene divisores de cero.
[^6]: Pierre-Simon Laplace (Beaumont-en-Auge, 1749 - Paris 1827).
[^7]: Pierre Frédéric Sarrus (Saint-Affrique, 1798—1861).