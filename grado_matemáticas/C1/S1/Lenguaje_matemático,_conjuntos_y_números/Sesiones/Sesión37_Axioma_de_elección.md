
# **SESIÓN 37 (REFUERZO): EL AXIOMA DE ELECCIÓN Y EL LEMA DE ZORN (NOCIONES BÁSICAS)**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 3: RELACIONES Y APLICACIONES (Capítulo 3 / Capítulo 5)  
**Objetivo:** Comprender la necesidad del **Axioma de Elección (AC)** en la fundamentación de la teoría formal de conjuntos, definir rigurosamente los conceptos de **función de elección**, **cadena** y **conjunto inductivo** en un conjunto parcialmente ordenado $(U, \le)$, enunciar el **Lema de Zorn** y el **Teorema de la Buena Ordenación de Zermelo**, justificar su equivalencia lógica en el sistema axiomático ZFC y conocer sus principales aplicaciones en el álgebra y la geometría.

---

### **1. Marco Teórico: El Axioma de Elección (AC)**

#### **A. Motivación e Intuición Histórica**

Para una colección _finita_ de conjuntos no vacíos, la existencia de una selección simultánea de un elemento por cada conjunto es una consecuencia inmediata de los axiomas básicos de conjuntos. Sin embargo, cuando se trata de una **familia infinita de conjuntos** para la cual no existe una regla explícita o algoritmo explícito de selección (como elegir el menor elemento de cada subconjunto), la lógica estándar no permite demostrar la existencia de tal elección.

Para resolver esta limitación, Ernst Zermelo (1904) introdujo explícitamente el **Axioma de Elección**.

---

#### **B. Definición Formal del Axioma de Elección**

**Enunciado 1 (Mediante Familias Disjuntas):**  
Dada cualquier familia $\mathcal{F}$ de conjuntos no vacíos y disjuntos dos a dos (es decir, si $A, B \in \mathcal{F}$ con $A \neq B \implies A \cap B = \varnothing$), existe al menos un conjunto $C$ que contiene **exactamente un elemento** de cada conjunto miembro de la familia $\mathcal{F}$:

$$\exists C\, \forall A \in \mathcal{F} , \quad \text{card}(C \cap A) = 1$$
**Enunciado 2 (Mediante Función de Elección):**  
Dada cualquier familia de conjuntos no vacíos $\mathcal{F}$, existe una **función de elección** $f: \mathcal{F} \to \bigcup_{A \in \mathcal{F}} A$ tal que a cada conjunto $A \in \mathcal{F}$ le asigna un elemento perteneciente a dicho conjunto:

$$\forall A \in \mathcal{F}, \quad f(A) \in A$$

---

### **2. Cadenas y Conjuntos Inductivos**

Para enunciar el Lema de Zorn, es indispensable precisar la estructura de orden de un conjunto:

Sea $(U, \preceq)$ un conjunto parcialmente ordenado no vacío.

1. **Cadena:** Un subconjunto no vacío $C \subseteq U$ es una **cadena** si la restricción de la relación de orden $\preceq$ a $C$ es un **orden total** (es decir, todos sus elementos son comparables entre sí): $$\forall x, y \in C, \quad (x \preceq y \lor y \preceq x)$$
2. **Cota Superior de una Cadena:** Un elemento $u \in U$ es una **cota superior** de la cadena $C$ si satisface $x \preceq u$ para todo $x \in C$.
3. **Conjunto Inductivo:** Un conjunto parcialmente ordenado $(U, \le)$ es **inductivo** si es no vacío y **toda cadena $C \subseteq U$ posee al menos una cota superior en $U$**.

---

### **3. El Lema de Zorn y el Teorema de la Buena Ordenación**

#### **A. Enunciado del Lema de Zorn**

El **Lema de Zorn** (formulado por Max Zorn en 1935) es la herramienta de trabajo más potente y empleada en matemáticas avanzadas para garantizar la existencia de **elementos maximales** en estructuras ordenadas complejas:

> **Lema de Zorn:**  
> _Todo conjunto parcialmente ordenado no vacío e inductivo $(U, \le)$ posee al menos un elemento maximal._

$$(U, \le) \text{ no vacío e inductivo} \implies \exists M \in U \text{ tal que } M \text{ es maximal en } U$$

_(Recordemos de la Sesión 29 que $M \in U$ es maximal si $\nexists x \in U, M < x$)_.

##### NOTA IMPORTANTE

**Un único elemento maximal puede ser la cota superior de muchísimas cadenas distintas (incluso infinitas)**.

No tiene que haber "tantos maximales como cadenas"

---

###### 1. La razón teórica: "Ramas" y subcadenas

- **Una cadena** es simplemente cualquier subconjunto $C \subseteq U$ cuyos elementos son todos comparables entre sí ($x \le y$ o $y \le x$).
- **Un elemento maximal** $M \in U$ es un elemento de la cima de una rama del orden: no existe ningún elemento en $U$ que sea estrictamente mayor que él ($M \le x \implies M = x$).

Cuando el Lema de Zorn exige que _toda_ cadena tenga una cota superior en $U$, garantiza que ninguna "rama" del conjunto se extienda indefinidamente sin techo. Pero:

1. **Cadenas anidadas:** Si tienes una cadena larga como $C = {1, 2, 3}$, cualquier subconjunto no vacío (como ${1}$, ${2}$, ${1, 2}$, ${2, 3}$, ${1, 3}$) es **también una cadena**. Todas estas subcadenas comparten las mismas cotas superiores.
2. **Confluencia de cadenas:** Cadenas que empiezan en "raíces" distintas e incomparables pueden terminar confluyendo en el mismo elemento maximal de la cima.

---

###### 2. Dos contraejemplos intuitivos

####### **Ejemplo 1: Un conjunto finito (Diagrama de Hasse)**

Consideremos el conjunto $U = {a, b, m}$ con el orden parcial donde $a \le m$ y $b \le m$, pero $a$ y $b$ son incomparables entre sí (imagina dos caminos distintos que suben a la misma cumbre $m$):

- **Cadenas de $U$:**
    
    1. $C_1 = {a}$ (su cota superior es $m$)
    2. $C_2 = {b}$ (su cota superior es $m$)
    3. $C_3 = {m}$ (su cota superior es $m$)
    4. $C_4 = {a, m}$ (su cota superior es $m$)
    5. $C_5 = {b, m}$ (su cota superior es $m$)
- **Elementos maximales:** **Existe un único elemento maximal**, que es $M = m$.
    

Como ves, tenemos **5 cadenas distintas** y **1 solo elemento maximal**.

---

####### **Ejemplo 2: El intervalo $[0,1]\subset \mathbb{R}$ con el orden usual**

Tomemos $U =$ con la relación de orden habitual $\le$:

- Puesto que el orden usual en $\mathbb{R}$ es total, **cualquier subconjunto no vacío de $[0,1]$ es una cadena**. Por tanto, hay un número no numerable de cadenas ($2^{\mathfrak{c}}$ cadenas).
- Sin embargo, **el elemento $1$ es el único elemento máximo** (y, por tanto, el único maximal) de todo el conjunto.

---

###### 3. ¿Cuándo aparecen varios elementos maximales?

Aparecen múltiples elementos maximales cuando el conjunto ordenado $(U, \le)$ posee **varias ramas o picos independientes** que no se conectan por arriba.

Por ejemplo, si ordenas el conjunto $A = {2, 3, 4, 5, 6, 7, 8, 9, 10}$ con la relación de **divisibilidad** ($x \mid y$), las cadenas que suben por los múltiplos terminan en distintos elementos que no se dividen entre sí: los elementos maximales son ${6, 7, 8, 9, 10}$, mientras que hay docenas de cadenas contenidas en $A$.


#### **B. Teorema de la Buena Ordenación (Zermelo)**

Un conjunto $X$ está **bien ordenado** por una relación $\le$ si todo subconjunto no vacío de $X$ posee un **primer elemento (mínimo)**.

> **Teorema de la Buena Ordenación:**  
> _Todo conjunto $X$ se puede dotar de una relación de orden que lo convierte en un conjunto bien ordenado._

---

#### **C. Equivalencia Fundamental en ZFC**

En la teoría axiomática estándar de Zermelo-Fraenkel (ZF), los siguientes tres enunciados son **lógicamente equivalentes**:

$$\text{Axioma de Elección (AC)} \iff \text{Lema de Zorn} \iff \text{Teorema de la Buena Ordenación}$$

El sistema axiomático formado por los axiomas de ZF junto con el Axioma de Elección se denota abreviadamente como **ZFC**.

---

### **4. Principales Aplicaciones Matemáticas en el Grado**

El Lema de Zorn y el Axioma de Elección son indispensables para demostrar teoremas fundamentales en diversas ramas de la matemática:

1. **Álgebra Lineal (Bases de Hamel):**  
    _Todo espacio vectorial $V$ (finito o de dimensión infinita) posee una base._  
    _(Demostración: Se considera el conjunto ordenado por inclusión de todos los sistemas libremente independientes de $V$. Es inductivo y su elemento maximal es una base)._
2. **Álgebra Conmutativa (Teorema de Krull):**  
    _Todo anillo conmutativo no nulo con elemento unidad posee al menos un ideal maximal._
3. **Análisis Funcional (Teorema de Hahn-Banach):**  
    _Toda forma lineal continua definida en un subespacio vectorial puede extenderse a todo el espacio preservando su norma._
4. **Topología General (Teorema de Tychonoff):**  
    _El producto cartesiano arbitrario (finito o infinito) de espacios topológicos compactos es compacto._

---

### **5. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Considerar el conjunto $\mathcal{S}$ de todos los subgrupos propios de un grupo finito $G$ ordenados por la relación de inclusión $\subseteq$. Comprobar que $(\mathcal{S}, \subseteq)$ es inductivo y determinar sus elementos maximales.
2. **Ejercicio 2:** Explicar por qué para elegir un elemento de cada subconjunto no vacío de los números naturales $\mathbb{N}$ **NO hace falta recurrir al Axioma de Elección** _(Solución: Porque $\mathbb{N}$ está bien ordenado con el orden usual y la función $f(A) = \min(A)$ proporciona una regla explícita de selección)_.

#### Solución ejercicio 1

Lo bonito de este ejercicio de la **Sesión 37 (Axioma de Elección y Lema de Zorn)** es que **no necesitas conocer las propiedades algebraicas internas de los grupos** para resolverlo. La condición de ser "subgrupo propio" actúa simplemente como una propiedad que define qué subconjuntos forman parte de nuestra familia $\mathcal{S}$.

La clave para resolver este ejercicio reside en un hecho puramente conjuntista: **el grupo $G$ es un conjunto FINITO**.

---

##### **1. Comprensión del conjunto $(\mathcal{S}, \subseteq)$**

- Sea $G$ un grupo finito no trivial (es decir, con $|G| > 1$).
- Un **subgrupo propio** $H$ de $G$ es un subconjunto $H \subsetneq G$ que cumple las propiedades de subgrupo pero **sin llegar a ser todo el conjunto $G$** ($H \neq G$).
- El conjunto $\mathcal{S}$ es la familia de todos estos subgrupos propios: $$\mathcal{S} = {H \subseteq G \mid H \text{ es subgrupo de } G \text{ y } H \neq G}$$
- Como $G$ es un conjunto finito, su conjunto de partes $\mathcal{P}(G)$ es finito. Dado que $\mathcal{S} \subseteq \mathcal{P}(G)$, **$\mathcal{S}$ es un conjunto finito de subconjuntos**.

---

##### **2. Paso 1: Comprobar que $(\mathcal{S}, \subseteq)$ es un conjunto inductivo**

###### **Recordatorio de la definición:**

Un conjunto parcialmente ordenado $(U, \le)$ es **inductivo** si es no vacío y **toda cadena $C \subseteq U$ posee una cota superior en $U$**.

###### **Demostración:**

1. **$\mathcal{S}$ es no vacío ($\mathcal{S} \neq \varnothing$):**  
    Como $|G| > 1$, el subgrupo trivial formado únicamente por el elemento neutro ${e}$ es un subgrupo propio (ya que ${e} \neq G$). Por tanto, $\{e\} \in \mathcal{S}$.
    
2. **Toda cadena de $\mathcal{S}$ tiene cota superior en $\mathcal{S}$:**  
    Sea $C = {H_i}_{i \in I}$ una cadena no vacía en $(\mathcal{S}, \subseteq)$.  
    Por definición de cadena, sus elementos están totalmente ordenados por inclusión: $$H_1 \subseteq H_2 \subseteq H_3 \subseteq \dots$$ Como el conjunto global $\mathcal{S}$ es **finito**, la cadena $C$ **debe ser obligatoriamente finita**. Es decir, la cadena consta de un número finito de subgrupos: $$C = {H_1, H_2, \dots, H_k}$$ donde $H_1 \subseteq H_2 \subseteq \dots \subseteq H_k$.
    
    El elemento máximo de la cadena es el subgrupo $H_k \in C$:
    
    - Como $H_k \in C \subseteq \mathcal{S}$, se cumple que $H_k \in \mathcal{S}$ (es un subgrupo propio).
    - Para todo $H_i \in C$, se tiene $H_i \subseteq H_k$.
    
    Por tanto, **$H_k$ es una cota superior de la cadena $C$ que pertenece a $\mathcal{S}$**.
    
3. **Conclusión:**  
    Al haber comprobado que toda cadena en $\mathcal{S}$ tiene cota superior en $\mathcal{S}$, deducimos que **$(\mathcal{S}, \subseteq)$ es un conjunto inductivo**. $\quad \blacksquare$
    

---

##### **3. Paso 2: Determinar sus elementos maximales**

###### **Por la definición de elemento maximal:**

Un elemento $M \in \mathcal{S}$ es **maximal** en el conjunto ordenado $(\mathcal{S}, \subseteq)$ si no existe ningún otro elemento de $\mathcal{S}$ que lo contenga estrictamente: $$\nexists H \in \mathcal{S} \quad \text{tal que} \quad M \subsetneq H$$

Traducido a la estructura de subgrupos de $G$:

- $M$ es un subgrupo propio de $G$ ($M \neq G$).
- No existe ningún subgrupo propio $H$ de $G$ tal que $M \subsetneq H \subsetneq G$.
- Es decir, si $H$ es un subgrupo de $G$ tal que $M \subseteq H \subseteq G$, obligatoriamente se cumple que **$H = M$** o **$H = G$**.

A estos elementos se les denomina en Álgebra **subgrupos maximales de $G$**.

###### **Garantía de existencia por el Lema de Zorn:**

Como hemos demostrado que $(\mathcal{S}, \subseteq)$ es un conjunto inductivo no vacío, aplicando el **Lema de Zorn** se garantiza que **el conjunto $\mathcal{S}$ posee al menos un elemento maximal** (es decir, todo grupo finito no trivial posee al menos un subgrupo maximal).

---

##### **Resumen de la estrategia para el examen**

|Concepto|Aplicación en el Ejercicio|
|:--|:--|
|**Finitud de $G$**|Garantiza que cualquier cadena $H_1 \subseteq H_2 \subseteq \dots \subseteq H_k$ termina en un elemento máximo $H_k$.|
|**Cota Superior**|El propio elemento máximo $H_k$ de la cadena actúa como cota superior en $\mathcal{S}$.|
|**Elemento Maximal**|Son los subgrupos propios $M \subsetneq G$ que no están contenidos en ningún otro subgrupo propio más grande.|

Como ves, ¡todo el peso de la demostración recae en la teoría de conjuntos ordenados e inclusión que hemos trabajado en el Bloque 3!

---

### **6. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea $(U, \le)$ un conjunto parcialmente ordenado no vacío. ¿Bajo qué condición precisa el **Lema de Zorn** garantiza que $U$ contiene al menos un elemento maximal?

- **A)** Que el orden $\le$ sea un orden total y el conjunto $U$ sea finito.
- **B)** Que todo subconjunto totalmente ordenado (cadena) de $U$ posea una cota superior en $U$ (es decir, que $U$ sea un conjunto inductivo).
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - La definición de conjunto **inductivo** exige que _toda cadena_ (subconjunto totalmente ordenado) de $U$ posea cota superior en $U$.
> - Bajo esta premisa exacta, el **Lema de Zorn** asegura la existencia de al menos un **elemento maximal** en $U$.
> - La opción A menciona condiciones suficientes para conjuntos finitos, pero no es el enunciado general del Lema de Zorn.
> - Por consiguiente, la opción **B** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión37_Axioma_de_elección.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con la estructura por bloques, las definiciones formales en recuadros normativos, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la jerarquía de equivalencias de ZFC y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión37_Axioma_de_elección.m4a): Enfocado en la necesidad histórica del Axioma de Elección al trabajar con familias infinitas de conjuntos sin regla explícita de selección, la definición de conjuntos inductivos y cadenas, el Lema de Zorn para la búsqueda de elementos maximales y sus aplicaciones esenciales en el Grado en Matemáticas (como la existencia de bases en dimensión infinita).