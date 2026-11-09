A continuación presento el desarrollo completo y riguroso de la **Sesión 10**, dedicada al estudio del **Axioma de la Regla Graduada (P3)** y la introducción de los sistemas de coordenadas en la recta, de acuerdo con el texto base de Buser y Costa.

---

### Sesión 10 (Teoría): Axioma de la Regla Graduada (P3) y Coordenadas

**Objetivo:** Formalizar la conexión entre la recta geométrica y el cuerpo de los números reales \(\mathbb{R}\), definiendo la noción de coordenada y referencia afín, y demostrando las aplicaciones fundamentales en la existencia del punto medio de un segmento y la construcción formal de semirrectas.

---

#### 1. Enunciado e Interpretación del Axioma P3 (10 minutos)

En la Sesión 9 definimos la recta como un subconjunto de puntos métricamente alineados y postulamos por P2 que por dos puntos pasa una única recta. Sin embargo, para medir distancias a lo largo de una recta de forma continua e identificarla algebraicamente con los números reales, necesitamos postular la existencia de una "escala graduada".

> **Axioma P3 (Axioma de la Regla Graduada):** _Para toda recta \(r \subset \mathbf{P}\), existe una biyección \(\rho: r \to \mathbb{R}\) que verifica:_
> 
> \[|\rho(X) - \rho(Y)| = d(X, Y), \quad \forall X, Y \in r\]

##### Significado Geométrico e Isométrico

El Axioma P3 establece que cada recta \((r, d)\) en el plano es **isométrica** a la recta real \((\mathbb{R}, d_E)\) dotada de la métrica euclídea habitual \(d_E(x, y) = |x - y|\). La función \(\rho\) actúa como una regla infinita colocada sobre la recta \(r\).

---

#### 2. Sistemas de Coordenadas y Referencia Afín (10 minutos)

Dada una biyección \(\rho: r \to \mathbb{R}\) garantizada por P3, al número real \(x = \rho(X)\) se le denomina la **coordenada** del punto \(X \in r\) respecto del sistema de coordenadas fijado por \(\rho\).

##### Elección de Origen y Orientación (Referencia Afín)

Dados dos puntos distintos \(A, B \in r\) (\(A \neq B\)), siempre se puede construir una biyección específica \(\rho\) (llamada asociada a la **referencia afín** \(\mathcal{R} = {A, B}\)) que fija la posición del origen en \(A\) y la orientación hacia \(B\):

1. \(\rho(A) = 0\) (el origen del sistema).
2. \(\rho(B) = b > 0\), donde \(b = d(A, B)\) (la orientación y unidad de medida).

##### Unicidad y Relación entre Sistemas de Coordenadas

Si \(\rho_1, \rho_2: r \to \mathbb{R}\) son dos biyecciones distintas que satisfacen P3 sobre la misma recta \(r\), la aplicación \(\rho_2 \circ \rho_1^{-1}: \mathbb{R} \to \mathbb{R}\) es una isometría de la recta real en sí misma. Por consiguiente, existe una constante \(c \in \mathbb{R}\) tal que:

\[\rho_2(X) = \pm \rho_1(X) + c\]

---

#### 3. Aplicación 1: Existencia y Unicidad del Punto Medio (15 minutos)

El Axioma P3 permite resolver analíticamente problemas de construcción que en la geometría griega requerían construcciones geométricas explícitas.

##### Observación 2.8 (Teorema del Punto Medio)

_Dados dos puntos distintos \(A, B \in \mathbf{P}\), existe exactamente un punto \(M \in r_{AB}\) tal que:_

\[d(M, A) = d(M, B) \quad \text{y} \quad M \in [A, B]\]

_A dicho punto \(M\) se le denomina **punto medio** del segmento \([A, B]\) y se denota por \(M = \text{medio}[A, B]\)_.

**Demostración:** Tomamos la biyección \(\rho: r_{AB} \to \mathbb{R}\) dada por el Axioma P3. Sean \(a = \rho(A)\) y \(b = \rho(B)\) las coordenadas de \(A\) e \(Y\) respectivamente. Buscamos un punto \(X \in r_{AB}\) con coordenada \(t = \rho(X)\) tal que \(d(X, A) = d(X, B)\):

\[|t - a| = |t - b|\]

Elevando al cuadrado ambos miembros: \[(t - a)^2 = (t - b)^2 \implies t^2 - 2at + a^2 = t^2 - 2bt + b^2\] \[-2at + 2bt = b^2 - a^2 \implies 2(b - a)t = (b - a)(a + b)\]

Como \(A \neq B\), sus coordenadas son distintas (\(a \neq b\)), por lo que podemos simplificar \((b - a) \neq 0\), obteniendo como solución única:

\[t = \frac{a + b}{2}\]

El único punto candidato es \(M = \rho^{-1}\left(\frac{a + b}{2}\right)\). Verificamos sus distancias:

\[d(M, A) = \left|\frac{a + b}{2} - a\right| = \left|\frac{b - a}{2}\right| = \frac{1}{2} d(A, B)\] \[d(M, B) = \left|\frac{a + b}{2} - b\right| = \left|\frac{a - b}{2}\right| = \frac{1}{2} d(A, B)\]

Además, \(d(M, A) + d(M, B) = \frac{1}{2}d(A,B) + \frac{1}{2}d(A,B) = d(A, B)\), lo que garantiza que \(M \in [A, B]\). Se concluye la existencia y unicidad. \(\blacksquare\)

---

#### 4. Aplicación 2: Definición Formal de Semirrectas (10 minutos)

El Axioma P3 traslada la noción de orden de los números reales a la recta geométrica.

##### Definición 2.9 (Semirrectas)

Sea \(r \subset \mathbf{P}\) una recta y \(P \in r\) un punto fijado como vértice. Tomando una biyección \(\rho: r \to \mathbb{R}\) dada por P3 y denotando \(p = \rho(P)\), los subconjuntos:

\[r_P^+ = {Q \in r : \rho(Q) > p} \quad \text{y} \quad r_P^- = {Q \in r : \rho(Q) < p}\]

se llaman **semirrectas** en \(r\) determinadas por \(P\) (o con vértice \(P\)).

##### Propiedad de Separación del Punto sobre la Recta

Dos puntos \(X, Y \in r \setminus {P}\) pertenecen a semirrectas distintas con vértice \(P\) (están en lados contrarios respecto de \(P\)) si y solo si el punto \(P\) pertenece al segmento cerrado \([X, Y]\).

---

## Materiales


1. [**Presentación**](Presentaciones/Sesión10_Axioma_regla_graduada.pptx) He generado la presentación **"10. Axioma de la Regla Graduada (P3) y Coordenadas"**, diseñada respetando el _Manual de Estilo de Presentaciones UNED_ (organización en bloques formales, notación LaTeX para P3 y prueba del punto medio).
2. [**Resumen de audio**](Audios/Sesión10_Axioma_regla_graduada.m4a): Se ha despachado el episodio en formato **Deep Dive** en español, donde dos locutores conversan de forma fluida y rigurosa sobre cómo el Axioma P3 permite pasar de la geometría sintética pura a la asignación de números reales sin perder el rigor axiomático.

