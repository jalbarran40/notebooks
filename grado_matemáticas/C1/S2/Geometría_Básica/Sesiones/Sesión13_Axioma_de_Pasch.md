A continuación se presenta el desarrollo completo y riguroso de la **Sesión 13**, dedicada al **Axioma de Pasch y su relevancia en el orden**, en el marco del Bloque 2 de nuestro plan de trabajo y siguiendo el texto base de Buser y Costa.

---

### Sesión 13 (Teoría): El Axioma de Pasch y su Relevancia en el Orden

**Objetivo:** Comprender las lagunas lógicas de la geometría euclidiana clásica respecto al orden visual, formalizar la definición de triángulo en el plano axiomático y demostrar el **Teorema de Pasch** a partir del Axioma de Separación del Plano (P4).

---

#### 1. Contexto Histórico: Moritz Pasch y las Lagunas de Euclides (10 minutos)

Durante más de dos milenios, los _Elementos_ de Euclides se consideraron el modelo supremo de rigor demostrativo. Sin embargo, a finales del siglo XIX, el matemático alemán **Moritz Pasch (1843-1930)** señaló que Euclides utilizaba de forma implícita propiedades de ordenación visual sin haberlas postulado formalmente.

Por ejemplo, Euclides asumía libremente que si una recta entra en un triángulo a través de uno de sus lados, debe salir cortando a otro lado, o que los puntos de una figura respetan un orden de "estar entre" otros puntos. Pasch demostró que estas propiedades no se deducen de los axiomas euclídeos clásicos y que era indispensable establecer un axioma de ordenación explícito para evitar paradojas visuales o construcciones inválidas.

---

#### 2. Definición Formal de Triángulo (10 minutos)

Antes de enunciar el teorema, formalizamos el objeto geométrico fundamental de la geometría plana.

##### Definición 2.15 (Triángulo)

Sean $P, Q, R \in \mathbf{P}$ tres puntos no alineados. Se llama **triángulo** determinado por dichos puntos, y se denota por $\Delta{P, Q, R}$, al conjunto formado por los segmentos:

$$\Delta{P, Q, R} = [P, Q] \cup [Q, R] \cup [R, P]$$

- **Vértices:** A los puntos $P, Q, R$ se les denomina **vértices** del triángulo.
- **Lados:** A los segmentos $[P, Q]$, $[Q, R]$ y $[R, P]$ se les denomina **lados** del triángulo.
- **Vértice y Lado Opuesto:** Dado un vértice y un lado, se dicen **opuestos** si el vértice no es extremo del lado. Por ejemplo, el vértice $P$ es opuesto al lado $[Q, R]$, y el lado $[Q, R]$ es el opuesto al vértice $P$.

---

#### 3. Enunciado y Demostración del Teorema de Pasch (15 minutos)

En la axiomática que seguimos (Buser y Costa), la propiedad introducida históricamente por Pasch como axioma se demuestra como un teorema deducido del **Axioma de Separación del Plano (P4)**.

##### Teorema 2.16 ("Axioma de Pasch")

_Dado un triángulo $\Delta{P, Q, R}$ y una recta $r \subset \mathbf{P}$. Si la recta $r$ no pasa por ningún vértice del triángulo y corta al lado $[P, Q]$, entonces $r$ corta a uno (y solo a uno) de los otros dos lados, $[Q, R]$ o $[R, P]$_.

##### Demostración Axiomática basada en P4:

1. **Separación en Semiplanos:** Consideremos los dos semiplanos disjuntos $H^1$ y $H^2$ determinados por la recta $r$, garantizados por el Axioma P4, tales que $\mathbf{P} \setminus r = H^1 \cup H^2$.
2. **Posición de los Extremos del Lado Cortado:** Dado que por hipótesis la recta $r$ corta al segmento $[P, Q]$ en un punto interior (y los vértices no están sobre $r$), los puntos $P$ y $Q$ se encuentran en **lados contrarios de $r$**. Sin pérdida de generalidad, supongamos que: $$P \in H^1 \quad \text{y} \quad Q \in H^2$$
3. **Análisis del Tercer Vértice ($R$):** Como el vértice $R$ no pertenece a la recta $r$, por la partición del plano en P4(1), $R$ debe pertenecer a uno de los dos semiplanos:
    - **Caso A ($R \in H^1$):** Dado que $Q \in H^2$ y $R \in H^1$, los vértices $Q$ y $R$ están en semiplanos opuestos respecto de $r$. Por la condición P4(3), el segmento $[Q, R]$ interseca a la recta $r$ ($[Q, R] \cap r \neq \emptyset$). Además, como $P \in H^1$ y $R \in H^1$, por la condición de convexidad P4(2), el segmento $[P, R]$ no interseca a $r$ ($[P, R] \cap r = \emptyset$).
    - **Caso B ($R \in H^2$):** Por un razonamiento simétrico, $P \in H^1$ y $R \in H^2$, luego $[P, R]$ interseca a $r$ por P4(3), mientras que $Q \in H^2$ y $R \in H^2$ implican que $[Q, R]$ no interseca a $r$ por P4(2).
4. **Conclusión:** La recta $r$ interseca a exactamente uno de los otros dos lados, $[Q, R]$ o $[R, P]$, quedando el teorema completamente demostrado. $\blacksquare$

---

#### 4. Relevancia en la Fundamentación del Orden y la Topología (10 minutes)

- **Continuidad de Fronteras:** El Teorema de Pasch asegura de forma rigurosa que las rectas del plano no presentan "huecos" y que las regiones cerradas (como las triangulares) aíslan su interior del exterior.
- **Generalización a Polígonos:** Este teorema es el pilar para demostrar que una recta secante a una diagonal de un polígono convexo debe cortar a su frontera (fundamento del Teorema de la Barra Transversal y de las triangulaciones poligonales).
- **Ausencia de Paradojas Visuales:** Evita falacias clásicas de demostraciones defectuosas (como la famosa "demostración" falsa de que todos los triángulos son isósceles, que falla precisamente al asumir erróneamente qué semirrectas cortan a qué lados sin aplicar Pasch).

---

### Materiales generados e incorporados al Estudio:

- [**Presentación**](Presentaciones/Sesión13_Axioma_de_Pasch.pptx): He despachado la creación del slide deck **"13. El Axioma de Pasch y su Relevancia en el Orden"**, estructurado rigurosamente según el _Manual de Estilo de Presentaciones UNED_ (organización en 7 diapositivas con el contexto histórico de Pasch, definición formal de triángulo, enunciado del Teorema 2.16, demostración sintética apoyada en $H^1$ y $H^2$, e impacto en el rigor geométrico).
- [**Resumen de audio**](Audios/Sesión13_Axioma_de_Pasch.m4a) Se ha procesado el episodio en formato **Deep Dive** en español, donde dos locutores debaten sobre las lagunas en los _Elementos_ de Euclides, cómo Moritz Pasch formalizó el orden y la lógica impecable de la demostración mediante el Axioma P4.

