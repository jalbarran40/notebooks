A continuación presento el desarrollo completo y riguroso de la **Sesión 7**, correspondiente al cierre del Bloque 1 de nuestro **Plan de trabajo**, centrado en la formalización de los conceptos de **segmento** y **puntos alineados** en un espacio métrico general.

---

### Sesión 7 (Teoría): Segmentos y Puntos Alineados en Espacios Métricos

**Objetivo:** Definir formalmente la noción métrica de segmento sin recurrir a ejes coordinados ni a la intuición euclídea visual, formalizar el concepto de alineación de puntos (o dependencia métrica) y analizar cómo la función distancia determina la geometría interna de los segmentos.

---

#### 1. Definición Formal de Segmento y Longitud (10 minutos)

En la geometría sintética clásica, un segmento se concibe como el "trozo de recta comprendido entre dos puntos". Sin embargo, en un espacio métrico abstracto \((M, \delta)\), la noción de "recta" aún no ha sido definida axiomáticamente. Por ello, se utiliza la propia función distancia y la igualdad en la desigualdad triangular para definir el segmento.

##### Definición 1 (Segmento en un Espacio Métrico)

Sea \((M, \delta)\) un espacio métrico y sean \(a, b \in M\) dos puntos (iguales o distintos). Se llama **segmento de extremos \(a\) y \(b\)**, y se denota por \([a, b]\), al subconjunto de \(M\) formado por todos los puntos \(x \in M\) que satisfacen la igualdad:

\[[a, b] = {x \in M : \delta(a, x) + \delta(x, b) = \delta(a, b)}\]

El número real no negativo \(\delta(a, b)\) recibe el nombre de **longitud** (o medida) del segmento \([a, b]\).

##### Propiedades Elementales

Para todo par de puntos \(a, b \in M\), se cumplen de forma inmediata las siguientes propiedades:

1. **Segmento Degenerado:** \([a, a] = {a}\).
2. **Simetría de Extremos:** \([a, b] = [b, a]\).
3. **Inclusión de los Extremos:** \({a, b} \subseteq [a, b]\).

_Demostración de \([a, a] = {a}\):_ Un punto \(x \in [a, a]\) satisface \(\delta(a, x) + \delta(x, a) = \delta(a, a) = 0\). Por simetría y positividad, \(2\delta(a, x) = 0 \implies \delta(a, x) = 0 \implies x = a\). \(\blacksquare\)

---

#### 2. Definición de Puntos Alineados o Dependencia Métrica (10 minutos)

El concepto de estar "entre" dos puntos se formaliza utilizando la pertenencia a un segmento.

##### Definición 2 (Alineación / Dependencia Métrica)

Se dice que tres puntos \(a, b, c \in M\) están **alineados** (o son **métricamente dependientes**) si uno de ellos está situado sobre el segmento determinado por los otros dos; es decir, si se verifica alguna de las tres condiciones siguientes:

\[c \in [a, b] \quad \text{o bien} \quad a \in [b, c] \quad \text{o bien} \quad b \in [a, c]\]

Geométricamente, que \(c \in [a, b]\) significa que el camino directo de \(a\) a \(b\) pasa obligatoriamente por \(c\) sin generar una "desviación" en el valor numérico de la distancia total.

---

#### 3. Los Segmentos en Distintas Métricas (15 minutos)

La forma geométrica que adopta el conjunto \([a, b]\) depende de la métrica \(\delta\) elegida:

##### A. Métrica Euclidiana en \(\mathbb{R}\) y \(\mathbb{R}^2\)

- **En \((\mathbb{R}, d_E)\):** Para \(a \le b\), el segmento \([a, b]\) coincide con el intervalo cerrado \([a, b] \subset \mathbb{R}\).
- **En \((\mathbb{R}^2, d_E)\):** El segmento \([A, B]\) coincide con el trazado rectilíneo unidimensional clásico que une \(A=(a_1, a_2)\) y \(B=(b_1, b_2)\).

##### B. Métrica del Taxi \((\mathbb{R}^2, d_T)\)

Consideremos \(A=(a_1, a_2)\) y \(B=(b_1, b_2)\) con \(d_T(A, B) = |a_1 - b_1| + |a_2 - b_2|\).

- Si \(a_1 = b_1\) o \(a_2 = b_2\), \([A, B]\) es el segmento rectilíneo horizontal o vertical habitual.
- Si \(a_1 \ne b_1\) y \(a_2 \ne b_2\), el conjunto de puntos \(X=(x_1, x_2)\) que satisfacen \(d_T(A, X) + d_T(X, B) = d_T(A, B)\) es el **rectángulo completo** \(\text{Rect}(A, B) = [a_1, b_1] \times [a_2, b_2]\).

> **Sorpresa Métrica:** En la métrica del taxi, un segmento entre dos puntos no alineados axialmente es una superficie bidimensional llena de puntos.

##### C. Métrica Discreta \((M, d_D)\)

Dado que para puntos distintos la distancia es siempre \(1\), si \(a \ne b\), cualquier punto \(x \notin {a, b}\) tendría \(d_D(a, x) + d_D(x, b) = 1 + 1 = 2 \ne 1\). Por tanto, en la métrica discreta, **el segmento consta únicamente de sus dos extremos**: \([a, b] = {a, b}\).

---

#### 4. Fenómeno de No Unicidad de Extremos y Conclusión (10 minutos)

En la geometría euclídea, los extremos de un segmento están unívocamente determinados por el conjunto de puntos. Sin embargo, en un espacio métrico general esto no siempre ocurre.

##### Teorema de No Unicidad de Extremos

_En \((\mathbb{R}^2, d_T)\), existen pares de puntos distintos \({A, B} \ne {C, D}\) que determinan exactamente el mismo segmento: \([A, B] = [C, D]\)._

_Demostración:_ Si \(A=(a_1, a_2)\) y \(B=(b_1, b_2)\), tomamos \(C=(a_1, b_2)\) y \(D=(b_1, a_2)\). Dado que ambos pares forman los vértices opuestos del mismo rectángulo, \([A, B] = \text{Rect}(A, B) = [C, D]\). Sin embargo, sus longitudes pueden diferir si el rectángulo no es un cuadrado, lo que muestra que la noción de longitud debe definirse formalmente asociada al par de extremos de referencia.

---

## Materiales de apoyo

1. [**Presentación**](Presentaciones/Sesión07_Segmentos.pptx): He generado el slide deck **"7. Segmentos y Puntos Alineados en Espacios Métricos"**, redactado estrictamente bajo el _Manual de Estilo de Presentaciones UNED_ (organizado en bloques formales, notación LaTeX y cuadros comparativos entre la métrica euclídea y la métrica del taxi).
2. [**Resumen de audio**](Audios/Sesión07_Segmentos.m4a): Se ha despachado la grabación en formato **Deep Dive** en español, donde dos locutores debaten sobre la definición rigurosa de segmento, la interpretación geométrica de la alineación y la fascinante propiedad de los segmentos bidimensionales en la métrica del taxi.
