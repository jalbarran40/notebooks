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

- **Notación Habitual:** En lugar de la letra $\mathcal{R}$, para una relación de orden se utiliza genéricamente el símbolo **$\preceq$** (o bien $\preceq_{\mathcal{R}}$). La expresión $x \preceq y$ se lee _"x es menor o igual que y"_ o _"x precede a y"_.
- **Conjunto Ordenado:** El par $(A, \preceq)$ formado por el conjunto $A$ y la relación de orden $\preceq$ recibe el nombre de **conjunto ordenado** (o _poset_, del inglés _partially ordered set_).

---

#### **B. Comparabilidad: Orden Parcial vs. Orden Total**

1. **Elementos Comparables:**  
    Dos elementos $x, y \in A$ son **comparables** mediante la relación de orden $\preceq$ si se verifica que: $x \preceq y \quad \lor \quad y \preceq x$ Si no se cumple ninguna de las dos condiciones, se dice que $x$ e $y$ son **incomparables**.
    
2. **Orden Total (o Lineal):**  
    Una relación de orden $\preceq$ en $A$ es un **orden total** si **todos los pares de elementos de $A$ son comparables entre sí**: $\forall x, y \in A, \quad (x \preceq y \lor y \preceq x)$ En este caso, $(A, \preceq)$ se denomina **conjunto totalmente ordenado** o **cadena**.
    
3. **Orden Parcial:**  
    Una relación de orden $\le$ en $A$ es un **orden parcial** si existen al menos dos elementos $x, y \in A$ que **no son comparables** (es decir, $x \not \preceq y \land y \not \preceq x$).
    

---

#### **C. Relación de Orden Estricto ($\prec$)**

A partir de una relación de orden $\preceq$ en $A$, se define la relación de **orden estricto** asociada, denotada por **$\prec$**, como: $x \prec y \iff (x \neq y \land x \neq y)$

#### **Propiedades del Orden Estricto:**

- **Irreflexiva:** $\forall x \in A, \quad x \not \prec x$.
- **Asimétrica:** $\forall x, y \in A, \quad (x \prec y \implies y \not \prec x)$.
- **Transitiva:** $\forall x, y, z \in A, \quad ((x \prec y \land y \prec z) \implies x \prec z)$.

---

### **2. Representación Gráfica: Diagramas de Hasse**

Para conjuntos ordenados finitos $(A, \preceq)$, los grafos convencionales resultan sobrecargados debido a los bucles reflexivos y los arcos transitivos. El **diagrama de Hasse** simplifica la representación visual mediante el siguiente algoritmo:

**NOTA IMPORTANTE**: En el texto no se utiliza la nomenclatura "Diagrama de Hasse", sino pseudo-grafo dirigido

1. **Eliminar Bucles Reflexivos:** No se dibujan los arcos $(x, x)$.
2. **Eliminar Aristas Transitivas:** Si $x < y$ y $y < z$, se omite el trazo directo entre $x$ y $z$.
3. **Orientación Vertical (Cobertura):** Se dice que $y$ **cubre** a $x$ si $x < y$ y no existe ningún $z \in A$ tal que $x < z < y$. En el gráfico, se coloca el punto $y$ en un nivel **visualmente superior** al de $x$ y se conectan mediante un segmento de recta no dirigido.

[Diagrama de Hasse en WikiPedia](https://es.wikipedia.org/wiki/Diagrama_de_Hasse)

---

### **3. Ejemplos Emblemáticos del Texto Base (Delgado Pineda & Muñoz Bouzo)**

#### **Ejemplo 1: Orden de Inclusión en el Conjunto de las Partes $(\mathcal{P}(U), \subseteq)$**

Sea $U = \{1, 2\}$ y su conjunto de las partes $\mathcal{P}(U) = \{\varnothing, \{1\}, \{2\}, \{1, 2\}\}$.

- La relación de inclusión $\subseteq$ es de orden pues es reflexiva ($X \subseteq X$), antisimétrica ($X \subseteq Y \land Y \subseteq X \implies X = Y$) y transitiva.
- **¿Es parcial o total?:** Consideremos los subconjuntos ${1}$ y ${2}$.
    - ${1} \nsubseteq {2}$ y ${2} \nsubseteq {1}$.
    - Como ${1}$ y ${2}$ son **incomparables**, la inclusión $\subseteq$ es un **orden parcial** si $\text{card}(U) \ge 2$.
- **Diagrama de Hasse de $\mathcal{P}(\{1, 2\})$:**
    - Nivel 0 (Base): $\varnothing$.
    - Nivel 1 (Unitarios): ${1}$ y ${2}$ (ambos conectados por líneas desde $\varnothing$).
    - Nivel 2 (Cima): ${1, 2}$ (conectado desde ${1}$ y ${2}$).

---

#### __Ejemplo 2: Relación de Divisibilidad en los Naturales $(\mathbb{N}^*, \mid)$

En $\mathbb{N}^* = \{1, 2, 3, \dots\}$, consideramos $x \preceq_{\mathcal{D}} y \iff x \mid y$.

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

1. **Ejercicio 1:** Considerar el conjunto $A = \{1, 2, 3, 4, 6, 12\}$ con la relación de divisibilidad $x \mid y$.  
    a) Demostrar que $(A, \mid)$ es un conjunto parcialmente ordenado.  
    b) Dibujar de forma justificada el diagrama de Hasse correspondiente.
2. **Ejercicio 2:** En $\mathbb{R}^2$, se define el orden lexicográfico por: $(x, y) \preceq_{\text{lex}} (z, t) \iff (x < z) \lor (x = z \land y \le t)$ Demostrar analíticamente que $\preceq_{\text{lex}}$ es una relación de **orden total** en $\mathbb{R}^2$.

#### Solución ejercicio 4.2


**Enunciado:**  
En el conjunto $\mathbb{R}^2 = \mathbb{R} \times \mathbb{R}$, se define la relación binaria del **orden lexicográfico** $\preceq_{\text{lex}}$ mediante: $$ (x, y) \preceq_{\text{lex}} (z, t) \iff (x < z) \lor (x = z \land y \le t) $$ Demostrar analíticamente que $\preceq_{\text{lex}}$ es una relación de **orden total** en $\mathbb{R}^2$.

---

##### **Estrategia y Estructura de la Demostración**

Para probar que $(\mathbb{R}^2, \preceq_{\text{lex}})$ es un conjunto **totalmente ordenado**, debemos verificar formalmente cuatro propiedades:

1. **Propiedad Reflexiva**
2. **Propiedad Antisimétrica**
3. **Propiedad Transitiva**  
    _(Estas tres primeras prueban que es una relación de orden parcial)_.
4. **Propiedad de Comparabilidad Total (o Totalidad)**  
    _(Prueba que el orden es total)_.

En el desarrollo justificaremos cada paso apoyándonos en las propiedades del orden usual $\le$ en $\mathbb{R}$ (que es reflexivo, antisimétrico, transitivo y satisface la ley de tricotomía).

---

###### **1. Propiedad Reflexiva**

- **Definición a comprobar:**  
    $$ \forall (x, y) \in \mathbb{R}^2, \quad (x, y) \preceq_{\text{lex}} (x, y) $$
    
- **Demostración:**  
    Sea $(x, y) \in \mathbb{R}^2$ un par ordenado arbitrario.  
    Analizamos la segunda disyunción de la definición con $z = x$ y $t = y$:
    
    1. Por la propiedad reflexiva de la igualdad de números reales, sabemos que $x = x$ es **verdadero**.
    2. Por la propiedad reflexiva del orden usual en $\mathbb{R}$, sabemos que $y \le y$ es **verdadero**.
    
    Por consiguiente, la conjunción $(x = x \land y \le y)$ es **verdadera**.  
    Por la regla de introducción de la disyunción ($p \implies p \lor q$), la proposición $(x < x) \lor (x = x \land y \le y)$ es **verdadera**.
    
    Por la definición del orden lexicográfico, esto equivale a **$(x, y) \preceq_{\text{lex}} (x, y)$**, probando que $\preceq_{\text{lex}}$ **es reflexiva**. $\blacksquare$
    

---

###### **2. Propiedad Antisimétrica**

- **Definición a comprobar:**  
    $$ \forall (x, y), (z, t) \in \mathbb{R}^2, \quad \left( ((x, y) \preceq_{\text{lex}} (z, t) \land (z, t) \preceq_{\text{lex}} (x, y)) \implies (x, y) = (z, t) \right) $$
    
- **Demostración:**  
    Sean $(x, y), (z, t) \in \mathbb{R}^2$ tales que se cumplen simultáneamente:
    
    - **(I)** $(x, y) \preceq_{\text{lex}} (z, t) \iff (x < z) \lor (x = z \land y \le t)$
    - **(II)** $(z, t) \preceq_{\text{lex}} (x, y) \iff (z < x) \lor (z = x \land t \le y)$
    
    Analizamos la relación entre las primeras componentes $x$ y $z$ en $\mathbb{R}$:
    
    - **Si $x < z$:** Por la propiedad asimétrica de la relación de orden estricto en $\mathbb{R}$, $x < z \implies \neg(z < x)$ y $\neg(z = x)$. Por tanto, ambas partes de la disyunción en **(II)** serían falsas, contradiciendo la hipótesis **(II)**.
    - **Si $z < x$:** De forma análoga, $z < x \implies \neg(x < z)$ y $\neg(x = z)$, lo que invalida **(I)**.
    
    Por la **ley de tricotomía** en $\mathbb{R}$, la única posibilidad admisible es que **$x = z$**.
    
    Sustituyendo $x = z$ en las expresiones **(I)** y **(II)**:
    
    - De **(I)** se deduce que $y \le t$.
    - De **(II)** se deduce que $t \le y$.
    
    Por la propiedad **antisimétrica del orden usual $\le$ en $\mathbb{R}$**: $$ (y \le t \land t \le y) \implies y = t $$
    
    Al haberse probado que $x = z$ e $y = t$, se concluye que **$(x, y) = (z, t)$**, lo que demuestra analíticamente que $\preceq_{\text{lex}}$ **es antisimétrica**. $\blacksquare$
    

---

###### **3. Propiedad Transitiva**

- **Definición a comprobar:**  
    $$ \forall (x_1, y_1), (x_2, y_2), (x_3, y_3) \in \mathbb{R}^2, \quad \left( ((x_1, y_1) \preceq_{\text{lex}} (x_2, y_2) \land (x_2, y_2) \preceq_{\text{lex}} (x_3, y_3)) \implies (x_1, y_1) \preceq_{\text{lex}} (x_3, y_3) \right) $$
    
- **Demostración:**  
    Sean $(x_1, y_1), (x_2, y_2), (x_3, y_3) \in \mathbb{R}^2$ tres elementos tales que:
    
    - **(H1)** $(x_1 < x_2) \lor (x_1 = x_2 \land y_1 \le y_2)$
    - **(H2)** $(x_2 < x_3) \lor (x_2 = x_3 \land y_2 \le y_3)$
    
    Distinguimos casos según la relación entre las primeras componentes:
    
    - **Caso 1: $x_1 < x_2$**  
        De **(H2)** se deduce que $x_2 \le x_3$ (puesto que $x_2 < x_3$ o $x_2 = x_3$).  
        Por la transitividad del orden usual en $\mathbb{R}$, si $x_1 < x_2$ y $x_2 \le x_3$, entonces **$x_1 < x_3$**.  
        Por definición del orden lexicográfico, al cumplirse $x_1 < x_3$, se satisface inmediatamente **$(x_1, y_1) \preceq_{\text{lex}} (x_3, y_3)$**.
        
    - **Caso 2: $x_2 < x_3$**  
        De **(H1)** se deduce que $x_1 \le x_2$.  
        Por transitividad en $\mathbb{R}$, si $x_1 \le x_2$ y $x_2 < x_3$, entonces **$x_1 < x_3$**.  
        Por lo tanto, se satisface **$(x_1, y_1) \preceq_{\text{lex}} (x_3, y_3)$**.
        
    - **Caso 3: $x_1 = x_2$ y $x_2 = x_3$**  
        Por la transitividad de la igualdad, se cumple **$x_1 = x_3$**.  
        Además, en este caso las hipótesis se reducen a $y_1 \le y_2$ en **(H1)** e $y_2 \le y_3$ en **(H2)**.  
        Por la transitividad del orden usual $\le$ en $\mathbb{R}$, se deduce que **$y_1 \le y_3$**.  
        Como $x_1 = x_3 \land y_1 \le y_3$, se verifica **$(x_1, y_1) \preceq_{\text{lex}} (x_3, y_3)$**.
        
    
    En todos los casos posibles se concluye la tesis, probando que $\preceq_{\text{lex}}$ **es transitiva**. $\blacksquare$
    

---

###### **4. Propiedad de Comparabilidad Total (Totalidad)**

- **Definición a comprobar:**  
    $$ \forall (x_1, y_1), (x_2, y_2) \in \mathbb{R}^2, \quad (x_1, y_1) \preceq_{\text{lex}} (x_2, y_2) \lor (x_2, y_2) \preceq_{\text{lex}} (x_1, y_1) $$
    
- **Demostración:**  
    Sean $(x_1, y_1), (x_2, y_2) \in \mathbb{R}^2$ dos elementos cualesquiera.  
    Por la **ley de tricotomía** aplicada a las primeras componentes $x_1, x_2 \in \mathbb{R}$, se da exactamente uno de los tres casos siguientes:
    
    - **Caso A: $x_1 < x_2$**  
        Se cumple la definición de $(x_1, y_1) \preceq_{\text{lex}} (x_2, y_2)$.
        
    - **Caso B: $x_2 < x_1$**  
        Se cumple la definición de $(x_2, y_2) \preceq_{\text{lex}} (x_1, y_1)$.
        
    - **Caso C: $x_1 = x_2$**  
        Analizamos las segundas componentes $y_1, y_2 \in \mathbb{R}$. Puesto que el orden usual $\le$ en $\mathbb{R}$ es total, se cumple $y_1 \le y_2 \lor y_2 \le y_1$:
        
        - Si $y_1 \le y_2$, como $x_1 = x_2$, tenemos $x_1 = x_2 \land y_1 \le y_2 \implies (x_1, y_1) \preceq_{\text{lex}} (x_2, y_2)$.
        - Si $y_2 \le y_1$, como $x_2 = x_1$, tenemos $x_2 = x_1 \land y_2 \le y_1 \implies (x_2, y_2) \preceq_{\text{lex}} (x_1, y_1)$.
    
    Dado que todo par de elementos de $\mathbb{R}^2$ es comparable bajo $\preceq_{\text{lex}}$, queda demostrado que $\preceq_{\text{lex}}$ **es una relación de orden total en $\mathbb{R}^2$**. $\blacksquare$
    

---

##### **Conclusión del Ejercicio**

Al haber demostrado analíticamente que $\preceq_{\text{lex}}$ es **reflexiva**, **antisimétrica**, **transitiva** y **total**, queda probado que $(\mathbb{R}^2, \preceq_{\text{lex}})$ es un **conjunto totalmente ordenado** (o cadena).

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea el conjunto finito $A = \{1, 2, 3, 6\}$ dotado de la relación de orden dada por la divisibilidad $x \mid y$. ¿Cuál de las siguientes afirmaciones es **verdadera**?

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
**ATENCIÓN**: Hay un error en la diapositiva 8. La relación entre 3 y 4 no debe existir
- [**Resumen de audio**](Audios/Sesión28_Relación_de_orden.m4a): Enfocado en la transición conceptual de la clasificación (equivalencia) a la jerarquización (orden), la caracterización de la antisimetría, la distinción clave entre orden parcial (existencia de elementos incomparables) y orden total (comparabilidad universal), el orden estricto ($<$) y los diagramas de Hasse.