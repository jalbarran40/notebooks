# **SESIÓN 39 (TEORÍA): ESTRUCTURA DE GRUPO: DEFINICIÓN Y EJEMPLOS FUNDAMENTALES ($\mathbb{Z}, \mathbb{Q}, \mathbb{R}$ CON LA SUMA)**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 4: OPERACIONES INTERNAS Y ESTRUCTURAS ALGEBRAICAS (Capítulo 4)  
**Objetivo:** Definir formalmente la estructura algebraica de *_Grupo $(G, _)$__ a partir de una ley de composición interna que satisface los tres axiomas fundamentales (**asociatividad, elemento neutro e inverso/simétrico**), distinguir los **grupos abelianos (o conmutativos)**, demostrar las propiedades deduciendas de los axiomas (**propiedad cancelativa, solución única de ecuaciones lineales e inverso de un producto**), y clasificar los ejemplos fundamentales del texto base de la UNED (Delgado Pineda & Muñoz Bouzo).

---

### **1. Marco Teórico: Definición Axiomática de Grupo**

#### **A. Definición de Grupo**

Un conjunto no vacío $G$ dotado de una operación interna $*: G \times G \to G$ tiene **estructura de grupo** (o el par $(G, _)$ es un **grupo**) si y solo si la operación $_$ satisface las siguientes tres propiedades axiomáticas:

1. **Axioma (G1) — Asociatividad:** \[\forall a, b, c \in G, \quad (a * b) * c = a * (b * c)\]
2. **Axioma (G2) — Existencia de Elemento Neutro:**  
    Existe un elemento $e \in G$ tal que operado con cualquier elemento de $G$ por la izquierda y por la derecha lo deja invariable: \[\exists e \in G \text{ tal que } \forall a \in G, \quad a * e = e * a = a\]
3. **Axioma (G3) — Existencia de Elemento Simétrico (o Inverso):**  
    Para todo elemento $a \in G$, existe un elemento $a' \in G$ tal que al operarlos da como resultado el elemento neutro: \[\forall a \in G, \quad \exists a' \in G \text{ tal que } a * a' = a' * a = e\]

---

#### **B. Grupo Conmutativo o Abeliano**

Un grupo $(G, *)$ es un **grupo conmutativo** (o **grupo abeliano**, en honor al matemático Niels Henrik Abel) si la operación interna satisface además el axioma de conmutatividad:

\[\forall a, b \in G, \quad a * b = b * a\]

- **Notación Aditiva:** Cuando la operación del grupo es conmutativa y se denota por $+$, el neutro se simboliza por $0$, el simétrico de $a$ por $-a$ (opuesto), y el producto compuesto $a + (-b)$ se escribe sencillamente $a - b$.
- **Notación Multiplicativa:** Cuando la operación se denota por $\cdot$, el neutro se simboliza por $1$ o $e$, y el simétrico de $a$ por $a^{-1}$ (inverso).

---

### **2. Propiedades Fundamentales Derivadas en un Grupo**

Sea $(G, *)$ un grupo de elemento neutro $e \in G$.

#### **Proposición 4.12 / 3.2.2 (Propiedades Básicas de los Grupos):**

1. **Propiedad Cancelativa (o de Simplificación):**  
    _Para cualesquiera $a, b, c \in G$:_ \[a * b = a * c \implies b = c \quad (\text{cancelación por la izquierda})\] \[b * a = c * a \implies b = c \quad (\text{cancelación por la derecha})\]
    
    - **Demostración Analítica Paso a Paso (Estándar UNED):**
        1. Sea $a * b = a * c$. Dado que $G$ es un grupo, existe el simétrico $a^{-1} \in G$.
        2. Componemos a la izquierda por $a^{-1}$: \[a^{-1} * (a * b) = a^{-1} * (a * c)\]
        3. Aplicando la propiedad **asociativa (G1)**: \[(a^{-1} * a) * b = (a^{-1} * a) * c\]
        4. Por la definición de **elemento simétrico (G3)**, $a^{-1} * a = e$: \[e * b = e * c\]
        5. Por la definición de **elemento neutro (G2)**, $e * b = b$ y $e * c = c$, de donde obtenemos **$b = c$**. $\blacksquare$

---

2. **Resolución Única de Ecuaciones Lineales:**  
    _Para cualesquiera $a, b \in G$, existe una **única solución $x \in G$** que satisface la ecuación $a * x = b$, y una **única solución $y \in G$** para $y * a = b$._
    
    - **Demostración Analítica:**
        - **Existencia:** Tomamos $x = a^{-1} * b \in G$. Sustituyendo:  
            \[a * (a^{-1} * b) = (a * a^{-1}) * b = e * b = b\]
        - **Unicidad:** Si existieran dos soluciones $x_1, x_2 \in G$, tendríamos $a * x_1 = b$ y $a * x_2 = b \implies a * x_1 = a * x_2$. Por la propiedad cancelativa por la izquierda, **$x_1 = x_2$**. $\blacksquare$

---

3. **Inverso del Producto (Simétrico de la Composición):**  
    _Para todo $a, b \in G$, el simétrico del elemento compuesto $a * b$ invierte el orden de los simétricos:_ \[(a * b)^{-1} = b^{-1} * a^{-1}\]
    
    - **Demostración Analítica:**  
        Operamos $(a * b)$ con $(b^{-1} * a^{-1})$ usando la propiedad **asociativa**: \[(a * b) * (b^{-1} * a^{-1}) = a * (b * b^{-1}) * a^{-1} = a * e * a^{-1} = a * a^{-1} = e\] De igual forma: \[(b^{-1} * a^{-1}) * (a * b) = b^{-1} * (a^{-1} * a) * b = b^{-1} * e * b = b^{-1} * b = e\] Por la unicidad del elemento simétrico, concluimos que **$(a * b)^{-1} = b^{-1} * a^{-1}$**. $\blacksquare$
3. **Involutividad del Simétrico:** $(a^{-1})^{-1} = a$ para todo $a \in G$.
    

---

### **3. Catálogo de Ejemplos Emblemáticos del Texto Base**

#### **A. Grupos Abelianos (Conmutativos)**

1. **Estructuras Numéricas Aditivas:**  
    $(\mathbb{Z}, +)$, $(\mathbb{Q}, +)$, $(\mathbb{R}, +)$ y $(\mathbb{C}, +)$ son grupos abelianos respecto de la suma usual.
    - Elemento neutro: $0$.
    - Simétrico de $a$: el opuesto $-a$.
2. **Estructuras Numéricas Multiplicativas (sin el cero):**  
    $(\mathbb{Q}^*, \cdot)$, $(\mathbb{R}^*, \cdot)$ y $(\mathbb{C}^*, \cdot)$ (donde $K^* = K \setminus {0}$) son grupos abelianos respecto del producto usual.
    - Elemento neutro: $1$.
    - Simétrico de $a$: el inverso $a^{-1} = \frac{1}{a}$.
3. **Grupo Conjuntista de la Diferencia Simétrica $(\mathcal{P}(\Omega), \Delta)$:**  
    Para cualquier conjunto $\Omega$, el conjunto de sus partes $\mathcal{P}(\Omega)$ con la diferencia simétrica $A \Delta B = (A \setminus B) \cup (B \setminus A)$ es un grupo abeliano.
    - Elemento neutro: el conjunto vacío $\varnothing$ (pues $A \Delta \varnothing = A$).
    - Elemento simétrico: todo conjunto es su propio simétrico ($A' = A$, pues $A \Delta A = \varnothing$).
4. **Grupo de Matrices con la Suma $(M_{n \times m}(\mathbb{R}), +)$:**  
    El conjunto de matrices de dimensión $n \times m$ con la suma componente a componente es un grupo abeliano. Neutro: la matriz nula $0_{n \times m}$.

---

#### **B. Grupos NO Abelianos (No Conmutativos)**

1. **Grupo General Lineal $(GL_n(\mathbb{R}), \cdot)$:**  
    El conjunto de matrices cuadradas reales de orden $n$ con determinante no nulo ($GL_n(\mathbb{R}) = {A \in M_n(\mathbb{R}) \mid \det(A) \neq 0}$) con el producto matricial es un **grupo no abeliano** (para $n \ge 2$).
    - Neutro: la matriz identidad $I_n$.
    - Simétrico de $A$: la matriz inversa $A^{-1}$.
2. **Grupo de las Biyecciones $(\mathcal{B}(\Omega), \circ)$ o Grupo Simétrico $S_n$:**  
    El conjunto de todas las aplicaciones biyectivas $f: \Omega \to \Omega$ con la composición de aplicaciones es un **grupo no abeliano** (para $\text{card}(\Omega) \ge 3$).
    - Neutro: la aplicación identidad $I_\Omega$.
    - Simétrico de $f$: la aplicación inversa $f^{-1}$.

---

#### **C. Estructuras que NO Tienen Estructura de Grupo**

1. **$(\mathbb{N}, +)$:** La suma es interna y asociativa, el neutro es $0$, pero ningún elemento $a > 0$ posee opuesto en $\mathbb{N}$.
2. **$(\mathbb{R}, \cdot)$:** El producto es interno, asociativo y con neutro $1$, pero **el número $0$ no posee inverso multiplicativo** (no existe $x \in \mathbb{R}$ tal que $0 \cdot x = 1$).
3. **$(M_n(\mathbb{R}), \cdot)$:** Las matrices con determinante igual a cero no poseen matriz inversa respecto del producto.

---

### **4. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** En el conjunto $G = \mathbb{R} \setminus {-1}$, se define la operación interna $a * b = a + b + ab$.  
    a) Probar que $*$ es una ley de composición interna en $G$.  
    b) Demostrar que $(G, *)$ es un grupo abeliano indicando explícitamente su elemento neutro y el inverso de un elemento genérico $a \in G$ _(Solución: $e = 0$, $a^{-1} = \frac{-a}{1+a}$)_.
2. **Ejercicio 2 (Ejercicio 4.10 del texto base):** Demostrar que en todo grupo $(G, *)$, si se cumple que $x^2 = x * x = e$ para todo $x \in G$, entonces el grupo es obligatoriamente **abeliano** _(Indicación: Usar que $x^{-1} = x$ y aplicar la fórmula del inverso del producto)_.

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea $(G, *)$ un grupo arbitrario. Para dos elementos cualesquiera $a, b \in G$, se plantea la resolución de la ecuación $a * x * b = e$, donde $e$ representa el elemento neutro del grupo. ¿Cuál es la única solución $x \in G$ de dicha ecuación?

- **A)** $x = a^{-1} * b^{-1}$
- **B)** $x = b^{-1} * a^{-1}$
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Partimos de la ecuación $a * x * b = e$.
> - Multiplicamos por la izquierda por el elemento inverso $a^{-1}$: \[a^{-1} * (a * x * b) = a^{-1} * e \implies (a^{-1} * a) * x * b = a^{-1} \implies e * x * b = a^{-1} \implies x * b = a^{-1}\]
> - Multiplicamos ahora por la derecha por el elemento inverso $b^{-1}$: \[(x * b) * b^{-1} = a^{-1} * b^{-1} \implies x * (b * b^{-1}) = a^{-1} * b^{-1} \implies x * e = a^{-1} * b^{-1} \implies x = a^{-1} * b^{-1}\]
> - Por lo tanto, la solución única es **$x = a^{-1} * b^{-1}$**.
> - La opción B sería la inversa de $a * b$, pero para despejar $x$ en la ecuación dada, $a^{-1}$ queda a la izquierda y $b^{-1}$ queda a la derecha.
> - Por consiguiente, la opción **A** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión39_Estructura_de_grupo.pptx) Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con la jerarquía formal del Bloque 4, recuadros normativos para definiciones axiomáticas, el escape estricto de llaves `\{` y `\}`, el símbolo `\varnothing` para el conjunto vacío, demostraciones de propiedades cancelativas y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión39_Estructura_de_grupo.m4a) Enfocado en la abstracción algebraica de la estructura de Grupo $(G, *)$, los axiomas que la definen, la diferencia entre grupos abelianos y no conmutativos (como $GL_n(\mathbb{R})$ o $\mathcal{B}(\Omega)$), la demostración de la propiedad cancelativa y de la ecuación $a * x = b$, la regla de inversión del producto $(a * b)^{-1} = b^{-1} * a^{-1}$ y las pautas para el examen de desarrollo.