# **SESIÓN 52 (PRÁCTICA): TRABAJO CON INTERVALOS EN LA RECTA REAL Y GEOGEBRA**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 6: RACIONALES, REALES Y COMPLEJOS (Capítulos 6 y 7)  
**Objetivo:** Clasificar y caracterizar analíticamente los distintos tipos de intervalos en la recta real \(\mathbb{R}\) (acotados, infinitos, abiertos, cerrados y semiabiertos), resolver inecuaciones algebraicas y con valor absoluto expresando sus soluciones en notación de conjuntos e intervalos, calcular uniones e intersecciones finitas e infinitas (familias numerables) de intervalos aplicando la Propiedad Arquimediana, e integrar las representaciones gráficas y dinámicas en GeoGebra para la comprobación visual de regiones de la recta real.

---

### **1. Resumen Metodológico: Clasificación Analítica de Intervalos**

En el cuerpo ordenado de los números reales \((\mathbb{R}, \le)\), un **intervalo** es un subconjunto \(I \subseteq \mathbb{R}\) que goza de la propiedad de conexidad: si \(a, b \in I\) con \(a < b\), entonces todo real \(x \in \mathbb{R}\) tal que \(a < x < b\) también pertenece a \(I\).

#### **Tipología de Intervalos en \(\mathbb{R}\):**

1. **Intervalos Acotados (con \(a, b \in \mathbb{R}, a < b\)):**
    
    - **Abierto:** \((a, b) = {x \in \mathbb{R} \mid a < x < b}\)
    - **Cerrado:** \([a, b] = {x \in \mathbb{R} \mid a \le x \le b}\)
    - **Semiabierto por la izquierda / Semicerrado por la derecha:** \((a, b] = {x \in \mathbb{R} \mid a < x \le b}\)
    - **Semiabierto por la derecha / Semicerrado por la izquierda:** \([a, b) = {x \in \mathbb{R} \mid a \le x < b}\)
2. **Intervalos No Acotados / Infinitos:**
    
    - **Semirrecta abierta superior:** \((a, +\infty) = {x \in \mathbb{R} \mid x > a}\)
    - **Semirrecta cerrada superior:** \([a, +\infty) = {x \in \mathbb{R} \mid x \ge a}\)
    - **Semirrecta abierta inferior:** \((-\infty, b) = {x \in \mathbb{R} \mid x < b}\)
    - **Semirrecta cerrada inferior:** \((-\infty, b] = {x \in \mathbb{R} \mid x \le b}\)
    - **Toda la recta real:** \((-\infty, +\infty) = \mathbb{R}\)
3. **Entornos y Valor Absoluto:** Para un centro \(a \in \mathbb{R}\) y un radio \(r > 0\), el entorno abierto de centro \(a\) y radio \(r\) se define como: \[E_r(a) = (a - r, a + r) = {x \in \mathbb{R} \mid |x - a| < r}\] Análogamente, la inecuación \(|x - a| \le r\) corresponde al intervalo cerrado \([a - r, a + r]\).
    

---

### **2. Batería de Ejercicios Resueltos Paso a Paso (Examen UNED)**

#### **Ejercicio 1: Resolución de Inecuaciones con Valor Absoluto**

**Enunciado:** Resolver analíticamente las siguientes inecuaciones en \(\mathbb{R}\), expresando el conjunto solución mediante notación de intervalos y uniones de intervalos:

1. \(|2x - 5| \le 3\)
2. \(|x + 2| > 4\)

- **Resolución Paso a Paso:**
    
    **Apartado 1: \(|2x - 5| \le 3\)**
    
    1. Aplicamos la propiedad del valor absoluto \(|u| \le k \iff -k \le u \le k\) (para \(k \ge 0\)): \[-3 \le 2x - 5 \le 3\]
    2. Sumamos \(5\) a los tres miembros de la cadena de desigualdades: \[-3 + 5 \le 2x \le 3 + 5 \implies 2 \le 2x \le 8\]
    3. Dividimos entre \(2 > 0\) (manteniendo el sentido de las desigualdades): \[1 \le x \le 4\]
    4. **Conclusión:** El conjunto solución es el intervalo cerrado **\(S_1 =\)**.
    
    **Apartado 2: \(|x + 2| > 4\)**
    
    1. Aplicamos la propiedad de la desigualdad estricta \(|u| > k \iff u < -k \lor u > k\): \[(x + 2 < -4) \quad \lor \quad (x + 2 > 4)\]
    2. Despejamos \(x\) en ambas expresiones:
        - De \(x + 2 < -4 \implies x < -6\), que corresponde al intervalo \((-\infty, -6)\).
        - De \(x + 2 > 4 \implies x > 2\), que corresponde al intervalo \((2, +\infty)\).
    3. **Conclusión:** El conjunto solución es la unión de dos semirrectas abiertas disjuntas: \[S_2 = (-\infty, -6) \cup (2, +\infty) = \mathbb{R} \setminus [-6, 2]\]

---

#### **Ejercicio 2: Operaciones con Familias Numerables de Intervalos (Texto Base)**

**Enunciado:** Para cada número entero positivo \(n \in \mathbb{N}^* = {1, 2, 3, \dots}\), consideramos las siguientes familias de intervalos en \(\mathbb{R}\):

1. \(A_n = \left[ \frac{1}{n}, , 2 - \frac{1}{n} \right]\)
2. \(B_n = \left( -\frac{1}{n}, , 1 + \frac{1}{n} \right)\)

Determinar analíticamente la unión numerable \(\bigcup_{n \in \mathbb{N}^*} A_n\) y la intersección numerable \(\bigcap_{n \in \mathbb{N}^*} B_n\).

- **Resolución Paso a Paso:**
    
    __Apartado 1: Cálculo de \(A = \bigcup_{n \in \mathbb{N}^_} A_n\)_*
    
    1. Escribimos los primeros términos de la sucesión de intervalos cerrados \(A_n\):
        - Para \(n = 1\): \(A_1 = = {1}\)
        - Para \(n = 2\): \(A_2 = \left[ \frac{1}{2}, \frac{3}{2} \right]\)
        - Para \(n = 3\): \(A_3 = \left[ \frac{1}{3}, \frac{5}{3} \right]\)
    2. Observamos que la familia \(A_n\) es **monótona creciente** por inclusión: \[A_1 \subseteq A_2 \subseteq A_3 \subseteq \dots \subseteq A_n \subseteq A_{n+1} \subseteq \dots\]
    3. Al aumentar \(n \to \infty\), los extremos del intervalo tienden respectivamente a: \[\lim_{n \to \infty} \frac{1}{n} = 0, \quad \lim_{n \to \infty} \left(2 - \frac{1}{n}\right) = 2\]
    4. Verificamos si los puntos límite \(0\) y \(2\) pertenecen a algún \(A_n\):
        - Para ningún \(n \in \mathbb{N}^*\) se cumple \(\frac{1}{n} = 0\) o \(2 - \frac{1}{n} = 2\). Por lo tanto, \(0 \notin A_n\) y \(2 \notin A_n\) para todo \(n\).
        - Sin embargo, para cualquier \(x \in (0, 2)\), por la **Propiedad Arquimediana** (Sesión 51), existen \(n_1, n_2 \in \mathbb{N}^*\) tales que \(\frac{1}{n_1} < x\) y \(2 - \frac{1}{n_2} > x\), de modo que tomando \(N = \max(n_1, n_2)\), se garantiza que \(x \in A_N\).
    5. **Conclusión:** La unión de la familia es el intervalo abierto __\(A = \bigcup_{n \in \mathbb{N}^_} A_n = (0, 2)\)_*.
    
    __Apartado 2: Cálculo de \(B = \bigcap_{n \in \mathbb{N}^_} B_n\)_*
    
    6. Escribimos los primeros términos de la sucesión de intervalos abiertos \(B_n\):
        - Para \(n = 1\): \(B_1 = (-1, 2)\)
        - Para \(n = 2\): \(B_2 = \left(-\frac{1}{2}, \frac{3}{2}\right)\)
        - Para \(n = 3\): \(B_3 = \left(-\frac{1}{3}, \frac{4}{3}\right)\)
    7. La familia \(B_n\) es **monótona decreciente** por inclusión (\(B_1 \supseteq B_2 \supseteq B_3 \supseteq \dots\)).
    8. Los extremos izquierdo y derecho se aproximan a \(0\) y \(1\) respectivamente.
    9. Verificamos los puntos límite \(0\) y \(1\):
        - Para todo \(n \in \mathbb{N}^*\), \(-\frac{1}{n} < 0 < 1 + \frac{1}{n} \implies 0 \in B_n\).
        - Para todo \(n \in \mathbb{N}^*\), \(-\frac{1}{n} < 1 < 1 + \frac{1}{n} \implies 1 \in B_n\).
        - Todo \(x \in\) pertenece a \(B_n\) para todo \(n \in \mathbb{N}^*\).
        - Si \(x < 0\) o \(x > 1\), por la Propiedad Arquimediana existe un entero \(N \in \mathbb{N}^*\) tal que \(x \notin B_N\).
    10. **Conclusión:** La intersección de la familia de intervalos abiertos es el intervalo cerrado __\(B = \bigcap_{n \in \mathbb{N}^_} B_n =\)_*.

---

### **3. Representación e Integración Práctica en GeoGebra**

GeoGebra permite la visualización rápida de desigualdades e intervalos sobre el eje de abscisas \(OX\):

#### **Sintaxis de Comandos en la Vista Algebraica de GeoGebra:**

1. **Definición de Inecuaciones y Regiones en 1D:**
    - Para graficar el intervalo \(\): escribir la desigualdad compuesta `1 <= x <= 4`. GeoGebra sombreará automáticamente la banda/franja correspondiente en el plano y resaltará el segmento en el eje real.
    - Para la unión \((-\infty, -6) \cup (2, +\infty)\): escribir `x < -6 || x > 2` (donde `||` representa el conector lógico de disyunción \(\lor\)).
2. **Uso de Deslizadores para Familias de Intervalos \(A_n\):**
    - Crear un deslizador entero `n` con valores de \(1\) a \(50\) y paso \(1\).
    - Definir el intervalo dependiente del parámetro `n`: `1/n <= x <= 2 - 1/n`.
    - Al deslizar `n`, se observa de forma dinámica la expansión del intervalo cerrado interno hacia las fronteras abiertas \((0, 2)\).

---

### **4. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Resolver la inecuación \(|3x - 1| \ge 5\) y expresar el resultado como unión de semirrectas.
2. **Ejercicio 2 (Ejercicio 14 del Capítulo 2 del texto base):** Sean los intervalos \(C_n = \left(0, \frac{1}{n}\right)\) y \(D_n = \left(-\frac{1}{n}, \frac{1}{n}\right)\) para todo \(n \in \mathbb{N}^*\). Determinar analíticamente: \[\bigcup_{n \in \mathbb{N}^*} C_n, \quad \bigcap_{n \in \mathbb{N}^*} C_n, \quad \bigcup_{n \in \mathbb{N}^*} D_n, \quad \bigcap_{n \in \mathbb{N}^*} D_n\]
3. **Ejercicio 3:** Determinar el conjunto solución de la inecuación \(\frac{x - 1}{x + 2} \le 0\) en \(\mathbb{R}\).

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea la familia numerable de intervalos cerrados \(A_n = \left[ \frac{1}{n}, 1 \right]\) para todo \(n \in \mathbb{N}^*\). ¿Cuál es el resultado exacto de la unión numerable \(\bigcup_{n \in \mathbb{N}^*} A_n\)?

- **A)** \(\)
- **B)** \((0, 1]\)
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Para \(n = 1\), \(A_1 = = {1}\). Para \(n = 2\), \(A_2 = [\frac{1}{2}, 1]\), etc.
> - A medida que \(n \to \infty\), el extremo inferior \(\frac{1}{n}\) se aproxima a \(0\), pero __para ningún \(n \in \mathbb{N}^_\) el valor \(\frac{1}{n}\) es exactamente \(0\)_*.
> - Por tanto, \(0 \notin A_n\) para todo \(n\), por lo que \(0\) no puede pertenecer a la unión.
> - Sin embargo, para cualquier real \(x\) con \(0 < x \le 1\), existe por la Propiedad Arquimediana un \(N \in \mathbb{N}^*\) tal que \(\frac{1}{N} < x\), de modo que \(x \in A_N\).
> - Por consiguiente, el resultado exacto es el intervalo semiabierto **\((0, 1]\)**.
> - Por lo tanto, la opción **B** es la **correcta**.

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión52_Intervalos_recta_real.pptx) Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_ y la notación LaTeX requerida (`$` para fórmulas en línea y `$$` para bloques), con la jerarquía del Bloque 6, recuadros normativos para la tipología de intervalos, resolución de inecuaciones absolutas, uniones e intersecciones numerables y sintaxis de comandos para GeoGebra.
- [**Resumen de audio**](Audios/Sesión52_Intervalos_recta_real.m4a): Enfocado en el análisis analítico de los intervalos en \(\mathbb{R}\), la geometría de los entornos con valor absoluto \(|x - a| < r\), la resolución de límites de familias numerables de intervalos mediante la Propiedad Arquimediana, el uso de deslizadores dinámicos en GeoGebra y las pautas de redacción formal para el examen de desarrollo de la UNED.

---
