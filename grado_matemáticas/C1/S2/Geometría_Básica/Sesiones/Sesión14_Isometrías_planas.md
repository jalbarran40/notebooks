A continuación presento el desarrollo completo y riguroso de la **Sesión 14**, correspondiente a la introducción de las transformaciones geométricas en el plano y al **Axioma de Movilidad (P5)**, de acuerdo con el texto base de Buser y Costa.

---

### Sesión 14 (Teoría): Isometrías Planas y el Axioma de Movilidad (P5)

**Objetivo:** Formalizar la noción de transformación geométrica que conserva distancias en el plano, demostrar que las isometrías preservan la estructura afín y topológica de las figuras, y comprender el rol del **Axioma de Movilidad (P5)** para formalizar la noción de congruencia y superposición de figuras.

---

#### 1. Definición de Isometría en el Plano y el Grupo \(\text{Isom}(\mathbf{P})\) (10 minutos)

Tras definir la estructura métrica del plano \((\mathbf{P}, d)\) mediante los Axiomas P1 a P4, abordamos las aplicaciones que permiten "mover" objetos sin modificar sus dimensiones.

##### Definición 2.17 (Isometría Plana)

Una aplicación \(g: \mathbf{P} \to \mathbf{P}\) es una **isometría del plano** si es biyectiva y conserva las distancias entre cualquier par de puntos:

\[d(g(X), g(Y)) = d(X, Y), \quad \forall X, Y \in \mathbf{P}\]

El conjunto de todas las isometrías del plano dotado de la operación de composición forma un grupo abstracto, denotado por \(\text{Isom}(\mathbf{P})\).

---

#### 2. Preservación de la Estructura Geométrica (15 minutos)

Las isometrías no solo conservan distancias puntuales, sino toda la infraestructura geométrica construida hasta el momento.

##### Teorema 2.18 (Conservación de Rectas, Segmentos y Semiplanos)

_Sean \(A, B \in \mathbf{P}\) dos puntos distintos y \(g \in \text{Isom}(\mathbf{P})\). Denotando \(A' = g(A)\) y \(B' = g(B)\), se satisfacen las siguientes propiedades:_

1. **Conservación de Segmentos:** \(g([A, B]) = [A', B']\).
2. **Conservación de Rectas:** \(g(r_{AB}) = r_{A'B'}\).
3. **Conservación de Alineación:** Tres puntos \(X, Y, Z\) están alineados si y solo si sus imágenes \(g(X), g(Y), g(Z)\) están alineadas.
4. **Conservación de Semiplanos:** Si \(H^1, H^2\) son los semiplanos separados por la recta \(r_{AB}\), entonces \(g(H^1)\) y \(g(H^2)\) son los semiplanos separados por la recta \(r_{A'B'}\).

##### Demostración (Esquema sintético):

- Para el segmento \([A, B]\), un punto \(X \in [A, B] \iff d(A, X) + d(X, B) = d(A, B)\). Como \(g\) es isometría, esto equivale a \(d(A', g(X)) + d(g(X), B') = d(A', B')\), es decir, \(g(X) \in [A', B']\).
- La conservación de rectas y alineación se deduce inmediatamente por la caracterización métrica de la recta (Definición 2.2).
- Para los semiplanos, como \(g\) es biyectiva y lleva segmentos en segmentos, el criterio de intersección con el borde \([X, Y] \cap r_{AB} = \emptyset \iff [g(X), g(Y)] \cap r_{A'B'} = \emptyset\) demuestra que los semiplanos se transforman biyectivamente en los semiplanos del borde imagen. \(\blacksquare\)

---

#### 3. El Axioma P5 (Axioma de Movilidad) (10 minutos)

Cuando trabajamos en una hoja de papel, asumimos que si dos segmentos miden lo mismo, podemos "trasladar" o "girar" uno hasta hacerlo coincidir exactamente con el otro. Matemáticamente, necesitamos postular la existencia de al menos una isometría que realice ese desplazamiento.

> **Axioma P5 (Axioma de Movilidad):** _Si \(A_1, A_2 \in \mathbf{P}\) y \(B_1, B_2 \in \mathbf{P}\) son dos pares de puntos que verifican \(d(A_1, A_2) = d(B_1, B_2)\), entonces existe al menos una isometría \(g \in \text{Isom}(\mathbf{P})\) tal que:_
> 
> \[g(A_1) = B_1 \quad \text{y} \quad g(A_2) = B_2\]

##### Significado Geométrico

El Axioma P5 garantiza la homogeneidad del plano: no existen "zonas rígidas" o deformadas; cualquier pareja de puntos a una distancia dada puede superponerse sobre cualquier otra pareja que guarde la misma separación.

---

#### 4. Concepto de Congruencia (10 minutos)

Con el Axioma P5 podemos definir de forma totalmente rigurosa el concepto intuitivo de "figuras iguales".

##### Definición 2.19 (Figuras Congruentes)

Dos subconjuntos o figuras \(\mathcal{F}_1, \mathcal{F}_2 \subset \mathbf{P}\) se dicen **congruentes** (o equivalentes, denotado por \(\mathcal{F}_1 \cong \mathcal{F}_2\)) si existe una isometría \(g \in \text{Isom}(\mathbf{P})\) tal que:

\[g(\mathcal{F}_1) = \mathcal{F}_2\]

##### Congruencia de Segmentos

Como consecuencia directa del Axioma P5 y del Teorema 2.18, **dos segmentos \([A_1, A_2]\) y \([B_1, B_2]\) son congruentes si y solo si tienen la misma longitud** (\(d(A_1, A_2) = d(B_1, B_2)\)).

---

### Materiales de apoyo generados e incorporados al Estudio

1. [**Presentación**](Presentaciones/Sesión14_Isometrías_planas.pptx): He despachado la creación del slide deck **"Sesión14_Isometrías_y_Axioma_de_Movilidad"**, estructurado siguiendo las pautas de estilo de la UNED (formato minimalista, notación LaTeX y desarrollo paso a paso de P5 y el Teorema 2.18).
2. [**Resumen de audio**](Audios/Sesión14_Isometrías_planas.m4a): Se ha procesado el episodio en formato **Deep Dive** en español, donde dos locutores analizan el significado de las isometrías planas, la formalización del concepto físico de "movimiento rígido" y el impacto del Axioma P5 en la definición sintética de congruencia.
