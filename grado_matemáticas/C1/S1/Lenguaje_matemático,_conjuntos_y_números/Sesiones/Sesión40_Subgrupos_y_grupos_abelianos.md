# **SESIÓN 40 (TEORÍA): SUBGRUPOS Y GRUPOS ABELIANOS**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 4: OPERACIONES INTERNAS Y ESTRUCTURAS ALGEBRAICAS (Capítulo 4)  
**Objetivo:** Definir formalmente el concepto de **subgrupo \(H \le G\)** en un grupo \((G, *)\), demostrar la **Proposición 4.14 de caracterización de subgrupos** mediante la condición única \(a * b^{-1} \in H\), estudiar las propiedades algebraicas de la **intersección de subgrupos**, caracterizar los **grupos abelianos** mediante identidades de simétricos y potencias, e introducir la **congruencia módulo un subgrupo** y el concepto de **clases laterales \(a * H\)**.

---

### **1. Marco Teórico: Concepto Formal de Subgrupo**

#### **A. Definición de Subgrupo**

Dado un grupo \((G, *)\) y un subconjunto no vacío \(H \subseteq G\), se dice que **\(H\) es un subgrupo de \(G\)** (y se denota por **\(H \le G\)**) si el par \((H, _)\) es a su vez un grupo con la misma operación \(_\) restringida a los elementos de \(H\).

- **Subgrupos Triviales o Impropios:** Todo grupo \((G, *)\) con elemento neutro \(e \in G\) posee al menos dos subgrupos:
    1. El subgrupo trivial \(H = {e}\) (formado únicamente por el elemento neutro).
    2. El propio grupo \(H = G\). Cualquier otro subgrupo \(H\) distinto de \({e}\) y de \(G\) recibe el nombre de **subgrupo propio**.

---

#### **B. Criterio de Caracterización de Subgrupos (Proposición 4.14)**

Para verificar directamente por definición que un subconjunto \(H \subseteq G\) es un subgrupo de \(G\), se debería comprobar:

1. Que la operación \(*\) sea interna en \(H\) (\(\forall a, b \in H, a * b \in H\)).
2. Que el elemento neutro de \(G\) pertenezca a \(H\) (\(e \in H\)).
3. Que para todo \(a \in H\), su elemento simétrico pertenezca a \(H\) (\(a^{-1} \in H\)).

_(La propiedad asociativa no hace falta verificarla pues se hereda automáticamente de \(G\))._

Sin embargo, en el examen de desarrollo de la UNED se aplica de forma preferente la siguiente condición equivalente simplificada:

> **Proposición 4.14 / 4.1.1 (Caracterización de Subgrupos):**  
> *Sea \((G, _)\) un grupo y \(H \subseteq G\) un subconjunto no vacío. \(H\) es un subgrupo de \(G\) (\(H \le G\)) si y solo si para todo par de elementos \(a, b \in H\), se cumple:_ \[a * b^{-1} \in H\] _(En notación aditiva: \(a - b \in H\))._

- **Demostración Analítica Paso a Paso (Estándar UNED):**
    
    1. **Implicación Directa (\(\implies\)):**  
        Si \(H\) es un subgrupo de \(G\), dados \(a, b \in H\), por la propiedad del elemento simétrico en \(H\) se tiene que \(b^{-1} \in H\). Como la operación es interna en \(H\), el producto \(a * b^{-1}\) pertenece obligatoriamente a \(H\).
        
    2. **Implicación Recíproca (\(\impliedby\)):**  
        Supongamos que \(H \neq \varnothing\) y que \(\forall a, b \in H, a * b^{-1} \in H\).
        
        - **Paso 1 (Existencia de Neutro):** Como \(H\) es no vacío, existe al menos un elemento \(a \in H\). Tomando \(b = a \in H\) en la condición, obtenemos que \(a * a^{-1} = e \in H\). Luego el elemento neutro pertenece a \(H\).
        - **Paso 2 (Existencia de Simétrico):** Tomando \(a = e \in H\) y cualquier \(b \in H\), la condición nos da \(e * b^{-1} = b^{-1} \in H\). Por tanto, todo elemento de \(H\) posee su simétrico en \(H\).
        - **Paso 3 (Operación Interna):** Dados \(a, b \in H\), acabamos de ver que \(b^{-1} \in H\). Aplicando de nuevo la condición a los elementos \(a\) y \(b^{-1}\), tenemos que \(a * (b^{-1})^{-1} = a * b \in H\). Por lo tanto, la operación \(*\) es interna en \(H\).
        
        Concluimos que *_\((H, _)\) es un grupo__, por lo que **\(H \le G\)**. \(\blacksquare\)
        

---

### **2. Propiedades Algebraicas: Intersección de Subgrupos**

#### **Teorema (Intersección de Subgrupos):**

*Sea \((G, _)\) un grupo y sea \({H_i}_{i \in I}\) una familia arbitraria de subgrupos de \(G\). Entonces la intersección de todos ellos es a su vez un subgrupo de \(G\):_

\[H = \bigcap_{i \in I} H_i \le G\]

- **Demostración Analítica (Examen de Desarrollo UNED):**
    1. **No Vacío:** Dado que cada \(H_i\) es un subgrupo de \(G\), el elemento neutro \(e \in H_i\) para todo \(i \in I\). Por lo tanto, \(e \in \bigcap_{i \in I} H_i\), lo que garantiza que \(H \neq \varnothing\).
    2. **Aplicar la Proposición 4.14:** Sean \(a, b \in \bigcap_{i \in I} H_i\).
        - Por la definición de intersección, \(a, b \in H_i\) para todo \(i \in I\).
        - Como cada \(H_i\) es un subgrupo de \(G\), por la Proposición 4.14 se cumple que \(a * b^{-1} \in H_i\) para todo \(i \in I\).
        - Al pertenecer a cada \(H_i\), el elemento \(a * b^{-1} \in \bigcap_{i \in I} H_i\).
    3. **Conclusión:** Por la Proposición 4.14, la intersección \(\bigcap_{i \in I} H_i\) es un **subgrupo de \(G\)**. \(\blacksquare\)

> **¡Advertencia para el Examen!**  
> La **unión de subgrupos \(H_1 \cup H_2\) NO es en general un subgrupo** de \(G\), salvo que uno de ellos esté contenido en el otro (es decir, \(H_1 \subseteq H_2\) o \(H_2 \subseteq H_1\)).

---

### **3. Caracterización de Grupos Abelianos (Conmutativos)**

Un grupo \((G, *)\) es **abeliano** si y solo si \(\forall a, b \in G, a * b = b * a\). En la resolución de ejercicios teóricos, destacan las siguientes tres equivalencias fundamentales:

#### **Proposición (Caracterizaciones Equivalentes de Conmutatividad):**

En cualquier grupo \((G, *)\), las siguientes afirmaciones son equivalentes:

1. \(G\) es un **grupo abeliano**.
2. \(\forall a, b \in G, \quad (a * b)^2 = a^2 * b^2\) _(donde \(x^2 = x * x\))_.
3. \(\forall a, b \in G, \quad (a * b)^{-1} = a^{-1} * b^{-1}\).

- **Demostración de 1 \(\iff\) 3:**
    - En todo grupo se cumple la fórmula general \((a * b)^{-1} = b^{-1} * a^{-1}\) (Sesión 39).
    - Si \(G\) es abeliano, \(b^{-1} * a^{-1} = a^{-1} * b^{-1}\), luego \((a * b)^{-1} = a^{-1} * b^{-1}\).
    - Recíprocamente, si \((a * b)^{-1} = a^{-1} * b^{-1}\), tomando inversos en ambos lados:  
        \[a * b = ((a * b)^{-1})^{-1} = (a^{-1} * b^{-1})^{-1} = (b^{-1})^{-1} * (a^{-1})^{-1} = b * a\]  
        Luego \(G\) es **abeliano**. \(\blacksquare\)

---

### **4. Congruencia Módulo un Subgrupo y Clases Laterales**

Sea \((G, *)\) un grupo y \(H \le G\) un subgrupo. Se define en \(G\) la **relación de congruencia por la izquierda módulo \(H\)** mediante:

\[a \mathcal{R}_H b \iff a * b^{-1} \in H \quad (\text{en notación aditiva: } a - b \in H)\]

#### **Proposición:**

_La relación \(\mathcal{R}_H\) es una **relaciones de equivalencia** en \(G\)._

- **Clase de Equivalencia (Clase Lateral por la Izquierda):**  
    La clase de equivalencia de un elemento \(a \in G\) asociada a esta relación viene dada por: \[[a] = a * H = {a * h \mid h \in H}\]
    
- **Teorema de Lagrange (para grupos finitos):**  
    Si \(G\) es un grupo finito y \(H \le G\) es un subgrupo, el orden (número de elementos) de \(H\) **divide exactamente al orden de \(G\)**: \[\text{card}(H) \mid \text{card}(G)\]
    

---

### **5. Batería de Ejemplos Emblemáticos del Texto Base (Delgado Pineda & Muñoz Bouzo)**

#### **Ejemplo 1: Subgrupos de los Enteros \((n\mathbb{Z}, +)\)**

Dado \(n \in \mathbb{N}^*\), consideramos el conjunto de los múltiplos enteros de \(n\): \[n\mathbb{Z} = {kn \mid k \in \mathbb{Z}} = {\dots, -2n, -n, 0, n, 2n, \dots}\]

- **Demostración de que \(n\mathbb{Z} \le (\mathbb{Z}, +)\):**
    1. \(n\mathbb{Z} \neq \varnothing\) pues \(0 = 0 \cdot n \in n\mathbb{Z}\).
    2. Sean \(x, y \in n\mathbb{Z}\). Existen \(k_1, k_2 \in \mathbb{Z}\) tales que \(x = k_1 n\) e \(y = k_2 n\).
    3. Evaluamos la diferencia (condición del subgrupo en notación aditiva): \[x - y = k_1 n - k_2 n = (k_1 - k_2) n\] Como \(k_1 - k_2 \in \mathbb{Z}\), se deduce que \(x - y \in n\mathbb{Z}\).
    4. Por la Proposición 4.14, **\(n\mathbb{Z}\) es un subgrupo de \((\mathbb{Z}, +)\)**.

---

#### **Ejemplo 2: Subgrupo de Números Irracionales Quadraticos \(\mathbb{Z}[\sqrt{2}]\)**

Consideramos el conjunto \(\mathbb{Z}[\sqrt{2}] = {a + b\sqrt{2} \mid a, b \in \mathbb{Z}}\) con la suma de números reales.

- **Demostración de que \(\mathbb{Z}[\sqrt{2}] \le (\mathbb{R}, +)\):**
    1. \(\mathbb{Z}[\sqrt{2}] \neq \varnothing\) pues \(0 = 0 + 0\sqrt{2} \in \mathbb{Z}[\sqrt{2}]\).
    2. Sean \(z_1 = a_1 + b_1\sqrt{2}\) y \(z_2 = a_2 + b_2\sqrt{2}\) con \(a_1, a_2, b_1, b_2 \in \mathbb{Z}\).
    3. Calculamos la resta: \[z_1 - z_2 = (a_1 + b_1\sqrt{2}) - (a_2 + b_2\sqrt{2}) = (a_1 - a_2) + (b_1 - b_2)\sqrt{2}\] Como \(\mathbb{Z}\) es un grupo con la suma, \(a_1 - a_2 \in \mathbb{Z}\) y \(b_1 - b_2 \in \mathbb{Z}\).
    4. Por consiguiente, \(z_1 - z_2 \in \mathbb{Z}[\sqrt{2}]\), probando que **\(\mathbb{Z}[\sqrt{2}]\) es un subgrupo de \((\mathbb{R}, +)\)**.

---

### **6. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1 (Ejercicio 4.16 del libro base):** Demostrar que el conjunto \(2\pi\mathbb{Z} = {2k\pi \mid k \in \mathbb{Z}}\) es un subgrupo del grupo aditivo de los números reales \((\mathbb{R}, +)\).
2. **Ejercicio 2 (Ejercicio 2 del Capítulo 4 del texto base):** Sean \(H_1\) y \(H_2\) dos subgrupos de un grupo \((G, *)\). Demostrar analíticamente mediante la Proposición 4.14 que la intersección \(H_1 \cap H_2\) es un subgrupo de \((G, *)\).

---

### **7. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea \((G, *)\) un grupo arbitrario y \(H \subseteq G\) un subconjunto no vacío. ¿Cuál de las siguientes condiciones es **necesaria y suficiente** para garantizar que \(H\) sea un subgrupo de \(G\)?

- **A)** Que para todo \(a, b \in H\) se cumpla que \(a * b \in H\).
- **B)** Que para todo \(a, b \in H\) se cumpla que \(a * b^{-1} \in H\).
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - La opción A solo indica que la operación es interna en \(H\) (lo cual define un _semigrupo_ o _subsemigrupo_), pero no garantiza la existencia de elemento neutro ni de elementos simétricos en \(H\).
> - La **Proposición 4.14 del texto base** demuestra que la condición única \(\forall a, b \in H, a * b^{-1} \in H\) condensa simultáneamente la existencia de neutro, simétricos y clausura interna.
> - Por lo tanto, la opción **B** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión40_Subgrupos_y_grupos_abelianos.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con la jerarquía formal del Bloque 4, recuadros normativos para definiciones axiomáticas, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la demostración de la Proposición 4.14 y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión40_Subgrupos_y_grupos_abelianos.m4a): Enfocado en la definición de subgrupo, el criterio unificado de caracterización \(a * b^{-1} \in H\), los subgrupos de \((\mathbb{Z}, +)\) de la forma \(n\mathbb{Z}\), la estabilidad por intersección, las caracterizaciones algebraicas de los grupos abelianos y la introducción a la congruencia módulo un subgrupo y las clases laterales.

---
