
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

$$\forall A \in \mathcal{F}, \quad \text{card}(C \cap A) = 1$$

**Enunciado 2 (Mediante Función de Elección):**  
Dada cualquier familia de conjuntos no vacíos $\mathcal{F}$, existe una **función de elección** $f: \mathcal{F} \to \bigcup_{A \in \mathcal{F}} A$ tal que a cada conjunto $A \in \mathcal{F}$ le asigna un elemento perteneciente a dicho conjunto:

$$\forall A \in \mathcal{F}, \quad f(A) \in A$$

---

### **2. Cadenas y Conjuntos Inductivos**

Para enunciar el Lema de Zorn, es indispensable precisar la estructura de orden de un conjunto:

Sea $(U, \le)$ un conjunto parcialmente ordenado no vacío.

1. **Cadena:** Un subconjunto no vacío $C \subseteq U$ es una **cadena** si la restricción de la relación de orden $\le$ a $C$ es un **orden total** (es decir, todos sus elementos son comparables entre sí): $$\forall x, y \in C, \quad (x \le y \lor y \le x)$$
2. **Cota Superior de una Cadena:** Un elemento $u \in U$ es una **cota superior** de la cadena $C$ si satisface $x \le u$ para todo $x \in C$.
3. **Conjunto Inductivo:** Un conjunto parcialmente ordenado $(U, \le)$ es **inductivo** si es no vacío y **toda cadena $C \subseteq U$ posee al menos una cota superior en $U$**.

---

### **3. El Lema de Zorn y el Teorema de la Buena Ordenación**

#### **A. Enunciado del Lema de Zorn**

El **Lema de Zorn** (formulado por Max Zorn en 1935) es la herramienta de trabajo más potente y empleada en matemáticas avanzadas para garantizar la existencia de **elementos maximales** en estructuras ordenadas complejas:

> **Lema de Zorn:**  
> _Todo conjunto parcialmente ordenado no vacío e inductivo $(U, \le)$ posee al menos un elemento maximal._

$$(U, \le) \text{ no vacío e inductivo} \implies \exists M \in U \text{ tal que } M \text{ es maximal en } U$$

_(Recordemos de la Sesión 29 que $M \in U$ es maximal si $\nexists x \in U, M < x$)_.

---

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