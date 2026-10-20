# **SESIÓN 54 (TEORÍA): REPRESENTACIÓN GEOMÉTRICA Y FORMA BINÓMICA DE LOS COMPLEJOS**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 6: RACIONALES, REALES Y COMPLEJOS (Capítulos 6 y 7)  
**Objetivo:** Interpretar geométricamente el conjunto de los números complejos \(\mathbb{C}\) en el **Diagrama de Argand** (plano complejo), relacionar los **afijos** de puntos y vectores con la forma binómica \(z = a + bi\), analizar el comportamiento geométrico de las operaciones binómicas (suma vectorial y opuesto), formalizar la definición y propiedades del **conjugado \(\bar{z} = a - bi\)** como simetría respecto al eje real, definir el **módulo \(|z| = \sqrt{a^2 + b^2}\)** como norma euclídea, demostrar la identidad fundamental \(z \cdot \bar{z} = |z|^2\) y la **desigualdad triangular**, y dominar el algoritmo práctico de división binómica multiplicando por el conjugado del denominador.

---

### **1. El Plano Complejo o Diagrama de Argand**

Así como los números reales \(\mathbb{R}\) se representan en correspondencia biunívoca con los puntos de una recta unidimensional, la estructura de \(\mathbb{C} = \mathbb{R}^2\) permite establecer una correspondencia biunívoca entre los números complejos y los puntos del plano euclídeo.

#### **Definición 7.4 / Sección 7.3 (Afijo y Plano de Argand):**

_Se llama **Plano Complejo** o **Diagrama de Argand** a la representación gráfica de \(\mathbb{C}\) en un sistema de ejes cartesianos ortogonales:_

- **Eje Real (Eje de Abscisas \(OX\)):** Contiene a los números reales puros \((a, 0) \equiv a\).
- **Eje Imaginario (Eje de Ordenadas \(OY\)):** Contiene a los números imaginarios puros \((0, b) \equiv bi\).

Dado un número complejo en forma binómica \(z = a + bi \in \mathbb{C}\) (con \(a, b \in \mathbb{R}\)):

1. **Afijo del Punto:** Se llama _afijo_ de \(z\) al punto del plano \(P(a, b) \in \mathbb{R}^2\).
2. **Vector de Posición:** Se llama _vector afijo_ de \(z\) al vector libre \(\vec{v} = \vec{OP} = (a, b)\) con origen en \((0, 0)\) y extremo en \(P(a, b)\).

> **Espacio Vectorial:** El par \((\mathbb{C}, +, \cdot_{\mathbb{R}})\) posee estructura de **espacio vectorial real de dimensión 2** isomorfo a \(\mathbb{R}^2\), donde la base canónica viene dada por el conjunto \({1, i}\).

---

### **2. Interpretación Geométrica de las Operaciones en Forma Binómica**

Las operaciones algebraicas definidas en \(\mathbb{C}\) admiten una lectura geométrica transparente sobre el Diagrama de Argand:

1. **Suma de Números Complejos (Ley del Paralelogramo):** Dados \(z_1 = a + bi\) y \(z_2 = c + di\), su suma es: \[z_1 + z_2 = (a + c) + (b + d)i\] Geométricamente, el vector de posición de \(z_1 + z_2\) coincide exactamente con la **suma vectorial de los vectores afijos** \(\vec{OP_1} + \vec{OP_2}\) mediante la regla del paralelogramo.
    
2. **Opuesto de un Número Complejo (Simetría respecto al Origen):** El opuesto de \(z = a + bi\) es \(-z = -a - bi\). Geométricamente, el punto afijo de \(-z\) es el **simétrico central** de \(P(a, b)\) respecto al origen de coordenadas \((0, 0)\).
    
3. **Diferencia de Números Complejos:** La resta \(z_1 - z_2 = z_1 + (-z_2)\) equivale a sumar al vector de \(z_1\) el vector opuesto de \(z_2\). El vector que une el extremo de \(z_2\) con el extremo de \(z_1\) representa la diferencia \(z_1 - z_2\).
    

---

### **3. El Conjugado de un Número Complejo (\(\bar{z}\))**

#### **Definición 7.5 (Conjugado):**

_Sea \(z = a + bi \in \mathbb{C}\) un número complejo dado en forma binómica. Se define su **conjugado**, y se denota por \(\bar{z}\) (o \(z^_\)), como el número complejo:* \[\bar{z} = a - bi\]

#### **Interpretación Geométrica:**

El afijo del conjugado \(\bar{z} = (a, -b)\) es la **reflexión o simetría axial** del afijo \(z = (a, b)\) respecto del **eje real (eje \(OX\))**.

---

#### **Proposición 7.6 (Propiedades Algebraicas del Conjugado):**

Para cualesquiera \(z, z_1, z_2 \in \mathbb{C}\), se verifican las siguientes identidades:

1. **Involución (Doble Conjugación):** \[\bar{\bar{z}} = z\]
2. **Compatibilidad con la Suma y Resta:** \[\overline{z_1 + z_2} = \bar{z}_1 + \bar{z}_2, \quad \overline{z_1 - z_2} = \bar{z}_1 - \bar{z}_2\]
3. **Compatibilidad con el Producto y Cociente:** \[\overline{z_1 \cdot z_2} = \bar{z}_1 \cdot \bar{z}_2, \quad \overline{\left(\frac{z_1}{z_2}\right)} = \frac{\bar{z}_1}{\bar{z}_2} \quad (z_2 \neq 0)\]
4. **Caracterización de Reales e Imaginarios Puros:**
    - \(z \in \mathbb{R} \iff \bar{z} = z\)  
        _(Un complejo es real puro si y solo si es igual a su conjugado)._
    - \(z \in i\mathbb{R} \iff \bar{z} = -z\)  
        _(Un complejo es imaginario puro si y solo si es igual al opuesto de su conjugado)._
5. **Expresión de la Parte Real e Imaginaria:** \[\text{Re}(z) = \frac{z + \bar{z}}{2}, \quad \text{Im}(z) = \frac{z - \bar{z}}{2i}\]

---

### **4. El Módulo de un Número Complejo (\(|z|\))**

#### **Definición 7.7 (Módulo):**

_Sea \(z = a + bi \in \mathbb{C}\) un número complejo en forma binómica. Se define el **módulo** de \(z\), y se representa por \(|z|\), como el número real no negativo:_ \[|z| = \sqrt{a^2 + b^2}\]

#### **Interpretación Geométrica:**

El módulo \(|z|\) representa la **distancia euclídea** desde el origen de coordenadas \(O(0,0)\) hasta el afijo \(P(a, b)\), es decir, la longitud o norma del vector de posición \(\vec{OP}\).  
Asimismo, el módulo de la diferencia \(|z_1 - z_2|\) representa la **distancia entre los afijos \(P_1\) y \(P_2\)** en el plano complejo.

---

#### **Proposición 7.8 (Relación Fundamental entre Módulo y Conjugado):**

_Para todo número complejo \(z = a + bi \in \mathbb{C}\), el producto de \(z\) por su conjugado \(\bar{z}\) es un **número real no negativo** igual al cuadrado del módulo:_

\[z \cdot \bar{z} = (a + bi)(a - bi) = a^2 - (bi)^2 = a^2 - b^2(-1) = a^2 + b^2 = |z|^2\]

\[\mathbf{z \cdot \bar{z} = |z|^2}\]

---

#### **Proposición 7.9 (Propiedades del Módulo):**

Para cualesquiera \(z, z_1, z_2 \in \mathbb{C}\):

1. **No Negatividad y Separabilidad:** \(|z| \ge 0\), y \(|z| = 0 \iff z = 0\).
2. **Simetrías:** \(|\bar{z}| = |-z| = |-\bar{z}| = |z|\).
3. **Multiplicatividad:** \(|z_1 \cdot z_2| = |z_1| \cdot |z_2|\).
4. **Modulo del Inverso y Cociente:** \[|z^{-1}| = \frac{1}{|z|} \quad (z \neq 0), \quad \left|\frac{z_1}{z_2}\right| = \frac{|z_1|}{|z_2|} \quad (z_2 \neq 0)\]
5. **Acotación por las Partes Real e Imaginaria:** \[|\text{Re}(z)| \le |z|, \quad |\text{Im}(z)| \le |z|\]

---

#### **Teorema (Desigualdad Triangular en \(\mathbb{C}\)):**

_Para cualesquiera \(z_1, z_2 \in \mathbb{C}\), se satisface la desigualdad:_ \[|z_1 + z_2| \le |z_1| + |z_2|\]

- **Demostración Analítica Paso a Paso (Examen UNED):**
    
    1. Calculamos el cuadrado del módulo de la suma utilizando la relación con el conjugado: \[|z_1 + z_2|^2 = (z_1 + z_2) \cdot \overline{(z_1 + z_2)} = (z_1 + z_2)(\bar{z}_1 + \bar{z}_2)\]
    2. Desarrollamos el producto aplicando la distributividad: \[|z_1 + z_2|^2 = z_1 \bar{z}_1 + z_1 \bar{z}_2 + z_2 \bar{z}_1 + z_2 \bar{z}_2 = |z_1|^2 + |z_2|^2 + (z_1 \bar{z}_2 + \overline{z_1 \bar{z}_2})\]
    3. Aplicamos la propiedad \(w + \bar{w} = 2\text{Re}(w)\) al elemento \(w = z_1 \bar{z}_2\): \[|z_1 + z_2|^2 = |z_1|^2 + |z_2|^2 + 2\text{Re}(z_1 \bar{z}_2)\]
    4. Puesto que \(\text{Re}(w) \le |w|\), acotamos el término central: \[\text{Re}(z_1 \bar{z}_2) \le |z_1 \bar{z}_2| = |z_1| |\bar{z}_2| = |z_1| |z_2|\]
    5. Sustituyendo la desigualdad: \[|z_1 + z_2|^2 \le |z_1|^2 + |z_2|^2 + 2|z_1||z_2| = (|z_1| + |z_2|)^2\]
    6. Como ambos miembros son reales positivos, tomando la raíz cuadrada obtenemos: \[|z_1 + z_2| \le |z_1| + |z_2| \quad \blacksquare\]

---

### **5. Operaciones Binómicas Prácticas y la Técnica del Conjugado**

Para realizar la división de dos números complejos en forma binómica \(z_1 = a + bi\) y \(z_2 = c + di \neq 0\):

1. Multiplicamos el numerador y el denominador por el **conjugado del denominador** \(\bar{z}_2 = c - di\): \[\frac{a + bi}{c + di} = \frac{(a + bi)(c - di)}{(c + di)(c - di)}\]
2. El denominador se convierte en un número real puro estricto \(c^2 + d^2 > 0\): \[\frac{a + bi}{c + di} = \frac{(ac + bd) + (bc - ad)i}{c^2 + d^2} = \left(\frac{ac + bd}{c^2 + d^2}\right) + \left(\frac{bc - ad}{c^2 + d^2}\right)i\]

---

### **6. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Dados \(z_1 = 3 - 2i\) y \(z_2 = 1 + 4i\), representar en el plano de Argand los afijos de \(z_1\), \(z_2\), \(z_1 + z_2\), \(-z_1\) y \(\bar{z}_2\).
2. **Ejercicio 2:** Calcular en forma binómica el resultado de la expresión: \[z = \frac{(2 + 3i)(1 - i)}{3 + 2i}\] y determinar su módulo \(|z|\) y su conjugado \(\bar{z}\).
3. **Ejercicio 3 (Ejercicio 4 del Capítulo 7 del texto base):** Demostrar que para todo \(z \in \mathbb{C}\) con \(|z| = 1\) y \(z \neq -1\), el número complejo \(w = \frac{z - 1}{z + 1}\) es un **número imaginario puro**.

---

### **7. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sean \(z_1, z_2 \in \mathbb{C}\) dos números complejos no nulos. ¿Cuál de las siguientes afirmaciones es **siempre verdadera**?

- **A)** El producto de un complejo por su conjugado satisface \(z \cdot \bar{z} = \text{Re}(z)^2 - \text{Im}(z)^2\).
- **B)** Un número complejo \(z\) es un número real si y solo si coincide con su conjugado (\(z = \bar{z}\)).
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - La opción A es falsa porque \(z \cdot \bar{z} = |z|^2 = \text{Re}(z)^2 + \text{Im}(z)^2\) (con un signo de suma, no de resta).
> - Por la Proposición 7.6, \(z = a + bi\) cumple \(z = \bar{z} \iff a + bi = a - bi \iff 2bi = 0 \iff b = 0 \iff z \in \mathbb{R}\). Por tanto, la opción **B** es **correcta**.


## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión54_Representación_de_complejos.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_ y la notación LaTeX requerida (`$` para expresiones en línea y `$$` para bloques), con la jerarquía del Bloque 6, recuadros normativos para el Diagrama de Argand, la interpretación geométrica de las operaciones, las propiedades analíticas del conjugado \(\bar{z}\), la demostración de la relación \(z \cdot \bar{z} = |z|^2\), la prueba analítica de la desigualdad triangular y el algoritmo de división binómica.
- [**Resumen de audio**](Audios/Sesión54_Representación_de_complejos.m4a): Enfocado en la transición de la recta real al plano complejo de Argand, los afijos de puntos y vectores, las simetrías asociadas al opuesto y al conjugado, la norma euclídea del módulo, el truco algebraico de racionalizar el denominador multiplicando por el conjugado y consejos prácticos de redacción formal para el examen presencial de desarrollo de la UNED.

---
