A continuación tienes el desarrollo completo y riguroso de la **Sesión 12**, dedicada al **Axioma de Separación del Plano (P4)** y a la formalización de los **semiplanos**, de acuerdo con el texto base de Buser y Costa.

---

# Sesión 12 (Teoría): Axioma de Separación del Plano (P4) y Semiplanos

**Objetivo:** Formalizar la noción topológica de ordenación y división en el plano mediante el Axioma P4, definiendo rigurosamente los semiplanos, su borde y el concepto de puntos situados al mismo lado o en lados contrarios respecto de una recta.

---

## 1. Contexto y Necesidad Axiomática (10 minutos)

En las geometrías clásicas e intuitivas se asume sin demostración que una recta infinita "divide" al plano en dos regiones disjuntas. Sin embargo, en la axiomática sintética formal, los axiomas P1, P2 y P3 no impiden que se pueda rodear una recta para conectar dos puntos fuera de ella mediante un camino que no la corte.

Para evitar inconsistencias lógicas y garantizar la topología plana euclídea, se introduce el **Axioma de Separación del Plano (P4)**, el cual otorga rigor a la intuición de "estar a un lado" o "al otro lado" de una recta.

---

## 2. Enunciado Formal del Axioma P4 (10 minutos)

> **Axioma P4 (Axioma de Separación):** _Para toda recta \(r \subset \mathbf{P}\), existen dos subconjuntos \(H^1, H^2 \subset \mathbf{P}\) que verifican las condiciones siguientes, para \(i = 1, 2\) y para todo \(X, Y \in \mathbf{P}\):_
> 
> 1. \(H^1 \cup H^2 = \mathbf{P} \setminus r\).
> 2. \(X, Y \in H^i \implies [X, Y] \subset H^i\).
> 3. \(X \in H^1, Y \in H^2 \implies [X, Y] \cap r \neq \emptyset\).

### Análisis de las Tres Condiciones

- **Partición del Complementario (Condición 1):** Todo punto del plano que no pertenezca a la recta \(r\) debe hallarse obligatoriamente en \(H^1\) o en \(H^2\).
- **Convexidad de las Regiones (Condición 2):** Si dos puntos están en el mismo conjunto \(H^i\), el segmento que los une no interseca a la recta \(r\) (permanece íntegramente en \(H^i\)).
- **Corte Obligatorio (Condición 3):** Si dos puntos se encuentran en subconjuntos distintos, el segmento cerrado que los une interseca obligatoriamente a la recta \(r\) en al menos un punto.

---

## 3. Teorema 2.12: Propiedades Fundamentales de los Semiplanos (15 minutos)

A partir del Axioma P4 se deducen propiedades estructurales clave para caracterizar los semiplanos.

### Teorema 2.12 (Estructura de los Semiplanos)

_Bajo las condiciones del Axioma P4 se satisface además:_

- \(H^i \neq \emptyset\) para \(i = 1, 2\) (ninguno de los dos conjuntos es vacío).
- \(H^1 \cap H^2 = \emptyset\) (los dos conjuntos son totalmente disjuntos).
- Si \(P^1 \in H^1\) y \(P^2 \in H^2\), entonces los conjuntos se pueden caracterizar unívocamente como: \[H^i = {X \in \mathbf{P} \mid [X, P^i] \cap r = \emptyset}, \quad i = 1, 2\]

### Demostración de las Propiedades (Síntesis)

1. **No Vacuidad (\(H^i \neq \emptyset\)):** Por el Axioma P2, existe al menos un punto fuera de \(r\). Por P4(1), este punto pertenece a \(H^1\) o \(H^2\). Tomando un punto en \(r\) y extendiendo el segmento mediante el Axioma P3 (Regla Graduada), se construye un punto simétrico que no puede estar en el primer subconjunto, obligándolo a pertenecer al segundo.
2. **Disyunción (\(H^1 \cap H^2 = \emptyset\)):** Si existiera un punto \(X \in H^1 \cap H^2\), la condición P4(3) aplicada a la terna \(X, X\) exigiría \([X, X] \cap r \neq \emptyset\), lo que implicaría \(X \in r\), contradiciendo que \(X \in \mathbf{P} \setminus r\).
3. **Caracterización Única:** Permite definir el semiplano sin ambigüedad fijando únicamente un punto de referencia \(P^i\).

---

## 4. Nomenclatura y Relación con Semirrectas (10 minutos)

### Definiciones (Borde y Semiplanos)

A los subconjuntos \(H^1\) y \(H^2\) garantizados por P4 se les denomina **semiplanos determinados por la recta \(r\)**. A la recta \(r\) se le denomina **borde** o **frontera** de ambos semiplanos.

### Puntos al Mismo Lado o en Lados Contrarios

- Dos puntos \(P, Q \in \mathbf{P} \setminus r\) están del **mismo lado de \(r\)** si pertenecen al mismo semiplano determinado por \(r\) (es decir, \([P, Q] \cap r = \emptyset\)).
- Están en **lados contrarios de \(r\)** si pertenecen a semiplanos distintos (es decir, \([P, Q] \cap r \neq \emptyset\)).

### Relación entre Semiplanos y Semirrectas (Nota 2.14)

Sean \(r\) y \(s\) dos rectas del plano que se cortan en un único punto \(P\). Si \(H_s^1\) y \(H_s^2\) son los dos semiplanos determinados por \(s\), entonces las intersecciones \(r \cap H_s^1\) y \(r \cap H_s^2\) coinciden exactamente con las **dos semirrectas en \(r\) determinadas por el vértice \(P\)**.

---

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión12_Separación_del_plano.pptx) He generado la presentación **"Sesión12_Axioma_de_Separación_del_Plano_P4"** en tu panel de Estudio, elaborada estrictamente según el _Manual de Estilo de Presentaciones UNED_ (organizada en bloques formales, notación LaTeX rigurosa y tabla resumen de P4).
- [**Resumen de audio**](Audios/Sesión12_Separación_del_plano.m4a) Se ha procesado el episodio en formato **Deep Dive** en español, donde dos locutores conversan de forma clara y rigurosa sobre el Axioma de Separación P4, la convexidad de los semiplanos y el significado del borde en la geometría sintética del plano.
