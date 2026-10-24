# **SESIÓN 57 (PRÁCTICA): APLICACIONES GEOMÉTRICAS DE LOS NÚMEROS COMPLEJOS**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 6: RACIONALES, REALES Y COMPLEJOS (Capítulos 6 y 7)  
**Objetivo:** Utilizar la correspondencia biunívoca entre el cuerpo de los números complejos $\mathbb{C}$ y el plano cartesiano $\mathbb{R}^2$ para resolver problemas geométricos, caracterizar el afijo de vectores y del punto medio, calcular distancias y ángulos orientados, determinar condiciones analíticas de alineación de puntos y perpendicularidad de rectas, y expresar movimientos planos (traslaciones, rotaciones, homotecias, semejanzas y simetrías axiales) mediante transformaciones complejas.

---

### **1. Resumen Metodológico: Geometría Analítica en el Plano Complejo**

Dado el sistema de referencia ortonormal ${O; e_1, e_2}$ en el plano euclídeo, cada número complejo $z = x + iy \in \mathbb{C}$ se identifica con el punto $P(x, y)$ o con el vector libre de posición $\vec{OP} = (x, y)$.

#### **A) Puntos, Vectores y Segmentos:**

1. **Vector entre dos puntos:** Dados dos puntos de afijos $z_A, z_B \in \mathbb{C}$, el vector $\vec{AB}$ tiene por afijo: $$z_{\vec{AB}} = z_B - z_A$$
2. **Punto Medio de un Segmento:** El afijo $z_I$ del punto medio $I$ del segmento $AB$ viene dado por la media aritmética de sus afijos: $$z_I = \frac{z_A + z_B}{2}$$
3. **Distancia entre dos Puntos:** La longitud o distancia $d(A, B)$ entre $A$ y $B$ es el módulo de la diferencia de sus afijos: $$d(A, B) = |\vec{AB}| = |z_B - z_A|$$

---

#### **B) Ángulos Orientados y Condiciones de Alineación y Perpendicularidad:**

1. **Medida de Ángulos Orientados:** Dados tres puntos distintos $A, B, C \in \mathbb{C}$ de afijos $z_A, z_B, z_C$: $$\text{Medida del ángulo } (\vec{AB}, \vec{AC}) = \arg(z_C - z_A) - \arg(z_B - z_A) = \arg\left(\frac{z_C - z_A}{z_B - z_A}\right) \quad [\text{mód } 2\pi]$$
    
2. **Condición de Alineación de Tres Puntos:** Los puntos $A, B, C$ están alineados si y solo si los vectores $\vec{AB}$ y $\vec{AC}$ son colineales (el ángulo es $0$ o $\pi$), lo que equivale a que el cociente de sus afijos sea un **número real**: $$A, B, C \text{ alineados} \iff \frac{z_C - z_A}{z_B - z_A} \in \mathbb{R} \iff \text{Im}\left(\frac{z_C - z_A}{z_B - z_A}\right) = 0$$
    
3. **Condición de Perpendicularidad de Rectas:** Las rectas $AB$ y $AC$ son perpendiculares ($AB \perp AC$) si y solo si el ángulo entre sus vectores es $\pm \frac{\pi}{2}$, lo que equivale a que el cociente de sus afijos sea un **número imaginario puro**: $$AB \perp AC \iff \frac{z_C - z_A}{z_B - z_A} \in i\mathbb{R} \iff \text{Re}\left(\frac{z_C - z_A}{z_B - z_A}\right) = 0$$
    

---

#### **C) Movimientos y Transformaciones Geométricas en $\mathbb{C}$:**

Sea $z \in \mathbb{C}$ el afijo de un punto $P$ y $z' \in \mathbb{C}$ el afijo de su transformado $P'$:

1. **Traslación de Vector $\vec{v}$ (afijo $v \in \mathbb{C}$):** $$z' = z + v$$
2. **Rotación / Giro de Centro $\Omega$ (afijo $w \in \mathbb{C}$) y Ángulo $\alpha \in \mathbb{R}$:** $$z' - w = e^{i\alpha}(z - w) \iff z' = e^{i\alpha}(z - w) + w$$ _(Si el centro es el origen $O(0,0) \implies w = 0 \implies z' = e^{i\alpha} z$)._
3. __Homotecia de Centro $\Omega$ (afijo $w \in \mathbb{C}$) y Razón $k \in \mathbb{R}^*$: $$z' - w = k(z - w) \iff z' = k(z - w) + w$$
4. **Semejanza Directa de Centro $O$, Razón $r > 0$ y Ángulo $\alpha$:**  
    Composición de una homotecia de razón $r$ y un giro de ángulo $\alpha$: $$z' = w_0 z \quad \text{con } w_0 = r e^{i\alpha} \in \mathbb{C}$$
5. **Simetría Axial respecto al Eje Real ($OX$):** $$z' = \bar{z}$$
6. **Simetría Axial respecto a una Recta $p$ que pasa por el Origen con Ángulo $\alpha$:** $$z' = e^{i 2\alpha} \bar{z}$$

---

### **2. Batería de Ejercicios Resueltos Paso a Paso (Examen UNED)**

#### **Ejercicio 1: Paralelogramo y Punto Medio (Texto Base 7.15 / 7.16)**

**Enunciado:** Dados tres puntos en el plano complejo $A, B, C$ de afijos $z_A = 1 + i$, $z_B = 3 + 2i$ y $z_C = 2 + 4i$:

1. Hallar las coordenadas del punto $D$ (afijo $z_D$) para que $ABCD$ sea un paralelogramo.
2. Calcular las coordenadas del centro $I$ del paralelogramo.

- **Resolución Paso a Paso:**
    1. Para que $ABCD$ sea un paralelogramo, se debe cumplir la igualdad vectorial $\vec{AB} = \vec{DC}$.
    2. Igualando los afijos correspondientes: $$z_B - z_A = z_C - z_D \implies z_D = z_C - z_B + z_A$$
    3. Sustituyendo los datos numéricos: $$z_D = (2 + 4i) - (3 + 2i) + (1 + i) = (2 - 3 + 1) + (4 - 2 + 1)i = 0 + 3i$$ Por tanto, el punto es **$D(0, 3)$**.
    4. El centro $I$ del paralelogramo es el punto medio de la diagonal $AC$ (o de $BD$): $$z_I = \frac{z_A + z_C}{2} = \frac{(1 + i) + (2 + 4i)}{2} = \frac{3 + 5i}{2} = \frac{3}{2} + \frac{5}{2}i$$ Por tanto, las coordenadas del centro son **$I\left(\frac{3}{2}, \frac{5}{2}\right)$**.

---

#### **Ejercicio 2: Verificación de Alineación y Perpendicularidad**

**Enunciado:** Estudiar la posición relativa de los puntos de afijos $z_A = 1 + 2i$, $z_B = 3 + 4i$ y $z_C = -1 + 0i$.

- **Resolución Paso a Paso:**
    1. Formamos los vectores $\vec{AB}$ y $\vec{AC}$ expresados como números complejos: $$z_B - z_A = (3 + 4i) - (1 + 2i) = 2 + 2i$$ $$z_C - z_A = (-1 + 0i) - (1 + 2i) = -2 - 2i$$
    2. Calculamos el cociente $\frac{z_C - z_A}{z_B - z_A}$: $$\frac{z_C - z_A}{z_B - z_A} = \frac{-2 - 2i}{2 + 2i} = \frac{-(2 + 2i)}{2 + 2i} = -1$$
    3. Puesto que el cociente es un **número real** ($-1 \in \mathbb{R}$), su parte imaginaria es nula y su argumento es $\pi$.
    4. **Conclusión:** Los puntos $A, B$ y $C$ están **estrictamente alineados** sobre la recta de ecuación $y = x + 1$.

---

#### **Ejercicio 3: Imagen de un Punto tras un Giro de Centro Arbitrario**

**Enunciado:** Obtener el afijo $z'$ del punto $P'$ resultante de aplicar al punto $P(3, 1)$ (afijo $z = 3 + i$) un giro de centro $\Omega(1, 2)$ (afijo $w = 1 + 2i$) y ángulo $\alpha = \frac{\pi}{2}$ ($90^\circ$).

- **Resolución Paso a Paso:**
    1. Aplicamos la fórmula de la rotación alrededor de un centro $w$: $$z' - w = e^{i\alpha}(z - w)$$
    2. Como $\alpha = \frac{\pi}{2}$, tenemos $e^{i \frac{\pi}{2}} = i$.
    3. Calculamos la diferencia $z - w$: $$z - w = (3 + i) - (1 + 2i) = 2 - i$$
    4. Multiplicamos por la unidad imaginaria $i$: $$i(z - w) = i(2 - i) = 2i - i^2 = 2i - (-1) = 1 + 2i$$
    5. Despejamos el afijo transformado $z'$ sumando $w$: $$z' = (1 + 2i) + w = (1 + 2i) + (1 + 2i) = 2 + 4i$$
    6. **Conclusión:** El punto transformado es **$P'(2, 4)$**.

---

### **3. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1 (Ejercicio 2.a del Capítulo 7 del texto base):** Determinar el parámetro real $a \in \mathbb{R}$ para que el número complejo $z = \frac{a + 6i}{2 - i}$ sea un número real puro, e interpretar geométricamente la posición del afijo sobre los ejes cartesianos.
2. **Ejercicio 2 (Ejercicio 9 del Capítulo 7 del texto base):** Sean $P$ y $Q$ los puntos de afijos $z$ y $1 + z^2$ respectivamente.
    - a) Hallar el conjunto de puntos $P$ tales que las rectas $OP$ y $OQ$ sean perpendiculares.
    - b) Hallar el conjunto de puntos $P$ tales que $O, P$ y $Q$ estén alineados.
3. **Ejercicio 3 (Simetría respecto a una recta):** Hallar la expresión del punto transformado de $z = 2 + 3i$ mediante la simetría axial respecto a la recta que pasa por el origen formando un ángulo de $45^\circ$ ($\alpha = \frac{\pi}{4}$) con el eje real.

---

### **4. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Tres puntos distintos del plano complejo de afijos $z_A, z_B, z_C \in \mathbb{C}$ satisfacen la condición $\frac{z_C - z_A}{z_B - z_A} = 2i$. ¿Cuál de las siguientes afirmaciones es **siempre verdadera**?

- **A)** Los puntos $A, B$ y $C$ están alineados sobre una misma recta.
- **B)** El triángulo de vértices $A, B$ y $C$ es rectángulo en el vértice $A$, y el lado $AC$ mide el doble que el lado $AB$.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Calculamos la parte real e imaginaria del cociente: $\frac{z_C - z_A}{z_B - z_A} = 0 + 2i \in i\mathbb{R}$.
> - Como la parte real es nula, el argumento es $\arg(2i) = \frac{\pi}{2}$. Por consiguiente, las rectas $AC$ y $AB$ forman un ángulo recto en el vértice $A$ ($AC \perp AB$).
> - Pasando a módulos: $$\left|\frac{z_C - z_A}{z_B - z_A}\right| = |2i| = 2 \implies \frac{|z_C - z_A|}{|z_B - z_A|} = 2 \implies d(A, C) = 2 \cdot d(A, B)$$
> - Por lo tanto, el triángulo es rectángulo en $A$ y la longitud del cateto $AC$ es el doble de $AB$.
> - Por lo tanto, la opción **B** es la **correcta**.


## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión57_Aplicaciones_geométricas.pptx): Maquetada en estricta conformidad con el _AAA_Manual_de_Estilo_Presentaciones_ y con notación LaTeX (`$` para expresiones en línea y `$$` para bloques), estructurando las relaciones entre afijos, puntos medios, distancias, condiciones analíticas de alineación y perpendicularidad, expresiones de transformaciones planas y ejercicios tipo examen.
- [**Resumen de audio**](Audios/Sesión57_Aplicaciones_geométricas.m4a):
	- **Introducción:** Visión de la geometría plana a través del álgebra compleja. El plano de Argand como espacio vectorial normado e isomorfo a $\mathbb{R}^2$.
	- **El afijo como puente:** Cómo sumar vectores equivale a sumar complejos en forma binómica y por qué la distancia es la norma euclídea del módulo $|z_B - z_A|$.
	- **El poder del argumento y los cocientes:** La razón entre dos vectores expresada como cociente complejo $\frac{z_C - z_A}{z_B - z_A}$. Si el cociente es real, hay alineación; si es imaginario puro, hay ortogonalidad.
	- **Transformaciones rígidas y semejanzas:** Expresión elegante de las rotaciones alrededor de un punto $w$ mediante $z' - w = e^{i\alpha}(z - w)$, homotecias con escala $k$ y simetrías axiales.
	- **Consejos para el examen presencial:** Importancia de explicitar siempre la condición analítica ($\text{Re} = 0$ o $\text{Im} = 0$) antes de operar los números complejos.
---
