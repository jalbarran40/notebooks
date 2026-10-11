# **SESIÓN 29 (TEORÍA): ELEMENTOS NOTABLES DE UN CONJUNTO ORDENADO: COTAS, SUPREMO, ÍNFIMO, MÁXIMOS Y MÍNIMOS**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 3: RELACIONES Y APLICACIONES (Capítulo 3)  
**Objetivo:** Definir formalmente las nociones de **cota superior e inferior**, **conjunto acotado**, **máximo y mínimo**, **supremo e ínfimo**, así como **elementos maximales y minimales** en un conjunto ordenado $(U, \le)$ con un subconjunto $A \subseteq U$. Comprender las propiedades de unicidad, analizar la diferencia clave entre órdenes totales y parciales, y ejercitar los ejemplos clásicos del texto base de la UNED (Delgado Pineda & Muñoz Bouzo).

---

### **1. Marco Teórico: Cotas y Conjuntos Acotados**

Dado un conjunto ordenado $(U, \le)$ y un subconjunto no vacío $A \subseteq U$:

#### **A. Cotas Superiores e Inferiores**

1. **Cota Superior:** Un elemento $u \in U$ es una **cota superior** de $A$ si es mayor o igual que todos los elementos de $A$: $\forall x \in A, \quad x \le u$
2. **Cota Inferior:** Un elemento $d \in U$ es una **cota inferior** de $A$ si es menor o igual que todos los elementos de $A$: $\forall x \in A, \quad d \le x$

> **Observación Importante:** Las cotas (superiores o inferiores) de $A$ son elementos del universo $U$, **no tienen por qué pertenecer al subconjunto $A$**.

#### **B. Conjunto Acotado**

- **Acotado Superiormente:** $A$ está acotado superiormente si admite al menos una cota superior en $U$ ($\exists u \in U, \forall x \in A, x \le u$).
- **Acotado Inferiormente:** $A$ está acotado inferiormente si admite al menos una cota inferior en $U$ ($\exists d \in U, \forall x \in A, d \le x$).
- **Conjunto Acotado:** $A$ es acotado si lo está tanto superior como inferiormente, es decir, si existen $d, u \in U$ tales que $A$ está contenido en el intervalo de orden $[d, u]_\le$.

---

### **2. Máximo, Mínimo, Supremo e Ínfimo**

#### **A. Máximo y Mínimo de un Conjunto**

- **Máximo ($\max(A)$):** Es un elemento $M \in A$ que es cota superior de $A$: $M \in A \quad \land \quad (\forall x \in A, x \le M)$
- **Mínimo ($\min(A)$):** Es un elemento $m \in A$ que es cota inferior de $A$: $m \in A \quad \land \quad (\forall x \in A, m \le x)$

> **Exigencia de Pertenencia:** A diferencia de las cotas generales, para que exista máximo o mínimo **es condición indispensable que el elemento pertenezca explícitamente al subconjunto $A$**.

#### **B. Supremo e Ínfimo de un Conjunto**

- **Supremo ($\sup(A)$):** Es la **menor de todas las cotas superiores** de $A$ en $U$. Es decir, $s \in U$ es el supremo de $A$ si:
    
    1. $s$ es cota superior de $A$ ($\forall x \in A, x \le s$).
    2. Para cualquier otra cota superior $u$ de $A$, se cumple $s \le u$. _En términos conjuntistas:_ $\sup(A) = \min({u \in U \mid u \text{ es cota superior de } A})$.
- **Ínfimo ($\inf(A)$):** Es la **mayor de todas las cotas inferiores** de $A$ en $U$. Es decir, $i \in U$ es el ínfimo de $A$ si:
    
    1. $i$ es cota inferior de $A$ ($\forall x \in A, i \le x$).
    2. Para cualquier otra cota inferior $d$ de $A$, se cumple $d \le i$. _En términos conjuntistas:_ $\inf(A) = \max({d \in U \mid d \text{ es cota inferior de } A})$.

#### **Proposición 3.26 (Propiedades de Unicidad y Relación):**

1. **Unicidad:** Si existen el máximo, mínimo, supremo o ínfimo de un conjunto $A$, cada uno de ellos es **único** (por la propiedad antisimétrica del orden).
2. **Relación Máximo-Supremo:**
    - Si existe $\max(A)$, entonces existe $\sup(A)$ y se cumple $\sup(A) = \max(A)$.
    - Si existe $\sup(A)$ y además $\sup(A) \in A$, entonces $\max(A) = \sup(A)$.
3. **Relación Mínimo-Ínfimo:**
    - Si existe $\min(A)$, entonces existe $\inf(A)$ y se cumple $\inf(A) = \min(A)$.
    - Si existe $\inf(A)$ y además $\inf(A) \in A$, entonces $\min(A) = \inf(A)$.

---

### **3. Elementos Maximales y Minimales**

En conjuntos parcialmente ordenados, donde existen elementos no comparables, se introducen las nociones de maximal y minimal:

- **Elemento Maximal:** Un elemento $M \in A$ es **maximal** de $A$ si no existe ningún elemento en $A$ estrictamente mayor que $M$: $\nexists x \in A, \quad (x \neq M \land M \le x)$
- **Elemento Minimal:** Un elemento $m \in A$ es **minimal** de $A$ si no existe ningún elemento en $A$ strictly menor que $m$: $\nexists x \in A, \quad (x \neq m \land x \le m)$

#### **Diferencias Fundamentales entre Órdenes Parciales y Totales:**

- **En un orden total:** Los conceptos de maximal y máximo coinciden, e igualmente los de minimal y mínimo. El máximo (si existe) es el único elemento maximal.
- **En un orden parcial:** Un conjunto puede tener **múltiples elementos maximales o minimales** sin llegar a tener máximo ni mínimo. Sin embargo, si existe máximo, este es el único elemento maximal del conjunto.

---

### **4. Ejemplos Emblemáticos del Texto Base (Delgado Pineda & Muñoz Bouzo)**

#### **Ejemplo 1: Divisibilidad en los Naturales Positivos $(\mathbb{N}^*, \mid)$**

En el conjunto ordenado $(\mathbb{N}^*, \mid)$, consideramos el subconjunto $A = {2, 3, 4, 5, 6, 7, 8, 9, 10}$.

- **Minimales:** Los números ${2, 3, 5, 7}$ son los elementos minimales de $A$, pues ningún elemento de $A$ distinto de ellos los divide. No existe mínimo porque ningún elemento de $A$ divide a todos los demás.
- **Maximales:** Los números ${6, 7, 8, 9, 10}$ son los elementos maximales de $A$, pues no dividen a ningún otro elemento de $A$ distinto de ellos mismos. No existe máximo.
- **Cotas e Ínfimo/Supremo:**
    - Cotas inferiores en $\mathbb{N}^*$: El $1$ es la única cota inferior en $\mathbb{N}^*$, luego $\inf(A) = 1$.
    - Cotas superiores en $\mathbb{N}^*$: Cualquier múltiplo común de todos los elementos de $A$. El mínimo común múltiplo es $\text{m.c.m.}(2,3,4,5,6,7,8,9,10) = 2520$. Por tanto, $\sup(A) = 2520$. Como $2520 \notin A$, no existe máximo.

---

#### **Ejemplo 2: Plano $\mathbb{R}^2$ con Orden Lexicográfico vs. Orden Producto**

Sea $A = {(x, y) \in \mathbb{R}^2 \mid 1 \le x \le 2, 1 \le y < 2}$ (un rectángulo con su borde superior abierto).

1. **Con el Orden Lexicográfico $(\mathbb{R}^2, \le_L)$:**
    
    - **Cotas Superiores:** Cualquier punto $(x, y)$ con $x > 2$ o bien $(2, y)$ con $y \ge 2$.
    - **Supremo:** $\sup_L(A) = (2, 2)$. Como $(2, 2) \notin A$, **no existe máximo**.
    - **Cotas Inferiores:** Cualquier punto $(x, y)$ con $x < 1$ o bien $(1, y)$ con $y \le 1$.
    - **Ínfimo:** $\inf_L(A) = (1, 1)$. Como $(1, 1) \in A$, **existe mínimo y es $\min_L(A) = (1, 1)$**.
2. **Con el Orden Producto $(\mathbb{R}^2, \le_P)$:**
    
    - **Cotas Superiores:** Cualquier punto $(a, b)$ con $a \ge 2$ y $b \ge 2$.
    - **Supremo:** $\sup_P(A) = (2, 2)$. Como $(2, 2) \notin A$, **no existe máximo**.
    - **Maximales:** Los puntos del segmento superior ${(x, y) \in \mathbb{R}^2 \mid 1 \le x \le 2, y \to 2^-}$ no tienen un único máximo.
    - **Ínfimo:** $\inf_P(A) = (1, 1) \in A \implies \min_P(A) = (1, 1)$.

---

### **5. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Considerar el subconjunto $A = {x \in \mathbb{Q} \mid x^2 < 2}$ en los números racionales $(\mathbb{Q}, \le)$ y en los reales $(\mathbb{R}, \le)$.  
    a) Determinar si $A$ está acotado en $\mathbb{Q}$ y si posee supremo e ínfimo en $\mathbb{Q}$.  
    b) Determinar el supremo, ínfimo, máximo y mínimo de $A$ en $\mathbb{R}$.
2. **Ejercicio 2 (Ejercicio 10 del Capítulo 3 del texto base):** En el plano $\mathbb{R}^2$ con el orden lexicográfico, estudiar la existencia de cotas, supremo, ínfimo, máximo y mínimo del conjunto $D = {(x, y) \in \mathbb{R}^2 \mid \max(x, y) = 1}$.

---

### **6. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea $(U, \le)$ un conjunto parcialmente ordenado y $A \subseteq U$ un subconjunto no vacío. ¿Cuál de las siguientes afirmaciones es **verdadera**?

- **A)** Si $A$ posee supremo $s = \sup(A)$ y resulta que $s \in A$, entonces $s$ es también el elemento máximo de $A$.
- **B)** Si un conjunto tiene varios elementos maximales distintos, el elemento supremo coincide con el mayor de los elementos maximales.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Por la Proposición 3.26 del libro de texto base, si el supremo $s = \sup(A)$ pertenece al propio conjunto $A$, por ser $s$ cota superior y pertenecer a $A$, satisface exactamente la definición de elemento máximo: $\max(A) = \sup(A)$. Por lo tanto, la opción **A** es **verdadera**.
> - La opción B es falsa porque en un orden parcial con varios maximales distintos, estos no son comparables entre sí y no tiene sentido hablar del "mayor de los maximales", pudiendo no existir supremo.
> - Por tanto, la opción **A** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión29_Conjuntos_ordenados.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con la jerarquía por bloques, recuadros normativos para definiciones, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la comparación entre órdenes totales y parciales, y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión29_Conjuntos_ordenados.m4a): Enfocado en la distinción entre cota y supremo, entre supremo y máximo, la definición de elementos maximales y minimales en órdenes parciales, la resolución paso a paso de los ejemplos de examen en $\mathbb{N}^*$ y $\mathbb{R}^2$ (orden lexicográfico y orden producto) y los criterios de rigor sintáctico para el examen de desarrollo.

---
