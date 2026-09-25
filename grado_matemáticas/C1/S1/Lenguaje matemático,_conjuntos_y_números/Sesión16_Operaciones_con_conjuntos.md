# **SESIÓN 16 (TEORÍA): OPERACIONES CON CONJUNTOS: UNIÓN, INTERSECCIÓN Y DIFERENCIA**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 2: CONJUNTOS (Capítulo 2)  
**Objetivo:** Formalizar las operaciones fundamentales del álgebra de conjuntos (unión, intersección y diferencia), analizando su correspondencia exacta con las conectivas lógicas ($\lor, \land, \neg$), sus definiciones formales por comprensión y las cadenas de inclusión que determinan en el universo $U$.

---

### **1. La Unión de Conjuntos ($\cup$) y la Disyunción Lógica ($\lor$)**

#### **Definición Formal por Comprensión**

Dados dos conjuntos $A$ y $B$ pertenecientes a un conjunto universal $U$, la **unión** de $A$ y $B$, denotada por $A \cup B$, es el conjunto formado por todos los elementos de $U$ que pertenecen a $A$, a $B$ o a ambos: $A \cup B = {x \in U \mid x \in A \lor x \in B}$

#### **Caracterización Semántica**

Un elemento $x \in U$ pertenece a $A \cup B$ si y solo si la proposición disyuntiva $x \in A \lor x \in B$ toma el valor semántico **$1$**: $x \in (A \cup B) \iff (x \in A \lor x \in B)$

#### **Propiedades Inmediatas de Inclusión**

A partir de la definición de disyunción inclusiva, se deduce que tanto $A$ como $B$ están contenidos dentro de su unión: $A \subseteq (A \cup B) \quad \text{y} \quad B \subseteq (A \cup B)$

---

### **2. La Intersección de Conjuntos ($\cap$) y la Conjunción Lógica ($\land$)**

#### **Definición Formal por Comprensión**

Dados dos conjuntos $A$ y $B$ en $U$, la **intersección** de $A$ y $B$, denotada por $A \cap B$, es el conjunto formado por los elementos de $U$ que pertenecen **simultáneamente** a $A$ y a $B$: $A \cap B = {x \in U \mid x \in A \land x \in B}$

#### **Caracterización Semántica**

Un elemento $x \in U$ pertenece a $A \cap B$ si y solo si la proposición conjuntiva $x \in A \land x \in B$ toma el valor semántico **$1$**: $x \in (A \cap B) \iff (x \in A \land x \in B)$

#### **Conjuntos Disjuntos**

Dos conjuntos $A$ y $B$ se dicen **disjuntos** (o mutuamente excluyentes) si no poseen ningún elemento en común, es decir, si su intersección es el conjunto vacío: $A \text{ y } B \text{ disjuntos} \iff A \cap B = \emptyset$

#### **Propiedades Inmediatas de Inclusión**

La intersección es un subconjunto de cada uno de los factores que la componen: $(A \cap B) \subseteq A \quad \text{y} \quad (A \cap B) \subseteq B$

---

### **3. La Diferencia de Conjuntos ($\setminus$) y la Negación Lógica ($\neg$)**

#### **Definición Formal por Comprensión**

Dados dos conjuntos $A$ y $B$ en $U$, la **diferencia** entre $A$ y $B$ (o complemento relativo de $B$ en $A$), denotada por $A \setminus B$ (o bien $A - B$), es el conjunto formado por los elementos de $U$ que pertenecen a $A$ y **no pertenecen** a $B$: $A \setminus B = {x \in U \mid x \in A \land x \notin B}$

#### **Caracterización Semántica**

$x \in (A \setminus B) \iff (x \in A \land \neg(x \in B))$

#### **Propiedades de Inclusión y Descomposición**

1. La diferencia siempre está incluida en el primer conjunto: $(A \setminus B) \subseteq A$
2. La diferencia $A \setminus B$ y el conjunto $B$ son **siempre conjuntos disjuntos**: $(A \setminus B) \cap B = \emptyset$

---

### **4. La Cadena Fundamental de Inclusión del Álgebra de Conjuntos**

Para dos conjuntos cualesquiera $A$ y $B$, existe una relación jerárquica de inclusión en el universo $U$ que conviene memorizar para la resolución analítica de problemas de examen:

$\emptyset \subseteq (A \cap B) \subseteq A \subseteq (A \cup B) \subseteq U$

#### **Demostración Rigurosa de $(A \cap B) \subseteq A$ (para Examen de Desarrollo):**

1. Sea $x$ un elemento genérico tal que $x \in (A \cap B)$.
2. Por la definición formal de intersección, $x \in (A \cap B) \implies (x \in A \land x \in B)$.
3. Por la regla de inferencia lógica de **simplificación** sobre la conjunción ($p \land q \implies p$), deducimos directamente que $x \in A$.
4. Como todo elemento de $A \cap B$ pertenece a $A$, queda demostrado por la definición de inclusión que **$(A \cap B) \subseteq A$**. $\blacksquare$

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sean $A = {1, 2, 3, 4}$ y $B = {3, 4, 5, 6}$. ¿Cuál de las siguientes afirmaciones respecto a la diferencia $A \setminus B$ es **verdadera**?

- **A)** $A \setminus B = {1, 2, 5, 6}$
- **B)** $A \setminus B = {1, 2}$
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Por definición formal, $A \setminus B$ está formado por los elementos que pertenecen al conjunto $A$ y que no pertenecen a $B$.
> - Los elementos de $A$ son ${1, 2, 3, 4}$. Eliminamos los elementos que también están en $B$ (el $3$ y el $4$).
> - Por lo tanto, $A \setminus B = {1, 2}$.
> - La opción **B** es la **correcta**. (La opción A correspondería a la diferencia simétrica $A \Delta B$).

## Material de soporte
- [Presentación](Sesión16_Operaciones_con_conjuntos.pptx)
- [Resumen de audio](Sesión16_Operaciones_con_conjuntos.m4a)
