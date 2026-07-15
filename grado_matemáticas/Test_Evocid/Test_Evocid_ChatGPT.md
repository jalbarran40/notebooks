# La función zeta de Riemann

## Tema 1. Definición y propiedades básicas

### 1.1 Series de Dirichlet y zeta de Riemann

Una serie de Dirichlet es de la forma

$$
\sum_{n=1}^{\infty}\frac{a_n}{n^s},
\qquad
\text{con } s,a_n\in\mathbb{C}.
$$

Si $(s=\sigma+it)$ tenemos que

$$
n^s=e^{s\log n}
\;\Rightarrow\;
|n^s| =
e^{\sigma\log n} =
n^\sigma,
$$

luego

$$
\left|\frac{a_n}{n^s}\right| =
\frac{|a_n|}{|n^s|} =
\frac{|a_n|}{n^\sigma}.
$$

Luego la convergencia absoluta de la serie es independiente de \(t\). Además, si la serie converge absolutamente para \(s=s_0\), también lo hará para todo \(s\) tal que

$$
\operatorname{Re}(s)>\operatorname{Re}(s_0),
$$

ya que

$$
\left|\frac{a_n}{n^s}\right| =
\frac{|a_n|}{n^{\operatorname{Re}(s)}}
\le
\frac{|a_n|}{n^{\operatorname{Re}(s_0)}} =
\left|\frac{a_n}{n^{s_0}}\right|.
$$

Esto significa que existe una **abscisa de convergencia absoluta** \(\sigma_a\), definida como el ínfimo de los \(\sigma\) para los que la serie converge absolutamente.

Y eso significa que la serie de Dirichlet convergerá absolutamente en el semiplano

$$
\operatorname{Re}(s)>\sigma_a,
$$

y divergerá absolutamente si

$$
\operatorname{Re}(s)<\sigma_a.
$$

No hay garantías en

$$
\operatorname{Re}(s)=\sigma_a.
$$

¿Hay también una abscisa $(\sigma_c)$ de convergencia simple? Veamos.

Supongamos que

$$
\sum_{n=1}^{\infty}\frac{a_n}{n^{s_0}}
$$

converge.

¿Qué pasa para \(s\) tal que

$$
\operatorname{Re}(s)>\operatorname{Re}(s_0)?
$$

Tenemos

$$
\sum_{n=1}^{\infty}\frac{a_n}{n^s} =
\sum_{n=1}^{\infty}
\frac{a_n}{n^{s_0}n^{\,s-s_0}} =
\sum_{n=1}^{\infty}\frac{C_n}{n^\sigma},
$$

donde

$$
C_n=\frac{a_n}{n^{s_0}},
\qquad
\sigma=\operatorname{Re}(s-s_0) =
\operatorname{Re}(s)-\operatorname{Re}(s_0)>0.
$$

### 1) Sumación de Abel

Sea

$$
C_n=\sum_{k=1}^{n}c_k,
\qquad
C_0=0.
$$

Entonces

$$
c_n=C_n-C_{n-1}.
$$

Sea la sucesión \((b_n)\). Entonces

$$
\sum_{n=1}^{N}c_nb_n =
\sum_{n=1}^{N}(C_n-C_{n-1})b_n =
C_Nb_N -
\sum_{n=1}^{N-1}C_n(b_{n+1}-b_n).
$$

> **Identidad de Abel**

En nuestro caso,

$$
b_n=n^{-\sigma},
$$

y por tanto

$$
\sum_{n=1}^{N}\frac{C_n}{n^\sigma} =
\frac{C_N}{N^\sigma} -
\sum_{n=1}^{N-1}
C_n
\left(
\frac{1}{(n+1)^\sigma} -
\frac{1}{n^\sigma}
\right).
$$

### 2) Primer término

Como

$$
C_n=\frac{a_n}{n^{s_0}}
$$

converge, luego \(C_N\) está acotada; es decir,

$$
\exists\,M
\quad\text{tal que}\quad
|C_N|\le M
\qquad
\forall N.
$$

Además,

$$
\sigma>0,
$$

luego

$$
\frac{1}{N^\sigma}
\xrightarrow[N\to\infty]{}
0,
$$

y por tanto

$$
\frac{C_N}{N^\sigma}
\xrightarrow[N\to\infty]{}
0.
$$
