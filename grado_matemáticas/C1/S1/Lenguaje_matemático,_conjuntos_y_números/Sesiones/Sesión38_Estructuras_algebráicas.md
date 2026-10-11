# **SESIÓN 38 (TEORÍA): OPERACIONES INTERNAS: ASOCIATIVIDAD, CONMUTATIVIDAD Y ELEMENTOS NEUTRO/SIMÉTRICO**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 4: OPERACIONES INTERNAS Y ESTRUCTURAS ALGEBRAICAS (Capítulo 4)  
**Objetivo:** Comprender el concepto formal de **operaciones internas (o leyes de composición interna)** en un conjunto $E$ como aplicaciones $*: E \times E \to E$, analizar sus propiedades estructurales de **asociatividad** y **conmutatividad**, caracterizar la existencia y demostración de **unicidad del elemento neutro $e$** y del **elemento simétrico $a'$**, y ejercitar los ejemplos del texto base de la UNED (Delgado Pineda & Muñoz Bouzo).

---

### **1. Marco Teórico: Concepto Formal de Operación Interna**

#### **A. Definición de Operación Interna (o Ley de Composición Interna)**

Dado un conjunto no vacío $E$, una **operación interna** (o **ley de composición interna**) en $E$ es una aplicación definida del producto cartesiano $E \times E$ en el propio conjunto $E$:

$$\begin{aligned} *: E \times E &\longrightarrow E \ (a, b) &\longmapsto a * b \end{aligned}$$

- **Notación:** En lugar de escribir la notación funcional $(a, b) \mapsto *(a, b)$, se utiliza la **notación infija** $a * b$ (o mediante otros símbolos como $+$, $\cdot$, $\circ$, $\Delta$, $\oplus$).
- **Condición de Clausura (o Cerramiento):** Para que $*$ sea una operación interna en $E$, es requisito indispensable que para todo par de elementos $a, b \in E$, el resultado $a * b$ pertenezca obligatoriamente al conjunto $E$: $$\forall a, b \in E, \quad a * b \in E$$

---

### **2. Propiedades Estructurales Básicas**

Sea $E$ un conjunto dotado de una operación interna $*$.

#### **1. Propiedad Asociativa**

Una operación interna $*$ en $E$ es **asociativa** si y solo si el resultado de operar tres elementos no depende de cómo se agrupen mediante paréntesis:

$$\forall a, b, c \in E, \quad (a * b) * c = a * (b * c)$$

- **Ventaja Sintáctica:** Permite eliminar los paréntesis y escribir de forma unívoca $a * b * c$. Además, permite definir por recurrencia el producto de $n+1$ elementos: $$a_1 * a_2 * \dots * a_n * a_{n+1} = (a_1 * a_2 * \dots * a_n) * a_{n+1}$$
- **Notaciones Generalizadas:** Cuando la operación asociativa se representa en notación aditiva ($+$) o multiplicativa ($\cdot$), se utilizan respectivamente los sumatorios ($\sum_{i=1}^n a_i$) y los productos ($\prod_{i=1}^n a_i$). De igual forma, en teoría de conjuntos se emplean las uniones ($\bigcup_{i=1}^n A_i$) e intersecciones ($\bigcap_{i=1}^n A_i$).

---

#### **2. Propiedad Conmutativa**

Una operación interna $*$ en $E$ es **conmutativa** si y solo si el orden de los operandos no altera el resultado final:

$$\forall a, b \in E, \quad a * b = b * a$$

- **Importancia de Manejo en Igualdades No Conmutativas:** Cuando una operación no es conmutativa (como la multiplicación de matrices cuadradas $M_n(\mathbb{R})$ o la composición de aplicaciones $\mathcal{F}(\Omega)$), si se tiene una igualdad $A = B$, al operar por un elemento $C$ se debe mantener estrictamente la posición: $$A = B \implies A * C = B * C \quad (\text{a la derecha}) \quad \lor \quad C * A = C * B \quad (\text{a la izquierda})$$ _(En general, $A * C \neq C * B$)._

---

### **3. Elementos Notables: Elemento Neutro y Elemento Simétrico**

#### **A. Elemento Neutro**

Un elemento $e \in E$ es el **elemento neutro** de la operación interna $*$ en $E$ si al operarlo con cualquier elemento $a \in E$, tanto a la izquierda como a la derecha, lo deja invariable:

$$\exists e \in E \text{ tal que } \forall a \in E, \quad a * e = e * a = a$$

#### **Proposición 4.5 (Unicidad del Elemento Neutro)**

_Si existe elemento neutro $e \in E$ para una operación interna $_$, este es **único**.*

- **Demostración Analítica Paso a Paso (Estándar UNED):**
    1. Supongamos por contradicción que existen dos elementos neutros $e, e' \in E$ para la operación $*$.
    2. Evaluamos la expresión $e * e'$ aplicando la definición de neutro para cada uno:
        - Al ser $e'$ elemento neutro: $e * e' = e$.
        - Al ser $e$ elemento neutro: $e * e' = e'$.
    3. Por la transitividad de la igualdad en $E$, se deduce inmediatamente que $e = e'$. $\blacksquare$

---

#### **B. Elemento Simétrico (o Inverso / Opuesto)**

Supongamos que el conjunto $E$ posee elemento neutro $e \in E$ respecto a la operación $*$. Dado un elemento $a \in E$, se dice que $a' \in E$ es un **elemento simétrico** de $a$ si cumple:

$$a * a' = a' * a = e$$

- **Notaciones Habituadas:**
    - En **notación aditiva** ($+$): El neutro se denota por $0$ y el simétrico de $a$ se denomina **opuesto**, denotándolo por $-a$.
    - En **notación multiplicativa** ($\cdot$): El neutro se denota por $1$ y el simétrico de $a$ se denomina **inverso**, denotándolo por $a^{-1}$ o $\frac{1}{a}$.

#### **Proposición 4.7 (Unicidad del Elemento Simétrico)**

_Sea $_$ una operación interna **asociativa** en $E$ con elemento neutro $e \in E$. Si un elemento $a \in E$ admite elemento simétrico, este es **único**.*

- **Demostración Analítica Paso a Paso (Estándar UNED):**
    1. Supongamos que $a'$ y $a''$ son dos elementos simétricos de $a \in E$.
    2. Evaluamos el producto triple $a' * a * a''$ de dos formas distintas aplicando la propiedad **asociativa**:
        - Por un lado: $(a' * a) * a'' = e * a'' = a''$ (pues $a'$ es simétrico de $a$ y $e$ es neutro).
        - Por otro lado: $a' * (a * a'') = a' * e = a'$ (pues $a''$ es simétrico de $a$ y $e$ es neutro).
    3. Al ser la operación asociativa, $(a' * a) * a'' = a' * (a * a'')$, por lo que **$a' = a''$**. $\blacksquare$

---

### **4. Batería de Ejemplos Emblemáticos del Texto Base (Delgado Pineda & Muñoz Bouzo)**

|Conjunto $E$|Operación $*$|¿Asociativa?|¿Conmutativa?|Elemento Neutro $e$|Elementos con Simétrico $a'$|
|:--|:--|:-:|:-:|:-:|:-:|
|$\mathbb{N}, \mathbb{Z}, \mathbb{Q}, \mathbb{R}$|Suma usual $+$|Sí|Sí|$0$|En $\mathbb{N}$: solo $0$. En $\mathbb{Z}, \mathbb{Q}, \mathbb{R}$: todos ($-a$).|
|$\mathbb{N}, \mathbb{Z}, \mathbb{Q}, \mathbb{R}$|Producto usual $\cdot$|Sí|Sí|$1$|En $\mathbb{Z}$: solo $1$ y $-1$. En $\mathbb{Q}^*, \mathbb{R}^*$: todos ($1/a$).|
|$\mathbb{Z}, \mathbb{R}$|Resta $-$|**No** $(9-5)-1 \neq 9-(5-1)$|**No**|**No existe**|No aplica.|
|$\mathcal{P}(\Omega)$|Intersección $\cap$|Sí|Sí|$\Omega$ (Universo)|Solo $\Omega$ (su simétrico es $\Omega$).|
|$\mathcal{P}(\Omega)$|Unión $\cup$|Sí|Sí|$\varnothing$ (Vacío)|Solo $\varnothing$ (su simétrico es $\varnothing$).|
|$\mathcal{P}(\Omega)$|Diferencia simétrica $\Delta$|Sí|Sí|$\varnothing$|**Todos** (cada conjunto es su propio simétrico: $A \Delta A = \varnothing$).|
|$\mathcal{F}(\Omega)$|Composición $\circ$|Sí|**No**|$I_\Omega$ (Identidad)|Únicamente las **aplicaciones biyectivas** ($f^{-1}$).|
|$M_n(\mathbb{R})$|Producto matricial|Sí|**No**|$I_n$ (Matriz Identidad)|Únicamente las **matrices invertibles** ($\det(A) \neq 0$).|

---

### **5. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** En el conjunto de los números enteros $\mathbb{Z}$, se define la operación interna $a * b = a + b + 1$.  
    a) Estudiar si $*$ es asociativa y conmutativa.  
    b) Determinar si existe elemento neutro $e \in \mathbb{Z}$. _(Solución: $e = -1$)_.  
    c) Determinar si todo elemento $a \in \mathbb{Z}$ posee elemento simétrico $a'$. _(Solución: $a' = -a - 2$)_.
2. **Ejercicio 2 (Ejercicio 1 del Capítulo 4 del texto base):** En el conjunto $\mathbb{N}$, se define la operación $a * b = a + b + ab$. Estudiar la asociatividad, conmutatividad, elemento neutro y simétricos.

---

### **6. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea $E$ un conjunto dotado de una operación interna $_$ que posee elemento neutro $e \in E$. Si $a, b \in E$ admiten elementos simétricos $a', b' \in E$ respectivamente y la operación $_$ es **asociativa**, ¿cuál es el elemento simétrico del elemento compuesto $(a * b)$?

- **A)** El elemento simétrico de $(a * b)$ es siempre $(a' * b')$.
- **B)** El elemento simétrico de $(a * b)$ es siempre $(b' * a')$.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Operamos $(a * b)$ con $(b' * a')$ aplicando la propiedad **asociativa**: $$(a * b) * (b' * a') = a * (b * b') * a' = a * e * a' = a * a' = e$$
> - De forma análoga: $$(b' * a') * (a * b) = b' * (a' * a) * b = b' * e * b = b' * b = e$$
> - Por lo tanto, el simétrico de una composición de elementos invierte siempre el orden de los simétricos: **$(a * b)' = b' * a'$**.
> - La opción A solo sería correcta si la operación fuera además conmutativa.
> - Por lo tanto, la opción **B** es la **correcta**.

## Material de apoyo
- [Presentación](Presentaciones/Sesión38_Estructuras_algebráicas.pptx)
- [Resumen de audio](Audios/Sesión38_Estructuras_algebráicas.m4a)
