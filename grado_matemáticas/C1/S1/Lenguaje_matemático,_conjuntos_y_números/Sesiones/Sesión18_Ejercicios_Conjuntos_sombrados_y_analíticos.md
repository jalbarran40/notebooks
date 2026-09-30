![[Sesión18_Ejercicios_Conjuntos_sombrados_y_analíticos.pptx]]# **SESIÓN 18 (PRÁCTICA): EJERCICIOS DE OPERACIONES CON CONJUNTOS SOMBREADOS Y ANALÍTICOS**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 2: CONJUNTOS (Capítulo 2)  
**Objetivo:** Traducir entre representaciones gráficas (diagramas de Venn con regiones sombreadas) y expresiones algebraicas formales por comprensión, dominar la técnica de partición del universo en regiones disjuntas canónicas, formalizar la **diferencia simétrica ($\Delta$)**, y redactar demostraciones analíticas por doble inclusión de acuerdo con los estándares de evaluación de la UNED.

---

### **1. Metodología de Análisis de Regiones Sombreadas (Regiones Canónicas)**

Dado un conjunto universal $U$ y tres subconjuntos generales $A, B, C \subseteq U$ en posición no trivial, el plano queda dividido en **$2^3 = 8$ regiones disjuntas** (denominadas _minterms_ o regiones canónicas). Cualquier región sombreada en un diagrama de Venn se puede expresar de forma única como la **unión de algunas de estas 8 regiones fundamentales**:

1. $R_1 = A \cap B^c \cap C^c$ _(elementos exclusivos de $A$)_
2. $R_2 = B \cap A^c \cap C^c$ _(elementos exclusivos de $B$)_
3. $R_3 = C \cap A^c \cap B^c$ _(elementos exclusivos de $C$)_
4. $R_4 = A \cap B \cap C^c$ _(elementos exclusivos de $A \cap B$)_
5. $R_5 = A \cap C \cap B^c$ _(elementos exclusivos de $A \cap C$)_
6. $R_6 = B \cap C \cap A^c$ _(elementos exclusivos de $B \cap C$)_
7. $R_7 = A \cap B \cap C$ _(intersección triple de los tres conjuntos)_
8. $R_8 = A^c \cap B^c \cap C^c = (A \cup B \cup C)^c$ _(elementos del universo externos a los tres conjuntos)_

---

### **2. Batería de Ejercicios Resueltos con Redacción Formal**

#### **Ejercicio 1: De la Región Sombreada a la Expresión Lógico-Conjuntista**

**Enunciado:** En un diagrama de Venn de tres conjuntos $A, B, C \subseteq U$, se encuentra sombreada la región formada por los elementos que pertenecen al conjunto $A$ pero no pertenecen ni a $B$ ni a $C$, junto con la región de los elementos que pertenecen exclusivamente a $B$ o exclusivamente a $C$ (pero no a ambos). Obtener la expresión algebraica formal que describe dicha región.

- **Resolución Paso a Paso:**
    1. **Identificación de la primera región:** Los elementos pertenecientes a $A$ y ajenos a $B$ y $C$ corresponden a la diferencia $A \setminus (B \cup C)$, que algebraicamente se escribe como $A \cap B^c \cap C^c$.
    2. **Identificación de la segunda región:** Los elementos pertenecientes exclusivamente a $B$ o exclusivamente a $C$ constituyen la diferencia entre la unión y la intersección de $B$ y $C$, es decir, la **diferencia simétrica** $B \Delta C = (B \setminus C) \cup (C \setminus B)$.
    3. **Unión de regiones disjuntas:** Dado que ambas partes forman la región sombreada total, la expresión global es: $E = (A \setminus (B \cup C)) \cup (B \Delta C)$
    4. **Expresión por comprensión:** $E = {x \in U \mid (x \in A \land x \notin B \land x \notin C) \lor ((x \in B \lor x \in C) \land x \notin (B \cap C))}$

---

#### **Ejercicio 2: Demostración Analítica por Doble Inclusión (Ley de De Morgan para la Diferencia)**

**Enunciado:** Demostrar analíticamente que para tres conjuntos cualesquiera $A, B, C \subseteq U$ se verifica la igualdad: $A \setminus (B \cap C) = (A \setminus B) \cup (A \setminus C)$

- **Demostración por Doble Inclusión (Examen de Desarrollo UNED):**
    
    - **Paso 1: Demostrar la inclusión directa $A \setminus (B \cap C) \subseteq (A \setminus B) \cup (A \setminus C)$**
        
        1. Sea $x \in A \setminus (B \cap C)$ un elemento genérico arbitrario.
        2. Por definición de diferencia de conjuntos, $x \in A \land x \notin (B \cap C)$.
        3. La condición $x \notin (B \cap C)$ equivale a la negación $\neg(x \in B \land x \in C)$.
        4. Aplicando la Ley de De Morgan de la lógica proposicional ($\neg(p \land q) \iff \neg p \lor \neg q$), tenemos que $x \notin B \lor x \notin C$.
        5. Por tanto, tenemos la disyunción: $x \in A \land (x \notin B \lor x \notin C)$.
        6. Aplicando la propiedad distributiva de la conjunción respecto a la disyunción: $(x \in A \land x \notin B) \lor (x \in A \land x \notin C)$
        7. Por definición de diferencia, esto significa que $x \in (A \setminus B) \lor x \in (A \setminus C)$.
        8. Por definición de unión, $x \in (A \setminus B) \cup (A \setminus C)$.
        9. Queda demostrada la inclusión directa: **$A \setminus (B \cap C) \subseteq (A \setminus B) \cup (A \setminus C)$**.
    - **Paso 2: Demostrar la inclusión recíproca $(A \setminus B) \cup (A \setminus C) \subseteq A \setminus (B \cap C)$**
        
        1. Sea $y \in (A \setminus B) \cup (A \setminus C)$ un elemento genérico arbitrario.
        2. Por definición de unión, $y \in (A \setminus B) \lor y \in (A \setminus C)$.
        3. Por definición de diferencia, $(y \in A \land y \notin B) \lor (y \in A \land y \notin C)$.
        4. Sacando factor común $y \in A$ por la ley distributiva de la lógica proposicional: $y \in A \land (y \notin B \lor y \notin C)$
        5. Por la Ley de De Morgan proposicional, $y \notin B \lor y \notin C \iff \neg(y \in B \land y \in C) \iff y \notin (B \cap C)$.
        6. Por tanto, $y \in A \land y \notin (B \cap C)$, lo que por definición de diferencia implica que $y \in A \setminus (B \cap C)$.
        7. Queda demostrada la inclusión recíproca: **$(A \setminus B) \cup (A \setminus C) \subseteq A \setminus (B \cap C)$**.
    - **Conclusión:** Demostradas ambas inclusiones, el **Axioma de Extensionalidad** garantiza la igualdad: $A \setminus (B \cap C) = (A \setminus B) \cup (A \setminus C) \quad \blacksquare$
        

---

#### **Ejercicio 3: Formalización y Propiedades de la Diferencia Simétrica ($\Delta$)**

**Enunciado:** Dados dos conjuntos $A, B \subseteq U$, demostrar que las dos definiciones habituales de la diferencia simétrica son equivalentes: $(A \setminus B) \cup (B \setminus A) = (A \cup B) \setminus (A \cap B)$

- **Demostración Analítica mediante Álgebra de Conjuntos:**
    1. Partimos del miembro derecho: $E_2 = (A \cup B) \setminus (A \cap B)$.
    2. Aplicamos la equivalencia del complemento de la diferencia $X \setminus Y = X \cap Y^c$: $E_2 = (A \cup B) \cap (A \cap B)^c$
    3. Aplicamos la **Ley de De Morgan** al segundo factor: $(A \cap B)^c = A^c \cup B^c$. $E_2 = (A \cup B) \cap (A^c \cup B^c)$
    4. Aplicamos la **propiedad distributiva** de la intersección sobre la unión: $E_2 = [(A \cup B) \cap A^c] \cup [(A \cup B) \cap B^c]$
    5. Distribuimos de nuevo en cada corchete:
        - $[(A \cup B) \cap A^c] = (A \cap A^c) \cup (B \cap A^c) = \emptyset \cup (B \cap A^c) = B \cap A^c = B \setminus A$.
        - $[(A \cup B) \cap B^c] = (A \cap B^c) \cup (B \cap B^c) = (A \cap B^c) \cup \emptyset = A \cap B^c = A \setminus B$.
    6. Sustituyendo ambos resultados en la unión: $E_2 = (B \setminus A) \cup (A \setminus B) = (A \setminus B) \cup (B \setminus A)$
    7. **Conclusión:** Queda demostrada la identidad entre ambas expresiones para $A \Delta B$. $\blacksquare$

---

### **3. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio Analítico:** Demostrar que para cualesquiera conjuntos $A, B, C \subseteq U$ se verifica: $(A \cup B) \setminus C = (A \setminus C) \cup (B \setminus C)$
2. **Ejercicio de Simplificación:** Simplificar la expresión de conjuntos $[(A \cup B^c)^c \cap (A \cup B)]^c$ indicando las leyes aplicadas en cada paso.

---

### **4. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Dadas dos afirmaciones sobre la diferencia simétrica para dos conjuntos $A, B \subseteq U$:

1. $A \Delta A = \emptyset$
2. $A \Delta \emptyset = A$

¿Cuál de las siguientes opciones es **verdadera**?

- **A)** Únicamente la afirmación 1 es verdadera.
- **B)** Ambas afirmaciones (1 y 2) son verdaderas.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Evaluamos la afirmación 1: $A \Delta A = (A \setminus A) \cup (A \setminus A) = \emptyset \cup \emptyset = \emptyset$. Por tanto, la afirmación 1 es **verdadera**.
> - Evaluamos la afirmación 2: $A \Delta \emptyset = (A \setminus \emptyset) \cup (\emptyset \setminus A) = A \cup \emptyset = A$. Por tanto, la afirmación 2 es **verdadera**.
> - Como ambas afirmaciones son verdaderas, la respuesta correcta es la opción **B**.

---
## Material adicional
- [**Presentación de Diapositivas](Sesión18_Ejercicios_Conjuntos_sombrados_y_analíticos.pptx):** Elaborada respetando las directrices del _Manual_de_Estilo_Presentaciones_, con la maquetación por bloques, los recuadros de notación oficial y la pregunta de autoevaluación.
- [**Resumen de Audio (Podcast)**](Sesión18_Ejercicios_Conjuntos_sombrados_y_analíticos.m4a): Centrado en la metodología para interpretar diagramas de Venn sombreados, la descomposición en las 8 regiones canónicas, la demostración de las leyes de De Morgan para la diferencia de conjuntos y el manejo de la diferencia simétrica ($\Delta$).
