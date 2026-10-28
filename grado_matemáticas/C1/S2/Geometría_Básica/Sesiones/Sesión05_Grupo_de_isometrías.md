Para esta **Sesión 5**, abordamos un concepto fundamental en la geometría moderna: el estudio de las transformaciones que preservan la estructura métrica de un espacio, denominadas **isometrías**, y la estructura algebraica que forman bajo la composición: el **Grupo de Isometrías**.

---

### Sesión 5 (Teoría): Isometrías y Concepto de Grupo de Isometrías

**Objetivo:** Comprender la definición formal de aplicación que conserva la distancia, demostrar sus propiedades algebraicas básicas y formalizar la estructura del conjunto de isometrías de un espacio métrico como un grupo abstracto.

---

#### 1. Conservación de Distancias e Inyectividad (10 minutos)

Cuando se estudia cualquier estructura matemática, es esencial analizar las aplicaciones entre conjuntos que la preservan. En el contexto de los espacios métricos, la propiedad central a conservar es la distancia entre puntos.

##### Definición 1 (Aplicación que conserva distancias)

Sean \((M, d_M)\) y \((N, d_N)\) dos espacios métricos y \(f: M \to N\) una aplicación. Se dice que \(f\) **conserva las distancias** si para todo par de puntos \(A, B \in M\) se satisface:

\[d_N(f(A), f(B)) = d_M(A, B)\]

##### Proposición (Inyectividad automática)

_Toda aplicación \(f: M \to N\) que conserva las distancias es necesariamente **inyectiva**._

**Demostración:** Sean \(A, B \in M\) tales que \(f(A) = f(B)\). Aplicando el primer axioma de espacio métrico en \(N\) y la conservación de distancias: \[d_M(A, B) = d_N(f(A), f(B)) = d_N(f(A), f(A)) = 0\] Por el axioma de positividad e identidad de los indiscernibles en \(M\), \(d_M(A, B) = 0 \implies A = B\). Por tanto, \(f\) es inyectiva. \(\blacksquare\)

---

#### 2. Definición Formal de Isometría (10 minutos)

Dado que toda aplicación que conserva distancias es inyectiva, para que sea una biyección solo se requiere que sea sobreyectiva.

##### Definición 2 (Isometría)

Una aplicación \(f: (M, d_M) \to (N, d_N)\) es una **isometría** si es biyectiva y conserva las distancias.

Si existe una isometría entre dos espacios métricos \((M, d_M)\) y \((N, d_N)\), decimos que ambos espacios son **isométricos**. Desde el punto de vista geométrico, dos espacios métricos isométricos son indistinguibles en cuanto a sus propiedades métricas (longitudes, formas, ángulos inducidos).

---

#### 3. Propiedades Algebraicas de las Isometrías (10 minutos)

##### Teorema 1 (Composición e Inversa de Isometrías)

Sean \((M, d_M)\), \((M', d_{M'})\) y \((M'', d_{M''})\) espacios métricos.

1. Si \(f: M \to M'\) y \(g: M' \to M''\) son isometrías, entonces la aplicación composición \(g \circ f: M \to M''\) es una isometría.
2. Si \(f: M \to M'\) es una isometría, su aplicación inversa \(f^{-1}: M' \to M\) es también una isometría.

**Demostración:**

1. **Composición:** Como \(f\) y \(g\) son biyectivas, \(g \circ f\) es biyectiva. Además, para todo \(A, B \in M\): \[d_{M''}((g \circ f)(A), (g \circ f)(B)) = d_{M''}(g(f(A)), g(f(B))) = d_{M'}(f(A), f(B)) = d_M(A, B)\] Por tanto, \(g \circ f\) conserva las distancias y es una isometría.
2. **Inversa:** Dado que \(f\) es biyectiva, \(f^{-1}\) existe y es biyectiva. Para cualquier par \(A', B' \in M'\), existen \(A, B \in M\) tales que \(f(A) = A'\) y \(f(B) = B'\) (es decir, \(A = f^{-1}(A')\) y \(B = f^{-1}(B')\)). Entonces: \[d_M(f^{-1}(A'), f^{-1}(B')) = d_M(A, B) = d_{M'}(f(A), f(B)) = d_{M'}(A', B')\] Luego \(f^{-1}\) conserva la distancia y es una isometría. \(\blacksquare\)

---

#### 4. El Grupo de Isometrías \(\text{Isom}(M, d)\) (10 minutos)

El conjunto de todas las isometrías de un espacio métrico \((M, d)\) en sí mismo se denota por \(\text{Isom}(M, d)\):

\[\text{Isom}(M, d) = {f: M \to M : f \text{ es una isometría}}\]

##### Teorema 2 (Estructura de Grupo)

El conjunto \(\text{Isom}(M, d)\) dotado de la operación interna de **composición de aplicaciones** \((\circ)\) posee estructura de **grupo abstracto**.

- **Asociatividad:** Para todo \(f, g, h \in \text{Isom}(M, d)\), \((f \circ g) \circ h = f \circ (g \circ h)\) (propiedad general de la composición).
- **Elemento Neutro:** La aplicación identidad \(\text{Id}_M: M \to M\) (definida por \(\text{Id}_M(x) = x\)) pertenece a \(\text{Isom}(M, d)\) y cumple \(f \circ \text{Id}_M = \text{Id}_M \circ f = f\) para todo \(f \in \text{Isom}(M, d)\).
- **Elemento Inverso:** Para cada \(f \in \text{Isom}(M, d)\), existe su inversa \(f^{-1} \in \text{Isom}(M, d)\) tal que \(f \circ f^{-1} = f^{-1} \circ f = \text{Id}_M\).

---

#### 5. Ilustración Inicial: Isometrías en la Recta Real \((\mathbb{R}, d_E)\) (5 minutos)

Para comprender este grupo abstracto, consideremos el espacio métrico \((\mathbb{R}, d_E)\) con la métrica euclídea habitual \(d_E(x, y) = |x - y|\). En la recta real existen dos clases fundamentales de isometrías para cada \(t_0 \in \mathbb{R}\):

1. **Traslaciones:** \(\tau_{t_0}(x) = x + t_0\) (desplazan la recta sin cambiar la orientación).
2. **Simetrías Centrales:** \(\sigma_{t_0}(x) = -x + 2t_0\) (dejan fijo el punto \(t_0\) e invierten el sentido).

Cualquier isometría de la recta real euclídea puede expresarse mediante la fórmula general \(f(x) = (-1)^a x + t_0\), donde \(a \in {0, 1}\) y \(t_0 \in \mathbb{R}\).

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión05_Grupo_de_isometrías.pptx): Se ha despachado la presentación **"5. Isometrías y Concepto de Grupo de Isometrías"**, elaborada bajo el manual de estilo institucional de la UNED con desarrollo axiomático y notación LaTeX estructurada.
- [**Resumen en audio**](Audios/Sesión05_Grupo_de_isometrías.m4a): Se ha creado el episodio en formato **Deep Dive** en español, donde dos locutores conversan de forma fluida e intelectualmente estimulante sobre la conservación de distancias, la inyectividad y la elegancia de la estructura de grupo en las isometrías.

Ambos recursos están disponibles en tu panel de **Estudio**.

🧭 _¿Te gustaría que en la Sesión 6 (Práctica) resolvamos los ejercicios de clasificación y composición del grupo de isometrías de la recta real \(\text{Isom}(\mathbb{R}, d_E)\)?_