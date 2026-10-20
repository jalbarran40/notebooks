# **SESIÓN 29 (TEORÍA): ELEMENTOS NOTABLES DE UN CONJUNTO ORDENADO: COTAS, SUPREMO, ÍNFIMO, MÁXIMOS Y MÍNIMOS**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 3: RELACIONES Y APLICACIONES (Capítulo 3)  
**Objetivo:** Definir formalmente las nociones de **cota superior e inferior**, **conjunto acotado**, **máximo y mínimo**, **supremo e ínfimo**, así como **elementos maximales y minimales** en un conjunto ordenado $(U, \le)$ con un subconjunto $A \subseteq U$. Comprender las propiedades de unicidad, analizar la diferencia clave entre órdenes totales y parciales, y ejercitar los ejemplos clásicos del texto base de la UNED (Delgado Pineda & Muñoz Bouzo).

---

### **1. Marco Teórico: Cotas y Conjuntos Acotados**

Dado un conjunto ordenado $(U, \preceq)$ y un subconjunto no vacío $A \subseteq U$:

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

#### **Definición de propiedades**
- **Propiedad del buen orden**: Conjunto bien ordenado $(A, \preceq)$ o la relación es un buen orden cuando cuando cualquier subconjunto tiene un mínimo
- **Propiedad del supremo**: $\iff$ Conjunto ordenado $(A, \preceq)$ con cota superior tiene supremo (Axima del supremo  en $\mathbb{R}$ - Cualquier conjunto acotado en $\mathbb{R}$ tiene supremo)
---

### **3. Elementos Maximales y Minimales**

En conjuntos parcialmente ordenados, donde existen elementos no comparables, se introducen las nociones de maximal y minimal:

- **Elemento Maximal:** Un elemento $M \in A$ es **maximal** de $A$ si no existe ningún elemento en $A$ estrictamente mayor que $M$: $\nexists x \in A, \quad (x \neq M \land M \le x)$
- **Elemento Minimal:** Un elemento $m \in A$ es **minimal** de $A$ si no existe ningún elemento en $A$ estrictamente menor que $m$: $\nexists x \in A, \quad (x \neq m \land x \le m)$

#### **Diferencias Fundamentales entre Órdenes Parciales y Totales:**

- **En un orden total:** Los conceptos de maximal y máximo coinciden, e igualmente los de minimal y mínimo. El máximo (si existe) es el único elemento maximal.
- **En un orden parcial:** Un conjunto puede tener **múltiples elementos maximales o minimales** sin llegar a tener máximo ni mínimo. Sin embargo, si existe máximo, este es el único elemento maximal del conjunto.


---

### **4. Ejemplos Emblemáticos del Texto Base (Delgado Pineda & Muñoz Bouzo)**

#### **Ejemplo 1: Divisibilidad en los Naturales Positivos $(\mathbb{N}^*, \mid)$**

En el conjunto ordenado $(\mathbb{N}^*, \mid)$, consideramos el subconjunto $A = \{2, 3, 4, 5, 6, 7, 8, 9, 10\}$.

- **Minimales:** Los números $\{2, 3, 5, 7\}$ son los elementos minimales de $A$, pues ningún elemento de $A$ distinto de ellos los divide. No existe mínimo porque ningún elemento de $A$ divide a todos los demás.
- **Maximales:** Los números $\{6, 7, 8, 9, 10\}$ son los elementos maximales de $A$, pues no dividen a ningún otro elemento de $A$ distinto de ellos mismos. No existe máximo.
- **Cotas e Ínfimo/Supremo:**
    - Cotas inferiores en $\mathbb{N}^*$: El $1$ es la única cota inferior en $\mathbb{N}^*$, luego $\inf(A) = 1$.
    - Cotas superiores en $\mathbb{N}^*$: Cualquier múltiplo común de todos los elementos de $A$. El mínimo común múltiplo es $\text{m.c.m.}(2,3,4,5,6,7,8,9,10) = 2520$. Por tanto, $\sup(A) = 2520$. Como $2520 \notin A$, no existe máximo.

---

#### **Ejemplo 2: Plano $\mathbb{R}^2$ con Orden Lexicográfico vs. Orden Producto**

Sea $A = \{(x, y) \in \mathbb{R}^2 \mid 1 \le x \le 2, 1 \le y < 2\}$ (un rectángulo con su borde superior abierto).

1. **Con el Orden Lexicográfico $(\mathbb{R}^2, \preceq_L)$:**
    - **Cotas Superiores:** Cualquier punto $(x, y)$ con $x > 2$ o bien $(2, y)$ con $y \ge 2$.
    - **Supremo:** $\sup_L(A) = (2, 2)$. Como $(2, 2) \notin A$, **no existe máximo**.
    - **Cotas Inferiores:** Cualquier punto $(x, y)$ con $x < 1$ o bien $(1, y)$ con $y \le 1$.
    - **Ínfimo:** $\inf_L(A) = (1, 1)$. Como $(1, 1) \in A$, **existe mínimo y es $\min_L(A) = (1, 1)$**.
2. **Con el Orden Producto $(\mathbb{R}^2, \preceq_P)$:**
    - **Cotas Superiores:** Cualquier punto $(a, b)$ con $a \ge 2$ y $b \ge 2$.
    - **Supremo:** $\sup_P(A) = (2, 2)$. Como $(2, 2) \notin A$, **no existe máximo**.
    - **Maximales:** Los puntos del segmento superior ${(x, y) \in \mathbb{R}^2 \mid 1 \le x \le 2, y \to 2^-}$ no tienen un único máximo.
    - **Ínfimo:** $\inf_P(A) = (1, 1) \in A \implies \min_P(A) = (1, 1)$.

---

### **5. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Considerar el subconjunto $A = \{x \in \mathbb{Q} \mid x^2 < 2\}$ en los números racionales $(\mathbb{Q}, \le)$ y en los reales $(\mathbb{R}, \le)$.  
    a) Determinar si $A$ está acotado en $\mathbb{Q}$ y si posee supremo e ínfimo en $\mathbb{Q}$.  
    b) Determinar el supremo, ínfimo, máximo y mínimo de $A$ en $\mathbb{R}$.
2. **Ejercicio 2 (Ejercicio 10 del Capítulo 3 del texto base):** En el plano $\mathbb{R}^2$ con el orden lexicográfico, estudiar la existencia de cotas, supremo, ínfimo, máximo y mínimo del conjunto $D = \{(x, y) \in \mathbb{R}^2 \mid \max(x, y) = 1\}$.

#### Solución ejercicio 1

**Enunciado:**  
Considerar el subconjunto $A = {x \in \mathbb{Q} \mid x^2 < 2}$ en el conjunto ordenado de los racionales $(\mathbb{Q}, \le)$ y en el de los reales $(\mathbb{R}, \le)$.  
a) Determinar si $A$ está acotado en $\mathbb{Q}$ y si posee supremo e ínfimo en $\mathbb{Q}$.  
b) Determinar el supremo, ínfimo, máximo y mínimo de $A$ en $\mathbb{R}$.

---

##### **Caracterización inicial del conjunto $A$**

Observamos que la condición $x^2 < 2$ equivale a la desigualdad de valor absoluto $|x| < \sqrt{2}$, es decir: $$ -\sqrt{2} < x < \sqrt{2} $$

Como la definición de $A$ exige que $x \in \mathbb{Q}$, podemos expresar el conjunto como la intersección de los racionales con el intervalo abierto $(-\sqrt{2}, \sqrt{2})$ en $\mathbb{R}$: $$ A = \mathbb{Q} \cap (-\sqrt{2}, \sqrt{2}) $$

---

##### **a) Análisis en el cuerpo ordenado de los racionales $(\mathbb{Q}, \le)$**

1. **Acotación en $\mathbb{Q}$:**
    
    - **Acotado superiormente:** Sí. Por ejemplo, $M = 2 \in \mathbb{Q}$ (o $M = \frac{3}{2} \in \mathbb{Q}$) es una cota superior de $A$ en $\mathbb{Q}$, ya que: $$ \forall x \in A, \quad x < \sqrt{2} < 2 $$
    - **Acotado inferiormente:** Sí. Por ejemplo, $m = -2 \in \mathbb{Q}$ (o $m = -\frac{3}{2} \in \mathbb{Q}$) es una cota inferior de $A$ en $\mathbb{Q}$, ya que: $$ \forall x \in A, \quad -2 < -\sqrt{2} < x $$
    - **Conclusión de acotación:** $A$ es un conjunto **acotado en $\mathbb{Q}$**.
2. **Existencia de supremo e ínfimo en $\mathbb{Q}$:**
    
    - **Supremo en $\mathbb{Q}$:** **No existe supremo en $\mathbb{Q}$**.  
        _Demostración (por reducción al absurdo):_  
        Supongamos que existiera un racional $s \in \mathbb{Q}$ tal que $s = \sup(A)$. Por la ley de tricotomía en $\mathbb{Q}$, se daría uno de tres casos:
        
        - Si $s^2 = 2$, se tendría $s = \sqrt{2} \in \mathbb{Q}$, lo cual contradice el teorema de la irracionalidad de $\sqrt{2}$.
        - Si $s^2 < 2$, por la densidad de $\mathbb{Q}$ en $\mathbb{R}$, existiría un racional $q \in \mathbb{Q}$ tal que $s < q < \sqrt{2}$. Como $q^2 < 2$, se tendría $q \in A$ con $q > s$, contradiciendo que $s$ sea cota superior de $A$.
        - Si $s^2 > 2$, por densidad existiría un racional $q' \in \mathbb{Q}$ tal que $\sqrt{2} < q' < s$. El valor $q'$ seguiría siendo cota superior de $A$ pero $q' < s$, contradiciendo que $s$ sea la _menor_ de las cotas superiores.
        - Al ser falsas las tres opciones, concluimos que **$A$ no tiene supremo en $\mathbb{Q}$**.
    - **Ínfimo en $\mathbb{Q}$:** **No existe ínfimo en $\mathbb{Q}$**.  
        _(Demostración análoga por simetría para $-\sqrt{2} \notin \mathbb{Q}$)._
        

---

##### **b) Análisis en el cuerpo ordenado de los reales $(\mathbb{R}, \le)$**

1. **Supremo en $\mathbb{R}$:**
    
    - **$\sup(A) = \sqrt{2}$**.
    - **Demostración por caracterización $\varepsilon$:**
        1. _Es cota superior:_ Para todo $x \in A$, $x < \sqrt{2}$.
        2. _Menor cota superior:_ Dado cualquier $\varepsilon > 0$, por la **propiedad de densidad de $\mathbb{Q}$ en $\mathbb{R}$**, siempre existe al menos un número racional $q_0 \in \mathbb{Q}$ tal que: $$ \sqrt{2} - \varepsilon < q_0 < \sqrt{2} $$ Como $q_0 \in \mathbb{Q}$ y $q_0 < \sqrt{2}$, se cumple que $q_0^2 < 2$, de modo que $q_0 \in A$.  
            _Por tanto, queda probado que $\sup(A) = \sqrt{2} \in \mathbb{R}$._
2. **Ínfimo en $\mathbb{R}$:**
    
    - **$\inf(A) = -\sqrt{2}$**.
    - _(Demostración análoga aplicando la caracterización $\varepsilon$ del ínfimo y la densidad de $\mathbb{Q}$ en $\mathbb{R}$)._
3. **Máximo y Mínimo en $\mathbb{R}$:**
    
    - **Máximo:** Como $\sup(A) = \sqrt{2} \notin \mathbb{Q}$, se deduce que $\sup(A) \notin A$. Por la propiedad que establece que un conjunto posee máximo si y solo si su supremo pertenece al conjunto ($\max(A) = \sup(A) \iff \sup(A) \in A$), **el conjunto $A$ no posee máximo en $\mathbb{R}$**.
    - **Mínimo:** Análogamente, como $\inf(A) = -\sqrt{2} \notin A$, **el conjunto $A$ no posee mínimo en $\mathbb{R}$**.

---

##### **Resumen final de resultados**

| Propiedad     |  En $(\mathbb{Q}, \le)$   | En $(\mathbb{R}, \le)$ |
| :------------ | :-----------------------: | :--------------------: |
| **¿Acotado?** |            Sí             |           Sí           |
| **Supremo**   | No existe en $\mathbb{Q}$ |       $\sqrt{2}$       |
| **Ínfimo**    | No existe en $\mathbb{Q}$ |      $-\sqrt{2}$       |
| **Máximo**    |         No existe         |       No existe        |
| **Mínimo**    |         No existe         |       No existe        |

Este ejercicio ilustra la propiedad central de la **Sesión 51**: el cuerpo $\mathbb{Q}$ tiene "agujeros" (no satisface el Axioma del Supremo), mientras que el cuerpo real $\mathbb{R}$ es **completo** y garantiza la existencia de supremo para todo conjunto no vacío acotado superiormente.


#### Solución ejercicio 2


**Enunciado:**  
En el plano $\mathbb{R}^2$ equipado con el **orden lexicográfico** $\preceq_{\text{lex}}$, estudiar la existencia de cotas, supremo, ínfimo, máximo y mínimo del subconjunto: $$ D = {(x, y) \in \mathbb{R}^2 \mid \max(x, y) = 1} $$

---

##### **1. Caracterización analítica del conjunto $D$**

La condición $\max(x, y) = 1$ significa que al menos una de las dos coordenadas es igual a $1$ y la otra es menor o igual que $1$. Geométricamente, $D$ está formado por la unión de dos semirrectas/segmentos en el plano $\mathbb{R}^2$:

1. **Rama vertical ($D_1$):** ${(1, y) \in \mathbb{R}^2 \mid y \le 1}$
2. **Rama horizontal ($D_2$):** ${(x, 1) \in \mathbb{R}^2 \mid x \le 1}$

De este modo, podemos expresar el conjunto como: $$ D = D_1 \cup D_2 = {(1, y) \mid y \le 1} \cup {(x, 1) \mid x \le 1} $$

Ambas ramas se intersecan en el punto de esquina $(1, 1)$.

---

##### **2. Análisis de Acotación Superior, Máximo y Supremo**

###### **A) Máximo y Supremo de $D$:**

Analicemos la relación de orden lexicográfica entre un punto genérico $(x, y) \in D$ y el punto $M = (1, 1) \in D$:

- Si $(x, y) \in D_1$, la primera coordenada es $x = 1$ y la segunda cumple $y \le 1$.  
    Por definición de $\preceq_{\text{lex}}$, como $x = 1$ e $y \le 1$, se satisface: $$ (1, y) \preceq_{\text{lex}} (1, 1) $$
- Si $(x, y) \in D_2$, la primera coordenada cumple $x \le 1$ y la segunda es $y = 1$:
    - Si $x < 1$, como $x < 1$, por definición de $\preceq_{\text{lex}}$ tenemos $(x, 1) \prec_{\text{lex}} (1, 1)$.
    - Si $x = 1$, obtenemos el propio punto $(1, 1) \preceq_{\text{lex}} (1, 1)$.

Dado que para todo $(x, y) \in D$ se cumple que $(x, y) \preceq_{\text{lex}} (1, 1)$ y además el elemento pertenece al conjunto ($(1, 1) \in D$), concluimos que:

1. **El punto $(1, 1)$ es el MÁXIMO del conjunto $D$:** $$ \max(D) = (1, 1) $$
2. **Por poseer máximo, el SUPREMO de $D$ existe y coincide con el máximo:** $$ \sup(D) = (1, 1) $$

###### **B) Conjunto de Cotas Superiores:**

Un punto $(u, v) \in \mathbb{R}^2$ es cota superior de $D$ si y solo si es mayor o igual que el máximo $(1, 1)$ bajo el orden lexicográfico: $$ (1, 1) \preceq_{\text{lex}} (u, v) \iff (1 < u) \lor (1 = u \land 1 \le v) $$

Por lo tanto, el conjunto de cotas superiores de $D$ en $\mathbb{R}^2$ es: $$ \text{CotasSup}(D) = {(u, v) \in \mathbb{R}^2 \mid u > 1} \cup {(1, v) \in \mathbb{R}^2 \mid v \ge 1} $$

---

##### **3. Análisis de Acotación Inferior, Ínfimo y Mínimo**

###### **Demostración de que $D$ NO está acotado inferiormente:**

Probaremos por reducción al absurdo que **no existe ninguna cota inferior** para $D$ en $(\mathbb{R}^2, \preceq_{\text{lex}})$.

1. Supongamos por contradicción que existiera un par $(a, b) \in \mathbb{R}^2$ que fuera cota inferior de $D$.
2. Por la definición de cota inferior, debería cumplirse: $$ \forall (x, y) \in D, \quad (a, b) \preceq_{\text{lex}} (x, y) $$
3. En particular, probamos esta condición para los puntos de la rama horizontal $D_2 = {(x, 1) \mid x \le 1}$: $$ \forall x \le 1, \quad (a, b) \preceq_{\text{lex}} (x, 1) $$
4. Por la definición del orden lexicográfico, $(a, b) \preceq_{\text{lex}} (x, 1)$ exige que $(a < x) \lor (a = x \land b \le 1)$. En cualquiera de los dos casos, implica necesariamente que **$a \le x$**.
5. Por lo tanto, para que $(a, b)$ fuera cota inferior, la primera coordenada $a$ debería satisfacer: $$ \forall x \in (-\infty, 1], \quad a \le x $$
6. Sin embargo, esto es **imposible** en $\mathbb{R}$ por la Propiedad Arquimediana (el intervalo $(-\infty, 1]$ no está acotado inferiormente). Basta con elegir el valor $x_0 = \min(1, a - 1) \in (-\infty, 1]$, para el cual se tendría $x_0 < a$, contradiciendo que $(a, b) \preceq_{\text{lex}} (x_0, 1)$.

**Conclusiones:**

- **Cotas inferiores:** No existen ($\text{CotasInf}(D) = \varnothing$).
- **Ínfimo:** **No existe** en $(\mathbb{R}^2, \preceq_{\text{lex}})$.
- **Mínimo:** **No existe** en $(\mathbb{R}^2, \preceq_{\text{lex}})$.

---

##### **Resumen de Resultados para el Examen**

|Elemento Notable|Valor / Existencia en $(\mathbb{R}^2, \preceq_{\text{lex}})$|Justificación analítica|
|:--|:-:|:--|
|**¿Acotado superiormente?**|**Sí**|Acotado por cualquier $(u, v)$ con $u > 1$ o $(1, v)$ con $v \ge 1$.|
|**¿Acotado inferiormente?**|**No**|La rama $x \le 1$ decrece indefinidamente en la primera coordenada.|
|**Máximo ($\max$)**|**$(1, 1)$**|Pertenece a $D$ y supera a todos los puntos $(x, y) \in D$.|
|**Supremo ($\sup$)**|**$(1, 1)$**|Coincide con el máximo.|
|**Ínfimo ($\inf$)**|**No existe**|No hay cotas inferiores.|
|**Mínimo ($\min$)**|**No existe**|No hay cotas inferiores.|

📌 ¿Te queda clara la demostración o quieres que analicemos qué ocurriría si el mismo conjunto $D$ estuviera equipado con el **orden producto** (de Pareto) en lugar del orden lexicográfico?
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
	**NOTA**: La diapositiva 10 está erronea en los conexiones.
- [**Resumen de audio**](Audios/Sesión29_Conjuntos_ordenados.m4a): Enfocado en la distinción entre cota y supremo, entre supremo y máximo, la definición de elementos maximales y minimales en órdenes parciales, la resolución paso a paso de los ejemplos de examen en $\mathbb{N}^*$ y $\mathbb{R}^2$ (orden lexicográfico y orden producto) y los criterios de rigor sintáctico para el examen de desarrollo.

---
