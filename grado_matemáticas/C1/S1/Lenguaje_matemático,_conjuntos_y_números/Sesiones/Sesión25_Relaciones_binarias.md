# **SESIÓN 25 (TEORÍA): RELACIONES BINARIAS: PROPIEDADES (REFLEXIVA, SIMÉTRICA, ANTISIMÉTRICA Y TRANSITIVA)**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 3: RELACIONES Y APLICACIONES (Capítulo 3)  
**Objetivo:** Comprender la definición formal de **relación binaria $R$** en un conjunto $A$ como subconjunto del producto cartesiano $A \times A$, formalizar mediante lógica de predicados y cuantificadores sus cuatro propiedades estructurales básicas (**reflexiva, simétrica, antisimétrica y transitiva**), analizar la relación recíproca $R^{-1}$ y el conjunto diagonal $\Delta_A$, y ejercitar las demostraciones analíticas exigidas en los exámenes de desarrollo de la UNED.

---

### **1. Marco Teórico: Concepto Formal de Relación Binaria**

#### **A. Definición General de Relación entre Conjuntos**

Dados dos conjuntos $A$ y $B$, una **relación (o correspondencia) $R$ entre $A$ y $B$** se define formalmente como un subconjunto del producto cartesiano $A \times B$: $R \subseteq A \times B$

- Si el par ordenado $(x, y) \in R$, decimos que **$x$ está relacionado con $y$ mediante $R$** y lo denotamos sintácticamente por **$xRy$**.
- Si $(x, y) \notin R$, escribimos **$x \cancel{R} y$** (o $\neg(xRy)$).

#### **B. Relación Binaria en un Conjunto $A$**

Cuando el conjunto inicial y el conjunto final coinciden ($A = B$), decimos que $R \subseteq A \times A$ es una **relación binaria en el conjunto $A$** (o relación homogénea en $A$).

#### **C. Conceptos Auxiliares Importantes**

1. **Conjunto Diagonal (o Identidad) de $A$:**  
    Se define la diagonal de $A \times A$, denotada por $\Delta_A$ o $I_A$, como el conjunto de todos los pares formados por un elemento y él mismo: $\Delta_A = {(x, x) \in A \times A \mid x \in A}$
    
2. **Relación Recíproca (o Inversa) $R^{-1}$:**  
    Dada una relación $R \subseteq A \times A$, se define su relación recíproca $R^{-1} \subseteq A \times A$ invirtiendo el orden de las componentes en cada par ordenado: $R^{-1} = {(y, x) \in A \times A \mid (x, y) \in R}$ o bien $y R^{-1} x \iff xRy$
    

---

### **2. Las Cuatro Propiedades Fundamentales de una Relación Binaria**

Sea $R$ una relación binaria definida sobre un conjunto no vacío $A$ ($R \subseteq A \times A$). Se analizan formalmente las siguientes propiedades:

#### **1. Propiedad Reflexiva**

- **Definición Formal:** Una relación $R$ en $A$ es **reflexiva** si y solo si todo elemento de $A$ está relacionado consigo mismo: $\forall x \in A, \quad xRx$
- **Caracterización Conjuntista:** $R$ es reflexiva $\iff \Delta_A \subseteq R$.
- **Negación (No reflexiva):** $\exists x \in A$ tal que $(x, x) \notin R$ ($x \cancel{R} x$).

---

#### **2. Propiedad Simétrica**

- **Definición Formal:** Una relación $R$ en $A$ es **simétrica** si y solo si siempre que un elemento $x$ esté relacionado con $y$, se cumple que $y$ está relacionado con $x$: $\forall x, y \in A, \quad (xRy \implies yRx)$
- **Caracterización Conjuntista:** $R$ es simétrica $\iff R^{-1} \subseteq R \iff R = R^{-1}$.
- **Negación (No simétrica):** $\exists x, y \in A$ tales que $xRy \land y \cancel{R} x$.

---

#### **3. Propiedad Antisimétrica**

- **Definición Formal:** Una relación $R$ en $A$ es **antisimétrica** si y solo si los únicos elementos que están mutuamente relacionados entre sí son los elementos idénticos: $\forall x, y \in A, \quad ((xRy \land yRx) \implies x = y)$
- **Forma Contrarrecíproca Equivalente:** $\forall x, y \in A, \quad (x \neq y \implies \neg(xRy \land yRx))$
- **Caracterización Conjuntista:** $R$ es antisimétrica $\iff R \cap R^{-1} \subseteq \Delta_A$.
- **Negación (No antisimétrica):** $\exists x, y \in A$ tales que $x \neq y \land xRy \land yRx$.

> **¡Advertencia de Rigor para el Examen!**  
> _"Antisimétrica"_ **NO es la negación de _"Simétrica"_**.
> 
> - Una relación puede ser simétrica y antisimétrica a la vez (por ejemplo, la relación de igualdad $R = \Delta_A$).
> - Una relación puede no ser ni simétrica ni antisimétrica.

---

#### **Aclaración**

##### **1. Comparación Directa de Exigencias**

- **Propiedad Reflexiva ($\forall x \in A, \quad xRx$):**
    
    - **Exige de forma obligatoria** que **TODOS** los elementos del conjunto $A$ estén relacionados consigo mismos.
    - Si en un conjunto $A = \{1, 2, 3\}$ falta aunque sea un solo bucle (por ejemplo, falta el $(3, 3)$), la relación **deja de ser reflexiva**.
- **Propiedad Simétrica ($\forall x, y \in A, \quad xRy \implies yRx$):**
    
    - **No obliga a que exista ninguna relación**.
    - Solo dice: _"**SI** existe la pareja $(x, y)$, **ENTONCES** debe existir la pareja $(y, x)$"_.
    - Si la pareja es $(1, 1)$, su pareja de vuelta es la misma $(1, 1)$. Por lo tanto, tener pares de la forma $(x, x)$ satisface la simetría de forma automática.

---

##### **2. Dos Ejemplos para Ver la Diferencia**

Imaginemos el conjunto $A = \{1, 2, 3\}$.

###### **Ejemplo A: $R_A = \{(1, 1)\}$**

- **¿Es Reflexiva en $A$? NO.** Porque faltan $(2, 2)$ y $(3, 3)$. No cumple la exigencia de cubrir todo el conjunto $A$.
- **¿Es Simétrica? SÍ.** Para la única ida $(1, 1)$, la vuelta es $(1, 1)$ (que está en la relación). Para cualquier otro par no hay ida, por lo que la implicación es verdades vacuamente.
- **¿Es Antisimétrica? SÍ.** No hay dos elementos **distintos** ($x \neq y$) relacionados en ambos sentidos.

> _Aquí ves claramente que la relación es **simétrica y antisimétrica a la vez**, pero **NO es reflexiva**._

---

###### **Ejemplo B: $R_B = {(1, 1), (2, 2), (3, 3)} = \Delta_A$ (La Igualdad)**

- **¿Es Reflexiva en $A$? SÍ.** Contiene los bucles de **todos** los elementos de $A$.
- **¿Es Simétrica? SÍ.** La vuelta de cada $(x, x)$ es el propio $(x, x)$.
- **¿Es Antisimétrica? SÍ.** Cumple la regla porque los únicos elementos relacionados de ida y vuelta son idénticos ($x = y$).

> _La relación de igualdad ($\Delta_A$) es el **único caso especial** en el que se cumplen las tres propiedades a la vez: **reflexiva, simétrica y antisimétrica**._

---

##### **3. Resumen en Una Frase**

- La **reflexividad** te obliga a poner los pares $(x, x)$ para **todos** los elementos del conjunto.
- La **simetría** no te obliga a poner nada, pero si pones un par $(x, x)$, **no viola la simetría ni viola la antisimetría**.

💡 ¿Se entiende mejor ahora por qué una relación puede tener solo elementos relacionados consigo mismos y ser simétrica y antisimétrica, sin llegar a ser reflexiva (si le faltan elementos del universo $A$)?
#### **4. Propiedad Transitiva**

- **Definición Formal:** Una relación $R$ en $A$ es **transitiva** si y solo si siempre que $x$ esté relacionado con $y$, e $y$ esté relacionado con $z$, entonces $x$ está relacionado con $z$: $\forall x, y, z \in A, \quad ((xRy \land yRz) \implies xRz)$
- **Caracterización Conjuntista (Composición):** $R$ es transitiva $\iff R \circ R \subseteq R$.
- **Negación (No transitiva):** $\exists x, y, z \in A$ tales que $xRy \land yRz \land x \cancel{R} z$.

---

### **3. Ejemplos Resueltos del Texto Base (Delgado Pineda & Muñoz Bouzo)**

#### **Ejemplo 1: Relación de Divisibilidad en los Números Naturales Positivos**

Sea $A = \mathbb{N}^* = \{1, 2, 3, \dots \}$ y definimos la relación $R$ mediante $xRy \iff x \text{ divide a } y$ (denotado $x \mid y \iff \exists k \in \mathbb{N}^*, y = k \cdot x$).

- **Reflexiva:** Para todo $x \in \mathbb{N}^*$, $x = 1 \cdot x \implies x \mid x$, luego **es reflexiva**.
- **Simétrica:** No es simétrica. Contraejemplo: $2 \mid 4$ (ya que $4 = 2 \cdot 2$), pero $4 \nmid 2$ (pues $2/4 \notin \mathbb{N}^*$).
- **Antisimétrica:** Sean $x, y \in \mathbb{N}^*$ tales que $x \mid y$ e $y \mid x$.  
    Existen $k_1, k_2 \in \mathbb{N}^*$ con $y = k_1 x$ y $x = k_2 y$. Sustituyendo: $x = k_2 (k_1 x) = (k_2 k_1) x \implies k_1 k_2 = 1$.  
    Como $k_1, k_2 \in \mathbb{N}^*$, obligatoriamente $k_1 = k_2 = 1 \implies x = y$. **Es antisimétrica**.
- **Transitiva:** Sean $x, y, z \in \mathbb{N}^*$ con $x \mid y$ e $y \mid z \implies \exists k_1, k_2 \in \mathbb{N}^*, y = k_1 x, z = k_2 y$.  
    Sustituyendo: $z = k_2 (k_1 x) = (k_2 k_1) x$. Como $k_2 k_1 \in \mathbb{N}^*$, $x \mid z$. **Es transitiva**.

---

#### __Ejemplo 2: Análisis de la Relación $x + y = 20$ en $\mathbb{N}^*$

Sea $A = \mathbb{N}^*$ y la relación $S$ dada por $xSy \iff x + y = 20$.

- **Reflexiva:** Falsa. Para $x = 1$, $1 + 1 = 2 \neq 20 \implies 1 \cancel{S} 1$. **No es reflexiva**.
- **Simétrica:** Si $xSy \implies x + y = 20 \implies y + x = 20 \implies ySx$. **Es simétrica**.
- **Antisimétrica:** Falsa. Para $x = 5$ e $y = 15$, tenemos $5 + 15 = 20$ y $15 + 5 = 20$ ($5S15 \land 15S5$), pero $5 \neq 15$. **No es antisimétrica**.
- **Transitiva:** Falsa. Teniendo $5S15$ ($5+15=20$) y $15S5$ ($15+5=20$), si fuera transitiva debería cumplirse $5S5$, pero $5 + 5 = 10 \neq 20$. **No es transitiva**.

---

### **4. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** En el conjunto $A = \{1, 2, 3, 4\}$, se define la relación $R = \{(1, 1), (2, 2), (3, 3), (4, 4), (1, 2), (2, 1), (2, 3)\}$. Analizar de forma justificada si $R$ cumple cada una de las 4 propiedades.
2. **Ejercicio 2:** Sea $U$ un conjunto no vacío y $P(U)$ su conjunto de las partes. En $P(U)$ se define la relación de inclusión $X R Y \iff X \subseteq Y$. Demostrar analíticamente que $R$ es reflexiva, antisimétrica y transitiva, pero no simétrica.

Aquí tienes la resolución analítica completa y detallada del ejercicio, redactada con el rigor formal exigido en el examen de desarrollo de la UNED.

---

#### **Ejercicio 2 (Sesión 25): Propiedades de la Relación de Inclusión**

**Enunciado:**  
Sea $U$ un conjunto no vacío y $\mathcal{P}(U)$ su conjunto de las partes. En $\mathcal{P}(U)$ se define la relación binaria de inclusión $R$ mediante:
$$X R Y \iff X \subseteq Y \quad (\forall X, Y \in \mathcal{P}(U))$$

Demostrar analíticamente que $R$ es **reflexiva**, **antisimétrica** y **transitiva** (lo que define a $R$ como una relación de orden parcial en $\mathcal{P}(U)$), pero **no es simétrica**.

---

##### **Demostración Paso a Paso**

###### **1. Propiedad Reflexiva**
* **Definición a comprobar:** $\forall X \in \mathcal{P}(U), \quad X R X$.
* **Demostración:**  
  Sea $X \in \mathcal{P}(U)$ un subconjunto arbitrario de $U$. Por la definición formal de la relación de inclusión por comprensión:
  $$X \subseteq X \iff \forall x \, (x \in X \implies x \in X)$$
  La proposición condicional $p \implies p$ es una **tautología lógicamente válida** para cualquier elemento $x$.  
  Dado que la implicación $x \in X \implies x \in X$ se verifica universalmente para todo $x$, deducimos que $X \subseteq X$ es cierto para cualquier $X \in \mathcal{P}(U)$.  
  Por la definición de la relación $R$, esto equivale a **$X R X$**, probando que **$R$ es reflexiva**.

---

###### **2. Propiedad Antisimétrica**
* **Definición a comprobar:** $\forall X, Y \in \mathcal{P}(U), \quad ((X R Y \land Y R X) \implies X = Y)$.
* **Demostración:**  
  Sean $X, Y \in \mathcal{P}(U)$ dos subconjuntos cualesquiera tales que se satisfacen simultáneamente $X R Y$ y $Y R X$.  
  Traduciendo por la definición de la relación $R$:
  $$X \subseteq Y \quad \land \quad Y \subseteq X$$
  Por el **Axioma de Extensionalidad** (o Principio de la Doble Inclusión en Teoría de Conjuntos), dos conjuntos cumplen $X \subseteq Y$ y $Y \subseteq X$ si y solo si contienen exactamente los mismos elementos:
  $$(X \subseteq Y \land Y \subseteq X) \iff X = Y$$
  Por lo tanto, concluimos que **$X = Y$**, lo que demuestra analíticamente que **$R$ es antisimétrica**.

---

###### **3. Propiedad Transitiva**
* **Definición a comprobar:** $\forall X, Y, Z \in \mathcal{P}(U), \quad ((X R Y \land Y R Z) \implies X R Z)$.
* **Demostración:**  
  Sean $X, Y, Z \in \mathcal{P}(U)$ tres subconjuntos cualesquiera tales que $X R Y$ y $Y R Z$.  
  Traduciendo mediante la relación de inclusión:
  $$X \subseteq Y \quad \land \quad Y \subseteq Z$$
  Escribiendo la definición condicional a nivel de elementos para cada inclusión:
  1. Por $X \subseteq Y$: $\forall x \, (x \in X \implies x \in Y)$.
  2. Por $Y \subseteq Z$: $\forall x \, (x \in Y \implies x \in Z)$.

  Aplicando la ley lógica del **silogismo hipotético** en lógica proposicional ($(p \implies q) \land (q \implies r) \implies (p \implies r)$):
  $$\forall x \, (x \in X \implies x \in Z)$$
  Por definición de inclusión de conjuntos, esta condición equivale a **$X \subseteq Z$**.  
  Por consiguiente, **$X R Z$**, lo que prueba que **$R$ es transitiva**.

---

###### **4. Demostración de que NO es Simétrica**
* **Definición de Simetría:** $\forall X, Y \in \mathcal{P}(U), \quad (X R Y \implies Y R X)$.
* **Negación de la Simetría (Demostración por Contraejemplo):**  
  Para probar que $R$ no es simétrica, debemos demostrar la negación lógica:
  $$\exists X, Y \in \mathcal{P}(U) \quad \text{tales que} \quad X R Y \land \neg(Y R X)$$
  Es decir, debemos exhibir un par de subconjuntos $X, Y$ en $\mathcal{P}(U)$ donde $X \subseteq Y$ pero $Y \nsubseteq X$.

* **Construcción del Contraejemplo:**  
  1. Como por la hipótesis del enunciado el conjunto universo $U$ es **no vacío** ($U \neq \varnothing$), existe al menos un elemento $a \in U$.
  2. Consideremos los subconjuntos $X = \varnothing$ (conjunto vacío) e $Y = \{a\}$ (conjunto unitario).  
     Ambos pertenecen a $\mathcal{P}(U)$ ya que $\varnothing \subseteq U$ y $\{a\} \subseteq U$.
  3. Comprobamos la relación de ida $X R Y$:  
     $\varnothing \subseteq \{a\}$ es **verdadero** (el conjunto vacío es subconjunto de cualquier conjunto).
  4. Comprobamos la relación de vuelta $Y R X$:  
     $\{a\} \subseteq \varnothing$ es **falso**, pues el elemento $a \in \{a\}$, pero $a \notin \varnothing$.

  Al haber encontrado dos subconjuntos explícitos $X = \varnothing$ e $Y = \{a\}$ tales que $\varnothing R \{a\}$ pero $\{a\} \cancel{R} \varnothing$, queda demostrado que **$R$ NO es simétrica**.

---

##### **Conclusión del Ejercicio**
La relación de inclusión $R = (\subseteq)$ en $\mathcal{P}(U)$ es **reflexiva**, **antisimétrica** y **transitiva**, por lo que es una **relación de orden parcial**. Al no ser simétrica (y no ser de orden total en general para $U$ con 2 o más elementos), confirma la estructura de retículo ordenado de $\mathcal{P}(U)$.


### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea el conjunto $A = \{1, 2, 3\}$ y la relación binaria definida por extensión como $R = \{(1, 1), (2, 2), (3, 3), (1, 2)\}$. ¿Cuál de las siguientes afirmaciones sobre $R$ es **verdadera**?

- **A)** La relación $R$ es simétrica y no es reflexiva.
- **B)** La relación $R$ es reflexiva, antisimétrica y transitiva.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - **Reflexiva:** Contiene a $(1, 1)$, $(2, 2)$ y $(3, 3)$, luego contiene a la diagonal $\Delta_A$. Es **reflexiva**.
> - **Simétrica:** Contiene a $(1, 2)$ pero no contiene a $(2, 1)$, luego **no es simétrica** (la opción A es falsa).
> - **Antisimétrica:** Cumple $((x, y) \in R \land (y, x) \in R \implies x = y)$, pues el único par con su simétrico posible son los elementos diagonales. Es **antisimétrica**.
> - **Transitiva:** La única pareja de pares encadenados es $(1, 1)$ con $(1, 2) \implies (1, 2) \in R$, y $(1, 2)$ con $(2, 2) \implies (1, 2) \in R$. Cumple trivialmente la condicional. Es **transitiva**.
> - Por tanto, la opción **B** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión25_Relaciones_binarias.pptx): Elaborada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con el encabezado oficial del Bloque 3, la notación del texto base (Delgado Pineda & Muñoz Bouzo), el escape de llaves `\{` y `\}`, la notación `\varnothing` para el conjunto vacío y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión25_Relaciones_binarias.m4a) Enfocado en la transición al Capítulo 3, la formalización de relaciones binarias como subconjuntos del producto cartesiano $A \times A$, la caracterización lógica de las cuatro propiedades fundamentales mediante cuantificadores, el concepto de relación recíproca $R^{-1}$ y los errores de rigor más comunes en los exámenes de desarrollo de la UNED.