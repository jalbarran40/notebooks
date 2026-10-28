
# Sesión 3: Métricas No Usuales (Métrica Rectangular / Taxi y Métrica Discreta)

**Objetivo:** Comprender que el concepto de distancia no se limita a la fórmula euclídea habitual, analizando cómo distintas métricas alteran las propiedades geométricas de las esferas, las bolas y los segmentos en el plano.

---

## 1. La Métrica Rectangular o Métrica del Taxi (\(d_T\)) (15 minutos)

En el producto cartesiano \(\mathbb{R}^2\), la métrica habitual es la euclídea \(d_E\). Sin embargo, existen otras formas de cuantificar la separación entre dos puntos \(A=(a_1, a_2)\) y \(B=(b_1, b_2)\). La **métrica del taxi** o **métrica rectangular**, denotada por \(d_T\), se define como:

\[d_T(A, B) = |a_1 - b_1| + |a_2 - b_2|\]

Esta distancia representa el desplazamiento acumulado únicamente a lo largo de las direcciones horizontal y vertical (el "alejamiento horizontal más el vertical"), imitando el recorrido de un vehículo por la cuadrícula urbana de calles paralelas y perpendiculares.

### Verificación de los Axiomas de Distancia

Para comprobar que \(d_T\) es, en efecto, una métrica sobre \(\mathbb{R}^2\), verificamos los tres axiomas fundamentales:

1. **Positividad e Identidad:** Como los valores absolutos son siempre no negativos, \(d_T(A,B) \ge 0\). Además, \(d_T(A,B) = 0 \iff |a_1 - b_1| = 0 \text{ y } |a_2 - b_2| = 0 \iff a_1 = b_1 \text{ y } a_2 = b_2 \iff A = B\).
2. **Simetría:** \(d_T(A,B) = |a_1 - b_1| + |a_2 - b_2| = |b_1 - a_1| + |b_2 - a_2| = d_T(B,A)\).
3. **Desigualdad Triangular:** Para cualquier punto \(C=(c_1, c_2) \in \mathbb{R}^2\), usando la propiedad del valor absoluto \(|x+y| \le |x| + |y|\): \[d_T(A,C) = |a_1 - c_1| + |a_2 - c_2| = |(a_1 - b_1) + (b_1 - c_1)| + |(a_2 - b_2) + (b_2 - c_2)|\] \[\le |a_1 - b_1| + |b_1 - c_1| + |a_2 - b_2| + |b_2 - c_2| = d_T(A,B) + d_T(B,C)\]

Se verifica siempre la relación \(d_E(A,B) \le d_T(A,B)\), alcanzándose la igualdad únicamente si los puntos se encuentran alineados horizontal o verticalmente (\(a_1 = b_1\) o \(a_2 = b_2\)).

---

## 2. Geometría de Esferas y Segmentos en la Métrica Taxi (15 minutos)

### Esferas y Bolas

En un espacio métrico \((M, d)\), la **esfera** de centro \(C\) y radio \(r > 0\) se define como el lugar geométrico \(S_C(r) = {X \in M : d(C, X) = r}\). En \((\mathbb{R}^2, d_T)\), la esfera centrada en el origen \((0,0)\) de radio \(r\) es:

\[S_{(0,0)}^{d_T}(r) = {(x,y) \in \mathbb{R}^2 : |x| + |y| = r}\]

Desglosando por cuadrantes, esta ecuación genera cuatro segmentos rectilíneos:

- Cuadrante I (\(x \ge 0, y \ge 0\)): \(y = -x + r\)
- Cuadrante II (\(x \le 0, y \ge 0\)): \(y = x + r\)
- Cuadrante III (\(x \le 0, y \le 0\)): \(y = -x - r\)
- Cuadrante IV (\(x \ge 0, y \le 0\)): \(y = x - r\)

Geométricamente, **la esfera en la métrica taxi es un cuadrado rotado \(45^\circ\)** cuyas diagonales se asientan sobre los ejes de coordenadas y poseen longitud \(2r\) (con lados de longitud \(\sqrt{2}r\)). La bola abierta \(B_{(0,0)}(r)\) corresponde a la región interior a dicho cuadrado.

### Segmentos

El **segmento** de extremos \(A\) y \(B\) en un espacio métrico \((M, d)\) es el subconjunto \(AB = {X \in M : d(A,X) + d(X,B) = d(A,B)}\).

- Si \(a_1 = b_1\) o \(a_2 = b_2\), el segmento \(AB\) coincide con el segmento rectilíneo habitual.
- Si \(a_1 \ne b_1\) y \(a_2 \ne b_2\), el segmento \(AB\) en \((\mathbb{R}^2, d_T)\) es el **rectángulo completo** \(\text{Rect}(A,B) = [a_1, b_1] \times [a_2, b_2]\) cuyos lados son paralelos a los ejes coordinados.

> **Consecuencia fundamental:** En \((\mathbb{R}^2, d_T)\) existen pares de puntos que definen el mismo segmento sin que sus extremos coincidan. Por ejemplo, para los vértices opuestos \(A=(a_1, a_2)\) y \(B=(b_1, b_2)\), se tiene que \(AB = CD\), donde \(C=(a_1, b_2)\) y \(D=(b_1, a_2)\).

---

## 3. La Métrica Discreta (\(d_D\)) (10 minutos)

Cualquier conjunto no vacío \(M\) puede convertirse en espacio métrico asignando la **métrica discreta** \(d_D\), definida para todo \(A, B \in M\) como:

\[d_D(A,B) = \begin{cases} 0 & \text{si } A = B \ 1 & \text{si } A \ne B \end{cases}\]

### Propiedades y Estructura Esférica

La desigualdad triangular \(d_D(A,C) \le d_D(A,B) + d_D(B,C)\) se satisface trivialmente analizando los casos según la coincidencia de puntos (\(0 \le 0\), \(1 \le 1\) o \(1 \le 2\)). Las esferas \(S_C(r)\) y bolas \(B_C(r)\) varían drásticamente según el radio \(r > 0\):

1. **Radio \(r < 1\):** \(S_C(r) = \emptyset\), mientras que \(B_C(r) = {C}\).
2. **Radio \(r = 1\):** \(S_C(1) = M \setminus {C}\), mientras que \(B_C(1) = {C}\) y \(\overline{B}_C(1) = M\).
3. **Radio \(r > 1\):** \(S_C(r) = \emptyset\), mientras que \(B_C(r) = M\).

---

## 4. Resumen y Conclusión Pedagógica (5 minutos)

|Métrica|Definición en \(\mathbb{R}^2\)|Forma de la Esfera \(S_C(r)\)|Aspecto del Segmento \(AB\) (\(a_i \ne b_i\))|
|:--|:--|:--|:--|
|**Euclídea (\(d_E\))**|\(\sqrt{(a_1-b_1)^2 + (a_2-b_2)^2}\)|Circunferencia "redonda"|Segmento rectilíneo|
|**Taxi (\(d_T\))**|\(\|a_1-b_1\|+ \|
|**Discreta (\(d_D\))**|\(0\) si \(A=B\); \(1\) si \(A \ne B\)|\(\emptyset\) (si \(r \ne 1\)) o \(M \setminus {C}\) (si \(r=1\))|Unipuntual \({A}\) si \(A=B\), o los dos puntos si \(A \ne B\)|

Esta lección demuestra la necesidad de rigor en la formalización axiomática: las propiedades visuales habituales (como la forma redonda de las circunferencias o la unicidad del camino recto entre dos puntos) no provienen del conjunto de puntos, sino de la función métrica elegida.

---

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión03_Métricas_no_usuales.pptx): He generado la presentación **"Sesión 03: Métricas no usuales (Taxi y Discreta)"** siguiendo las pautas de estilo de la UNED (paleta en tonos institucionales, notación LaTeX y estructura rigurosa).
- [**Resumen en audio**](Audios/Sesión03_Métricas_no_usuales.m4a): Se ha creado el episodio en formato **Deep Dive** en español, donde dos locutores analizan de manera amena y rigurosa cómo la métrica del taxi y la discreta revolucionan la intuición sobre las circunferencias y los caminos más cortos.
