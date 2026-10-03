# **SESIÓN 27 (PRÁCTICA): EJERCICIOS DE IDENTIFICACIÓN DE CLASES DE EQUIVALENCIA Y CONJUNTOS COCIENTES**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 3: RELACIONES Y APLICACIONES (Capítulo 3)  
**Objetivo:** Dominar la resolución práctica de ejercicios de examen sobre relaciones de equivalencia en diversos universos (\(\mathbb{Z}\), \(\mathbb{R}^2\), \(\mathbb{N} \times \mathbb{N}\)), aprender a calcular explícitamente la **clase de equivalencia \([x]\)** de un elemento genérico, describir analítica y geométricamente la partición del **conjunto cociente \(U/\mathcal{R}\)**, y ejercitar los problemas seleccionados por la Guía Completa de la asignatura.

---

### **1. Metodología de Resolución: Pasos Formales de Examen**

Para abordar con éxito un problema de desarrollo sobre clases de equivalencia en la UNED, se debe seguir la siguiente pauta estructurada:

1. **Verificación Formal de las 3 Propiedades:** Probar analíticamente que la relación \(\mathcal{R}\) es **reflexiva, simétrica y transitiva**.
2. **Construcción de la Clase de Equivalencia \([x]\):** Aplicar la definición por comprensión sustituyendo la condición de relación: \[[x] = {y \in U \mid x \mathcal{R} y}\]
3. **Caracterización de los Representantes:** Comprobar si elementos distintos producen clases idénticas o disjuntas (\(x \mathcal{R} y \iff [x] = [y]\)).
4. **Formulación del Conjunto Cociente \(U/\mathcal{R}\):** Expresar la familia de todas las clases de equivalencia disjuntas cuya unión cubre todo el universo \(U\).

---

### **2. Batería de Ejercicios Resueltos de Examen (Texto Base)**

#### **Ejercicio 1: Congruencia Módulo 5 en los Números Enteros (\(\mathbb{Z}\))**

**Enunciado:** En el conjunto de los números enteros \(\mathbb{Z}\), se define la relación \(a \mathcal{R} b \iff a \equiv b \pmod 5 \iff \exists k \in \mathbb{Z}, a - b = 5k\).

1. Demostrar que \(\mathcal{R}\) es una relación de equivalencia.
2. Determinar las clases de equivalencia \(\), \(\), \(\), \(\) y \(\).
3. Describir el conjunto cociente \(\mathbb{Z}/\mathcal{R}\) (o \(\mathbb{Z}/5\mathbb{Z}\)).

- **Resolución Paso a Paso (Estándar UNED):**
    
    1. **Demostración de Relación de Equivalencia:**
        
        - **Reflexiva:** Para todo \(a \in \mathbb{Z}\), \(a - a = 0 = 5 \cdot 0\). Como \(0 \in \mathbb{Z}\), \(a \mathcal{R} a\).
        - **Simétrica:** Si \(a \mathcal{R} b \implies a - b = 5k\) con \(k \in \mathbb{Z}\). Multiplicando por \(-1\): \(b - a = 5(-k)\). Como \(-k \in \mathbb{Z}\), \(b \mathcal{R} a\).
        - **Transitiva:** Si \(a \mathcal{R} b \land b \mathcal{R} c \implies a - b = 5k_1\) y \(b - c = 5k_2\) para \(k_1, k_2 \in \mathbb{Z}\).  
            Sumando ambas ecuaciones: \((a - b) + (b - c) = 5k_1 + 5k_2 \implies a - c = 5(k_1 + k_2)\). Comme \(k_1 + k_2 \in \mathbb{Z}\), \(a \mathcal{R} c\).
    2. **Cálculo de las Clases de Equivalencia:**  
        Por el algoritmo de la división entera, todo \(a \in \mathbb{Z}\) se escribe como \(a = 5q + r\) con \(r \in {0, 1, 2, 3, 4}\).
        
        - \( = {x \in \mathbb{Z} \mid x \equiv 0 \pmod 5} = {x \in \mathbb{Z} \mid \exists q \in \mathbb{Z}, x = 5q} = {\dots, -10, -5, 0, 5, 10, \dots}\) _(múltiplos de 5)_.
        - \( = {x \in \mathbb{Z} \mid x \equiv 1 \pmod 5} = {x \in \mathbb{Z} \mid \exists q \in \mathbb{Z}, x = 5q + 1} = {\dots, -9, -4, 1, 6, 11, \dots}\).
        - \( = {x \in \mathbb{Z} \mid \exists q \in \mathbb{Z}, x = 5q + 2} = {\dots, -8, -3, 2, 7, 12, \dots}\).
        - \( = {x \in \mathbb{Z} \mid \exists q \in \mathbb{Z}, x = 5q + 3} = {\dots, -7, -2, 3, 8, 13, \dots}\).
        - \( = {x \in \mathbb{Z} \mid \exists q \in \mathbb{Z}, x = 5q + 4} = {\dots, -6, -1, 4, 9, 14, \dots}\).
    3. **Conjunto Cociente:**  
        Dado que para cualquier número entero su resto al dividir por 5 pertenece a \({0, 1, 2, 3, 4}\), no existen más clases distintas: \[\mathbb{Z}/5\mathbb{Z} = {,,,,}\]
        

---

#### **Ejercicio 2: Interpretación Geométrica en \(\mathbb{R}^2\)**

**Enunciado:** En el plano euclídeo \(\mathbb{R}^2\), se define la relación binaria: \[(x, y) \mathcal{R} (z, t) \iff x^2 + y^2 = z^2 + t^2\]

1. Demostrar que \(\mathcal{R}\) es de equivalencia.
2. Describir analíticamente la clase de equivalencia \([(a, b)]\) de un punto arbitrario \((a, b) \in \mathbb{R}^2\).
3. Interpretar geométricamente las clases de equivalencia y el conjunto cociente \(\mathbb{R}^2/\mathcal{R}\).

- **Resolución Paso a Paso (Estándar UNED):**
    
    1. **Propiedades:**  
        Es trivialmente reflexiva (\(x^2 + y^2 = x^2 + y^2\)), simétrica (igualdad de números reales) y transitiva.
        
    2. **Clase de Equivalencia de \((a, b)\):**  
        Sea \(k = a^2 + b^2 \ge 0\). \[[(a, b)] = {(x, y) \in \mathbb{R}^2 \mid x^2 + y^2 = a^2 + b^2 = k}\]
        
        - **Caso 1 (\(a=0, b=0\)):** \(k = 0 \implies [(0, 0)] = {(0, 0)}\) _(el origen de coordenadas, conjunto unitario)_.
        - **Caso 2 (\((a, b) \neq (0, 0)\)):** \(k > 0\). Poniendo \(r = \sqrt{a^2 + b^2} > 0\), la ecuación \(x^2 + y^2 = r^2\) representa la **circunferencia de radio \(r\) centrada en el origen**.
    3. **Interpretación del Conjunto Cociente \(\mathbb{R}^2/\mathcal{R}\):**  
        Las clases de equivalencia forman una partición del plano formada por el punto origen \({(0, 0)}\) y todas las **circunferencias concéntricas** de radio \(r > 0\). Cada clase se puede identificar de forma biunívoca con su radio \(r \in [0, +\infty)\): \[\mathbb{R}^2/\mathcal{R} \cong [0, +\infty)\]
        

---

#### **Ejercicio 3: Construcción Formal de los Enteros (\(\mathbb{N} \times \mathbb{N}\))**

**Enunciado:** En \(\mathbb{N} \times \mathbb{N}\), se define la relación \((a, b) \mathcal{E} (c, d) \iff a + d = b + c\).

1. Determinar la clase de equivalencia \([(2, 0)]\) y la clase \([(0, 3)]\).
2. Justificar cómo las clases representan a los números enteros positivos y negativos.

- **Resolución Paso a Paso:**
    - **Clase \([(2, 0)]\):**  
        \((x, y) \in [(2, 0)] \iff x + 0 = y + 2 \iff x - y = 2\).  
        \([(2, 0)] = {(2, 0), (3, 1), (4, 2), (5, 3), \dots} = {(k+2, k) \mid k \in \mathbb{N}}\).  
        _Esta clase representa al número entero positivo **\(+2\)**._
    - **Clase \([(0, 3)]\):**  
        \((x, y) \in [(0, 3)] \iff x + 3 = y + 0 \iff x - y = -3\).  
        \([(0, 3)] = {(0, 3), (1, 4), (2, 5), (3, 6), \dots} = {(k, k+3) \mid k \in \mathbb{N}}\).  
        _Esta clase representa al número entero negativo **\(-3\)**._

---

### **3. Ejercicios Seleccionados de la Guía Completa para Estudio Personal**

A partir de la lista de ejercicios prioritarios seleccionados por la **Guía Completa (Curso 2026/2027)** para el **Tema 3**, se recomienda resolver los siguientes problemas del Capítulo 3 del texto base:

1. **Ejercicio 3 del Capítulo 3:** Demostrar que la relación dada en \(\mathbb{R}\) por \(x \mathcal{R} y \iff x - y \in \mathbb{Q}\) es de equivalencia. Comprobar que la clase \( = \mathbb{Q}\) y describir la clase \([\sqrt{2}] = {q + \sqrt{2} \mid q \in \mathbb{Q}}\).
2. **Ejercicio 10 del Capítulo 3:** En el conjunto de las matrices cuadradas de orden 2, \(M_2(\mathbb{R})\), se define la relación de semejanza \(A \sim B \iff \exists P \text{ invertible}, B = P^{-1} A P\). Demostrar que es una relación de equivalencia y determinar las matrices en la clase de la matriz identidad \([I_2]\).

---

### **4. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** En el conjunto \(\mathbb{R}^2\), consideramos la relación de equivalencia definida por \((x, y) \mathcal{R} (z, t) \iff x - y = z - t\). ¿Cuál es la descripción geométrica de la clase de equivalencia \([(1, 0)]\) y del conjunto cociente \(\mathbb{R}^2/\mathcal{R}\)?

- **A)** \([(1, 0)]\) es la recta de ecuación \(y = x - 1\) (de pendiente \(1\)), y el conjunto cociente es la familia de todas las rectas paralelas del plano con pendiente \(1\).
- **B)** \([(1, 0)]\) es la circunferencia de radio \(1\) centrada en el origen y el conjunto cociente son las circunferencias concéntricas.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Calculamos la clase de equivalencia: \((x, y) \in [(1, 0)] \iff x - y = 1 - 0 \iff y = x - 1\).
> - Geométricamente, \(y = x - 1\) es una **recta en el plano de pendiente \(1\)** e intersección con el eje Y en \((0, -1)\).
> - Cada clase \([(a, b)]\) corresponde a la recta \(y = x - (a - b)\), por lo que el conjunto cociente es la familia de **rectas paralelas de pendiente 1**.
> - Por lo tanto, la opción **A** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión27_Ejercicios_Clases_de_equivalencia.pptx): Elaborada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con la maquetación por bloques, los estándares sintácticos oficiales de la UNED (escape de llaves `\{` y `\}`, notación `\varnothing`), la resolución paso a paso de problemas de examen y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión27_Ejercicios_Clases_de_equivalencia.m4a): Enfocado en la metodología de resolución de problemas sobre clases de equivalencia, la interpretación geométrica de los conjuntos cocientes en \(\mathbb{R}^2\), la abstracción de conjuntos cocientes algebraicos y los errores sintácticos más habituales a evitar en el examen de desarrollo.