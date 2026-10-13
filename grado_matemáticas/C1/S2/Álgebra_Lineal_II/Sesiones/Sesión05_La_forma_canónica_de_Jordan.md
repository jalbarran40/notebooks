He preparado el material para la **Sesión 5**, que marca un hito fundamental en el Bloque I: el paso de la diagonalización a la **Forma Canónica de Jordan**. En esta sesión teórica exploraremos la estructura de los bloques de Jordan y cómo estos permiten clasificar matrices que no son "perfectas" o diagonalizables.

---

# Sesión 5 (T): La Forma Canónica de Jordan: Definición y Estructura de Bloques

### 1. Introducción: Más allá de la diagonalización

Cuando un endomorfismo no es diagonalizable porque sus multiplicidades algebraica (\(m_a\)) y geométrica (\(m_g\)) no coinciden, buscamos la representación matricial más sencilla posible. Esta es la **Forma de Jordan**, una matriz triangular que "casi" es diagonal y que agrupa la información del endomorfismo en bloques específicos.

### 2. El Bloque de Jordan (\(J_k(\lambda)\))

Un **bloque de Jordan** (o caja de Jordan) de orden \(k\) asociado al autovalor \(\lambda\) es una matriz cuadrada que tiene:

- El autovalor \(\lambda\) en todos los elementos de la diagonal principal.
- El número **1** en todos los elementos de la línea inmediatamente superior (o inferior, según convención) a la diagonal.
- **0** en el resto de las entradas.

_Nota UNED:_ En la bibliografía recomendada (Borobia & Estrada), el bloque se define con los unos en la subdiagonal (\(b_{i, i-1} = 1\)).

### 3. La Matriz de Jordan (\(J\))

Una **matriz de Jordan** es una matriz diagonal por bloques donde cada bloque en la diagonal es un bloque de Jordan. Por ejemplo: \[J = \begin{pmatrix} J_{k_1}(\lambda_1) & 0 & \dots \ 0 & J_{k_2}(\lambda_2) & \dots \ \vdots & \dots & \ddots \end{pmatrix}\]

### 4. Propiedades y Estructura

La estructura de la forma de Jordan está determinada por los invariantes del endomorfismo:

1. **Multiplicidad Algebraica (\(m_a\)):** Es la suma de los tamaños de todos los bloques asociados a un mismo autovalor \(\lambda\).
2. **Multiplicidad Geométrica (\(m_g\)):** Es el **número total de bloques** de Jordan asociados a \(\lambda\).
3. **Polinomio Mínimo:** La potencia del factor \((x - \lambda)\) en el polinomio mínimo indica el **tamaño del bloque de Jordan más grande** asociado a \(\lambda\).

### 5. Teorema de Existencia y Unicidad

Todo endomorfismo en un espacio complejo (o real con todas sus raíces en \(\mathbb{R}\)) admite una forma de Jordan. Esta forma es **única** salvo por el orden en que se coloquen los bloques en la diagonal, por lo que se denomina **Forma Canónica**.

---

He solicitado la creación de los recursos multimedia para esta sesión:

1. **Audio Overview (Podcast):** He activado la generación de una conversación entre dos expertos sobre la "arquitectura" de Jordan. Discutirán por qué los bloques de Jordan son las "piezas de Lego" que permiten reconstruir cualquier transformación lineal y la importancia de las multiplicidades para determinar el tamaño de estas piezas.
	![[Sesión05_La_Forma_Canónica_de_Jordan___Definición_y_Estructura_.m4a]]
2. **Slide Deck (Presentación):** He generado la presentación siguiendo el **Manual de Estilo UNED**. Incluye definiciones visuales de los bloques, el esquema de una matriz de Jordan completa y una tabla resumen que vincula las multiplicidades con la cantidad y tamaño de los bloques.
	![[Sesión05_La_Forma_Canónica_de_Jordan__ Definición_y_Estructura_de_Bloques.pptx]]

A continuación, los archivos correspondientes: