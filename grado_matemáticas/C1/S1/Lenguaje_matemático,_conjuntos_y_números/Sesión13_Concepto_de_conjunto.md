
# **SESIÓN 13 (TEORÍA): CONCEPTO DE CONJUNTO, PERTENENCIA E INCLUSIÓN. CONJUNTO VACÍO**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 2: CONJUNTOS (Capítulo 2)  
**Objetivo:** Introducir los fundamentos de la teoría elemental de conjuntos, distinguiendo con rigor sintáctico la relación de pertenencia (\(\in\)) de la relación de inclusión (\(\subseteq\)), analizando las propiedades del conjunto vacío (\(\emptyset\)) y formalizando la prueba de igualdad de conjuntos mediante la doble inclusión.

---

### **1. Noción de Conjunto y Relación de Pertenencia**

#### **Definición Informal de Conjunto**

En la teoría intuitiva de conjuntos (postulada por Georg Cantor y recogida en el texto base de Delgado Pineda y Muñoz Bouzo), un **conjunto** es una colección en un todo de objetos bien determinados y diferenciables de nuestra intuición o pensamiento. A estos objetos se los denomina **elementos** del conjunto.

- **Notación de elementos y conjuntos:**
    - Denotaremos habitualmente a los conjuntos con letras mayúsculas: \(A, B, C, X, Y, \dots\)
    - Denotaremos a sus elementos individuales con letras minúsculas: \(a, b, c, x, y, \dots\)

#### **La Relación de Pertenencia (\(\in\))**

La relación primitiva que vincula a un **objeto/elemento con un conjunto** es la **pertenencia**:

- \(x \in A\): _"El elemento \(x\) pertenece al conjunto \(A\)"_ (o _" \(x\) está en \(A\) "_).
- \(x \notin A\): _"El elemento \(x\) no pertenece al conjunto \(A\)"_ (\(\neg(x \in A)\)).

> **Aviso de Rigor Sintáctico:** La relación de pertenencia \(\in\) actúa **exclusivamente entre un elemento (lado izquierdo) y un conjunto (lado derecho)**. Nunca debe confundirse con la relación de inclusión.

---

### **2. Inclusión de Conjuntos y Subconjuntos (\(\subseteq\))**

#### **Definición Formal de Inclusión**

Dados dos conjuntos \(A\) y \(B\), decimos que **\(A\) está incluido en \(B\)** (o que **\(A\) es un subconjunto de \(B\)**), y lo denotamos por \(A \subseteq B\), si todo elemento que pertenece a \(A\) pertenece también a \(B\).

En lenguaje lógico formal: \[A \subseteq B \iff \forall x , (x \in A \implies x \in B)\]

#### **Subconjunto Propio (\(\subset\))**

Decimos que \(A\) es un **subconjunto propio** de \(B\), denotado por \(A \subset B\) (o \(A \subsetneq B\)), si \(A\) está incluido en \(B\) pero \(A\) no es igual a \(B\): \[A \subset B \iff (A \subseteq B \land A \neq B)\]

#### **Comparación Sintáctica: Pertenencia vs. Inclusión**

|Propiedad / Característica|Pertenencia (\(\in\))|Inclusión (\(\subseteq\))|
|:--|:--|:--|
|**Naturaleza de los argumentos**|Elemento \(\in\) Conjunto|Conjunto \(\subseteq\) Conjunto|
|**Ejemplo correcto**|\(2 \in \mathbb{N}\)|\({2} \subseteq \mathbb{N}\)|
|**Error sintáctico habitual**|\({2} \in \mathbb{N}\) _(falso, \({2}\) es un conjunto)_|\(2 \subseteq \mathbb{N}\) _(falso, \(2\) no es un conjunto)_|

---

### **3. El Conjunto Vacío (\(\emptyset\))**

#### **Definición**

El **conjunto vacío** es aquel conjunto que carece absolutamente de elementos. Se denota mediante el símbolo \(\emptyset\) (o bien \({}\)). En lenguaje de predicados: \[\forall x, ; x \notin \emptyset\]

#### **Teorema Fundamental del Conjunto Vacío**

**Enunciado:** Para todo conjunto \(A\), el conjunto vacío está incluido en \(A\): \[\forall A, \quad \emptyset \subseteq A\]

#### **Demostración Formal (por Reducción al Absurdo / Verdad Vacua)**

1. Queremos probar que \(\emptyset \subseteq A\).
2. Supongamos por absurdo la negación de la tesis: \(\neg(\emptyset \subseteq A)\).
3. Por la definición formal de inclusión, la negación de \(\forall x (x \in \emptyset \implies x \in A)\) equivale a: \[\exists x_0 , (x_0 \in \emptyset \land x_0 \notin A)\]
4. La afirmación \(x_0 \in \emptyset\) entra en **contradicción directa** con la definición axiomática del conjunto vacío (\(\forall x, x \notin \emptyset\)).
5. Habiendo obtenido una contradicción (\(0\)), la suposición inicial es errónea, concluyendo que **\(\emptyset \subseteq A\) para cualquier conjunto \(A\)**. \(\blacksquare\)

---

### **4. Igualdad de Conjuntos y Doble Inclusión**

#### **Definición de Igualdad de Conjuntos**

Dos conjuntos \(A\) y \(B\) son **iguales** (\(A = B\)) si y solo si tienen exactamente los mismos elementos.

#### **El Método de la Doble Inclusión**

En los ejercicios y exámenes de desarrollo de la UNED, para demostrar que dos conjuntos \(A\) y \(B\) son iguales, se aplica el **Axioma de Extensionalidad** mediante la técnica de la **doble inclusión**: \[A = B \iff (A \subseteq B \land B \subseteq A)\]

#### **Esquema de Redacción para el Examen:**

Para probar \(A = B\):

1. **Inclusión directa (\(A \subseteq B\)):** Se toma un elemento genérico \(x \in A\) y se demuestra formalmente que \(x \in B\).
2. **Inclusión recíproca (\(B \subseteq A\)):** Se toma un elemento genérico \(y \in B\) y se demuestra formalmente que \(y \in A\).
3. **Conclusión:** Habiendo demostrado ambas inclusiones, se concluye que \(A = B\).

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea \(A = {1, {2}}\). ¿Cuál de las siguientes afirmaciones es **verdadera**?

- **A)** \({2} \subseteq A\)
- **B)** \({2} \in A\)
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Los elementos del conjunto \(A\) son dos: el número \(1\) y el propio conjunto \({2}\). Por tanto, \(1 \in A\) y \({2} \in A\).
> - La opción **B** es **correcta** porque \({2}\) figura explícitamente como un _elemento_ del conjunto \(A\).
> - La opción A es falsa porque el subconjunto de \(A\) formado por dicho elemento sería \({{2}}\), de modo que \({{2}} \subseteq A\), pero no \({2} \subseteq A\) (ya que el elemento \(2\) no pertenece a \(A\)).


## Material adicional:
- Presentación
[[Sesión13_Concepto_de_conjunto.pptx]]
- Resumen de audio
[[Sesión13_Concepto_de_conjunto.m4a]]