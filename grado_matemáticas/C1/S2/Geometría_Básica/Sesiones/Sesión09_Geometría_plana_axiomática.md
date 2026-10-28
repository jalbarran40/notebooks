A continuación presento el desarrollo completo y riguroso de la **Sesión 9**, con la que iniciamos el **Bloque 2: Axiomática de la Geometría Plana** de nuestro **Plan de trabajo**.

---

### Sesión 9 (Teoría): El Plano (Axioma P1) y la Recta (Axioma P2)

**Objetivo:** Iniciar la construcción axiomática formal del plano euclidiano a partir de la estructura de espacio métrico, formalizar la definición intrínseca de recta y demostrar el primer teorema de intersección de rectas.

---

#### 1. Introducción al Sistema Axiomático del Plano (10 minutos)

En el Bloque 1 analizamos espacios métricos generales \((M, \delta)\) e isometrías. A partir del Capítulo 2 del texto de Buser y Costa, pasamos a construir formalmente la **geometría euclidiana plana**.

El objetivo es abstraer las propiedades geométricas de una hoja de papel o pizarra ilimitada mediante el lenguaje de la teoría de conjuntos, evitando recurrir a coordenadas cartesianas iniciales o intuiciones no justificadas axiomáticamente. Partimos de dos objetos primitivos:

1. Un conjunto no vacío \(\mathbf{P}\), cuyos elementos se denominan **puntos** (representados con letras mayúsculas \(X, Y, Z\)).
2. Una aplicación \(d: \mathbf{P} \times \mathbf{P} \to \mathbb{R}\), llamada **distancia** o **métrica**.

---

#### 2. El Axioma P1: El Plano como Espacio Métrico (10 minutos)

Para dotar al plano de una estructura de medición coherente, introducimos el primer axioma del Capítulo 2:

> **Axioma P1 (El Plano es un Espacio Métrico):** _El par \((\mathbf{P}, d)\) es un espacio métrico._

##### Implicaciones Directas de P1

Como consecuencia del Axioma P1, la distancia \(d\) en \(\mathbf{P}\) satisface automáticamente para todo \(X, Y, Z \in \mathbf{P}\):

1. **Positividad e Identidad:** \(d(X, Y) > 0\) si \(X \neq Y\), y \(d(X, X) = 0\).
2. **Simetría:** \(d(X, Y) = d(Y, X)\).
3. **Desigualdad Triangular:** \(d(X, Y) \le d(X, Z) + d(Z, Y)\).

Asimismo, las definiciones de **segmento** \([X, Y] = {Z \in \mathbf{P} : d(X, Z) + d(Z, Y) = d(X, Y)}\) y de **puntos alineados** (o métricamente dependientes) estudiadas en el Bloque 1 se aplican de forma natural sobre \((\mathbf{P}, d)\).

---

#### 3. Definición Formal de Recta en Espacios Métricos (10 minutos)

Antes de postular la existencia de rectas, el texto base establece las condiciones que debe cumplir un subconjunto para ser considerado una recta.

##### Definición 2.2 (Recta en el Plano)

Un subconjunto \(r \subset \mathbf{P}\) se llama **recta** si satisface estrictamente las tres condiciones siguientes:

1. **Puntos Mínimos:** \(r\) contiene al menos dos puntos distintos.
2. **Alineación Interna:** Para toda terna de puntos distintos \(A, B, C \in r\), los puntos \(A, B, C\) están alineados (uno de ellos pertenece al segmento formado por los otros dos).
3. **Exhaustividad por Alineación:** Si \(A, B \in r\) son dos puntos distintos y \(X \in \mathbf{P}\) está alineado con \(A\) y \(B\), entonces \(X \in r\).

##### Propiedad Inmediata

Como consecuencia directa de esta definición, si \(A, B \in \mathbf{P}\) con \(A \neq B\) pertenecen a una recta \(r\), entonces el segmento completo \([A, B]\) está contenido en \(r\) (\([A, B] \subset r\)).

---

#### 4. El Axioma P2: Existencia y Unicidad de Rectas (10 minutos)

La definición anterior describe qué es una recta, pero no garantiza que existan rectas en \((\mathbf{P}, d)\) ni cuántas se pueden trazar. Para ello se introduce el segundo axioma:

> **Axioma P2 (Existencia y Unicidad de Rectas):**
> 
> 1. _\(\mathbf{P}\) contiene al menos tres puntos que no están alineados._
> 2. _Por dos puntos distintos de \(\mathbf{P}\) pasa exactamente una recta._

##### Consecuencias del Axioma P2:

- **Dimensión Mínima:** La condición (i) asegura que \(\mathbf{P}\) no es un espacio unidimensional (una sola recta) ni cero-dimensional, sino una superficie plana bidimensional.
- **Notación de Recta Única:** Dados dos puntos distintos \(A, B \in \mathbf{P}\), a la única recta garantizada por P2(ii) que pasa por ellos la denotamos por \(r_{AB}\).

---

#### 5. Posiciones Relativas de Rectas y Teorema de Intersección (5 minutos)

##### Definiciones (Rectas Secantes y Paralelas)

- Dos rectas \(r, s \subset \mathbf{P}\) se dicen **secantes** (o que se cortan) si tienen exactamente un punto en común: \(r \cap s = {P}\).
- Dos rectas \(r, s \subset \mathbf{P}\) se dicen **paralelas** (denotado \(r \parallel s\)) si son coincidentes (\(r = s\)) o bien no tienen ningún punto en común (\(r \cap s = \emptyset\)).

##### Teorema 2.7 (Intersección de Rectas)

_Dos rectas cualesquiera del plano \(\mathbf{P}\) o bien se cortan en un único punto o bien son paralelas._

**Demostración:** Supongamos que dos rectas \(r\) y \(s\) no son paralelas. Por definición de paralelismo, no pueden ser coincidentes (\(r \neq s\)) ni disjuntas (\(r \cap s \neq \emptyset\)). Existe por tanto al menos un punto \(P \in r \cap s\). Si existiera un segundo punto distinto \(Q \in r \cap s\) (\(Q \neq P\)), tendríamos dos rectas distintas (\(r\) y \(s\)) pasando por los mismos dos puntos \(P\) y \(Q\). Esto contradice la cláusula de unicidad del **Axioma P2(ii)**. Por consiguiente, el corte contiene un único punto \(r \cap s = {P}\), demostrando que las rectas son secantes. \(\blacksquare\)

---

## Materiales de apoyo

1. [**Presentación**](Presentaciones/Sesión09_Geometría_plana_axiomática.pptx): He generado la presentación **"Sesión09_El_Plano_y_la_Recta"**, diseñada bajo las directrices del _Manual de Estilo de Presentaciones UNED_ (paleta institucional, notación LaTeX rigurosa para P1 y P2, y desarrollo explícito del Teorema 2.7).
2. [**Resumen de audio**](Audios/Sesión09_Geometría_plana_axiomática.m4a): Se ha despachado el episodio en formato **Deep Dive** en español, donde dos locutores analizan detalladamente la transición al Bloque 2, el significado de formalizar el plano como espacio métrico y la demostración de unicidad en la intersección de rectas.
