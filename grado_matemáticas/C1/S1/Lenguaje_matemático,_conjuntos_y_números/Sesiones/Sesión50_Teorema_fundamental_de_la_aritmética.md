# **SESIÓN 50 (TEORÍA): NÚMEROS PRIMOS Y TEOREMA FUNDAMENTAL DE LA ARITMÉTICA**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 5: LOS NÚMEROS NATURALES Y LOS ENTEROS (Capítulo 5)  
**Objetivo:** Definir formalmente los conceptos de **número primo y compuesto** en \(\mathbb{N}^*\) y \(\mathbb{Z}\), demostrar el **Teorema de la Infinitud de los Números Primos** (Euclides), dominar la **Criba de Eratóstenes** y el **criterio práctico de primalidad (\(\le \sqrt{n}\))**, demostrar el **Lema de Euclides** (\(p \mid ab \implies p \mid a \lor p \mid b\)), y formalizar el **Teorema Fundamental de la Aritmética (TFA)** demostrando analíticamente la **existencia** (por inducción fuerte) y la **unicidad** de la factorización prima.

---

### **1. Marco Teórico: Números Primos y Compuestos**

En el anillo de los números enteros \((\mathbb{Z}, +, \cdot)\), todo entero \(a \in \mathbb{Z}\) admite siempre como divisores a los elementos \(1, -1, a\) y \(-a\), los cuales reciben el nombre de **divisores impropios**. Cualquier otro divisor distinto de estos cuatro se denomina **divisor propio**.

#### **Definición 5.48 / Definición 2.3.1 (Número Primo y Compuesto):**

- Un número entero \(p \in \mathbb{N}^*\) con **\(p > 1\)** es un **número primo** si no tiene divisores propios en \(\mathbb{N}^*\) (es decir, sus únicos divisores positivos son la unidad \(1\) y el propio \(p\)).
- Un número entero \(n \in \mathbb{N}^*\) con **\(n > 1\)** es un **número compuesto** si posee al menos un divisor propio en \(\mathbb{N}^*\) (es decir, existen \(a, b \in \mathbb{N}^*\) con \(1 < a, b < n\) tales que \(n = a \cdot b\)).

> **¡Atención al Rigor Formal!**  
> Los elementos **\(0\) y \(1\) NO son números primos ni compuestos**. El \(1\) es el elemento unidad del anillo (único entero con inverso multiplicativo en \(\mathbb{Z}\)) y el \(0\) es el elemento nulo absorbente.

---

### **2. Infinitud de los Números Primos (Teorema de Euclides)**

#### **Teorema 2.3.1 / Ejemplo 1.10 (Teorema de la Infinitud de los Primos):**

_El conjunto de los números primos es **infinito**._

- **Demostración Analítica Paso a Paso por Reducción al Absurdo (Examen UNED):**
    
    1. Supongamos por contradicción que el conjunto de los números primos fuera **finito**, y sea \(\mathcal{P} = {p_1, p_2, p_3, \dots, p_n}\) la lista completa de todos los números primos existentes.
    2. Consideramos el número natural auxiliar construido sumando la unidad al producto de todos ellos: \[r = (p_1 \cdot p_2 \cdot p_3 \cdots p_n) + 1\]
    3. Como \(r > p_i\) para todo \(i \in {1, \dots, n}\), el número \(r\) no pertenece a la lista \(\mathcal{P}\), por lo que **\(r\) no puede ser primo** según nuestra suposición.
    4. Por tanto, \(r\) debe ser un **número compuesto**, lo que exige que exista al menos un primo \(p_k \in \mathcal{P}\) de la lista que divida exactamente a \(r\) (\(p_k \mid r\)).
    5. Como \(p_k\) es uno de los factores del producto \(p_1 \cdot p_2 \cdots p_n\), tenemos que \(p_k \mid (p_1 \cdot p_2 \cdots p_n)\).
    6. Si \(p_k\) divide a \(r\) y divide a \((p_1 \cdot p_2 \cdots p_n)\), por las propiedades de la divisibilidad en \(\mathbb{Z}\), debe dividir a su diferencia: \[p_k \mid \left( r - (p_1 \cdot p_2 \cdots p_n) \right) \implies p_k \mid 1\]
    7. Llegamos a la **contradicción** de que el número primo \(p_k > 1\) divide a \(1\) en \(\mathbb{Z}\).
    8. **Conclusión:** La suposición inicial es falsa y **existen infinitos números primos**. \(\blacksquare\)

---

### **3. Criba de Eratóstenes y Criterio Práctico de Primalidad**

#### **Proposición (Criterio de Detención en \(\sqrt{n}\)):**

_Un número entero \(n > 1\) es **compuesto** si y solo si posee al menos un divisor primo \(p\) tal que \(p \le \sqrt{n}\)._

- **Demostración:**  
    Si \(n\) es compuesto, existen \(a, b \in \mathbb{N}^*\) con \(1 < a \le b < n\) tales que \(n = a \cdot b\).  
    If ambos factores fueran estrictamente mayores que \(\sqrt{n}\) (\(a > \sqrt{n}\) y \(b > \sqrt{n}\)), entonces \(a \cdot b > \sqrt{n} \cdot \sqrt{n} = n\), contradicción.  
    Por tanto, el menor factor \(a\) cumple \(a \le \sqrt{n}\). Todo divisor \(a > 1\) posee a su vez al menos un factor primo \(p \le a \le \sqrt{n}\). \(\blacksquare\)

> **Regla de Utilidad Práctica:** Para comprobar si un número \(n\) es primo, no hace falta dividir entre todos los números menores que él; **basta con comprobar si es divisible entre los primos \(p \le \sqrt{n}\)**. Si ninguna división es exacta y el cociente resulta ser menor que el divisor primo probado, se concluye con absoluta certeza que \(n\) es primo.

---

### **4. El Lema de Euclides**

#### **Lema 2.3.2 / Ejercicio 49 del Capítulo 5 (Lema de Euclides):**

_Sea \(p\) un número primo y sean \(a, b \in \mathbb{Z}\). Si \(p\) divide al producto \(a \cdot b\) (\(p \mid ab\)), entonces **\(p\) divide a \(a\) o \(p\) divide a \(b\)**:_

\[(p \text{ es primo} \quad \land \quad p \mid ab) \implies (p \mid a \quad \lor \quad p \mid b)\]

- **Demostración Analítica Paso a Paso (Examen de Desarrollo UNED):**
    
    1. Supongamos que \(p \mid ab\). Se presentan dos posibilidades exhaustivas para el \(\text{mcd}(p, a)\):
        - **Caso 1:** \(p \mid a\). En este caso, la conclusión del lema se cumple trivialmente.
        - **Caso 2:** \(p \nmid a\). Como los únicos divisores positivos de \(p\) son \(1\) y \(p\), si \(p\) no divide a \(a\), el único divisor común positivo de ambos es \(1\), por lo que \(\mathbf{\text{mcd}(p, a) = 1}\) (son primos entre sí).
    2. Aplicando el **Teorema de Gauss** (Sesión 48): Si \(p \mid ab\) y \(\text{mcd}(p, a) = 1\), entonces obligatoriamente **\(p \mid b\)**.
    3. Por tanto, en cualquier caso se cumple que **\(p \mid a\) o \(p \mid b\)**. \(\blacksquare\)

---

### **5. El Teorema Fundamental de la Aritmética (TFA)**

#### **Teorema 2.3.3 (Teorema Fundamental de la Aritmética):**

_Todo número entero \(n > 1\) se puede expresar como **producto de números primos**. Además, dicha descomposición es **única salvo el orden de los factores**:_

\[n = p_1^{a_1} \cdot p_2^{a_2} \cdots p_k^{a_k} = \prod_{i=1}^k p_i^{a_i}\] _(donde \(p_1 < p_2 < \dots < p_k\) son primos distintos y \(a_i \ge 1\) son sus exponentes enteros positivos)_.

---

#### **Demostración Analítica Completa (Examen de Desarrollo UNED):**

La prueba consta de dos etapas independientes: **Existencia** y **Unicidad**.

1. **Prueba de la EXISTENCIA (por Inducción Fuerte o Completa):**
    - **Base Inductiva (\(n = 2\)):** \(2\) es un número primo, luego su representación es \(n = 2\) (un único factor primo). La propiedad vale para \(n = 2\).
    - **Hipótesis de Inducción Fuerte:** Supongamos que todo número entero \(k\) con \(2 \le k < n\) se puede descomponer como producto de factores primos.
    - **Paso Inductivo:** Analizamos el número \(n\):
        - Si \(n\) es primo, ya está descompuesto en factores primos (él mismo).
        - Si \(n\) es compuesto, existen enteros \(n_1, n_2 \in \mathbb{N}^*\) con \(1 < n_1 < n\) y \(1 < n_2 < n\) tales que \(n = n_1 \cdot n_2\).  
            Por la Hipótesis de Inducción Fuerte, tanto \(n_1\) como \(n_2\) se descomponen en factores primos: \[n_1 = q_1 q_2 \cdots q_r, \quad n_2 = q'_1 q'_2 \cdots q'_s\] Sustituyendo en \(n\): \[n = (q_1 q_2 \cdots q_r) \cdot (q'_1 q'_2 \cdots q'_s)\] Obtenemos una descomposición de \(n\) como producto de primos. Por el Principio de Inducción, **todo entero \(n > 1\) posee descomposición prima**.

---

2. **Prueba de la UNICIDAD (mediante el Lema de Euclides):**
    - Supongamos por contradicción que existen enteros con más de una factorización prima distinta. Por la propiedad del Buen Ordenamiento de \(\mathbb{N}\), consideramos el **mínimo entero \(n > 1\)** que admite dos factorizaciones distintas: \[n = p_1 p_2 \cdots p_k = q_1 q_2 \cdots q_m \quad (*)\]
    - Como \(p_1\) es un primo que divide a \(n\), divide al producto de la derecha: \(p_1 \mid (q_1 q_2 \cdots q_m)\).
    - Aplicando de forma iterativa el **Lema de Euclides**, \(p_1\) debe dividir a alguno de los factores \(q_j\). Reordenando si fuera necesario, supongamos que \(p_1 \mid q_1\).
    - Como \(q_1\) es también un número primo, sus únicos divisores positivos son \(1\) y \(q_1\). Puesto que \(p_1 > 1\), se deduce que **\(p_1 = q_1\)**.
    - Cancelando el término común \(p_1 = q_1\) en ambos lados de la igualdad \((*)\) mediante la propiedad cancelativa del producto en \(\mathbb{Z}\): \[n' = \frac{n}{p_1} = p_2 \cdots p_k = q_2 \cdots q_m\]
    - Si \(n' = 1\), tendríamos \(k = m = 1\) y la factorización sería única desde el inicio.
    - Si \(n' > 1\), tenemos que \(n' < n\) es un entero **estrictamente menor que \(n\)** que posee dos factorizaciones distintas, lo cual **contradice la elección de \(n\) como el entero mínimo con tal propiedad**.
    - **Conclusión:** La representación en factores primos es **rigurosamente única**. \(\blacksquare\)

---

### **6. Aplicación del TFA al Cálculo del m.c.d. y m.c.m.**

Dados dos enteros no nulos \(a, b \in \mathbb{N}^*\) expresados en su factorización prima sobre un conjunto común de primos \({p_1, p_2, \dots, p_n}\): \[a = p_1^{r_1} p_2^{r_2} \cdots p_n^{r_n}, \quad b = p_1^{s_1} p_2^{s_2} \cdots p_n^{s_n} \quad (r_i, s_i \ge 0)\]

- **Máximo Común Divisor (factores comunes al menor exponente):** \[\text{mcd}(a, b) = p_1^{\min(r_1, s_1)} \cdot p_2^{\min(r_2, s_2)} \cdots p_n^{\min(r_n, s_n)}\]
- **Mínimo Común Múltiplo (factores comunes y no comunes al mayor exponente):** \[\text{mcm}(a, b) = p_1^{\max(r_1, s_1)} \cdot p_2^{\max(r_2, s_2)} \cdots p_n^{\max(r_n, s_n)}\]

---

### **7. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Probar que si \(n \in \mathbb{N}^*\) no es un cuadrado perfecto, entonces \(\sqrt{n}\) es un número irracional (\(\sqrt{n} \notin \mathbb{Q}\)), generalizando la demostración clásica de \(\sqrt{2}\) mediante la descomposición prima del TFA.
2. **Ejercicio 2 (Ejercicio 49 del Capítulo 5 del texto base):** Sea \(d \in \mathbb{N}\) con \(d > 1\) un número primo. Demostrar que dados \(b, c \in \mathbb{N}^*\), si \(d \mid bc\), entonces \(d \mid b\) o \(d \mid c\).
3. **Ejercicio 3 (Ejercicio 7 de la sección 2.3 de Dorronsoro & Hernández):** Demostrar que si \(p\) es un número primo y \(a \in \mathbb{Z}\), si \(p \mid a^n\) para algún \(n \in \mathbb{N}^*\), entonces \(p \mid a\).

---

### **8. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea \(p\) un número primo y sean \(a, b \in \mathbb{Z}\) dos enteros tales que \(p\) divide al producto \(ab\) (\(p \mid ab\)). ¿Cuál de las siguientes afirmaciones es **siempre verdadera**?

- **A)** \(p\) debe dividir obligatoriamente a ambos números enteros a la vez (\(p \mid a \land p \mid b\)).
- **B)** \(p\) debe dividir al menos a uno de los dos factores (\(p \mid a \lor p \mid b\)).
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Por el **Lema de Euclides** (Lema 2.3.2 del texto base), la propiedad definitoria de los números primos respecto del producto es que si \(p \mid ab\), entonces \(p \mid a\) o \(p \mid b\).
> - La opción A es falsa porque el primo no necesita dividir a ambos términos a la vez; por ejemplo, para \(p = 3\), \(a = 6\) y \(b = 5\), tenemos \(3 \mid (6 \cdot 5) = 30\), y \(3 \mid 6\) pero \(3 \nmid 5\).
> - Por lo tanto, la opción **B** es la **correcta**.

## Material adicional

- [**Presentación**](Presentaciones/Sesión50_Teorema_fundamental_de_la_aritmética.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con la jerarquía del Bloque 5, recuadros normativos para el Teorema de Euclides, el Lema de Euclides y el Teorema Fundamental de la Aritmética, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la demostración paso a paso de existencia y unicidad y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión50_Teorema_fundamental_de_la_aritmética.m4a): Enfocado en los bloques fundamentales de la aritmética entera, la prueba clásica por reducción al absurdo de la infinitud de los números primos, el algoritmo de la Criba de Eratóstenes y el criterio de detención en \(\sqrt{n}\), la demostración del Lema de Euclides mediante el Teorema de Gauss, la prueba en dos etapas (existencia por inducción y unicidad) del Teorema Fundamental de la Aritmética, sus aplicaciones al cálculo del m.c.d. y m.c.m. y las pautas de redacción formal para el examen presencial de desarrollo de la UNED.

---
