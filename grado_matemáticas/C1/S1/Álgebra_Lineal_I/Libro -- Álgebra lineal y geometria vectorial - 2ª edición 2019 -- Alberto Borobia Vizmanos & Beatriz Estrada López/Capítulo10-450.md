**3.8.** En el espacio vectorial  $\mathfrak{M}_2(\mathbb{R})$  se consideran los vectores

$$m_1 = \begin{pmatrix} 2 & -1 \\ 3 & 1 \end{pmatrix}, \quad m_3 = \begin{pmatrix} 2 & 1 \\ 2 & 0 \end{pmatrix}, \quad m_5 = \begin{pmatrix} 0 & -2 \\ 3 & 2 \end{pmatrix},$$
  
 $m_2 = \begin{pmatrix} 0 & -1 \\ 1 & 1 \end{pmatrix}, \quad m_4 = \begin{pmatrix} 0 & -3 \\ 2 & 2 \end{pmatrix}, \quad m_6 = \begin{pmatrix} 2 & 0 \\ 1 & 0 \end{pmatrix}.$ 

y los subespacios vectoriales  $F_1 = L(m_1, m_2)$ ,  $F_2 = L(m_3, m_4)$  y  $F_3 = L(m_5, m_6)$ .

- a) Demuestre que  $F_1 \cap F_2 = F_1 \cap F_3 = F_2 \cap F_3$  y dé una base.
- b) Halle la dimensión de  $F_1 + F_2$  y dé una base.

**Solución:** Trabajaremos con las coordenadas de los vectores (matrices) respecto de la base canónica de  $\mathfrak{M}_2(\mathbb{R})$ 

$$\mathcal{B} = \left\{ \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}, \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}, \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix}, \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} \right\}$$

Las coordenadas vienen dadas por

$$m_1 = (2, -1, 3, 1)_{\mathcal{B}}, \quad m_3 = (2, 1, 2, 0)_{\mathcal{B}}, \quad m_5 = (0, -2, 3, 2)_{\mathcal{B}}, m_2 = (0, -1, 1, 1)_{\mathcal{B}}, \quad m_4 = (0, -3, 2, 2)_{\mathcal{B}}, \quad m_6 = (2, 0, 1, 0)_{\mathcal{B}}.$$

a) Las ecuaciones implícitas de  $F_1 = L(m_1, m_2)$  respecto de  $\mathcal B$  vienen determinadas por

$$\operatorname{rg}\begin{pmatrix} 2 & 0 \\ -1 & -1 \\ 3 & 1 \\ 1 & 1 \end{pmatrix} = \operatorname{rg}\begin{pmatrix} 2 & 0 & x_1 \\ -1 & -1 & x_2 \\ 3 & 1 & x_3 \\ 1 & 1 & x_4 \end{pmatrix} \tag{*}$$

Escalonamos la última matriz

$$\begin{pmatrix} 2 & 0 & x_1 \\ -1 & -1 & x_2 \\ 3 & 1 & x_3 \\ 1 & 1 & x_4 \end{pmatrix} \sim \begin{pmatrix} 1 & 1 & x_4 \\ 2 & 0 & x_1 \\ -1 & -1 & x_2 \\ 3 & 1 & x_3 \end{pmatrix} \sim \begin{pmatrix} 1 & 1 & x_4 \\ 0 & -2 & x_1 - 2x_4 \\ 0 & 0 & x_2 + x_4 \\ 0 & -2 & x_3 - 3x_4 \end{pmatrix} \sim \begin{pmatrix} 1 & 1 & x_4 \\ 0 & -2 & x_1 - 2x_4 \\ 0 & 0 & x_2 + x_4 \\ 0 & 0 & x_3 - x_4 - x_1 \end{pmatrix}$$

De donde se sigue que la igualdad (\*) se cumple si y sólo si

$$\begin{cases} x_2 + x_4 = 0 \\ -x_1 + x_3 - x_4 = 0 \end{cases}$$

y, por lo tanto, éstas son unas ecuaciones implícitas de  $F_1$  respecto de  $\mathcal{B}$ .

Procedemos igual para  $F_2 = L(m_3, m_4)$ :

$$\begin{pmatrix} 2 & 0 & x_1 \\ 1 & -3 & x_2 \\ 2 & 2 & x_3 \\ 0 & 2 & x_4 \end{pmatrix} \sim \begin{pmatrix} 1 & -3 & x_2 \\ 0 & 2 & x_4 \\ 2 & 0 & x_1 \\ 2 & 2 & x_3 \end{pmatrix} \sim \begin{pmatrix} 1 & -3 & x_2 \\ 0 & 2 & x_4 \\ 0 & 6 & x_1 - 2x_2 \\ 0 & 8 & x_3 - 2x_2 \end{pmatrix} \sim \begin{pmatrix} 1 & -3 & x_2 \\ 0 & 2 & x_4 \\ 0 & 0 & x_1 - 2x_2 - 3x_4 \\ 0 & 0 & x_3 - 2x_2 - 4x_4 \end{pmatrix}$$

y las ecuaciones implícitas de  $F_2$  respecto de  $\mathcal{B}$  son

$$\begin{cases} x_1 - 2x_2 - 3x_4 = 0 \\ -2x_2 + x_3 - 4x_4 = 0 \end{cases}$$

Finalmente para  $F_3 = L(m_5, m_6)$ :

$$\begin{pmatrix} 0 & 2 & x_1 \\ -2 & 0 & x_2 \\ 3 & 1 & x_3 \\ 2 & 0 & x_4 \end{pmatrix} \sim \begin{pmatrix} -2 & 0 & x_2 \\ 0 & 2 & x_1 \\ 3 & 1 & x_3 \\ 2 & 0 & x_4 \end{pmatrix} \sim \begin{pmatrix} -2 & 0 & x_2 \\ 0 & 2 & x_1 \\ 6 & 2 & 2x_3 \\ 2 & 0 & x_4 \end{pmatrix} \sim \begin{pmatrix} -2 & 0 & x_2 \\ 0 & 2 & x_1 \\ 0 & 0 & 2x_3 + 3x_2 - x_1 \\ 0 & 0 & x_4 + x_2 \end{pmatrix}$$

y las ecuaciones implícitas de  $F_3$  respecto de  $\mathcal B$  son

$$\begin{cases} -x_1 + 3x_2 + 2x_3 = 0 \\ x_2 + x_4 = 0 \end{cases}$$

Ahora calculamos unas ecuaciones paramétricas respecto de  $\mathcal{B}$  de  $F_1 \cap F_2$ , de  $F_1 \cap F_3$  y de  $F_2 \cap F_3$ . Juntamos en cada caso las ecuaciones implícitas de los dos subespacios.

$$F_1 \cap F_2 \equiv \begin{cases} x_2 + x_4 = 0 \\ -x_1 + x_3 - x_4 = 0 \\ x_1 - 2x_2 - 3x_4 = 0 \\ -2x_2 + x_3 - 4x_4 = 0 \end{cases}$$

y resolvemos el sistema, que tiene solución general  $(\lambda, -\lambda, 2\lambda, \lambda)$  con  $\lambda \in \mathbb{R}$ .

$$F_1 \cap F_3 \equiv \begin{cases} x_2 + x_4 = 0 \\ -x_1 + x_3 - x_4 = 0 \\ -x_1 + 3x_2 + 2x_3 = 0 \\ x_2 + x_4 = 0 \end{cases}$$

que tiene por solución general  $(\lambda, -\lambda, 2\lambda, \lambda)$  con  $\lambda \in \mathbb{R}$ .

$$F_2 \cap F_3 \equiv \begin{cases} x_1 - 2x_2 - 3x_4 = 0 \\ -2x_2 + x_3 - 4x_4 = 0 \\ -x_1 + 3x_2 + 2x_3 = 0 \\ x_2 + x_4 = 0 \end{cases}$$

que tiene por solución general  $(\lambda, -\lambda, 2\lambda, \lambda)$  con  $\lambda \in \mathbb{R}$ .

Luego una base de  $F_1 \cap F_2 = F_1 \cap F_3 = F_2 \cap F_3$  es  $\{(1, -1, 2, 1)_B\}$ .

b) Para calcular la dimensión de  $F_1+F_2$  aplicamos la fórmula de Grassmann:

$$\dim F_1 + F_2 = \dim F_1 + \dim F_2 - \dim F_1 \cap F_2 = 2 + 2 - 1 = 3$$

Una base de  $F_1 + F_2$  vendrá dada por 3 matrices linealmente independientes del conjunto  $\{m_1, m_2, m_3, m_4\}$ . Queda como ejercicio el comprobar que  $m_1$ ,  $m_2$  y  $m_3$  son linealmente independientes y que, por tanto, forman una base de  $F_1 + F_2$ .  $\square$ 

**3.9.** Sea  $w = (1, 1, 1) \in \mathbb{K}^3$  y sean dos bases de  $\mathbb{K}^3$  dadas por

$$\mathcal{A} = \{ a_1 = (1, 1, 2), a_2 = (0, 2, 1), a_3 = (0, 1, 1) \}$$
  
 $\mathcal{B} = \{ b_1 = (2, 1, 1), b_2 = (1, 1, 0), b_3 = (2, -1, 2) \}$ 

- a) Calcule las coordenadas del vector w respecto de A.
- b) Calcule las coordenadas del vector w respecto de  $\mathcal{B}$ .
- c) Calcule la matriz  $\mathfrak{M}_{AB}$  del cambio de base de A a B.
- d) Calcule la matriz  $\mathfrak{M}_{\mathcal{B}A}$  del cambio de base de  $\mathcal{B}$  a  $\mathcal{A}$ .
- e) Compruebe que  $\mathfrak{M}_{\mathcal{AB}}$  transforma las coordenadas de w respecto de  $\mathcal{A}$  en las coordenadas de w respecto de  $\mathcal{B}$ , y que  $\mathfrak{M}_{\mathcal{BA}}$  transforma las coordenadas de w respecto de  $\mathcal{B}$  en las coordenadas de w respecto de  $\mathcal{A}$ .

**Solución:** a) Escribimos w como combinación lineal de  $a_1$ ,  $a_2$  y  $a_3$ 

$$(1,1,1) = \lambda_1(1,1,2) + \lambda_2(0,2,1) + \lambda_3(0,1,1)$$
 con  $\lambda_i \in \mathbb{K}$ 

que da lugar al sistema lineal

$$\begin{cases} \lambda_1 &=1\\ \lambda_1 + 2\lambda_2 + \lambda_3 = 1\\ 2\lambda_1 + \lambda_2 + \lambda_3 = 1 \end{cases}$$

cuya única solución es  $(\lambda_1, \lambda_2, \lambda_3) = (1, 1, -2)$ . Por lo tanto,

$$w = a_1 + a_2 - 2a_3 = (1, 1, -2)_{\mathcal{A}}$$

b) Escribimos w como combinación lineal de  $b_1, b_2$  y  $b_3$ 

$$(1,1,1) = \mu_1(2,1,1) + \mu_2(1,1,0) + \mu_3(2,-1,2)$$
 con  $\mu_i \in \mathbb{K}$ 

que da lugar al sistema lineal

$$\begin{cases} 2\mu_1 + \mu_2 + 2\mu_3 = 1 \\ \mu_1 + \mu_2 - \mu_3 = 1 \\ \mu_1 + 2\mu_3 = 1 \end{cases}$$

cuya única solución es  $(\mu_1,\mu_2,\mu_3)=(3,-3,-1).$  Por lo tanto,

$$w = 3b_1 - 3b_2 + b_3 = (3, -3, -1)_{\mathcal{B}}$$

c) Calculamos las coordenadas de los vectores de  $\mathcal{A}$  respecto de  $\mathcal{B}$ . En primer lugar, calculamos las coordenadas de  $a_1$  respecto de  $\mathcal{B}$ , esto es,

$$(1,1,2) = \alpha_1(2,1,1) + \alpha_2(1,1,0) + \alpha_3(2,-1,2)$$
 con  $\alpha_i \in \mathbb{K}$ 

que da lugar al sistema lineal

$$\begin{cases} 2\alpha_1 + \alpha_2 + 2\alpha_3 = 1 \\ \alpha_1 + \alpha_2 - \alpha_3 = 1 \\ \alpha_1 + 2\alpha_3 = 2 \end{cases}$$

cuya única solución es  $(\alpha_1, \alpha_2, \alpha_3) = (6, -7, -2)$ . Por lo tanto.

$$a_1 = 6b_1 - 7b_2 - 2b_3 = (6, -7, -2)_{\mathcal{B}}$$

En segundo lugar, calculamos las coordenadas de  $a_2$  respecto de  $\mathcal{B}$ 

$$(0,2,1) = \beta_1(2,1,1) + \beta_2(1,1,0) + \beta_3(2,-1,2)$$
 con  $\beta_i \in \mathbb{K}$ 

que da lugar al sistema lineal

$$\begin{cases} 2\beta_1 + \beta_2 + 2\beta_3 = 0 \\ \beta_1 + \beta_2 - \beta_3 = 2 \\ \beta_1 + 2\beta_3 = 1 \end{cases}$$

cuya única solución es  $(\beta_1, \beta_2, \beta_3) = (7, -8, -3)$ . Por lo tanto,

$$a_2 = 7b_1 - 8b_2 - 3b_3 = (7, -8, -3)_{\mathcal{B}}$$

Por último, calculamos las coordenadas de  $a_3$  respecto de  $\mathcal{B}$ 

$$(0,1,1) = \gamma_1(2,1,1) + \gamma_2(1,1,0) + \gamma_3(2,-1,2)$$
 con  $\gamma_i \in \mathbb{K}$ 

que da lugar al sistema lineal

$$\begin{cases} 2\gamma_1 + \gamma_2 + 2\gamma_3 = 0 \\ \gamma_1 + \gamma_2 - \gamma_3 = 1 \\ \gamma_1 + 2\gamma_3 = 1 \end{cases}$$

cuya única solución es  $(\gamma_1, \gamma_2, \gamma_3) = (5, -6, -2)$ . Por lo tanto,

$$a_3 = 5b_1 - 6b_2 - 2b_3 = (5, -6, -2)_{\mathcal{B}}$$

Luego

$$\mathfrak{M}_{\mathcal{AB}} = \mathfrak{M}_{\mathcal{B}}\{a_1, a_2, a_3\} = \begin{pmatrix} \alpha_1 & \beta_1 & \gamma_1 \\ \alpha_2 & \beta_2 & \gamma_2 \\ \alpha_3 & \beta_3 & \gamma_3 \end{pmatrix} = \begin{pmatrix} 6 & 7 & 5 \\ -7 & -8 & -6 \\ -2 & -3 & -2 \end{pmatrix}$$

d) Podemos calcular  $\mathfrak{M}_{\mathcal{BA}}$  de diferente formas. Lo más sencillo sería calcular  $\mathfrak{M}_{\mathcal{BA}} = \mathfrak{M}_{\mathcal{AB}}^{-1}$ . También podemos repetir el mismo tipo de argumentación que utilizamos en el apartado (c) para calcular  $\mathfrak{M}_{\mathcal{AB}}$ , calculando ahora las coordenadas de los vectores de  $\mathcal{B}$  respecto de  $\mathcal{A}$ . Sin embargo optamos por calcular la matriz  $\mathfrak{M}_{\mathcal{BA}}$  utilizando el mismo argumento que en el Ejemplo 3.40 donde usamos como base auxiliar a la base canónica  $\mathcal{C}$  de  $\mathbb{R}^3$ , de manera que

$$\mathfrak{M}_{\mathcal{B}\mathcal{A}} = \mathfrak{M}_{\mathcal{C}\mathcal{A}} \mathfrak{M}_{\mathcal{B}\mathcal{C}} = \mathfrak{M}_{\mathcal{A}\mathcal{C}}^{-1} \mathfrak{M}_{\mathcal{B}\mathcal{C}} = \begin{pmatrix} 1 & 0 & 0 \\ 1 & 2 & 1 \\ 2 & 1 & 1 \end{pmatrix}^{-1} \begin{pmatrix} 2 & 1 & 2 \\ 1 & 1 & -1 \\ 1 & 0 & 2 \end{pmatrix} = \begin{pmatrix} 2 & 1 & 2 \\ 2 & 2 & -1 \\ -5 & -4 & -1 \end{pmatrix}$$

e) Efectivamente

$$\begin{pmatrix} 6 & 7 & 5 \\ -7 & -8 & -6 \\ -2 & -3 & -2 \end{pmatrix} \begin{pmatrix} 1 \\ 1 \\ -2 \end{pmatrix} = \begin{pmatrix} 3 \\ -3 \\ -1 \end{pmatrix} \quad y \quad \begin{pmatrix} 2 & 1 & 2 \\ 2 & 2 & -1 \\ -5 & -4 & -1 \end{pmatrix} \begin{pmatrix} 3 \\ -3 \\ -1 \end{pmatrix} = \begin{pmatrix} 1 \\ 1 \\ -2 \end{pmatrix} \qquad \Box$$

**3.10.** En un K-espacio vectorial de dimensión 3 tenemos dos bases:

$$\mathcal{C} = \{c_1, c_2, c_3\}$$
 y  $\mathcal{B} = \{b_1 = 2c_1 + 2c_2 - 5c_3, b_2 = c_1 + 2c_2 - 4c_3, b_3 = 2c_1 - c_2 - c_3\}$ 

Calcular la matriz  $\mathfrak{M}_{\mathcal{CB}}$  del cambio de base de  $\mathcal{C}$  a  $\mathcal{B}$ .

Solución: Método 1: Como para cada vector de  $\mathcal{B}$  conocemos sus coordenadas respecto de  $\mathcal{C}$ , entonces conocemos la matriz del cambio de base de  $\mathcal{B}$  a  $\mathcal{C}$ 

$$\mathfrak{M}_{\mathcal{BC}} = \begin{pmatrix} 2 & 1 & 2 \\ 2 & 2 & -1 \\ -5 & -4 & -1 \end{pmatrix}$$

La matriz que nos piden es  $\mathfrak{M}_{CB}$ , que es la inversa de  $\mathfrak{M}_{BC}$ . Vamos a calcular  $\mathfrak{M}_{BC}^{-1}$ :

$$\begin{pmatrix} 2 & 1 & 2 & 1 & 0 & 0 \\ 2 & 2 & -1 & 0 & 1 & 0 \\ -5 & -4 & -1 & 0 & 0 & 1 \end{pmatrix} \sim_{f} \begin{pmatrix} 2 & 1 & 2 & 1 & 0 & 0 \\ 0 & 1 & -3 & -1 & 1 & 0 \\ 0 & -\frac{3}{2} & 4 & \frac{5}{2} & 0 & 1 \end{pmatrix} \sim_{f} \begin{pmatrix} 2 & 0 & 5 & 2 & -1 & 0 \\ 0 & 1 & -3 & -1 & 1 & 0 \\ 0 & 0 & -\frac{1}{2} & 1 & \frac{3}{2} & 1 \end{pmatrix}$$
$$\sim_{f} \begin{pmatrix} 1 & 0 & \frac{5}{2} & 1 & -\frac{1}{2} & 0 \\ 0 & 1 & -3 & -1 & 1 & 0 \\ 0 & 0 & 1 & -2 & -3 & -2 \end{pmatrix} \sim_{f} \begin{pmatrix} 1 & 0 & 0 & 6 & 7 & 5 \\ 0 & 1 & 0 & -7 & -8 & -6 \\ 0 & 0 & 1 & -2 & -3 & -2 \end{pmatrix}$$

Luego

$$\mathfrak{M}_{\mathcal{CB}} = \mathfrak{M}_{\mathcal{BC}}^{-1} = \begin{pmatrix} 6 & 7 & 5 \\ -7 & -8 & -6 \\ -2 & -3 & -2 \end{pmatrix}$$

 $M\acute{e}todo$  2: Resolvemos el problema calculando las coordenadas de  $c_1, c_2, c_3$  con respecto a  $b_1, b_2, b_3$ . Empezamos con  $c_1$ , que escribiremos como combinación lineal de  $b_1, b_2$  y  $b_3$ 

$$c_1 = \lambda_1 b_1 + \lambda_2 b_2 + \lambda_3 b_3$$

$$= \lambda_1 (2c_1 + 2c_2 - 5c_3) + \lambda_2 (c_1 + 2c_2 - 4c_3) + \lambda_3 (2c_1 - c_2 - c_3)$$

$$= (2\lambda_1 + \lambda_2 + 2\lambda_3)c_1 + (2\lambda_1 + 2\lambda_2 - \lambda_3)c_2 + (-5\lambda_1 - 4\lambda_2 - \lambda_3)c_3$$

que da lugar al sistema lineal

$$\begin{cases} 2\lambda_1 + \lambda_2 + 2\lambda_3 = 1\\ 2\lambda_1 + 2\lambda_2 - \lambda_3 = 0\\ -5\lambda_1 - 4\lambda_2 - \lambda_3 = 0 \end{cases}$$

cuya única solución es  $(\lambda_1,\lambda_2,\lambda_3)=(6,-7,-2)$ y por lo tanto

$$c_1 = 6b_1 - 7b_2 - 2b_2 = (6, -7, -2)_{\mathcal{B}}$$

Argumentando de igual manera para  $c_2$  llegamos al sistema lineal

$$\begin{cases} 2\lambda_1 + \lambda_2 + 2\lambda_3 = 0\\ 2\lambda_1 + 2\lambda_2 - \lambda_3 = 1\\ -5\lambda_1 - 4\lambda_2 - \lambda_3 = 0 \end{cases}$$

cuya única solución es  $(\lambda_1, \lambda_2, \lambda_3) = (7, -8, -3)$  y por lo tanto

$$c_2 = 7b_1 - 8b_2 - 3b_2 = (7, -8, -3)_{\mathcal{B}}$$

Y lo mismo para  $c_3$  llegando al sistema lineal

$$\begin{cases} 2\lambda_1 + \lambda_2 + 2\lambda_3 = 0\\ 2\lambda_1 + 2\lambda_2 - \lambda_3 = 0\\ -5\lambda_1 - 4\lambda_2 - \lambda_3 = 1 \end{cases}$$

cuya única solución es  $(\lambda_1, \lambda_2, \lambda_3) = (5, -6, -2)$  y por lo tanto

$$c_3 = 5b_1 - 6b_2 - 2b_2 = (5, -6, -2)_{\mathcal{B}}$$

Finalmente ya podemos construir la matriz que nos han pedido colocando por columnas las coordenadas de  $c_1$ ,  $c_2$  y  $c_3$  respecto de  $\mathcal{B}$ :

$$\mathfrak{M}_{\mathcal{CB}} = \mathfrak{M}_{\mathcal{B}}\{c_1, c_2, c_3\} = \begin{pmatrix} 6 & 7 & 5 \\ -7 & -8 & -6 \\ -2 & -3 & -2 \end{pmatrix} \qquad \Box$$

**3.11.** Sean  $S_1, \ldots, S_n$  subconjuntos de un espacio vectorial V. Demuestre que si  $S_1, \ldots, S_n$  no son subespacios vectoriales, entonces no siempre es cierta la igualdad

$$L(S_1 \cup \ldots \cup S_n) = \{\alpha_1 v_1 + \ldots + \alpha_n v_n : \alpha_1, \ldots, \alpha_n \in \mathbb{K}, v_1 \in S_1, \ldots, v_n \in S_n\}$$

Solución: Veamos un contraejemplo en  $\mathbb{R}^2$  con un solo conjunto S. Sea

$$S = \{(1, y) \in \mathbb{R}^2 : y \in \mathbb{R}\}$$

Dado que  $\{(1,0),(1,1)\}\subset S$  y que  $\{(1,0),(1,1)\}$  es una base de  $\mathbb{R}^2$ , entonces

$$\mathbb{R}^2 = L(\{(1,0),(1,1)\}) \subseteq L(S) \subseteq \mathbb{R}^2$$

de donde se sigue que  $L(S) = \mathbb{R}^2$ . Por otro lado

$$\{\alpha v:\alpha\in\mathbb{R},v\in S\}=\{(\alpha,\alpha y):\alpha,y\in\mathbb{R}\}=\{(a,b)\in\mathbb{R}^2:a\neq 0\}\cup\{(0,0)\}$$

Luego

$$L(S) \neq \{\alpha v : \alpha \in \mathbb{R}, v \in S\}$$

Observamos que  $\{\alpha v : \alpha \in \mathbb{R}, v \in S\}$  ni siquiera es subespacio vectorial.  $\square$ 

- 3.12. Demuestre la veracidad de las siguientes afirmaciones:
  - a) Si U y V son dos  $\mathbb{K}$  –espacios vectoriales tales que  $U\subseteq V$  y  $\dim U=\dim V,$  entonces U=V.
  - b) Si U y W son dos subespacios vectoriales de un  $\mathbb{K}$  —espacio vectorial V entonces U+W=U si y sólo si  $W\subseteq U$ .

**Solución:** a) Sean U y V dos  $\mathbb{K}$ -espacios vectoriales tales que  $U \subseteq V$  y dim  $U = \dim V = k$ . Si  $\mathcal{B} = \{u_1, \dots, u_k\}$  es una base de  $U \subseteq V$ , entonces  $u_1, \dots, u_k$  son k vectores linealmente independientes de V. Como dim V = k, entonces  $\mathcal{B}$  es también una base de V, por lo tanto

$$V = L(u_1, \dots, u_k) = U$$

- b) Si U y W son dos subespacios vectoriales de un  $\mathbb{K}$  –espacio vectorial V entonces U+W=U si y sólo si U es el menor subespacio vectorial que contiene a U y a W si y sólo si  $W\subseteq U$ .  $\square$
- **3.13.** Sean V un  $\mathbb{K}$ -espacio vectorial de dimensión n y  $v_1, \ldots, v_k$  vectores de V, con  $k \leq n$ . Demuestre que si existe un vector  $v \in V$  tal que se expresa de forma única como combinación lineal de  $v_1, \ldots, v_k$ ; entonces  $v_1, \ldots, v_k$  son linealmente independientes.

**Solución:** Supongamos que existe un vector  $v \in V$  tal que

$$v = \alpha_1 v_1 + \dots + \alpha_k v_k \quad \text{con} \quad \alpha_1, \dots, \alpha_k \in \mathbb{K} \quad \text{únicos}$$
 (\*)

Para demostrar que  $v_1, \ldots, v_k$  son linealmente independientes consideramos una combinación lineal tal que

$$\beta_1 v_1 + \dots + \beta_k v_k = 0 \quad \text{con } \beta_1, \dots, \beta_k \in \mathbb{K}$$

Restando los vectores v y 0 se tiene:

$$v = v - 0 = (\alpha_1 - \beta_1)v_1 + \dots + (\alpha_k - \beta_k)v_k$$

Como la combinación lineal (\*) es única, entonces:

$$\alpha_i - \beta_i = \alpha_i \implies \beta_i = 0 \text{ para todo } i = 1, \dots, k.$$

Luego los vectores  $v_1, \ldots, v_k$  son linealmente independientes.

**3.14.** En el espacio vectorial  $\mathbb{R}_n[x]$  de los polinomios reales de grado menor o igual que n en la indeterminada x, determine para qué polinomios p(x) se cumple que el conjunto

$$S = \{ p(x), p'(x), p''(x), \dots, p^{(n)}(x) \}$$

formado por p(x) y sus derivadas hasta la n-ésima, es una base de  $\mathbb{R}_n[x]$ .

**Solución:** Si p(x) es un polinomio de grado k entonces, para i = 1, ..., k su derivada i-ésima es un polinomio de grado k - i y para i > k la derivada i-ésima es igual a 0.

Para que el conjunto

$$\{p(x), p'(x), p''(x), \dots, p^{(n)}(x)\}$$

sea una base de  $\mathbb{R}_n[x]$  debe contener n+1 polinomios no nulos y linealmente independientes, por lo que p(x) tiene que ser de grado n. Es decir  $p(x) = a_0 + a_1x + \ldots + a_nx^n$ , con  $a_n \neq 0$ .

Veamos que todos estos polinomios son válidos. Lo que hay que demostrar es que los polinomios  $p(x), p'(x), \dots, p^{(n)}(x)$  son linealmente independientes. Para ello, se puede ver que

$$\alpha_0 p(x) + \alpha_1 p'(x) + \ldots + \alpha_n p^{(n)}(x) = 0 \implies \alpha_0 = \cdots = \alpha_n = 0$$

o bien que la matriz de coordenadas por filas de  $\{p(x), p'(x), \dots, p^{(n)}(x)\}$  respecto de la base canónica tiene rango n+1. La matriz es

$$\begin{pmatrix} a_0 & a_1 & \cdots & a_{n-2} & a_{n-1} & a_n \\ a_1 & 2a_2 & \cdots & (n-1)a_{n-1} & na_n & 0 \\ 2a_2 & 6a_3 & \cdots & n(n-1)a_n & 0 & 0 \\ \vdots & \vdots & \ddots & \vdots & \vdots & \vdots \\ (n-1)! a_{n-1} & n! a_n & \cdots & 0 & 0 & 0 \\ n! a_n & 0 & \cdots & 0 & 0 & 0 \end{pmatrix}$$

y su determinante se puede desarrollar por columnas, empezando por la última. Sin necesidad de hacer todos los cálculos podemos afirmar que la matriz tiene determinante de la forma  $K \cdot a_n$  con  $K \neq 0$ , luego tiene rango n+1.  $\square$ 

## **3.15.** Dado el plano $P \equiv \{x = 0\}$ de $\mathbb{R}^3$ :

- a) Halle una base del espacio cociente  $\mathbb{R}^3/P$ .
- b) Halle las coordenadas del vector (3,2,0)+P de  $\mathbb{R}^3/P$  respecto de la base hallada en el apartado anterior.
- c) Estudie cómo son geométricamente los elementos de  $\mathbb{R}^3$  /P.

**Solución:** a) El subespacio cociente tiene dimensión

$$\dim(\mathbb{R}^3/P) = \dim\mathbb{R}^3 - \dim P = 3 - 2 = 1$$

por lo que una base de este subespacio tendrá un único elemento. Comenzamos determinando una base de P, por ejemplo  $P=L\{v_1=(0.1.0),\,v_2=(0.0.1)\}$ , y añadimos un vector  $v_3$ , de manera que  $\mathcal{B}=\{v_1,\,v_2,\,v_3\}$  sea una base de  $\mathbb{R}^3$ . Nos sirve  $v_3=(1,0.0)$ . Según el Teorema 3.72. pág. 150, una base del espacio cociente  $\mathbb{R}^3/P$  está formada por la clase de equivalencia:  $v_3+P$ .

b) Calculamos las coordenadas de (3, 2, 0) respecto de  $\mathcal{B}$ :

$$(3.2,0) = 2v_1 + 0v_2 + 3v_3$$

y la coordenada de la clase (3,2,0)+P respecto de la base  $\{v_3+P\}$  de  $\mathbb{R}^3/P$  es 3. ya que

$$(3.2.0) + P = (2v_1 + 0v_2 + 3v_3) + P = [(2v_1 + 0v_2) + P] + [3v_3 + P] = P + [3v_3 + P] = 3v_3 + P$$

c) Estudiamos cómo son las clases de equivalencia. Si  $v \in P$ , entonces la clase v + P = P es igual al plano vectorial P. Si  $w \notin P$ , entonces la clase w + P es un plano paralelo a P, un plano afín. Las clases w + P no son planos vectoriales ya que no contienen al vector 0.

El conjunto cociente  $\mathbb{R}^3/P$  está formado por todos los planos paralelos a P.  $\square$ 

#### **3.16.** Sean V un $\mathbb{K}$ –espacio vectorial de dimensión 4 y

$$U \equiv \begin{cases} x_1 + x_2 + x_3 + x_4 = 0 \\ x_1 + 2x_2 + x_3 = 0 \end{cases}$$

un subespacio vectorial de V cuyas ecuaciones están referidas a una base  $\mathcal{B} = \{v_1, v_2, v_3, v_4\}$ . Determine todos los subespacios suplementarios de U que contienen a la recta  $R_1 = L(v_1 + v_2 + v_4)$ . ¿Alguno de ellos contiene a la recta  $R_2 \equiv \{x_1 = x_2 = x_4 = 0\}$ ?

Solución: En primer lugar, observamos que dim U=2 ya que está determinado por dos ecuaciones homogéneas independientes y dim V=4, por lo que todo suplementario de U también tendrá dimensión 2. Para determinar subespacios suplementarios de U comenzamos calculando una base de U. Para ello resolvemos el sistema de ecuaciones implícitas obteniendo las ecuaciones paramétricas. Una posible base es:

$$\mathcal{B}_U = \{u_1 = (1, 0, -1, 0)_{\mathcal{B}}, u_2 = (0, 1, -2, 1)_{\mathcal{B}}\}\$$

Un suplementario de U estará generado por dos vectores  $u_3$  y  $u_4$  de modo que  $\{u_1, u_2, u_3, u_4\}$  sea una base de V. Nos piden los suplementarios que contienen a la recta  $R_1 = L((1, 1, 0, 1)_{\mathcal{B}})$ , de modo que podemos tomar  $u_3 = (1, 1, 0, 1)_{\mathcal{B}}$  y  $u_4 = (a, b, c, d)_{\mathcal{B}}$  sólo deberá cumplir la condición de independencia lineal del conjunto de vectores  $\{u_1, u_2, u_3, u_4\}$ . Esto es

$$\det \begin{pmatrix} 1 & 0 & -1 & 0 \\ 0 & 1 & -2 & 1 \\ 1 & 1 & 0 & 1 \\ a & b & c & d \end{pmatrix} = 3d - 3b \neq 0 \Leftrightarrow b \neq d$$

Así, todos los suplementarios de U que contienen a la recta  $R_1$  son de la forma

$$L((1,1,0,1)_{\mathcal{B}}, (a,b,c,d)_{\mathcal{B}}) \text{ con } b \neq d$$

A continuación estudiamos si alguno de ellos contiene a la recta  $R_2 = L((0,0,1,0)_B)$ . Para ello es suficiente comprobar si

$$(0,0,1,0)_{\mathcal{B}} \in L((1,1,0,1)_{\mathcal{B}}, (a,b,c,d)_{\mathcal{B}}) \tag{*}$$

para algún valor de  $a, b, c, d \in \mathbb{K}$ , con  $b \neq d$ . La condición (\*) es equivalente a

$$\operatorname{rg}\begin{pmatrix}0 & 0 & 1 & 0\\1 & 1 & 0 & 1\\a & b & c & d\end{pmatrix} = 2 \iff \begin{cases} \det\begin{pmatrix}0 & 1 & 0\\1 & 0 & 1\\a & c & d\end{pmatrix} = a - d = 0\\ \det\begin{pmatrix}0 & 1 & 0\\1 & 0 & 1\\b & c & d\end{pmatrix} = b - d = 0 \end{cases}$$

y puesto que la segunda condición es b=d y no se puede dar, entonces los tres vectores son siempre linealmente independientes. Así,  $R_2$  no está contenida en ninguno de los planos suplementarios de U que contienen a  $R_1$ .  $\square$ 

### Ejercicios del capítulo 4

- 4.1. Determine en cada caso si las aplicaciones dadas son lineales
  - a)  $f: \mathbb{K}^2 \to \mathbb{K}$  definida por  $f(x_1, x_2, x_3) = x_1^2$ .
  - b)  $f: \mathbb{K}_2[x] \to \mathbb{K}_2[x]$  definida por  $f(p(x)) = x^2 p''(x) + x p'(x) + p(x)$ .
  - c)  $f: \mathbb{K}^2 \to \mathbb{K}^2$  definida por  $f(x_1, x_2) = (|x_1|, x_1 + 2x_2)$ .
  - d)  $f: V \to V$  definida por  $f(v) = v + v_0$  para todo  $v \in V$ , con  $v_0 \neq 0$  un vector fijo de V.
  - e)  $f: \mathfrak{M}_n(\mathbb{K}) \to \mathbb{K}$  definida por  $f(A) = \det(A)$ , con  $n \geq 2$ .

### Solución:

a)  $f: \mathbb{K}^2 \to \mathbb{K}$  definida por  $f(x_1, x_2, x_3) = x_1^2$  no es lineal ya que

$$f(\lambda(x_1, x_2, x_3)) = f(\lambda x_1, \lambda x_2, \lambda x_3) = \lambda^2 x_1^2 \neq \lambda x_1^2 = \lambda f(x_1, x_2, x_3)$$

b)  $f: \mathbb{K}_2[x] \to \mathbb{K}_2[x]$ , definida por

$$f(p(x)) = x^2 p''(x) + x p'(x) + p(x)$$

sí es lineal ya que para todo  $\alpha, \beta \in \mathbb{K}, p, q \in \mathbb{K}_2[x]$  se cumple

$$f(\alpha p + \beta q) = x^{2} (\alpha p + \beta q)''(x) + x (\alpha p + \beta q)'(x) + (\alpha p + \beta q)(x)$$

$$= x^{2} (\alpha p''(x) + \beta q''(x)) + x (\alpha p'(x) + \beta q'(x)) + (\alpha p(x) + \beta q(x))$$

$$= \alpha (x^{2} p''(x) + x p'(x) + p(x)) + \beta (x^{2} q''(x) + x q'(x) + q(x))$$

$$= \alpha f(p) + \beta f(q)$$

c)  $f: \mathbb{K}^2 \to \mathbb{K}^2$  definida por

$$f(x_1, x_2) = (|x_1|, x_1 + 2x_2)$$

no es lineal ya que

$$f(-1(x_1, x_2)) = f(-x_1, -x_2) = (|-x_1|, -x_1 - 2x_2) \neq (-|x_1|, -x_1 - 2x_2) = (-1)f(x_1, x_2)$$

d)  $f:V\to V$  definida por  $f(v)=v+v_0$  para todo  $v\in V$ , con  $v_0\neq 0$  un vector fijo de V, no es lineal ya que no transforma el vector 0 en el vector 0

$$f(0) = 0 + v_0 = v_0 \neq 0$$

e)  $f: \mathfrak{M}_n(\mathbb{K}) \to \mathbb{K}$ , definida por  $f(A) = \det(A)$ , no es lineal si  $n \geq 2$  ya que de las propiedades del determinante se deduce que

$$f(\lambda A) = \det(\lambda A) = \lambda^n \det(A) \neq \lambda \det(A) = \lambda f(A)$$

**4.2.** Sea  $f: \mathbb{K}^3 \to \mathbb{K}^2$  una aplicación lineal cuya expresión analítica es

$$f(x_1, x_2, x_3) = (x_1 + 3x_2 + 5x_3, 2x_1 + 2x_2 + 7x_3)$$

Calcule la matriz de la aplicación f respecto de las bases canónicas de  $\mathbb{K}^3$  y  $\mathbb{K}^2$ .

Solución: Calculamos las imágenes de los vectores de la base canónica de  $\mathbb{K}^3$ :

$$f(1,0,0) = (1,2), \quad f(0,1,0) = (3,2), \quad f(0,0,1) = (5,7)$$

Las coordenadas (componentes) de las imágenes de los vectores de la base canónica de  $\mathbb{K}^3$  formarán las columnas de  $\mathfrak{M}(f)$ :

$$\mathfrak{M}(f) = \begin{pmatrix} 1 & 3 & 5 \\ 2 & 2 & 7 \end{pmatrix} \qquad \Box$$

**4.3.** Sean  $f: \mathbb{R}^3 \to \mathbb{R}^2$  y  $g: \mathbb{R}^2 \to \mathbb{R}^4$  aplicaciones lineales dadas por

$$f(1,3,2) = (2,2),$$
  $f(0,1,1) = (1,3),$   $f(1,0,1) = (1,1);$   
 $g(2,1) = (2,1,2,0),$   $g(1,2) = (4,2,4,0)$ 

- a) Calcule  $g \circ f(1,1,1)$ .
- b) Calcule la matriz de  $g \circ f$  en las bases canónicas.

**Solución:** a) Como  $g \circ f(1,1,1) = g(f(1,1,1))$  primero calculamos f(1,1,1). Para ello determinamos las coordenadas de (1,1,1) respecto de la base de  $\mathbb{R}^3$ 

$$\mathcal{B}_3 = \{ (1,3,2), (0,1,1), (1,0,1) \}$$

es decir, calculamos  $(\alpha, \beta, \gamma)$  tales que

$$(1,1,1) = \alpha(1,3,2) + \beta(0,1,1) + \gamma(1,0,1) = (\alpha + \gamma, 3\alpha + \beta, 2\alpha + \beta + \gamma)$$

El sistema lineal en las incógnitas  $\alpha, \beta, \gamma$  tiene como única solución

$$(\alpha,\beta,\gamma)=(\frac{1}{2},-\frac{1}{2},\frac{1}{2})$$

Y como f es una aplicación lineal tenemos que

$$f(1,1,1) = \frac{1}{2}f(1,3,2) - \frac{1}{2}f(0,1,1) + \frac{1}{2}f(1,0,1) = \frac{1}{2}(2,2) - \frac{1}{2}(1,3) + \frac{1}{2}(1,1) = (1,0)$$

A continuación calculamos g(1,0), para ello determinamos las coordenadas de (1,0) en la base

$$\mathcal{B}_2 = \{ (2,1), (1,2) \}$$

es decir, calculamos  $(\lambda, \mu)$  tales que

$$(1,0) = \lambda(2,1) + \mu(1,2) = (2\lambda + \mu, \lambda + 2\mu)$$

El sistema lineal asociado en las incógnitas  $\lambda$ .  $\mu$  tiene como única solución

$$(\lambda,\mu)=(\frac{2}{3},-\frac{1}{3})$$

Y como q es una aplicación lineal tenemos que

$$g(1,0) = \frac{2}{3}g(2,1) - \frac{1}{3}g(1,2) = \frac{2}{3}(2,1,2,0) - \frac{1}{3}(4,2,4,0) = (0,0,0,0)$$

Por lo tanto,  $g \circ f(1,1,1) = g(f(1,1,1)) = g(1,0) = (0,0,0,0)$ .

b) Una reflexión previa: Los cálculos del apartado (a) sirven únicamente para calcular  $g \circ f(1,1,1)$ . Si queremos calcular la imagen de otro vector, por ejemplo,  $g \circ f(3,4,-2)$  entonces tendríamos que volver a repetir de nuevo todos los cálculos sustituyendo (1,1,1) por (3,4,-2). Si determinamos la matriz de  $g \circ f$ , entonces nos servirá para calcular la imagen de cualquier vector de  $\mathbb{R}^3$ .

Sean  $C_2$ ,  $C_3$  y  $C_4$  las base canónicas de  $\mathbb{K}^2$ ,  $\mathbb{K}^3$  y  $\mathbb{K}^4$  respectivamente. Para calcular la matriz de f compuesta con g en las bases canónicas necesitamos las matrices de f y g ya que

$$\mathfrak{M}_{\mathcal{C}_3\mathcal{C}_4}(g \circ f) = \mathfrak{M}_{\mathcal{C}_2\mathcal{C}_4}(g) \ \mathfrak{M}_{\mathcal{C}_3\mathcal{C}_2}(f)$$

Esquema de la composición:

$$\mathbb{R}^{3} \xrightarrow{g \circ f} \mathbb{R}^{4}$$

$$\mathbb{R}^{3} \xrightarrow{f} \mathbb{R}^{2} \xrightarrow{g} \mathbb{R}^{4}$$

$$\mathcal{C}_{3} \xrightarrow{\mathfrak{M}_{C_{3}C_{2}}(f)} \mathcal{C}_{2} \xrightarrow{\mathfrak{M}_{C_{2}C_{4}}(g)} \mathcal{C}_{4}$$

Empezamos calculando  $\mathfrak{M}_{\mathcal{C}_3\mathcal{C}_2}(f)$ . Con los datos del enunciado conocemos la matriz de f en las bases  $\mathcal{B}_3$  y  $\mathcal{C}_2$ :

$$\mathfrak{M}_{\mathcal{B}_3\mathcal{C}_2}(f) = \begin{pmatrix} 2 & 1 & 1 \\ 2 & 3 & 1 \end{pmatrix}$$

y por lo tanto tenemos que hacer un cambio de base en el espacio de partida  $\mathbb{R}^3$ . Escribimos el esquema correspondiente

$$\begin{array}{cccccccccccccccccccccccccccccccccccc$$

luego

$$\mathfrak{M}_{\mathcal{C}_{3}\mathcal{C}_{2}}(f) = \mathfrak{M}_{\mathcal{C}_{2}\mathcal{C}_{2}} \mathfrak{M}_{\mathcal{B}_{3}\mathcal{C}_{2}}(f) \mathfrak{M}_{\mathcal{C}_{3}\mathcal{B}_{3}} = I_{2} \mathfrak{M}_{\mathcal{B}_{3}\mathcal{C}_{2}}(f) \mathfrak{M}_{\mathcal{B}_{3}^{-1}\mathcal{C}_{3}}^{-1} \\
= \begin{pmatrix} 2 & 1 & 1 \\ 2 & 3 & 1 \end{pmatrix} \begin{pmatrix} 1 & 0 & 1 \\ 3 & 1 & 0 \\ 2 & 1 & 1 \end{pmatrix}^{-1} = \begin{pmatrix} 0 & 0 & 1 \\ -3 & -1 & 4 \end{pmatrix}$$

Pasamos a calcular  $\mathfrak{M}_{\mathcal{C}_2\mathcal{C}_4}(g)$ . Con los datos del enunciado conocemos la matriz de g en las bases  $\mathcal{B}_2$  y  $\mathcal{C}_4$ :

$$\mathfrak{M}_{\mathcal{B}_2\mathcal{C}_4}(g) = \begin{pmatrix} 2 & 4\\ 1 & 2\\ 2 & 4\\ 0 & 0 \end{pmatrix}$$

Tenemos que hacer un cambio de base en el espacio de partida  $\mathbb{R}^2$ . Escribimos el esquema correspondiente

$$\begin{array}{cccccccccccccccccccccccccccccccccccc$$

luego

$$\mathfrak{M}_{\mathcal{C}_{2}\mathcal{C}_{4}}(g) = \mathfrak{M}_{\mathcal{C}_{4}\mathcal{C}_{4}} \ \mathfrak{M}_{\mathcal{B}_{2}\mathcal{C}_{4}}(g) \ \mathfrak{M}_{\mathcal{C}_{2}\mathcal{B}_{2}} = I_{4} \begin{pmatrix} 2 & 4 \\ 1 & 2 \\ 2 & 4 \\ 0 & 0 \end{pmatrix} \begin{pmatrix} 2 & 1 \\ 1 & 2 \end{pmatrix}^{-1} = \begin{pmatrix} 0 & 2 \\ 0 & 1 \\ 0 & 2 \\ 0 & 0 \end{pmatrix}$$

De manera que la matriz de  $g \circ f$  es

$$\mathfrak{M}_{\mathcal{C}_{3}\mathcal{C}_{4}}(g \circ f) = \mathfrak{M}_{\mathcal{C}_{2}\mathcal{C}_{4}}(g) \ \mathfrak{M}_{\mathcal{C}_{3}\mathcal{C}_{2}}(f) = \begin{pmatrix} 0 & 2 \\ 0 & 1 \\ 0 & 2 \\ 0 & 0 \end{pmatrix} \begin{pmatrix} 0 & 0 & 1 \\ -3 & -1 & 4 \end{pmatrix} = \begin{pmatrix} -6 & -2 & 8 \\ -3 & -1 & 4 \\ -6 & -2 & 8 \\ 0 & 0 & 0 \end{pmatrix}$$

Con esta matriz ya podemos calcular la imagen de cualquier vector. Por ejemplo el apartado a) lo resolveríamos así

$$\begin{pmatrix} -6 & -2 & 8 \\ -3 & -1 & 4 \\ -6 & -2 & 8 \\ 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} 1 \\ 1 \\ 1 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix} \quad \Rightarrow \quad g \circ f(1, 1, 1) = (0, 0, 0, 0) \qquad \Box$$

- **4.4.** Sea f un endomorfismo de  $\mathbb{R}^4$  definido por las propiedades:
  - 1. El núcleo de f es el subespacio vectorial de ecuaciones

$$\begin{cases} 2x + y - z - 2t = 0 \\ z + 2t = 0 \end{cases}$$

2. f(0,0,0,1) = (2,0,0,0) y f(1,0,0,0) = (2,0,2,0).

Resuelva los siguientes problemas sobre f:

- a) Calcule la matriz de f respecto a la base canónica de  $\mathbb{R}^4$ .
- b) Halle una base del subespacio vectorial f(V) para  $V \equiv \{x + y + z + t = 0\}$ .
- c) Calcule la matriz de f respecto a la base

$$W = \{ w_1 = (1, 1, 0, 0), w_2 = (1, -1, 0, 0), w_3 = (0, 0, 1, 1), w_4 = (0, 0, 1, -1) \}$$

Solución: (a) Resolviendo el sistema

$$\begin{cases} 2x + y - z - 2t = 0 \\ z + 2t = 0 \end{cases}$$

obtenemos unas ecuaciones paramétricas del núcleo de f dadas por

$$\{(\alpha, -2\alpha, -2\beta, \beta) \in \mathbb{R}^4 : \alpha, \beta \in \mathbb{R}\}$$

y una base del núcleo de f es  $\{(1, -2, 0, 0), (0, 0, -2, 1)\}$ . Juntando a este conjunto los vectores de los que conocemos su imagen por f obtenemos

$$\mathcal{U} = \{ u_1 = (0, 0.0.1), u_2 = (1, 0.0.0), u_3 = (1, -2.0.0), u_4 = (0.0.-2, 1) \}$$

que es una base de  $\mathbb{R}^4$  ya que

$$\det \begin{pmatrix} 0 & 0 & 0 & 1\\ 1 & 0 & 0 & 0\\ 1 & -2 & 0 & 0\\ 0 & 0 & -2 & 1 \end{pmatrix} = -4 \neq 0$$

El endomorfismo f queda por tanto definido por las imágenes de los vectores de  $\mathcal{U}$ 

$$f(u_1) = (2, 0, 0, 0), f(u_2) = (2, 0, 2, 0), f(u_3) = (0, 0, 0, 0), f(u_4) = (0, 0, 0, 0)$$

Para cada vector de la base canónica vamos a conseguir su expresión como combinación lineal de los vectores de la base  $\mathcal{U}$ . Después de realizar los cálculos necesarios obtenemos

$$e_1 = u_2$$
,  $e_2 = \frac{1}{2}u_2 - \frac{1}{2}u_3$ ,  $e_3 = \frac{1}{2}u_1 - \frac{1}{2}u_4$ ,  $e_4 = u_1$ 

Ahora podemos calcular el valor que toma f en cada uno de los vectores de la base canónica

$$f(e_1) = f(u_2) = (2,0,2,0)$$

$$f(e_2) = \frac{1}{2}f(u_2) - \frac{1}{2}f(u_3) = \frac{1}{2}(2,0,2,0) - \frac{1}{2}(0,0,0,0) = (1,0,1,0)$$

$$f(e_3) = \frac{1}{2}f(u_1) - \frac{1}{2}f(u_4) = \frac{1}{2}(2,0,0,0) - \frac{1}{2}(0,0,0,0) = (1,0,0,0)$$

$$f(e_4) = f(u_1) = (2,0,0,0)$$

Y, por lo tanto, la matriz de f respecto a la base canónica es

$$\mathfrak{M}(f) = \begin{pmatrix} 2 & 1 & 1 & 2 \\ 0 & 0 & 0 & 0 \\ 2 & 1 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}$$

y su expresión analítica en las bases canónicas es

$$f(x_1, x_2, x_3, x_4) = (2x_1 + x_2 + x_3 + 2x_4, 0, 2x_1 + x_2, 0)$$

(b) Para determinar f(V) vamos a hallar una base de V. Como

$$V \equiv \{x + y + z + t = 0\}$$

entonces unas ecuaciones paramétricas de V son

$$\{(-\lambda - \mu - \rho, \lambda, \mu, \rho) \in \mathbb{R}^4 : \lambda, \mu, \rho \in \mathbb{R}\}$$

y una base de V es

$$\{(1,0,0,-1), (0,1,0,-1), (0,0,1,-1)\}$$

Por tanto

$$f(V) = L(f(1,0,0,-1), f(0,1,0,-1), f(0,0,1,-1)) = L((0,0,2,0), (-1,0,1,0), (-1,0,0,0))$$

Es sencillo ver que  $\ (-1,0,0,0) \ = \ -\frac{1}{2} \left(0,0,2,0\right) + \left(-1,0,1,0\right) \ ,$  luego

$$\{\,(0,0,2,0),\,(-1,0,1,0)\,\}$$

es una base de f(V) por tratarse de vectores que no son proporcionales. Por lo tanto f transforma el hiperplano V de  $\mathbb{R}^4$  en el plano f(V) = L((0,0,2,0),(-1,0,1,0)).

(c) Método 1: Consideramos la base de  $\mathbb{R}^4$ 

$$W = \{ w_1 = (1, 1, 0, 0), w_2 = (1, -1, 0, 0), w_3 = (0, 0, 1, 1), w_4 = (0, 0, 1, -1) \}$$

Calculamos las imágenes por f de cada uno de los vectores que componen  $\mathcal{W}$  y el resultado lo ponemos como combinación lineal de los propios elementos de  $\mathcal{W}$ . Después de realizar las operaciones necesarias obtenemos

$$f(w_1) = f(1, 1, 0, 0) = (3, 0, 3, 0) = \frac{3}{2}w_1 + \frac{3}{2}w_2 + \frac{3}{2}w_3 + \frac{3}{2}w_4$$

$$f(w_2) = f(1, -1, 0, 0) = (1, 0, 1, 0) = \frac{1}{2}w_1 + \frac{1}{2}w_2 + \frac{1}{2}w_3 + \frac{1}{2}w_4$$

$$f(w_3) = f(0, 0, 1, 1) = (3, 0, 0, 0) = \frac{3}{2}w_1 + \frac{3}{2}w_2$$

$$f(w_4) = f(0, 0, 1, -1) = (-1, 0, 0, 0) = -\frac{1}{2}w_1 - \frac{1}{2}w_2$$

Por lo tanto, la matriz de f respecto a la base W viene dada por

$$\mathfrak{M}_{\mathcal{W}}(f) = \begin{pmatrix} \frac{3}{2} & \frac{1}{2} & \frac{3}{2} & -\frac{1}{2} \\ \frac{3}{2} & \frac{1}{2} & \frac{3}{2} & -\frac{1}{2} \\ \frac{3}{2} & \frac{1}{2} & 0 & 0 \\ \frac{3}{2} & \frac{1}{2} & 0 & 0 \end{pmatrix}$$

**Método 2:** Sea  $\mathcal{C} = \{e_1, e_2, e_3, e_4\}$  la base canónica de  $\mathbb{R}^4$ , y sea  $\mathfrak{M}_{\mathcal{WC}}$  la matriz de cambio de base de  $\mathcal{W}$  a  $\mathcal{C}$ . Teniendo en cuenta que

$$\mathfrak{M}_{\mathcal{C}}(f) = \begin{pmatrix} 2 & 1 & 1 & 2 \\ 0 & 0 & 0 & 0 \\ 2 & 1 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix} \quad y \quad \mathfrak{M}_{\mathcal{WC}} = \begin{pmatrix} 1 & 1 & 0 & 0 \\ 1 & -1 & 0 & 0 \\ 0 & 0 & 1 & 1 \\ 0 & 0 & 1 & -1 \end{pmatrix}$$

entonces

$$\mathfrak{M}_{\mathcal{W}}(f) = \mathfrak{M}_{\mathcal{C}\mathcal{W}} \, \mathfrak{M}_{\mathcal{C}}(f) \, \mathfrak{M}_{\mathcal{W}\mathcal{C}} = \mathfrak{M}_{\mathcal{W}\mathcal{C}}^{-1} \, \mathfrak{M}_{\mathcal{C}}(f) \, \mathfrak{M}_{\mathcal{W}\mathcal{C}}$$

y se deja como ejercicio comprobar que obtenemos el mismo resultado para  $\mathfrak{M}_{\mathcal{W}}(f)$ .  $\square$ 

**4.5.** Sea  $\mathbb{R}_2[x]$  el espacio vectorial de los polinomios en una indeterminada x con coeficientes reales y grado menor o igual que 2. Sea V un espacio vectorial real y  $\mathcal{B} = \{u_1, u_2, u_3\}$  base de V. Sea  $f : \mathbb{R}_2[x] \to V$  la aplicación lineal definida por

$$f(1+x+x^2) = 2u_1 + u_3$$
,  $f(1+2x^2) = 3u_1 + u_2$ ,  $f(x+x^2) = u_1 - 2u_2 + 3u_3$ 

- a) Calcule la matriz de f en las bases canónica de  $\mathbb{R}_2[x]$  y  $\mathcal{B}$  de V.
- b) Determine si la aplicación es un isomorfismo.

Solución: a) La matriz de f respecto a las bases  $\mathcal{A} = \{1, x, x^2\}$  de  $\mathbb{R}_2[x]$  y  $\mathcal{B} = \{u_1, u_2, u_3\}$  de V es la matriz cuyas columnas son las coordenadas de los vectores f(1), f(x) y  $f(x^2)$  respecto de  $\mathcal{B}$ . Recordamos que a esta matriz la denotamos  $\mathfrak{M}_{\mathcal{A}\mathcal{B}}(f)$ .

M'etodo~1: El enunciado nos da las imágenes por f de los vectores de la base

$$\mathcal{A}' = \{ p_1 = 1 + x + x^2, p_2 = 1 + 2x^2, p_3 = x + x^2 \}$$

Si calculamos las coordenadas de los vectores de  $\mathcal{A}$  respecto de  $\mathcal{A}'$  obtenemos

$$1 = p_1 - p_3$$

$$x = \frac{1}{2}p_1 - \frac{1}{2}p_2 + \frac{1}{2}p_3$$

$$x^2 = -\frac{1}{2}p_1 + \frac{1}{2}p_2 + \frac{1}{2}p_3$$

Ahora podemos calcular sus imágenes utilizando la linealidad de f:

$$f(1) = f(p_1) - f(p_3) = (2u_1 + u_3) - (u_1 - 2u_2 + 3u_3) = u_1 + 2u_2 - 2u_3$$

$$f(x) = \frac{1}{2}(f(p_1) - f(p_2) + f(p_3)) = \frac{1}{2}((2u_1 + u_3) - (3u_1 + u_2) + (u_1 - 2u_2 + 3u_3))$$

$$= -\frac{3}{2}u_2 + 2u_3$$

$$f(x^2) = \frac{1}{2}(-f(p_1) + f(p_2) + f(p_3)) = \frac{1}{2}(-(2u_1 + u_3) + (3u_1 + u_2) + (u_1 - 2u_2 + 3u_3))$$

$$= u_1 - \frac{1}{2}u_2 + u_3$$

Así que

$$\mathfrak{M}_{\mathcal{AB}}(f) = \left( \begin{array}{ccc} 1 & 0 & 1 \ 2 & -\frac{3}{2} & -\frac{1}{2} \ -2 & 2 & 1 \end{array} \right)$$

**Método 2:** La matriz de f respecto de las bases  $\mathcal{A}'$  de  $\mathbb{R}_2[x]$  y  $\mathcal{B}$  de V la podemos calcular de forma inmediata puesto que

$$f(p_1) = 2u_1 + u_3, \quad f(p_2) = 3u_1 + u_2, \quad f(p_3) = u_1 - 2u_2 + 3u_3$$

y por tanto

$$\mathfrak{M}_{\mathcal{A}'\mathcal{B}}(f) = \begin{pmatrix} 2 & 3 & 1\\ 0 & 1 & -2\\ 1 & 0 & 3 \end{pmatrix}$$

Utilizando la matriz de cambio de base de  $\mathcal{A}$  a  $\mathcal{A}'$ , podemos calcular la matriz de f respecto de las bases  $\mathcal{A}$  de  $\mathbb{R}_2[x]$  y  $\mathcal{B}$  de V según la ecuación:

$$\mathfrak{M}_{\mathcal{A}\mathcal{B}}(f) = \mathfrak{M}_{\mathcal{A}'\mathcal{B}}(f) \, \mathfrak{M}_{\mathcal{A}\mathcal{A}'} = \mathfrak{M}_{\mathcal{A}'\mathcal{B}}(f) \, \mathfrak{M}_{\mathcal{A}'\mathcal{A}}^{-1} \\
= \begin{pmatrix} 2 & 3 & 1 \\ 0 & 1 & -2 \\ 1 & 0 & 3 \end{pmatrix} \begin{pmatrix} 1 & 1 & 0 \\ 1 & 0 & 1 \\ 1 & 2 & 1 \end{pmatrix}^{-1} = \begin{pmatrix} 1 & 0 & 1 \\ 2 & -\frac{3}{2} & -\frac{1}{2} \\ -2 & 2 & 1 \end{pmatrix}$$

El cambio de base se corresponde con el siguiente esquema

$$\mathbb{R}_2[x]$$
  $\xrightarrow{f}$   $V$ 
 $\mathcal{A}$   $\xrightarrow{\mathfrak{M}_{\mathcal{A}\mathcal{B}}(f)}$   $\mathcal{B}$   $\to$  la matriz que queremos calcular
 $\mathfrak{M}_{\mathcal{A}\mathcal{A}'}$   $\downarrow$   $\uparrow$   $\mathfrak{M}_{\mathcal{B}\mathcal{B}}=I_3$  no hay cambio de base en  $V$ 
 $\mathcal{A}'$   $\xrightarrow{\mathfrak{M}_{\mathcal{A}'\mathcal{B}}(f)}$   $\mathcal{B}$   $\to$  la matriz que conocemos

b) Los subespacios vectoriales de origen y de llegada tienen la misma dimensión. Para que f sea un isomorfismo es suficiente que la aplicación sea inyectiva o sobreyectiva. Por ejemplo, se puede ver que f es sobreyectiva ya que  $\dim(\operatorname{Im}(f)) = \operatorname{rg}(\mathfrak{M}_{AB}(f)) = 3 = \dim V$ .  $\square$ 

**4.6.** Sean U y V  $\mathbb{K}$  —espacios vectoriales,  $u_1, \ldots, u_n$  vectores de U y  $v_1, \ldots, v_n$  vectores de V. Por la Proposición 4.6 sabemos que si  $\{u_1, \ldots, u_n\}$  es una base de U, existe una única aplicación lineal  $f: U \to V$  tal que  $f(u_i) = v_i$  para  $i = 1, \ldots, n$ . ¿Qué ocurre si  $\{u_1, \ldots, u_n\}$  es un sistema de generadores de U y no una base?

**Solución:** Si  $\{u_1, \ldots, u_n\}$  es un sistema generador y no una base entonces podemos suponer, sin pérdida de generalidad, que para cierto k < n se tiene que  $\{u_1, \ldots, u_k\}$  es una base de U y que  $u_{k+1}, \ldots, u_n$  dependen linealmente de  $u_1, \ldots, u_k$ . Supongamos que f es la única aplicación lineal tal que  $f(u_1) = v_1, \ldots, f(u_k) = v_k$ . Por la linealidad de f, las imágenes del resto de vectores  $u_{k+1}, \ldots, u_n$  quedan completamente determinadas. Para  $j = k+1, \ldots, n$  sea

$$u_j = \alpha_{j1}u_1 + \ldots + \alpha_{jk}u_k$$

y dado que f es lineal tendremos que

$$f(u_i) = \alpha_{i1}f(u_1) + \dots + \alpha_{ik}f(u_k) = \alpha_{i1}v_1 + \dots + \alpha_{ik}v_k \qquad (*)$$

Se nos plantean dos posibilidades:

- a)  $v_j = \alpha_{j1}v_1 + \cdots + \alpha_{jk}v_k$  para  $j = k+1, \ldots, n$ . En este caso existe una única aplicación lineal f tal que  $f(u_i) = v_i$  para  $i = 1, \ldots, n$ .
- b) Existe  $j \in \{k+1, \ldots, n\}$  tal que  $v_j \neq \alpha_{j1}v_1 + \cdots + \alpha_{jk}v_k$ . Entonces  $f(u_j) \neq v_j$ . Por tanto, no existe ninguna aplicación lineal que cumpla que  $f(u_i) = v_i$  para  $i = 1, \ldots, n$ .
- 4.7. Utilizando el ejercicio anterior, decida si existe alguna aplicación lineal  $f: \mathbb{K}^3 \to \mathbb{K}^3$  tal que

$$f(1,0,0) = (1,2,3), f(1,1,1) = (0,0,1), f(0,-1,-1) = (1,2,5)$$

Solución: En primer lugar, comprobamos que los vectores

$$u_1 = (1, 0, 0), u_2 = (1, 1, 1), u_3 = (0, -1, -1)$$

no son linealmente independientes, y en particular  $u_3 = u_1 - u_2$ . Si fueran linealmente independientes la respuesta sería: sí, existe una única aplicación lineal en esas condiciones. Al ser  $u_1$ .  $u_2$  y  $u_3$  linealmente dependientes, entonces en ningún caso f estaría completamente definida con los datos del ejercicio, pues no se dan las imágenes de los vectores de una base (véase la Proposición 4.6, pág. 162).

Si existiera f lineal, en las condiciones dadas tendría que cumplir

$$f(u_3) = f(u_1 - u_2) = f(u_1) - f(u_2)$$

pero en este caso

$$f(u_3) = (1, 2, 5)$$
 mientras que  $f(u_1) - f(u_2) = (1, 2, 3) - (0, 0, 1) = (1, 2, 2)$ 

Luego no existe ninguna aplicación lineal en las condiciones del enunciado.

**4.8.** Dada la matriz  $A=\begin{pmatrix}2&3\\4&5\end{pmatrix}\in\mathfrak{M}_{2\times 2}(\mathbb{R}),$  encontrar la matriz del endomorfismo

$$\begin{array}{ccc} f_A: & \mathfrak{M}_{2\times 2}(\mathbb{R}) & \longrightarrow & \mathfrak{M}_{2\times 2}(\mathbb{R}) \\ B & \mapsto & f_A(B) = AB \end{array}$$

respecto de la base canónica de  $\mathfrak{M}_{2\times 2}(\mathbb{R})$  dada por

$$\mathcal{B} = \left\{ \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}, \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}, \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix}, \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} \right\}$$

**Solución:** Calculamos la imagen de los vectores de  $\mathcal{B}$  por  $f_A$ :

$$\begin{split} f_A(\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}) &= \begin{pmatrix} 2 & 3 \\ 4 & 5 \end{pmatrix} \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} = \begin{pmatrix} 2 & 0 \\ 4 & 0 \end{pmatrix} = 2 \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} + 4 \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix} = (2, 0, 4, 0)_{\mathcal{B}} \\ f_A(\begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}) &= \begin{pmatrix} 2 & 3 \\ 4 & 5 \end{pmatrix} \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 2 \\ 0 & 4 \end{pmatrix} = 2 \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} + 4 \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} = (0, 2, 0, 4)_{\mathcal{B}} \\ f_A(\begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix}) &= \begin{pmatrix} 2 & 3 \\ 4 & 5 \end{pmatrix} \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix} = \begin{pmatrix} 3 & 0 \\ 5 & 0 \end{pmatrix} = 3 \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} + 5 \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix} = (0, 3, 0, 5)_{\mathcal{B}} \\ f_A(\begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix}) &= \begin{pmatrix} 2 & 3 \\ 4 & 5 \end{pmatrix} \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 0 & 3 \\ 0 & 5 \end{pmatrix} = 3 \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} + 5 \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} = (0, 3, 0, 5)_{\mathcal{B}} \end{split}$$

De manera que

$$\mathfrak{M}_{\mathcal{B}}(f_A) = \begin{pmatrix} 2 & 0 & 3 & 0 \\ 0 & 2 & 0 & 3 \\ 4 & 0 & 5 & 0 \\ 0 & 4 & 0 & 5 \end{pmatrix} \qquad \Box$$

- **4.9.** Sea  $\mathcal{B} = \{e_1, e_2, e_3\}$  una base de un espacio vectorial V.
  - a) Encuentre las matrices de toda las proyecciones  $\pi: V \to V$  tales que

$$\pi(e_1) = e_1 \ y \ \pi(e_1 + e_2) = e_1 + e_2.$$

b) Para cada proyección obtenida calcule las ecuaciones implícitas de su base y dirección.

**Solución**: Si  $\pi$  es un endomorfismo de V tal que  $\pi(e_1) = e_1$  y  $\pi(e_1 + e_2) = e_1 + e_2$  entonces podemos calcular la imagen del vector  $e_2$  del siguiente modo

$$\pi(e_2) = \pi((e_1 + e_2) - e_1) = \pi(e_1 + e_2) - \pi(e_1) = e_1 + e_2 - e_1 = e_2$$

Si además  $\pi(e_3) = ae_1 + be_2 + ce_3$ , entonces la matriz de  $\pi$  respecto de  $\mathcal{B}$  es

$$\mathfrak{M}_{\mathcal{B}}(\pi) = \left(\begin{array}{ccc} 1 & 0 & a \\ 0 & 1 & b \\ 0 & 0 & c \end{array}\right)$$

Para que  $\pi$  sea una proyección es necesario y suficiente que  $\pi^2 = \pi$ , de donde

$$(\mathfrak{M}_{\mathcal{B}}(\pi))^2 = \begin{pmatrix} 1 & 0 & a \\ 0 & 1 & b \\ 0 & 0 & c \end{pmatrix}^2 = \begin{pmatrix} 1 & 0 & a + ac \\ 0 & 1 & b + bc \\ 0 & 0 & c^2 \end{pmatrix} = \begin{pmatrix} 1 & 0 & a \\ 0 & 1 & b \\ 0 & 0 & c \end{pmatrix} = \mathfrak{M}_{\mathcal{B}}(\pi)$$

Y esto sucede si y sólo si

$$ac = 0$$
.  $bc = 0$  y  $c^2 = c$ 

Se tienen las siguientes soluciones:

- a) c = 1. a = 0 y b = 0. Este caso carece de interés ya que  $\pi = \mathrm{Id}$ .
- b) c=0 con  $a,b\in\mathbb{R}$ . En este caso obtenemos la familia de provecciones

$$\mathfrak{M}_{\mathcal{B}}(\pi_{a,b}) = \begin{pmatrix} 1 & 0 & a \\ 0 & 1 & b \\ 0 & 0 & 0 \end{pmatrix} \quad a, b \in \mathbb{R}$$

La base de todas las provecciones es la misma

$$B_{a,b} = \operatorname{Im}(\pi) = Fix(\pi) = L(e_1, e_2) \equiv \{z = 0\}$$

mientras que cada provección tiene una dirección distinta:

$$D_{a,b} = \text{Ker}(\pi_{a,b}) = \{ (x, y, z) : \begin{pmatrix} 1 & 0 & a \\ 0 & 1 & b \\ 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} x \\ y \\ z \end{pmatrix} = 0 \}$$

Y unas ecuaciones implícitas de  $D_{a,b}$  son:

$$D_{a,b} \equiv \{ x + az = 0, y + bz = 0 \} \qquad \square$$

4.10. Sean f y g dos endomorfismos de un espacio vectorial V. Demuestre que

$$f \circ g = 0$$
 si y sólo si  $\operatorname{Im}(g) \subseteq \operatorname{Ker}(f)$ 

Solución: Tenemos que

$$f \circ g = 0 \iff f \circ g(v) = f(g(v)) = 0 \ \forall v \in V \iff g(v) \in \mathrm{Ker}(f) \ \forall v \in V \iff \mathrm{Im}(g) \subseteq \mathrm{Ker}(f) \ \Box$$

**4.11.** Sea s una simetría de  $\mathbb{R}^3$  que transforma el vector (1,0,0) en el vector (0,1,0) y deja fijo el vector (0,0,1). Determine la matriz de s respecto de la base canónica de  $\mathbb{R}^3$ , y determine los subespacios base y dirección de s.

Solución: Nos dan las imágenes del primer y tercer vector de la base canónica:

$$s(1,0,0) = (0,1,0) \quad \text{y} \quad s(0,0,1) = (0,0,1)$$

Luego la matriz de s respecto de la base canónica  $\mathcal{B}$  será de la forma

$$\mathfrak{M}_{\mathcal{B}}(s) = \begin{pmatrix} 0 & a & 0 \\ 1 & b & 0 \\ 0 & c & 1 \end{pmatrix}$$

Para que s sea una simetría es necesario y suficiente que  $s^2 = \text{Id}$ , Por lo tanto, debe cumplirse que  $(\mathfrak{M}_{\mathcal{B}}(s))^2 = I_3$ . Veamos cuando sucede esto:

$$(\mathfrak{M}_{\mathcal{B}}(s))^2 = \begin{pmatrix} a & ab & 0 \\ b & a+b^2 & 0 \\ c & cb+c & 1 \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} \iff a=1, b=0, c=0$$

Luego

$$\mathfrak{M}_{\mathcal{B}}(s) = \begin{pmatrix} 0 & 1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix}$$

La base de la simetría s es  $Fix(s) = \{v \in \mathbb{R}^3 : s(v) = v\}$ 

$$Fix(s) = \{(x, y, z) : \begin{pmatrix} 0 & 1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} x \\ y \\ z \end{pmatrix} = \begin{pmatrix} x \\ y \\ z \end{pmatrix}\} \implies Fix(s) \equiv \{x - y = 0\}$$

y la dirección de la simetría s es  $Fix^-(s) = \{v \in \mathbb{R}^3 : s(v) = -v\}$ 

$$Fix^{-}(s) = \{(x, y, z) : \begin{pmatrix} 0 & 1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} x \\ y \\ z \end{pmatrix} = - \begin{pmatrix} x \\ y \\ z \end{pmatrix} \} \implies Fix^{-}(s) \equiv \{x + y = 0, z = 0\} \qquad \Box$$

#### **4.12.** Calcule la matriz de la aplicación lineal:

$$f: \quad \mathbb{R}_3[x] \quad \xrightarrow{} \quad \mathbb{R}^2$$

$$p \quad \mapsto \quad (p(1), p(2))$$

con respecto a las bases canónicas y calcule unas ecuaciones implícitas del núcleo de f.

**Solución**: En el Ejemplo 4.18 vimos que f era lineal, en concreto que f era un epimorfismo. Sean  $\mathcal{B} = \{1, t, t^2, t^3\}$  la base canónica de  $\mathbb{R}_3[x]$  y  $\mathcal{B}' = \{(1, 0), (0, 1)\}$  la base canónica de  $\mathbb{R}^2$ . Calculamos la imagen por f de los vectores de  $\mathcal{B}$ :

$$f(1) = (1,1), \quad f(t) = (1,2), \quad f(t^2) = (1,4), \quad f(t^3) = (1,8)$$

Con estos datos ya podemos construir la matriz que nos piden:

$$\mathfrak{M}_{\mathcal{B}\mathcal{B}'}(f) = \begin{pmatrix} 1 & 1 & 1 & 1 \\ 1 & 2 & 4 & 8 \end{pmatrix}$$

Todo polinomio  $p \in \mathbb{R}_3[x]$  se puede escribir como

$$p = (x_0, x_1, x_2, x_3)_{\mathcal{B}} = x_0 + x_1 t + x_2 t^2 + x^3 t^3$$

Si P es la matriz columna con las coordenadas de p, entonces

$$\begin{aligned} \operatorname{Ker}(f) &= \{ p \in \mathbb{R}_3[x] : f(p) = 0 \} \\ &= \{ p \in \mathbb{R}_3[x] : \mathfrak{M}_{\mathcal{B}\mathcal{B}'}(f)P = 0 \} \end{aligned}$$

$$&= \{ p = (x_0, x_1, x_2, x_3)_{\mathcal{B}} \in \mathbb{R}_3[x] : \begin{pmatrix} 1 & 1 & 1 & 1 \\ 1 & 2 & 4 & 8 \end{pmatrix} \begin{pmatrix} x_0 \\ x_1 \\ x_2 \\ x_2 \end{pmatrix} = 0 \}$$

Luego unas ecuaciones implícitas de Ker(f) vienen dadas por

$$Ker(f) \equiv \{x_0 + x_1 + x_2 + x_3 = 0, x_0 + 2x_1 + 4x_2 + 8x_3 = 0\}$$

**4.13.** a) Calcule, respecto de la base canónica de  $\mathbb{R}^4$ , la matriz de la proyección p tal que

$$p(1,1,0,0) = (0,1,0,-1), p(1,0,1,0) = (1,1,1,\alpha), \alpha \neq -1$$

b) ¿Qué ocurre si  $\alpha = -1$ ?

**Solución:** a) Recordamos que p es una proyección si y sólo si  $p^2 = p$ , y por lo tanto

$$p(0,1.0,-1) = p(p(1.1.0,0)) = p^2(1.1.0,0) = p(1,1.0.0) = (0.1,0.-1)$$
  
$$p(1.1.1.\alpha) = p(p(1.0.1.0)) = p^2(1,0.1.0) = p(1,0,1.0) = (1.1.1,\alpha)$$

Así, si

$$\{v_1 = (1, 1, 0, 0), v_2 = (0, 1, 0, -1), v_3 = (1, 0, 1, 0), v_4 = (1, 1, 1, \alpha)\}$$

entonces

$$p(v_1) = v_2$$
,  $p(v_2) = v_2$ ,  $p(v_3) = v_4$ ,  $p(v_4) = v_4$ .

Si  $\mathcal{B} = \{v_1, v_2, v_3, v_4\}$  fuera una base de  $\mathbb{R}^4$  entonces p estaría determinada. Y  $\mathcal{B}$  es base de  $\mathbb{R}^4$  si y sólo si

$$\det \begin{pmatrix} 1 & 1 & 0 & 0 \\ 0 & 1 & 0 & -1 \\ 1 & 0 & 1 & 0 \\ 1 & 1 & 1 & \alpha \end{pmatrix} = \alpha + 1 \neq 0 \iff \alpha \neq -1.$$

Sea  $\mathcal{C}$  la base canónica de  $\mathbb{R}^4$ . Calculamos la matriz  $\mathfrak{M}_{\mathcal{C}}(p)$  por dos métodos:

*Método 1*: La matriz de p en la base  $\mathcal{B}$  es

$$\mathfrak{M}_{\mathcal{B}}(p) = \begin{pmatrix} 0 & 0 & 0 & 0 \ 1 & 1 & 0 & 0 \ 0 & 0 & 0 & 0 \ 0 & 0 & 1 & 1 \end{pmatrix}$$

Y la matriz de cambio de base de  $\mathcal{B}$  a  $\mathcal{C}$  es

$$\mathfrak{M}_{\mathcal{BC}} = \begin{pmatrix} 1 & 0 & 1 & 1 \\ 1 & 1 & 0 & 1 \\ 0 & 0 & 1 & 1 \\ 0 & -1 & 0 & \alpha \end{pmatrix}$$

Entonces

$$\mathfrak{M}_{\mathcal{C}}(p) = \mathfrak{M}_{\mathcal{B}\mathcal{C}} \mathfrak{M}_{\mathcal{B}}(p) \mathfrak{M}_{\mathcal{C}\mathcal{B}} = \mathfrak{M}_{\mathcal{B}\mathcal{C}} \mathfrak{M}_{\mathcal{B}}(p) \mathfrak{M}_{\mathcal{B}\mathcal{C}}^{-1}$$

$$= \begin{pmatrix} 1 & 0 & 1 & 1 \\ 1 & 1 & 0 & 1 \\ 0 & 0 & 1 & 1 \\ 0 & -1 & 0 & \alpha \end{pmatrix} \begin{pmatrix} 0 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 1 & 1 \end{pmatrix} \begin{pmatrix} -\frac{\alpha}{\alpha+1} & \frac{\alpha}{\alpha+1} & \frac{\alpha}{\alpha+1} & -\frac{1}{\alpha+1} \\ \frac{1}{\alpha+1} & -\frac{1}{\alpha+1} & \frac{\alpha}{\alpha+1} & -\frac{1}{\alpha+1} \\ -\frac{1}{\alpha+1} & \frac{1}{\alpha+1} & \frac{1}{\alpha+1} & \frac{1}{\alpha+1} \end{pmatrix}$$

$$= \begin{pmatrix} 0 & 0 & 1 & 0 \\ \frac{1}{\alpha+1} & \frac{\alpha}{\alpha+1} & \frac{\alpha}{\alpha+1} & -\frac{1}{\alpha+1} \\ 0 & 0 & 1 & 0 \\ -\frac{1}{\alpha+1} & -\frac{\alpha}{\alpha+1} & \frac{\alpha^2+\alpha+1}{\alpha+1} & \frac{1}{\alpha+1} \end{pmatrix}$$

 $M\acute{e}todo~2$ : Calculamos las coordenadas de los vectores de  $\mathcal C$  respecto de  $\mathcal B$  y obtenemos sus imágenes aplicando la linealidad de p:

$$e_{1} = v_{1} - \frac{\alpha}{\alpha+1}v_{2} + \frac{1}{\alpha+1}v_{3} - \frac{1}{\alpha+1}v_{4} \Rightarrow p(e_{1}) = v_{2} - \frac{\alpha}{\alpha+1}v_{2} + \frac{1}{\alpha+1}v_{4} - \frac{1}{\alpha+1}v_{4} = (0, \frac{1}{\alpha+1}, 0, -\frac{1}{\alpha+1})$$

$$e_{2} = v_{1} + \frac{\alpha}{\alpha+1}v_{2} - \frac{1}{\alpha+1}v_{3} + \frac{1}{\alpha+1}v_{4} \Rightarrow p(e_{2}) = v_{2} + \frac{\alpha}{\alpha+1}v_{2} - \frac{1}{\alpha+1}v_{4} + \frac{1}{\alpha+1}v_{4} = (0, \frac{\alpha}{\alpha+1}, 0, -\frac{\alpha}{\alpha+1})$$

$$\vdots$$

Construimos la matriz  $\mathfrak{M}_{\mathcal{C}}(p)$  que tiene en su columna j las coordenadas de  $p(e_j)$ .

b) Si  $\alpha = -1$  entonces  $\mathcal{B}$  no es una base de V. En particular,  $v_2 = v_4 - v_3$ . En este caso no existe ninguna aplicación lineal p que cumpla las condiciones del enunciado ya que tendríamos

$$p(v_2) = v_2$$
 mientras que  $p(v_4 - v_3) = p(v_4) - p(v_3) = v_4 - v_4 = 0$ 

Nota: Obsérvese la relación de este apartado con el Ejercicio 4.6.

- **4.14.** Considere la proyección  $p: \mathbb{R}^4 \to \mathbb{R}^4$  del ejercicio anterior con  $\alpha = 1$ .
  - a) Calcule el subespacio  $p^{-1}(R_1)$  imagen inversa de la recta  $R_1=L((0,0,0,1)).$
  - b) Sabiendo que p(1,1,0,0) = (0,1,0,-1) determine un plano P cuya imagen por p sea la recta  $R_2 = L((0,1,0,-1))$ .

Solución: a) En primer lugar, tenemos en cuenta la matriz de la aplicación en las bases canónicas

$$\mathfrak{M}_{\mathcal{C}}(p) = \begin{pmatrix} 0 & 0 & 1 & 0 \\ \frac{1}{2} & \frac{1}{2} & \frac{1}{2} & -\frac{1}{2} \\ 0 & 0 & 1 & 0 \\ -\frac{1}{2} & -\frac{1}{2} & \frac{3}{2} & \frac{1}{2} \end{pmatrix}$$

La imagen inversa de  $R_1$  es el subespacio

$$p^{-1}(R_1) = \{(x_1, x_2, x_3, x_4) \in \mathbb{R}^4 : p(x_1, x_2, x_3, x_4) \in R_1\}$$

Calculamos  $p(x_1, x_2, x_3, x_4)$  utilizando la matriz

$$\begin{pmatrix} 0 & 0 & 1 & 0 \\ \frac{1}{2} & \frac{1}{2} & \frac{1}{2} & -\frac{1}{2} \\ 0 & 0 & 1 & 0 \\ -\frac{1}{2} & -\frac{1}{2} & \frac{3}{2} & \frac{1}{2} \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \\ x_4 \end{pmatrix} = \begin{pmatrix} \frac{x_3}{x_1 + x_2 + x_3 - x_4} \\ \frac{x_1 + x_2 + x_3 - x_4}{2} \\ x_3 \\ \frac{-x_1 - x_2 + 3x_3 + x_4}{2} \end{pmatrix}$$

Entonces

$$p^{-1}(R_1) = \left\{ (x_1, x_2, x_3, x_4) \in \mathbb{R}^4 : \left( x_3, \frac{x_1 + x_2 + x_3 - x_4}{2}, x_3, \frac{-x_1 - x_2 + 3x_3 + x_4}{2} \right) \in R_1 \right\}$$

Los vectores de  $R_1$  son de la forma  $(0,0,0,\lambda)$  con  $\lambda \in \mathbb{R}$ , luego

$$p^{-1}(R_1) = \left\{ (x_1, x_2, x_3, x_4) \in \mathbb{R}^4 : x_3 = 0, \frac{x_1 + x_2 + x_3 - x_4}{2} = 0, x_3 = 0 \right\}$$
$$= \left\{ (x_1, x_2, x_3, x_4) \in \mathbb{R}^4 : x_1 + x_2 - x_4 = 0, x_3 = 0 \right\}$$
$$= L((1, -1, 0, 0), (1, 0, 0, 1)) = G$$

La imagen inversa de  $R_1$  es el plano G.

b) Si el plano es  $P = L(u_1, u_2)$ , entonces su imagen por p es  $p(P) = L(p(u_1), p(u_2))$ . Para que sea  $p(P) = R_2$ , es necesario que  $p(u_1)$ ,  $p(u_2) \in R_2$ . Podemos tomar  $u_1 = (1, 1, 0, 0)$ , ya que  $p(1, 1, 0, 0) = (0, 1, 0, -1) \in R_2$ . El vector  $u_2$  se pueden tomar del núcleo de p, ya que entonces

$$p(P) = L(p(u_1), p(u_2)) = L((0, 1, 0, -1), (0, 0, 0, 0)) = L((0, 1, 0, -1)) = R_2.$$

Con la matriz de p, determinamos unas ecuaciones de  $\mathrm{Ker}(p)$ , que es el subespacio dirección de la proyección, y obtenemos el plano

$$D = \text{Ker}(p) \equiv \{x_1 + x_2 - x_4 = 0, x_3 = 0\} = L((1, -1, 0.0), (1, 0.0, 1))$$

Entonces podemos tomar  $u_2 = (1, -1, 0, 0)$  y así

$$P = L((1, 1, 0, 0), (1, -1, 0, 0))$$

es un plano que cumple  $f(P) = R_2$ .  $\square$ 

# Ejercicios del capítulo 5

**5.1.** Demuestre que los autovalores de una matriz triangular son los elementos de la diagonal principal.

Solución: Sea A una matriz triangular superior. El polinomio característico es

$$\det(A - \lambda I) = \det \begin{pmatrix} a_{11} - \lambda & a_{12} & \cdots & a_{1n} \\ 0 & a_{22} - \lambda & & \vdots \\ \vdots & & \ddots & \\ 0 & \cdots & 0 & a_{nn} - \lambda \end{pmatrix}$$

Como el determinante de una matriz triangular es igual al producto de los elementos de la diagonal, entonces  $\det(A - \lambda I) = (a_{11} - \lambda) \cdots (a_{nn} - \lambda)$  cuyas raíces son  $a_{11}, \ldots, a_{nn}$ ; que son los autovoalores de A. Se tiene el mismo resultado si la matriz es triangular inferior.  $\square$ 

**5.2.** Demuestre que si  $\lambda$  es autovalor de A, entonces  $\lambda^k$  es autovalor de  $A^k$ .

**Solución:** Teniendo en cuenta que  $\lambda$  es autovalor de A si y sólo si existe  $X \in \mathfrak{M}_{n \times 1}(\mathbb{K})$  no nula tal que  $AX = \lambda X$ , vamos a demostrar el resultado por inducción. Para k = 1 se cumple por hipótesis. Supongamos que  $\lambda^k$  es autovalor de  $A^k$ , es decir que existe  $X \neq 0$  tal que  $A^kX = \lambda^k X$ , y veamos que se cumple también en el caso k + 1:

$$A^{k+1}X = A(A^kX) = A(\lambda^kX) = \lambda^k(AX) = \lambda^k(\lambda X) = \lambda^{k+1}X$$

En la segunda igualdad se aplicó la hipótesis de inducción, en la cuarta el caso k=1.

5.3. Demuestre que si A es diagonalizable, entonces también  $A^k$  es diagonalizable.

**Solución:** Si A es diagonalizable, entonces existe una matriz regular P y una diagonal D tal que  $D = P^{-1}AP$ , entonces

$$D^{k} = (P^{-1}AP)^{k} = (P^{-1}AP)(P^{-1}AP) \cdots (P^{-1}AP) = P^{-1}A^{k}P$$

Como la matriz  $D^k$  es diagonal y  $A^k$  es semejante a  $D^k$ , entonces  $A^k$  es diagonalizable.  $\square$ 

5.4. Demuestre que si A es regular y diagonalizable, entonces también  $A^{-1}$  es diagonalizable.

**Solución:** Si A es diagonalizable, entonces existe una matriz regular P y una diagonal D tal que  $D = P^{-1}AP$ . La matriz D también es regular por serlo A y P, luego invirtiendo las matrices en la última igualdad se tiene:

$$D^{-1} = (P^{-1}AP)^{-1} = P^{-1}A^{-1}(P^{-1})^{-1} = P^{-1}A^{-1}P$$

Si D es diagonal y regular, entonces  $D^{-1}$  también es diagonal y regular, y por tanto  $A^{-1}$  es diagonalizable.  $\Box$