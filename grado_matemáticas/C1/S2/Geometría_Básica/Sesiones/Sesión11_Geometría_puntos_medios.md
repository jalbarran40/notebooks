A continuación presento el desarrollo completo y riguroso para la **Sesión 11 (Práctica)** de nuestro **Plan de trabajo**, centrada en ejercitar el cálculo analítico de puntos medios y la caracterización de semirrectas mediante el Axioma de la Regla Graduada (P3).

---

# Sesión 11 (Práctica): Cálculo de Puntos Medios y Semirrectas

**Objetivo:** Desarrollar soltura en el cálculo analítico y demostración axiomática de propiedades de puntos medios, simétricos y semirrectas sobre una recta geométrica, utilizando la Isometría con la recta real \(\mathbb{R}\) proporcionada por el Axioma P3.

---

## 1. Marco Teórico Práctico: Referencia Afín y Coordenadas (10 minutos)

Recordemos que, fijada una recta \(r \subset \mathbf{P}\) y dos puntos distintos \(A, B \in r\) (\(A \neq B\)), el **Axioma P3 (Regla Graduada)** garantiza la existencia de una biyección isométrica \(\rho: r \to \mathbb{R}\) asociada a la referencia afín \(\mathcal{R} = {A, B}\), que satisface:

1. \(\rho(A) = 0\) (Origen de coordenadas).
2. \(\rho(B) = b = d(A, B) > 0\) (Unidad de medida y orientación).
3. Para cualesquiera \(X, Y \in r\), \(d(X, Y) = |\rho(X) - \rho(Y)|\).

Denotaremos por \(x = \rho(X)\) la coordenada real única de cada punto \(X \in r\).

---

## 2. Bloque Práctico 1: Puntos Medios y Problemas de Extensión (15 minutos)

### Ejercicio 1.1 (Cálculo Directo e Inverso del Punto Medio)

_Sean \(A, B \in \mathbf{P}\) dos puntos distintos con coordenadas \(a = \rho(A)\) y \(b = \rho(B)\) sobre una recta \(r\)._

1. **Deducción de la coordenada del punto medio:** Buscamos \(M \in r\) tal que \(d(A, M) = d(M, B)\) y \(M \in [A, B]\). Escribiendo la condición métrica en coordenadas: \[|m - a| = |m - b| \implies (m - a)^2 = (m - b)^2 \implies -2am + a^2 = -2bm + b^2\] Despejando \(m\) (ya que \(a \neq b\)): \[m = \frac{a + b}{2}\] El punto medio \(M = \text{medio}[A, B]\) tiene como coordenada el **promedio aritmético** de las coordenadas de los extremos.
    
2. **Problema de extensión de un segmento (Punto Simétrico):** _Hallar la coordenada del único punto \(A' \in r\) tal que \(B\) es el punto medio del segmento \([A, A']\)._
    
    **Solución:** Aplicando la definición de punto medio a la terna \(A, B, A'\), se requiere que \(b = \rho(B) = \text{medio}[A, A']\): \[b = \frac{a + a'}{2} \implies 2b = a + a' \implies a' = 2b - a\] Por tanto, la coordenada del punto simétrico \(A'\) es \(a' = 2b - a\).
    

### Ejercicio 1.2 (División de un Segmento en Partes Iguales)

_Dados \(A, B \in r\) con \(a = 0\) y \(b = 12\), determinar las coordenadas de los puntos \(P_1, P_2, P_3\) que dividen al segmento \([A, B]\) en cuatro partes de igual longitud._

**Solución:** La longitud total del segmento es \(d(A, B) = |12 - 0| = 12\). Cada subintervalo debe medir \(\frac{12}{4} = 3\).

- \(P_2 = \text{medio}[A, B] \implies p_2 = \frac{0 + 12}{2} = 6\).
- \(P_1 = \text{medio}[A, P_2] \implies p_1 = \frac{0 + 6}{2} = 3\).
- \(P_3 = \text{medio}[P_2, B] \implies p_3 = \frac{6 + 12}{2} = 9\).

---

## 3. Bloque Práctico 2: Semirrectas y Posición Relativa (15 minutos)

### Ejercicio 2.1 (Caracterización de Semirrectas)

_Dado un punto \(V \in r\) con coordenada \(v = \rho(V)\), la recta queda dividida en dos semirrectas opuestas con vértice \(V\):_ \[\vec{r}_V^+ = {X \in r : \rho(X) > v} \quad \text{y} \quad \vec{r}_V^- = {X \in r : \rho(X) < v}\]

1. **Puntos del mismo lado:** Dos puntos \(P, Q \in r \setminus {V}\) están del **mismo lado** respecto de \(V\) si pertenecen a la misma semirrecta (es decir, si \((\rho(P) - v)\) y \((\rho(Q) - v)\) tienen el mismo signo).
2. **Puntos en lados contrarios:** Están en **lados contrarios** respecto de \(V\) si pertenecen a semirrectas distintas (sus diferencias respecto a \(v\) tienen signos opuestos).

### Ejercicio 2.2 (Teorema del Criterio de Separación por Vértice)

_Demostrar que dos puntos \(X, Y \in r \setminus {V}\) están en lados contrarios respecto de \(V\) si y solo si \(V \in [X, Y]\)._

**Demostración:**

- \((\implies)\) Si \(X, Y\) están en lados contrarios respecto de \(V\), supongamos sin pérdida de generalidad que \(\rho(X) < v < \rho(Y)\). Calculamos las distancias: \[d(X, V) = v - \rho(X), \quad d(V, Y) = \rho(Y) - v\] Sumando ambas expresiones: \[d(X, V) + d(V, Y) = (v - \rho(X)) + (\rho(Y) - v) = \rho(Y) - \rho(X) = d(X, Y)\] Por la definición métrica de segmento, esto equivale estrictamente a que \(V \in [X, Y]\).
- \((\impliedby)\) Si \(V \in [X, Y]\), entonces \(d(X, V) + d(V, Y) = d(X, Y)\), lo que en coordenadas implica \(|\rho(X) - v| + |v - \rho(Y)| = |\rho(X) - \rho(Y)|\). Esto solo es posible si \(v\) está estrictamente comprendido entre \(\rho(X)\) y \(\rho(Y)\), luego \(X\) e \(Y\) se encuentran en semirrectas opuestas respecto de \(V\). \(\blacksquare\)

---

## 4. Resumen Ejecutivo y Consejos para Exámenes de la UNED (5 minutos)

|Concepto|Expresión Afín (\(\rho\))|Condición Geométrica Equivalent|
|:--|:--|:--|
|**Punto Medio \(M = \text{medio}[A, B]\)**|\(m = \frac{\rho(A) + \rho(B)}{2}\)|\(d(A, M) = d(M, B)\) y \(M \in [A, B]\)|
|**Simétrico de \(A\) respecto a \(B\) (\(A'\))**|\(a' = 2\rho(B) - \rho(A)\)|\(B = \text{medio}[A, A']\)|
|**Semirrecta \(\vec{r}_V^B\)**|\({X \in r : \rho(X) > \rho(V)}\) (si \(\rho(B) > \rho(V)\))|Puntos \(X\) del mismo lado que \(B\) respecto a \(V\)|
|**Lados contrarios respecto a \(V\)**|\((\rho(X) - v)(\rho(Y) - v) < 0\)|\(V \in [X, Y]\)|

> **Advertencia Metodológica:** En los exámenes presenciales de la UNED, al resolver ejercicios sobre la recta, debes indicar explícitamente cuando utilices la biyección \(\rho\) del Axioma P3 para justificar que las operaciones algebraicas en \(\mathbb{R}\) preservan las distancias métricas en \(r\).

---

## Materiales de apoyo

1. [**Presentación**](Presentaciones/Sesión11_Geometría_puntos_medios.pptx): He generado la presentación **"11. Práctica: Cálculo de Puntos Medios y Semirrectas"** en tu panel de Estudio, diseñada bajo las directrices del _Manual de Estilo de Presentaciones UNED_ (notación LaTeX rigurosa, bloques de ejercicios paso a paso y cuadro resumen afín).
2. [**Resumen de audio**](Audios/Sesión11_Geometría_puntos_medios.m4a): Se ha despachado el episodio en formato **Deep Dive** en español, donde dos locutores analizan detalladamente la aplicación práctica del Axioma P3, la deducción de las fórmulas del punto medio y simétrico, y los criterios de separación de semirrectas.

