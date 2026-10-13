# **SESIÓN 43 (TEORÍA): ESTRUCTURAS DE ANILLO Y CUERPO: PROPIEDADES BÁSICAS**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 4: OPERACIONES INTERNAS Y ESTRUCTURAS ALGEBRAICAS (Capítulo 4)  
**Objetivo:** Definir formalmente las estructuras algebraicas dotadas de dos operaciones internas habituales (suma y producto): **Anillo $(A, +, \cdot)$** y **Cuerpo $(\mathbb{K}, +, \cdot)$**, analizar la propiedad de **distributividad**, clasificar los anillos (**conmutativos, unitarios, íntegros**), caracterizar los **elementos invertibles** y los **divisores de cero**, definir **subanillos e ideales**, y estudiar los ejemplos numéricos fundamentales del texto base de la UNED (Delgado Pineda & Muñoz Bouzo).

---

### **1. Marco Teórico: Estructura de Anillo**

#### **A. Definición Axiomática de Anillo**

Sea $A$ un conjunto no vacío dotado de dos operaciones internas, que por convención denotamos por **suma ($+$)** y **producto ($\cdot$)**. La terna $(A, +, \cdot)$ es un **anillo** si satisface las siguientes tres condiciones axiomáticas:

1. **$(A, +)$ es un grupo abeliano (o conmutativo):**
    - **Asociativa:** $\forall a, b, c \in A, (a + b) + c = a + (b + c)$.
    - **Conmutativa:** $\forall a, b \in A, a + b = b + a$.
    - **Elemento Nulo:** Existe un elemento $0 \in A$ tal que $a + 0 = a$ para todo $a \in A$.
    - **Elemento Opuesto:** Para todo $a \in A$, existe $-a \in A$ tal que $a + (-a) = 0$.
2. **La operación producto ($\cdot$) es asociativa:**  
    $$\forall a, b, c \in A, \quad (a \cdot b) \cdot c = a \cdot (b \cdot c)$$
3. **La operación producto ($\cdot$) es distributiva respecto de la suma ($+$):**  
    $$\forall a, b, c \in A, \quad a \cdot (b + c) = a \cdot b + a \cdot c \quad \land \quad (b + c) \cdot a = b \cdot a + c \cdot a$$

---

#### **B. Clasificación de Anillos**

- **Anillo Conmutativo:** Se dice que $(A, +, \cdot)$ es un **anillo conmutativo** si la operación producto es conmutativa: $$\forall a, b \in A, \quad a \cdot b = b \cdot a$$
- **Anillo Unitario:** Se dice que $(A, +, \cdot)$ es un **anillo unitario** si la operación producto posee elemento neutro, denominado **elemento unidad** y denotado por $1$ (con $1 \neq 0$): $$\exists 1 \in A \text{ tal que } \forall a \in A, \quad a \cdot 1 = 1 \cdot a = a$$
- **Elementos Invertibles (o Unidades):** En un anillo unitario $A$, un elemento $a \in A$ se dice **invertible** (o es una **unidad**) si posee simétrico respecto del producto, denotado por $a^{-1}$: $$\exists a^{-1} \in A \text{ tal que } a \cdot a^{-1} = a^{-1} \cdot a = 1$$

---

### **2. Divisores de Cero y Anillos Íntegros (Dominios de Integridad)**

#### **A. Divisores de Cero**

En un anillo $(A, +, \cdot)$, se dice que un elemento no nulo $a \in A$ ($a \neq 0$) es un **divisor de cero** si existe otro elemento no nulo $b \in A$ ($b \neq 0$) tal que su producto es el elemento nulo:

$$a \cdot b = 0 \quad \lor \quad b \cdot a = 0$$

#### **B. Anillo Íntegro (o Dominio de Integridad)**

Un anillo conmutativo y unitario $(A, +, \cdot)$ es un **anillo íntegro** (o **dominio de integridad**) si **no posee divisores de cero**. Esto equivale a que se verifica la propiedad simplificativa del producto para elementos no nulos:

$$\forall a, b \in A, \quad (a \cdot b = 0 \implies a = 0 \lor b = 0)$$

---

#### **Proposición (Ejercicio 4.23 del Texto Base - Incompatibilidad entre Invertible y Divisor de Cero):**

_En un anillo unitario $(A, +, \cdot)$, si un elemento $a \in A$ es un divisor de cero, entonces **$a$ no puede ser invertible**. En consecuencia, ningún elemento invertible de un anillo puede ser divisor de cero._

- **Demostración Analítica Paso a Paso (Examen de Desarrollo UNED):**
    
    1. Procedemos por **reducción al absurdo**. Supongamos que $a \in A$ es un divisor de cero que además es **invertible**.
    2. Como $a$ es divisor de cero, por definición existe un elemento $b \in A$ con **$b \neq 0$** tal que: $$a \cdot b = 0$$
    3. Como $a$ es invertible por hipótesis, existe su inverso multiplicativo $a^{-1} \in A$. Multiplicamos la igualdad anterior por $a^{-1}$ a la izquierda: $$a^{-1} \cdot (a \cdot b) = a^{-1} \cdot 0$$
    4. Aplicando la propiedad **asociativa del producto** a la izquierda y sabiendo que $a^{-1} \cdot 0 = 0$ (propiedad absorbente del cero): $$(a^{-1} \cdot a) \cdot b = 0$$
    5. Como $a^{-1} \cdot a = 1$ (elemento unidad): $$1 \cdot b = 0 \implies b = 0$$
    6. Llegamos a la **contradicción de que $b = 0$**, en contra de la elección inicial de $b \neq 0$.
    7. **Conclusión:** Ningún divisor de cero es invertible. $\blacksquare$

---

### **3. Subanillos e Ideales**

#### **A. Subanillo (Proposición 4.24)**

Un subconjunto no vacío $H \subseteq A$ de un anillo $(A, +, \cdot)$ es un **subanillo** de $A$ si $(H, +, \cdot)$ es en sí mismo un anillo.

> **Criterio de Subanillo (Proposición 4.24):**  
> $H \subseteq A$ es un subanillo si y solo si para todo $a, b \in H$:
> 
> 1. $a - b \in H$ _(asegura que $(H, +)$ es subgrupo aditivo)_.
> 2. $a \cdot b \in H$ _(asegura clausura respecto del producto)_.
> 3. Si $A$ es unitario, $1 \in H$.

---

#### **B. Ideales en Anillos Conmutativos (Definición 4.27)**

Sea $(A, +, \cdot)$ un anillo conmutativo. Un subconjunto no vacío $I \subseteq A$ ($I \neq \varnothing$) es un **ideal de $A$** si cumple:

1. **Subgrupo Aditivo:** $\forall a, b \in I, \quad a - b \in I$.
2. **Propiedad de Absorción del Producto:** La multiplicación de cualquier elemento del ideal por _cualquier elemento del anillo completo_ vuelve a caer dentro del ideal: $$\forall a \in I, \quad \forall c \in A, \quad a \cdot c \in I$$

- **Ideal Principal (Definición 4.29):** Para un elemento fijo $a \in A$, el conjunto de todos sus múltiplos en $A$ forma un ideal denominado **ideal principal generado por $a$**, denotado por **$(a)$** o **$aA$**: $$(a) = aA = {a \cdot k \mid k \in A}$$

---

### **4. Estructura de Cuerpo**

#### **A. Definición Axiomática de Cuerpo (Definición 4.30)**

Un conjunto no vacío $\mathbb{K}$ dotado de dos operaciones internas $+$ y $\cdot$ es un **cuerpo** si es un **anillo conmutativo unitario en el que todo elemento no nulo es invertible respecto del producto**:

$$(\mathbb{K}, +, \cdot) \text{ es un cuerpo} \iff (\mathbb{K}, +, \cdot) \text{ es anillo conmutativo unitario} \quad \land \quad (\forall a \in \mathbb{K} \setminus {0}, \exists a^{-1} \in \mathbb{K})$$

#### **B. Proposición 4.33 (Caracterización Equivalente de Cuerpo)**

_La terna $(\mathbb{K}, +, \cdot)$ es un **cuerpo** si y solo si:_

1. **$(\mathbb{K}, +)$ es un grupo abeliano** (con neutro $0$).
2. $(\mathbb{K}^*, \cdot)$ **es un grupo abeliano** (donde $\mathbb{K}^* = \mathbb{K} \setminus {0}$, con neutro $1$).
3. **El producto $\cdot$ es distributivo respecto de la suma $+$**.

> **Propiedad Esencial:** Como todos los elementos no nulos de un cuerpo son invertibles, por la Proposición probada previamente **ningún cuerpo posee divisores de cero**. Todo cuerpo es un **dominio de integridad (anillo íntegro)**.

---

### **5. Catálogo de Ejemplos Emblemáticos del Texto Base**

1. **El Anillo de los Enteros $(\mathbb{Z}, +, \cdot)$:**  
    Es un **anillo conmutativo unitario íntegro** (sin divisores de cero).
    - **¿Es cuerpo?:** **NO**, porque los únicos elementos invertibles en $\mathbb{Z}$ son $1$ y $-1$ (por ejemplo, $2 \in \mathbb{Z}$ no posee inverso multiplicativo entero).
2. **Los Cuerpos Numéricos $(\mathbb{Q}, +, \cdot)$, $(\mathbb{R}, +, \cdot)$ y $(\mathbb{C}, +, \cdot)$:**  
    Son **cuerpos conmutativos** (todo número racional, real o complejo no nulo admite inverso).
3. **El Anillo de Restos Módulo $n$ $(\mathbb{Z}/n\mathbb{Z}, +, \cdot)$:**
    - Si $n$ es un **número primo $p$** (ej. $\mathbb{Z}/3\mathbb{Z} = {,,}$): **es un cuerpo** (cada clase no nula es invertible).
    - Si $n$ es un **número compuesto** (ej. $\mathbb{Z}/4\mathbb{Z} = {,,,}$): **NO es un cuerpo**, pues contiene divisores de cero (ej. $ \cdot = = $ con $ \neq $).
4. **El Anillo Conjuntista $(\mathcal{P}(\Omega), \Delta, \cap)$:**  
    Es un **anillo conmutativo unitario** donde la "suma" es la diferencia simétrica $\Delta$ (neutro $\varnothing$) y el "producto" es la intersección $\cap$ (unidad $\Omega$).
    - **Divisores de Cero:** Si $A \subset \Omega$ con $A \neq \varnothing$ y $A \neq \Omega$, tomando su complementario $A^c \neq \varnothing$ tenemos $A \cap A^c = \varnothing$. Por tanto, **posee divisores de cero**.
5. **El Anillo de Matrices $(M_n(\mathbb{R}), +, \cdot)$ (para $n \ge 2$):**  
    Es un **anillo unitario NO conmutativo** (el producto matricial no conmuta) y **con divisores de cero** (existen matrices no nulas cuyo producto da la matriz nula).

---

### **6. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1 (Ejercicio 4.25 del texto base):** Demostrar que el conjunto $\mathbb{Z}[\sqrt{2}] = {a + b\sqrt{2} \mid a, b \in \mathbb{Z}}$ con la suma y producto usuales de números reales es un **subanillo unitario de $\mathbb{R}$**.
2. **Ejercicio 2 (Ejercicio 4.26 del libro base):** Probar que para $n \ge 2$, el conjunto de los múltiplos $n\mathbb{Z} = {kn \mid k \in \mathbb{Z}}$ es un subanillo del anillo $\mathbb{Z}$, pero **NO es unitario**.
3. **Ejercicio 3 (Ejercicio 15 de los ejercicios del Capítulo 4):** Sea $\mathbb{K} = {a + b\sqrt{2} \mid a, b \in \mathbb{Q}}$. Demostrar que $(\mathbb{K}, +, \cdot)$ es un **subcuerpo de $\mathbb{R}$** calculando explícitamente el inverso de cualquier elemento no nulo $a + b\sqrt{2} \neq 0$.

---

### **7. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea $(A, +, \cdot)$ un anillo conmutativo unitario. Consideramos las afirmaciones sobre elementos invertibles y divisores de cero. ¿Cuál de las siguientes afirmaciones es **verdadera**?

- **A)** Si un elemento $a \in A$ es un divisor de cero, entonces jamás puede ser un elemento invertible del anillo.
- **B)** Todos los anillos conmutativos y unitarios carecen de divisores de cero, por lo que todo anillo es un cuerpo.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Demostramos analíticamente en la Proposición (Ejercicio 4.23) que si un elemento $a \in A$ fuera divisor de cero ($ab = 0$ con $b \neq 0$) e invertible ($a^{-1}$ existe), al multiplicar por $a^{-1}$ se obtiene $b = 0$, lo cual es absurdo. Por tanto, **ningún divisor de cero es invertible**. La opción **A** es la **verdadera**.
> - La opción B es falsa pues existen multitud de anillos conmutativos unitarios con divisores de cero (como $(\mathbb{Z}/4\mathbb{Z}, +, \cdot)$ o $(\mathcal{P}(\Omega), \Delta, \cap)$), los cuales por tanto no son cuerpos.
> - Por lo tanto, la opción **A** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión43_Estructuras_de_anillo_y_cuerpo.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con el encabezado del Bloque 4, recuadros normativos para las definiciones de Anillo y Cuerpo, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la demostración de imposibilidad de divisores de cero invertibles y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión43_Estructuras_de_anillo_y_cuerpo.m4a): Enfocado en la transición de estructuras con una sola operación (grupos) a estructuras con dos operaciones compatibles (anillos y cuerpos), la axiomatización de la distributividad, los tipos de anillos (conmutativos, unitarios e íntegros), la noción de divisores de cero, subanillos e ideales, la caracterización de cuerpos como grupos abeliano aditivo y multiplicativo no nulo $(\mathbb{K}^*, \cdot)$, los ejemplos numéricos y el análisis de los anillos de restos $\mathbb{Z}/n\mathbb{Z}$.

---
