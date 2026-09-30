# **SESIÓN 19 (TEORÍA): EL CONJUNTO DE LAS PARTES DE UN CONJUNTO. PRODUCTO CARTESIANO**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 2: CONJUNTOS (Capítulo 2)  
**Objetivo:** Comprender la definición formal del **conjunto de las partes (o conjunto potencia) \(\mathcal{P}(A)\)**, justificar la fórmula de su cardinalidad (\(2^n\)), introducir el concepto riguroso de **par ordenado \((a, b)\)**, definir el **producto cartesiano \(A \times B\)** y analizar sus propiedades algebraicas fundamentales (no conmutatividad, distributividad respecto a la unión e intersección, y cardinalidad), asentando las bases para el estudio de relaciones y aplicaciones (Bloque 3).

---

### **1. El Conjunto de las Partes de un Conjunto (\(\mathcal{P}(A)\))**

#### **Definición Formal por Comprensión**

Dado un conjunto \(A\) perteneciente a un universo \(U\), se denomina **conjunto de las partes de \(A\)** (o conjunto potencia) al conjunto cuyo universo de elementos son todos los subconjuntos de \(A\). Se denota por **\(\mathcal{P}(A)\)** (o bien \(2^A\)): \[\mathcal{P}(A) = {X \subseteq U \mid X \subseteq A}\]

#### **Caracterización Sintáctica de Pertenencia e Inclusión**

Existe una equivalencia sintáctica crucial entre la pertenencia al conjunto de las partes y la relación de inclusión respecto al conjunto original: \[X \in \mathcal{P}(A) \iff X \subseteq A\]

#### **Elementos Notables e Invariantes**

Para cualquier conjunto \(A\), existen dos subconjuntos triviales que pertenecen de forma permanente e incondicional a \(\mathcal{P}(A)\):

1. **El conjunto vacío:** Como \(\emptyset \subseteq A\) para todo \(A\), resulta que **\(\emptyset \in \mathcal{P}(A)\)**.
2. **El propio conjunto \(A\):** Como \(A \subseteq A\) por la propiedad reflexiva de la inclusión, resulta que **\(A \in \mathcal{P}(A)\)**.

> **Advertencia de Rigor Sintáctico para el Examen:**  
> Es erróneo escribir \(\emptyset \subseteq \mathcal{P}(A)\) como sinónimo de que el vacío es elemento; lo correcto es indicar que \(\emptyset \in \mathcal{P}(A)\) (como elemento) y \({\emptyset} \subseteq \mathcal{P}(A)\) (como subconjunto unitario).

#### **Cardinalidad del Conjunto de las Partes**

Si \(A\) es un conjunto finito de cardinal \(\text{card}(A) = n\), el número total de subconjuntos de \(A\) viene dado por la potencia de base 2: \[\text{card}(\mathcal{P}(A)) = 2^{\text{card}(A)} = 2^n\]

- **Ejemplo Ilustrativo:** Sea \(A = {a, b, c}\), con \(\text{card}(A) = 3\).  
    El conjunto de las partes consta de \(2^3 = 8\) elementos: \[\mathcal{P}(A) = {\emptyset, {a}, {b}, {c}, {a, b}, {a, c}, {b, c}, {a, b, c}}\]

---

### **2. Concepto de Par Ordenado y su Igualdad Fundamental**

#### **Par Ordenado vs. Conjunto de Dos Elementos**

Un conjunto no ordenado de dos elementos \({a, b}\) cumple por el axioma de extensionalidad que \({a, b} = {b, a}\). Sin embargo, en matemáticas es imprescindible disponer de una estructura donde el orden de presentación determine la identidad del objeto (por ejemplo, para representar puntos en el plano o entradas en una tabla).

Un **par ordenado** se denota mediante paréntesis **\((a, b)\)**, donde \(a\) es la **primera componente** (o primera coordenada) y \(b\) es la **segunda componente**.

#### **Propiedad Fundamental de Igualdad de Pares Ordenados**

Dos pares ordenados \((a, b)\) y \((c, d)\) son iguales si y solo si sus respectivas componentes coinciden término a término: \[(a, b) = (c, d) \iff (a = c \land b = d)\]

> **Consecuencia:** Si \(a \neq b\), entonces \((a, b) \neq (b, a)\), mientras que para conjuntos no ordenados siempre se cumple \({a, b} = {b, a}\).

---

### **3. El Producto Cartesiano de Conjuntos (\(A \times B\))**

#### **Definición Formal por Comprensión**

Dados dos conjuntos \(A\) y \(B\), se define el **producto cartesiano de \(A\) por \(B\)**, y se denota **\(A \times B\)** (leído _"A cruz B"_ o _"A por B"_), como el conjunto de todos los pares ordenados cuya primera componente pertenece a \(A\) y cuya segunda componente pertenece a \(B\): \[A \times B = {(a, b) \mid a \in A \land b \in B}\]

Si \(A = B\), se suele emplear la notación abreviada **\(A^2 = A \times A\)**.

#### **Cardinalidad del Producto Cartesiano Finito**

Si \(A\) y \(B\) son conjuntos finitos con \(\text{card}(A) = m\) y \(\text{card}(B) = n\), el número total de pares ordenados de \(A \times B\) es el producto aritmético de sus cardinales: \[\text{card}(A \times B) = \text{card}(A) \cdot \text{card}(B) = m \cdot n\]

#### **Propiedades Algebraicas del Producto Cartesiano**

1. **No Conmutatividad (en general):**  
    Para dos conjuntos cualesquiera \(A\) y \(B\), en general: \[A \times B \neq B \times A\] _La conmutatividad \(A \times B = B \times A\) solo se verifica si \(A = B\) o bien si alguno de los factores es el conjunto vacío (\(A = \emptyset\) o \(B = \emptyset\))._
    
2. **Elemento Absorbente (Conjunto Vacío):**  
    El producto cartesiano de cualquier conjunto por el conjunto vacío resulta en el conjunto vacío: \[A \times \emptyset = \emptyset \times A = \emptyset\]
    
3. **Propiedad Distributiva respecto a la Unión:** \[A \times (B \cup C) = (A \times B) \cup (A \times C)\] \[(B \cup C) \times A = (B \times A) \cup (C \times A)\]
    
4. **Propiedad Distributiva respecto a la Intersección:** \[A \times (B \cap C) = (A \times B) \cap (A \times C)\] \[(B \cap C) \times A = (B \times A) \cap (C \times A)\]
    

---

### **4. Demostración Analítica para Examen de Desarrollo**

**Enunciado:** Demostrar formalmente por doble inclusión la propiedad distributiva del producto cartesiano respecto a la intersección: \[A \times (B \cap C) = (A \times B) \cap (A \times C)\]

- **Demostración Paso a Paso (Estándar UNED):**
    
    1. **Inclusión Directa (\(A \times (B \cap C) \subseteq (A \times B) \cap (A \times C)\)):**
        
        - Sea \((x, y) \in A \times (B \cap C)\) un elemento genérico arbitrario.
        - Por la definición de producto cartesiano, esto significa que \(x \in A \land y \in (B \cap C)\).
        - Por la definición de intersección, \(y \in (B \cap C) \iff (y \in B \land y \in C)\).
        - Sustituyendo, tenemos: \(x \in A \land (y \in B \land y \in C)\).
        - Por la propiedad de idempotencia y asociatividad de la conjunción en lógica proposicional, reescribimos: \[(x \in A \land y \in B) \land (x \in A \land y \in C)\]
        - Por definición de producto cartesiano, esto equivale a: \[(x, y) \in (A \times B) \land (x, y) \in (A \times C)\]
        - Por definición de intersección de conjuntos, deducimos que: \[(x, y) \in (A \times B) \cap (A \times C)\]
        - Queda probada la inclusión directa: **\(A \times (B \cap C) \subseteq (A \times B) \cap (A \times C)\)**.
    2. **Inclusión Recíproca (\((A \times B) \cap (A \times C) \subseteq A \times (B \cap C)\)):**
        
        - Sea \((u, v) \in (A \times B) \cap (A \times C)\) arbitrario.
        - Por definición de intersección, \((u, v) \in (A \times B) \land (u, v) \in (A \times C)\).
        - Por definición de producto cartesiano en ambos lados: \[(u \in A \land v \in B) \land (u \in A \land v \in C)\]
        - Simplificando la proposición mediante las leyes de la conjunción: \[u \in A \land (v \in B \land v \in C)\]
        - Por definición de intersección, \(v \in (B \cap C)\), luego \(u \in A \land v \in (B \cap C)\).
        - Por definición de producto cartesiano: \((u, v) \in A \times (B \cap C)\).
        - Queda probada la inclusión recíproca: **\((A \times B) \cap (A \times C) \subseteq A \times (B \cap C)\)**.
    3. **Conclusión:** Demostradas ambas inclusiones, se concluye por el **Axioma de Extensionalidad** que: \[A \times (B \cap C) = (A \times B) \cap (A \times C) \quad \blacksquare\]
        

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea \(A = {1, 2}\) y \(B = {3}\). ¿Cuál de las siguientes afirmaciones respecto a \(\mathcal{P}(A) \times B\) es **verdadera**?

- **A)** \(\text{card}(\mathcal{P}(A) \times B) = 4\)
- **B)** \(\mathcal{P}(A) \times B = {(1, 3), (2, 3)}\)
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Calculamos los elementos de \(\mathcal{P}(A)\): como \(\text{card}(A) = 2\), \(\text{card}(\mathcal{P}(A)) = 2^2 = 4\). Sus elementos son \(\mathcal{P}(A) = {\emptyset, {1}, {2}, {1, 2}}\).
> - Como \(\text{card}(B) = 1\), la cardinalidad del producto cartesiano es: \[\text{card}(\mathcal{P}(A) \times B) = \text{card}(\mathcal{P}(A)) \cdot \text{card}(B) = 4 \cdot 1 = 4\]
> - Por tanto, la afirmación A es **verdadera**.
> - La opción B es falsa porque confundiría \(A \times B\) (que tiene 2 pares) con \(\mathcal{P}(A) \times B\) (que contiene pares cuyos primeros elementos son subconjuntos, como \((\emptyset, 3)\) o \(({1}, 3)\)).
> - La opción **A** es la **correcta**.

---
## Material adicional

### [**Presentación**]():
Elaborada conforme al _Manual_de_Estilo_Presentaciones_, con la maquetación por bloques, recuadros normativos de notación oficial e inclusión de la pregunta de autoevaluación.
### [**Resumen de Audio](Sesión19_El_conjunto_de_las_partes_de_un_conjunto.m4a):
Centrado en la motivación conceptual del conjunto de las partes \(\mathcal{P}(A)\), la prueba de por qué su cardinal es \(2^n\), la distinción entre el par ordenado \((a, b)\) y el conjunto \({a, b}\), la construcción del producto cartesiano \(A \times B\) y sus propiedades algebraicas.