# **SESIÓN 28 (TEORÍA): RELACIÓN DE ORDEN: ORDEN PARCIAL Y TOTAL**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 3: RELACIONES Y APLICACIONES (Capítulo 3)  
**Objetivo:** Definir formalmente la **relación de orden $\le$** sobre un conjunto $A$ mediante las propiedades **reflexiva, antisimétrica y transitiva**, diferenciar entre **orden parcial** y **orden total** introduciendo el concepto de **elementos comparables**, caracterizar el **orden estricto ($<$)**, representar conjuntos ordenados finitos mediante **diagramas de Hasse**, y analizar los ejemplos fundamentales del texto base de la UNED (Delgado Pineda & Muñoz Bouzo).

---

### **1. Marco Teórico: Definición y Propiedades de la Relación de Orden**

#### **A. Definición de Relación de Orden**

Una relación binaria $\mathcal{R}$ definida sobre un conjunto no vacío $A$ ($\mathcal{R} \subseteq A \times A$) se denomina **relación de orden** (o simplemente un **orden**) si y solo si satisface simultáneamente las propiedades **reflexiva, antisimétrica y transitiva**:

1. **Reflexiva:** $\forall x \in A, \quad x \mathcal{R} x$.
2. **Antisimétrica:** $\forall x, y \in A, \quad ((x \mathcal{R} y \land y \mathcal{R} x) \implies x = y)$.
3. **Transitiva:** $\forall x, y, z \in A, \quad ((x \mathcal{R} y \land y \mathcal{R} z) \implies x \mathcal{R} z)$.

- **Notación Habitual:** En lugar de la letra $\mathcal{R}$, para una relación de orden se utiliza genéricamente el símbolo **$\le$** (o bien $\le_{\mathcal{R}}$). La expresión $x \le y$ se lee _"x es menor o igual que y"_ o _"x precede a y"_.
- **Conjunto Ordenado:** El par $(A, \le)$ formado por el conjunto $A$ y la relación de orden $\le$ recibe el nombre de **conjunto ordenado** (o _poset_, del inglés _partially ordered set_).

---

#### **B. Comparabilidad: Orden Parcial vs. Orden Total**

1. **Elementos Comparables:**  
    Dos elementos $x, y \in A$ son **comparables** mediante la relación de orden $\le$ si se verifica que: $x \le y \quad \lor \quad y \le x$ Si no se cumple ninguna de las dos condiciones, se dice que $x$ e $y$ son **incomparables**.
    
2. **Orden Total (o Lineal):**  
    Una relación de orden $\le$ en $A$ es un **orden total** si **todos los pares de elementos de $A$ son comparables entre sí**: $\forall x, y \in A, \quad (x \le y \lor y \le x)$ En este caso, $(A, \le)$ se denomina **conjunto totalmente ordenado** o **cadena**.
    
3. **Orden Parcial:**  
    Una relación de orden $\le$ en $A$ es un **orden parcial** si existen al menos dos elementos $x, y \in A$ que **no son comparables** (es decir, $x \nleq y \land y \nleq x$).
    

---

#### **C. Relación de Orden Estricto ($<$)**

A partir de una relación de orden $\le$ en $A$, se define la relación de **orden estricto** asociada, denotada por **$<$**, como: $x < y \iff (x \le y \land x \neq y)$

#### **Propiedades del Orden Estricto:**

- **Irreflexiva:** $\forall x \in A, \quad x \nless x$.
- **Asimétrica:** $\forall x, y \in A, \quad (x < y \implies y \nless x)$.
- **Transitiva:** $\forall x, y, z \in A, \quad ((x < y \land y < z) \implies x < z)$.

---

### **2. Representación Gráfica: Diagramas de Hasse**

Para conjuntos ordenados finitos $(A, \le)$, los grafos convencionales resultan sobrecargados debido a los bucles reflexivos y los arcos transitivos. El **diagrama de Hasse** simplifica la representación visual mediante el siguiente algoritmo:

1. **Eliminar Bucles Reflexivos:** No se dibujan los arcos $(x, x)$.
2. **Eliminar Aristas Transitivas:** Si $x < y$ y $y < z$, se omite el trazo directo entre $x$ y $z$.
3. **Orientación Vertical (Cobertura):** Se dice que $y$ **cubre** a $x$ si $x < y$ y no existe ningún $z \in A$ tal que $x < z < y$. En el gráfico, se coloca el punto $y$ en un nivel **visualmente superior** al de $x$ y se conectan mediante un segmento de recta no dirigido.

---

### **3. Ejemplos Emblemáticos del Texto Base (Delgado Pineda & Muñoz Bouzo)**

#### **Ejemplo 1: Orden de Inclusión en el Conjunto de las Partes $(\mathcal{P}(U), \subseteq)$**

Sea $U = {1, 2}$ y su conjunto de las partes $\mathcal{P}(U) = {\varnothing, {1}, {2}, {1, 2}}$.

- La relación de inclusión $\subseteq$ es de orden pues es reflexiva ($X \subseteq X$), antisimétrica ($X \subseteq Y \land Y \subseteq X \implies X = Y$) y transitiva.
- **¿Es parcial o total?:** Consideremos los subconjuntos ${1}$ y ${2}$.
    - ${1} \nsubseteq {2}$ y ${2} \nsubseteq {1}$.
    - Como ${1}$ y ${2}$ son **incomparables**, la inclusión $\subseteq$ es un **orden parcial** si $\text{card}(U) \ge 2$.
- **Diagrama de Hasse de $\mathcal{P}({1, 2})$:**
    - Nivel 0 (Base): $\varnothing$.
    - Nivel 1 (Unitarios): ${1}$ y ${2}$ (ambos conectados por líneas desde $\varnothing$).
    - Nivel 2 (Cima): ${1, 2}$ (conectado desde ${1}$ y ${2}$).

---

#### __Ejemplo 2: Relación de Divisibilidad en los Naturales $(\mathbb{N}^_, \mid)$_*

En $\mathbb{N}^* = {1, 2, 3, \dots}$, consideramos $x \le_{\mathcal{D}} y \iff x \mid y$.

- Demostramos en la Sesión 25 que la divisibilidad es reflexiva, antisimétrica y transitiva, luego **es una relación de orden**.
- **¿Es parcial o total?:** Tomemos $x = 2$ e $y = 3$.  
    Como $2 \nmid 3$ y $3 \nmid 2$, los números $2$ y $3$ no son comparables por divisibilidad. Por tanto, la divisibilidad en $\mathbb{N}^*$ es un **orden parcial**.

---

#### **Ejemplo 3: Orden Habitual en los Números Reales $(\mathbb{R}, \le)$**

En $\mathbb{R}$, con el orden usual $\le$:

- Para dos números reales arbitrarios $x, y \in \mathbb{R}$, la ley de tricotomía garantiza que siempre se cumple $x \le y$ o $y \le x$.
- Por consiguiente, todos los elementos son comparables y $(\mathbb{R}, \le)$ es un **conjunto totalmente ordenado**.

---

### **4. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Considerar el conjunto $A = {1, 2, 3, 4, 6, 12}$ con la relación de divisibilidad $x \mid y$.  
    a) Demostrar que $(A, \mid)$ es un conjunto parcialmente ordenado.  
    b) Dibujar de forma justificada el diagrama de Hasse correspondiente.
2. **Ejercicio 2:** En $\mathbb{R}^2$, se define el orden lexicográfico por: $(x, y) \le_{\text{lex}} (z, t) \iff (x < z) \lor (x = z \land y \le t)$ Demostrar analíticamente que $\le_{\text{lex}}$ es una relación de **orden total** en $\mathbb{R}^2$.

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea el conjunto finito $A = {1, 2, 3, 6}$ dotado de la relación de orden dada por la divisibilidad $x \mid y$. ¿Cuál de las siguientes afirmaciones es **verdadera**?

- **A)** $(A, \mid)$ es un conjunto totalmente ordenado porque el $1$ divide a todos los elementos y todos los elementos dividen al $6$.
- **B)** $(A, \mid)$ es un conjunto parcialmente ordenado porque los elementos $2$ y $3$ no son comparables ($2 \nmid 3$ y $3 \nmid 2$).
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Para que un orden sea **total**, **todos** los pares de elementos deben ser comparables.
> - Tomamos los elementos $2, 3 \in A$:
>     - $2 \mid 3$ es falso ($2$ no divide a $3$).
>     - $3 \mid 2$ es falso ($3$ no divide a $2$).
> - Al existir al menos un par de elementos incomparables ($2$ y $3$), la relación de divisibilidad sobre $A$ es un **orden parcial** y no total.
> - La opción A es falsa porque confunde la presencia de mínimo y máximo con la comparabilidad universal.
> - Por lo tanto, la opción **B** es la **correcta**.

## Material de apoyo
- [**Presentación**](Presentaciones/Sesión28_Relación_de_orden.pptx) Elaborada respetando el _AAA_Manual_de_Estilo_Presentaciones_, con el encabezado del Bloque 3, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la construcción de diagramas de Hasse y la pregunta tipo test de autoevaluación.
- [**Resumen de audio**](Audios/Sesión28_Relación_de_orden.m4a): Enfocado en la transición conceptual de la clasificación (equivalencia) a la jerarquización (orden), la caracterización de la antisimetría, la distinción clave entre orden parcial (existencia de elementos incomparables) y orden total (comparabilidad universal), el orden estricto ($<$) y los diagramas de Hasse.