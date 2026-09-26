
# **SESIÓN 17 (PRÁCTICA): ÁLGEBRA DE CONJUNTOS: LEYES DISTRIBUTIVAS Y LEYES DE MORGAN**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 2: CONJUNTOS (Capítulo 2)  
**Objetivo:** Dominar la estructura algebraica del conjunto de las partes de un universo $\mathcal{P}(U)$ dotado de las operaciones de unión ($\cup$), intersección ($\cap$) y complementación ($^c$), analizando la analogía formal con la lógica proposicional (Capítulo 1), demostrando las leyes distributivas y de De Morgan por comprensión/doble inclusión, y resolviendo ejercicios de simplificación analítica de expresiones de conjuntos.

---

### **1. El Sistema Algebraico del Álgebra de Conjuntos**

El conjunto de las partes de un universo $U$, denotado por $\mathcal{P}(U)$, junto con las operaciones de unión ($\cup$), intersección ($\cap$) y complementación ($^c$), constituye una **estructura de Álgebra de Boole**.

Existe un **paralelismo biunívoco exacto** entre las propiedades de la lógica proposicional (vistas en el Capítulo 1) y las leyes del álgebra de conjuntos (Capítulo 2), donde las operaciones conjuntistas se definen mediante las conectivas lógicas equivalentes sobre los predicados característicos $P_x \equiv (x \in A)$, $Q_x \equiv (x \in B)$ y $R_x \equiv (x \in C)$:

- **Unión ($\cup$)** $\longleftrightarrow$ **Disyunción ($\lor$)**
- **Intersección ($\cap$)** $\longleftrightarrow$ **Conjunción ($\land$)**
- **Complementario ($A^c$ o $\overline{A}$)** $\longleftrightarrow$ **Negación ($\neg$)**
- **Universo ($U$)** $\longleftrightarrow$ **Tautología ($1$)**
- **Conjunto Vacío ($\emptyset$)** $\longleftrightarrow$ **Contradicción ($0$)**

---

### **2. Cuadro Completo de Propiedades del Álgebra de Conjuntos**

Para tres subconjuntos cualesquiera $A, B, C \subseteq U$, se satisfacen de forma idéntica las siguientes identidades fundamentales:

|Categoría|Propiedad en Álgebra de Conjuntos|Equivalencia Lógica Asociada|
|:--|:--|:--|
|**Idempotencia**|$A \cup A = A$$A \cap A = A$|$P_x \lor P_x \iff P_x$$P_x \land P_x \iff P_x$|
|**Conmutativa**|$A \cup B = B \cup A$$A \cap B = B \cap A$|$P_x \lor Q_x \iff Q_x \lor P_x$$P_x \land Q_x \iff Q_x \land P_x$|
|**Asociativa**|$(A \cup B) \cup C = A \cup (B \cup C)$$(A \cap B) \cap C = A \cap (B \cap C)$|$(P_x \lor Q_x) \lor R_x \iff P_x \lor (Q_x \lor R_x)$$(P_x \land Q_x) \land R_x \iff P_x \land (Q_x \land R_x)$|
|**Distributiva**|**$A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$$A \cup (B \cap C) = (A \cup B) \cap (A \cup C)$**|$P_x \land (Q_x \lor R_x) \iff (P_x \land Q_x) \lor (P_x \land R_x)$$P_x \lor (Q_x \land R_x) \iff (P_x \lor Q_x) \land (P_x \lor R_x)$|
|**Identidad / Neutro**|$A \cup \emptyset = A \quad \mid \quad A \cup U = U$$A \cap U = A \quad \mid \quad A \cap \emptyset = \emptyset$|$P_x \lor 0 \iff P_x \quad \mid \quad P_x \lor 1 \iff 1$$P_x \land 1 \iff P_x \quad \mid \quad P_x \land 0 \iff 0$|
|**Complementación**|$A \cup A^c = U$$A \cap A^c = \emptyset$$(A^c)^c = A \quad \mid \quad U^c = \emptyset, ; \emptyset^c = U$|$P_x \lor \neg P_x \iff 1$$P_x \land \neg P_x \iff 0$$\neg(\neg P_x) \iff P_x \quad \mid \quad \neg 1 \iff 0, ; \neg 0 \iff 1$|
|**Leyes de De Morgan**|**$(A \cup B)^c = A^c \cap B^c$$(A \cap B)^c = A^c \cup B^c$**|$\neg(P_x \lor Q_x) \iff \neg P_x \land \neg Q_x$$\neg(P_x \land Q_x) \iff \neg P_x \lor \neg Q_x$|

---

### **3. Demostraciones Formales para el Examen de Desarrollo**

#### **Demostración 1: Primera Ley Distributiva**

**Enunciado:** Demostrar formalmente que para tres conjuntos cualesquiera $A, B, C \subseteq U$ se verifica $A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$.

- **Demostración por Caracterización de Predicados y Comprensión:**
    1. Definimos los conjuntos por comprensión en $U$ mediante sus predicados característicos: $A = {x \in U \mid P_x}$, $B = {x \in U \mid Q_x}$ y $C = {x \in U \mid R_x}$.
    2. Evaluamos la pertenencia de un elemento genérico $x \in U$ al miembro izquierdo: $x \in A \cap (B \cup C) \iff x \in A \land x \in (B \cup C) \iff P_x \land (Q_x \lor R_x)$
    3. Aplicamos la **ley distributiva de la conjunción respecto a la disyunción** en lógica proposicional ($p \land (q \lor r) \iff (p \land q) \lor (p \land r)$): $P_x \land (Q_x \lor R_x) \iff (P_x \land Q_x) \lor (P_x \land R_x)$
    4. Traducimos la fórmula lógica resultante de nuevo a operaciones de conjuntos: $(P_x \land Q_x) \lor (P_x \land R_x) \iff (x \in A \cap B) \lor (x \in A \cap C) \iff x \in (A \cap B) \cup (A \cap C)$
    5. **Conclusión:** Al ser cada paso una equivalencia lógica idéntica ($\iff$), queda demostrado que **$A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$** $\blacksquare$.

---

#### **Demostración 2: Primera Ley de De Morgan**

**Enunciado:** Demostrar mediante el método de la doble inclusión que $(A \cup B)^c = A^c \cap B^c$.

- **Demostración paso a paso (Examen UNED):**
    1. **Inclusión Directa ($(A \cup B)^c \subseteq A^c \cap B^c$):**
        
        - Sea $x \in (A \cup B)^c$ arbitrario.
        - Por definición de complementario, $x \notin (A \cup B)$, lo que equivale a $\neg(x \in A \lor x \in B)$.
        - Aplicando la ley de De Morgan de la lógica proposicional ($\neg(p \lor q) \iff \neg p \land \neg q$), deducimos que $x \notin A \land x \notin B$.
        - Por definición de complementario, $x \in A^c \land x \in B^c$.
        - Por definición de intersección, $x \in A^c \cap B^c$.
        - Por tanto, **$(A \cup B)^c \subseteq A^c \cap B^c$**.
    2. **Inclusión Recíproca ($A^c \cap B^c \subseteq (A \cup B)^c$):**
        
        - Sea $y \in A^c \cap B^c$ arbitrario.
        - Por definición de intersección, $y \in A^c \land y \in B^c$, luego $y \notin A \land y \notin B$.
        - Por la ley de De Morgan proposicional, esto equivale a $\neg(y \in A \lor y \in B)$.
        - Por definición de unión y complementario, $y \notin (A \cup B) \implies y \in (A \cup B)^c$.
        - Por tanto, **$A^c \cap B^c \subseteq (A \cup B)^c$**.
    3. **Conclusión:** Demostradas ambas inclusiones, queda probado por el **axioma de extensionalidad** que **$(A \cup B)^c = A^c \cap B^c$** $\blacksquare$.
        

---

### **4. Ejercicio Resuelto de Simplificación Algebraica**

**Enunciado:** Simplificar la expresión de conjuntos $E = (A \cap B) \cup (A \cap B^c)$ indicando la ley utilizada en cada paso.

- **Resolución Paso a Paso:**
    1. **Expresión inicial:** $E = (A \cap B) \cup (A \cap B^c)$
    2. **Aplicar Ley Distributiva (extraer factor común $A \cap$):** $E = A \cap (B \cup B^c)$
    3. **Aplicar Ley de Complementación ($B \cup B^c = U$):** $E = A \cap U$
    4. **Aplicar Ley de Identidad ($A \cap U = A$):** $E = A$
- **Resultado:** La expresión se simplifica exactamente al conjunto **$A$**.

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Dadas las expresiones de conjuntos $X = (A \setminus B)^c$ y $Y = A^c \cup B$, ¿cuál de las siguientes afirmaciones es **verdadera**?

- **A)** $X \neq Y$ porque la diferencia de conjuntos no es conmutativa.
- **B)** $X = Y$ (son conjuntos iguales).
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Expresamos la diferencia por su definición equivalente: $A \setminus B = A \cap B^c$.
> - Calculamos el complementario de $X$: $X = (A \setminus B)^c = (A \cap B^c)^c$.
> - Aplicamos la ley de De Morgan al complementario del producto: $(A \cap B^c)^c = A^c \cup (B^c)^c$.
> - Aplicamos la ley de doble complementación ($(B^c)^c = B$): $X = A^c \cup B$.
> - Como $Y = A^c \cup B$, concluimos que $X = Y$. Por tanto, la opción **B** es la **correcta**.

---
## Material de apoyo

- Presentación

- Resumen de audio
