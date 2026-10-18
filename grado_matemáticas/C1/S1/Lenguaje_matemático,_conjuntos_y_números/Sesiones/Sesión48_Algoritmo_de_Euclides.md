# **SESIÓN 48 (TEORÍA): ALGORITMO DE EUCLIDES E IDENTIDAD DE BÉZOUT**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 5: LOS NÚMEROS NATURALES Y LOS ENTEROS (Capítulo 5)  
**Objetivo:** Formalizar el **Algoritmo de Euclides** para el cálculo eficiente del Máximo Común Divisor (m.c.d.) en el anillo de los números enteros \(\mathbb{Z}\), demostrar que el **último resto no nulo** del proceso coincide exactamente con el m.c.d., establecer la **Identidad de Bézout (\(d = au + bv\))** y dominar el método de **despeje regresivo de restos** para obtener los coeficientes de Bézout, caracterizar la coprimidad mediante el **Teorema de Bézout** y demostrar el **Teorema de Gauss**.

---

### **1. Marco Teórico: Lema de Reducción del Algoritmo de Euclides**

Aunque el Máximo Común Divisor de dos enteros \(a, b \in \mathbb{N}^*\) se puede definir mediante la factorización en factores primos, dicha técnica resulta impracticable para enteros de gran tamaño. El **Algoritmo de Euclides** proporciona un método directo basado exclusivamente en divisiones enteras sucesivas.

El algoritmo se fundamenta en el siguiente lema clave:

#### **Lema de Reducción de Restos:**

_Sean \(a, b \in \mathbb{N}^_\) con \(b \le a\). Si efectuamos la división entera de \(a\) entre \(b\) obteniendo un cociente \(q \in \mathbb{Z}\) y un resto \(r \in \mathbb{Z}\):*

\[a = q \cdot b + r \quad \text{con} \quad 0 \le r < b\]

_Entonces, el conjunto de divisores comunes de \(a\) y \(b\) coincide exactamente con el conjunto de divisores comunes de \(b\) y \(r\). En particular:_

\[\text{mcd}(a, b) = \text{mcd}(b, r)\]

- **Demostración Analítica Paso a Paso (Estándar UNED):**
    1. Sea \(d = \text{mcd}(a, b)\). Por definición, \(d \mid a\) y \(d \mid b\). Despejando el resto \(r = a - qb\), como \(d\) divide a \(a\) y a \(b\), \(d\) divide a cualquier combinación lineal entera de ellos, luego \(d \mid r\). Por tanto, \(d\) es un divisor común de \(b\) y \(r\), de donde \(d \le \text{mcd}(b, r)\).
    2. Recíprocamente, sea \(d' = \text{mcd}(b, r)\). Por definición, \(d' \mid b\) y \(d' \mid r\). De la ecuación de la división \(a = qb + r\), como \(d'\) divide a \(b\) y a \(r\), se deduce que \(d' \mid a\). Por tanto, \(d'\) es un divisor común de \(a\) y \(b\), de donde \(d' \le \text{mcd}(a, b) = d\).
    3. De \(d \le d'\) y \(d' \le d\), por la propiedad antisimétrica del orden en \(\mathbb{N}\), concluimos que **\(\text{mcd}(a, b) = \text{mcd}(b, r)\)**. \(\blacksquare\)

---

### **2. Descripción Formal del Algoritmo de Euclides**

Dados \(a, b \in \mathbb{N}^*\) con \(b < a\):

1. Fijamos \(r_0 = a\) y \(r_1 = b\).
2. Iteramos el algoritmo de la división entera obteniendo una secuencia de cocientes \(q_1, q_2, q_3, \dots\) y restos \(r_2, r_3, r_4, \dots\): \[\begin{aligned} r_0 &= q_1 \cdot r_1 + r_2 \quad &(0 < r_2 < r_1) \ r_1 &= q_2 \cdot r_2 + r_3 \quad &(0 < r_3 < r_2) \ r_2 &= q_3 \cdot r_3 + r_4 \quad &(0 < r_4 < r_3) \ &\dots \ r_{k-2} &= q_{k-1} \cdot r_{k-1} + r_k \quad &(0 < r_k < r_{k-1}) \ r_{k-1} &= q_k \cdot r_k + 0 \quad &(r_{k+1} = 0) \end{aligned}\]

#### **Propiedades Fundamentales del Algoritmo:**

- **Terminación Finita:** Como la sucesión de restos forma una cadena estrictamente decreciente de números enteros no negativos: \[r_1 > r_2 > r_3 > \dots > r_k > r_{k+1} = 0\] por el Principio del Buen Ordenamiento de \(\mathbb{N}\), el algoritmo debe terminar obligatoriamente en un número finito de pasos (a lo sumo en \(b\) divisiones).
- **Teorema del Último Resto No Nulo:** Aplicando sucesivamente el Lema de Reducción: \[\text{mcd}(a, b) = \text{mcd}(r_0, r_1) = \text{mcd}(r_1, r_2) = \dots = \text{mcd}(r_{k-1}, r_k) = \text{mcd}(r_k, 0) = r_k\]
    
    > **Conclusión:** _El Máximo Común Divisor de \(a\) y \(b\) es exactamente **el último resto no nulo \(r_k\)** obtenido en la secuencia de divisiones euclídeas._
    

---

### **3. La Identidad de Bézout y el Algoritmo Extendido**

#### **Teorema 5.46 / Identidad de Bézout:**

_Sean \(a, b \in \mathbb{N}^_\) y \(d = \text{mcd}(a, b)\). Existen enteros \(u, v \in \mathbb{Z}\) (llamados **coeficientes de Bézout**) tales que:*

\[d = a \cdot u + b \cdot v\]

_Además, \(d = \text{mcd}(a, b)\) es el **mínimo número entero estrictamente positivo** que se puede expresar como combinación lineal entera de \(a\) y \(b\)._

---

#### **Cálculo Práctico de Coeficientes via Despeje Regresivo (Ejemplo del Texto Base):**

**Problema:** Hallar el \(\text{mcd}(4704, 903)\) mediante el Algoritmo de Euclides y determinar un par de coeficientes \(u, v \in \mathbb{Z}\) tales que \(4704 \cdot u + 903 \cdot v = 21\).

- **Paso 1: Ejecución del Algoritmo de Euclides (Divisiones Directas):**
    
    1. \(4704 = 5 \cdot 903 + 189 \implies q_1 = 5, r_2 = 189\)
    2. \(903 = 4 \cdot 189 + 147 \implies q_2 = 4, r_3 = 147\)
    3. \(189 = 1 \cdot 147 + 42 \implies q_3 = 1, r_4 = 42\)
    4. \(147 = 3 \cdot 42 + 21 \implies q_4 = 3, r_5 = 21\)
    5. \(42 = 2 \cdot 21 + 0 \implies q_5 = 2, r_6 = 0\)
    
    El último resto no nulo es \(r_5 = 21\), luego **\(\text{mcd}(4704, 903) = 21\)**.
    
- **Disposición en Tabla Oficial (Delgado Pineda & Muñoz Bouzo):**
    
    \[\begin{array}{c|cccccc} \text{Dividendos/Restos} & 4704 & 903 & 189 & 147 & 42 & 21 \ \hline \text{Cocientes } q_i & & 5 & 4 & 1 & 3 & 2 \ \text{Restos } r_i & 189 & 147 & 42 & 21 & 0 & \end{array}\]
    
- **Paso 2: Sustitución Regresiva (Despeje de Restos):** Despejamos sucesivamente los restos desde la penúltima igualdad hacia arriba:
    
    1. De la 4ª ecuación: \(21 = 147 - 3 \cdot 42\)
    2. De la 3ª ecuación despejamos \(42 = 189 - 1 \cdot 147\) y sustituimos: \[21 = 147 - 3(189 - 1 \cdot 147) = 4 \cdot 147 - 3 \cdot 189\]
    3. De la 2ª ecuación despejamos \(147 = 903 - 4 \cdot 189\) y sustituimos: \[21 = 4(903 - 4 \cdot 189) - 3 \cdot 189 = 4 \cdot 903 - 19 \cdot 189\]
    4. De la 1ª ecuación despejamos \(189 = 4704 - 5 \cdot 903\) y sustituimos: \[21 = 4 \cdot 903 - 19(4704 - 5 \cdot 903) = 99 \cdot 903 - 19 \cdot 4704\]
    
    Reagrupando en la forma \(4704 \cdot u + 903 \cdot v = 21\): \[4704 \cdot (-19) + 903 \cdot (99) = 21\] Obtenemos los coeficientes de Bézout: **\(u = -19\)** y **\(v = 99\)**.
    

---

### **4. Teoremas Fundamentales: Bézout y Gauss**

#### **Definición 5.50 (Números Primos Entre Sí / Coprimos):**

Dos números enteros \(a, b \in \mathbb{Z}^*\) son **primos entre sí** (o **coprimos**) si y solo si \(\text{mcd}(|a|, |b|) = 1\).

#### **Teorema 5.51 (Teorema de Bézout para Números Coprimos):**

_Sean \(a, b \in \mathbb{N}^_\). Los números \(a\) y \(b\) son primos entre sí (\(\text{mcd}(a, b) = 1\)) **si y solo si** existen enteros \(u, v \in \mathbb{Z}\) tales que:*

\[a \cdot u + b \cdot v = 1\]

---

#### **Teorema 5.52 (Teorema de Gauss):**

_Sean \(a, b, c \in \mathbb{Z}\). Si \(a\) divide al producto \(b \cdot c\) (\(a \mid bc\)) y \(a\) y \(b\) son primos entre sí (\(\text{mcd}(a, b) = 1\)), entonces **\(a\) divide necesariamente a \(c\)** (\(a \mid c\))._

- **Demostración Analítica Paso a Paso (Examen de Desarrollo UNED):**
    1. Como \(\text{mcd}(a, b) = 1\), por el Teorema de Bézout existen enteros \(u, v \in \mathbb{Z}\) tales que: \[au + bv = 1\]
    2. Multiplicamos toda la igualdad por el entero \(c\): \[c(au + bv) = c \cdot 1 \implies a(cu) + (bc)v = c\]
    3. Analizamos la divisibilidad por \(a\) de los dos términos del lado izquierdo:
        - Obviamente \(a \mid a(cu)\).
        - Por la hipótesis inicial del teorema, \(a \mid bc\), de donde \(a \mid (bc)v\).
    4. Al dividir \(a\) a ambos sumandos del lado izquierdo, \(a\) divide a su suma, que es igual a \(c\).
    5. Por lo tanto, **\(a \mid c\)**. \(\blacksquare\)

---

### **5. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Utilizar el Algoritmo de Euclides para calcular el \(\text{mcd}(12378, 3054)\) y expresar el resultado mediante la Identidad de Bézout calculando sus coeficientes \(u, v \in \mathbb{Z}\).
2. **Ejercicio 2 (Ejercicio 5.54 del texto base):** Demostrar que si \(\text{mcd}(a, b) = 1\) y \(\text{mcd}(a, c) = 1\), entonces \(a\) y el producto \(bc\) son primos entre sí (\(\text{mcd}(a, bc) = 1\)), aplicando el Teorema de Bézout.
3. **Ejercicio 3 (Ejercicio 11 del Capítulo 5 del texto base):** Sean \(a, b \in \mathbb{N}^*\) con \(\text{mcd}(a, b) = d\). Demostrar que los cocientes \(a' = \frac{a}{d}\) y \(b' = \frac{b}{d}\) son números enteros primos entre sí (\(\text{mcd}(a', b') = 1\)).

---

### **6. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Dados dos números enteros no nulos \(a, b \in \mathbb{Z}^*\), sabemos que existen enteros \(u, v \in \mathbb{Z}\) tales que \(a \cdot u + b \cdot v = 7\). ¿Qué conclusión rigurosa se puede deducir inmediatamente sobre el valor de \(d = \text{mcd}(a, b)\)?

- **A)** Que el máximo común divisor \(d\) debe ser obligatoriamente igual a \(7\).
- **B)** Que el máximo común divisor \(d\) debe ser un divisor de \(7\) (es decir, \(d = 1\) o \(d = 7\)).
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - El Máximo Común Divisor \(d = \text{mcd}(a, b)\) divide tanto a \(a\) como a \(b\) (\(d \mid a\) y \(d \mid b\)).
> - Por las propiedades de la divisibilidad, \(d\) divide a cualquier combinación lineal entera de \(a\) y \(b\), de donde \(d \mid (au + bv) \implies d \mid 7\).
> - Como los únicos divisores positivos de \(7\) son \(1\) y \(7\), se concluye que **\(d\) debe ser un divisor de 7** (pudiendo ser \(1\) o \(7\)).
> - La opción A es falsa pues, por ejemplo, si \(a = 3, b = 2\), tenemos \(3(3) + 2(-1) = 7\), pero \(\text{mcd}(3, 2) = 1 \neq 7\).
> - Por lo tanto, la opción **B** es la **correcta**.


## Material de apoyo

- [**Presentación**](Presentaciones/Sesión48_Algoritmo_de_Euclides.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con la jerarquía del Bloque 5, recuadros normativos para el Algoritmo de Euclides, la Identidad de Bézout, el Teorema de Bézout y el Teorema de Gauss, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la tabla de divisiones sucesivas con el ejemplo numérico del libro base y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión48_Algoritmo_de_Euclides.m4a) Enfocado en la sustitución de la descomposición en factores primos por el eficiente Algoritmo de Euclides, la justificación analítica de que el último resto no nulo es el m.c.d., la combinación lineal entera de la Identidad de Bézout \(d = au + bv\), la técnica de despeje regresivo de restos para calcular los coeficientes de Bézout, la caracterización de números primos entre sí y la demostración del Teorema de Gauss.

---
