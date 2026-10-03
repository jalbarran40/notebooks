# **SESIÓN 26 (TEORÍA): RELACIÓN DE EQUIVALENCIA Y CONJUNTO COCIENTE. PARTICIONES DE UN CONJUNTO**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 3: RELACIONES Y APLICACIONES (Capítulo 3)  
**Objetivo:** Comprender el concepto de **relación de equivalencia** como herramienta fundamental para clasificar elementos de un conjunto, definir formalmente la **clase de equivalencia $[x]$**, el **conjunto cociente $U/\mathcal{R}$** y la **partición $P$** de un conjunto, y demostrar el **Teorema Fundamental de las Relaciones de Equivalencia** demostrando la correspondencia biunívoca entre relaciones de equivalencia y particiones.

---

### **1. Marco Teórico: Relación de Equivalencia y Clase de Equivalencia**

#### **A. Definición de Relación de Equivalencia**

Una relación binaria $\mathcal{R}$ definida sobre un conjunto no vacío $U$ ($\mathcal{R} \subseteq U \times U$) es una **relación de equivalencia** si y solo si satisface simultáneamente las propiedades **reflexiva, simétrica y transitiva**:

1. **Reflexiva:** $\forall x \in U, \quad x \mathcal{R} x$.
2. **Simétrica:** $\forall x, y \in U, \quad (x \mathcal{R} y \implies y \mathcal{R} x)$.
3. **Transitiva:** $\forall x, y, z \in U, \quad ((x \mathcal{R} y \land y \mathcal{R} z) \implies x \mathcal{R} z)$.

---

#### **B. Clase de Equivalencia $[x]$**

Dada una relación de equivalencia $\mathcal{R}$ en $U$ y un elemento $x \in U$, se define la **clase de equivalencia de $x$** (denotada por $[x]$, $\mathcal{R}[x]$ o $\bar{x}$) como el subconjunto de $U$ formado por todos los elementos relacionados con $x$: $[x] = {y \in U \mid x \mathcal{R} y}$

Cualquier elemento $y \in [x]$ se denomina **representante** de la clase de equivalencia $[x]$.

#### **Propiedades Fundamentales de las Clases de Equivalencia:**

1. **Toda clase es no vacía:** Para todo $x \in U$, como $x \mathcal{R} x$ por la propiedad reflexiva, se cumple que $x \in [x]$, luego **$[x] \neq \varnothing$**.
2. **Igualdad de clases por pertenencia/relación:**  
    $x \mathcal{R} y \iff [x] = [y]$ _(Si dos elementos están relacionados, sus clases de equivalencia son exactamente el mismo conjunto)._
3. **Disyunción de clases distintas:** Dos clases de equivalencia $[x]$ y $[y]$ son o bien idénticas o bien totalmente disjuntas: $x \cancel{\mathcal{R}} y \iff [x] \cap [y] = \varnothing$

---

### **2. El Conjunto Cociente ($U/\mathcal{R}$)**

#### **Definición Formal**

Dada una relación de equivalencia $\mathcal{R}$ sobre un conjunto $U$, se denomina **conjunto cociente de $U$ por $\mathcal{R}$**, y se denota por **$U/\mathcal{R}$** (o bien $U/\mathcal{E}$), al conjunto cuyos elementos son todas las clases de equivalencia generadas por $\mathcal{R}$: $U/\mathcal{R} = {[x] \mid x \in U}$

#### **Ejemplos Emblemáticos del Texto Base (Delgado Pineda & Muñoz Bouzo)**

1. **Enteros Módulo $p$ ($\mathbb{Z}/p\mathbb{Z}$):**  
    En $\mathbb{Z}$, fijado $p \in \mathbb{N}^*$, se define la relación de congruencia módulo $p$: $a \equiv b \pmod p \iff \exists k \in \mathbb{Z}, a - b = k p$ El conjunto cociente consta de $p$ clases disjuntas representadas por los posibles restos de la división entera entre $p$: $\mathbb{Z}/p\mathbb{Z} = {,,, \dots, [p-1]}$
    
2. **Construcción Formal de los Números Enteros $\mathbb{Z}$ a partir de $\mathbb{N} \times \mathbb{N}$:**  
    En $\mathbb{N} \times \mathbb{N}$, se define la relación $(a, b) \mathcal{E} (c, d) \iff a + d = b + c$.  
    El conjunto cociente $(\mathbb{N} \times \mathbb{N})/\mathcal{E}$ define formalmente el conjunto de los números enteros $\mathbb{Z}$.
    
3. __Construcción Formal de los Números Racionales $\mathbb{Q}$ a partir de $\mathbb{Z} \times \mathbb{Z}^_$:_*  
    En $\mathbb{Z} \times \mathbb{Z}^*$, se define la relación $(a, b) \mathcal{E} (c, d) \iff a \cdot d = b \cdot c$.  
    El conjunto cociente $(\mathbb{Z} \times \mathbb{Z}^*)/\mathcal{E}$ define el conjunto de los números racionales $\mathbb{Q}$, donde la clase $[(a, b)]$ se denota habitualmente por la fracción irreducible $\frac{a}{b}$.
    
4. **Vectores Libres del Plano/Espacio:**  
    La relación de equipolencia entre vectores fijos (igual módulo, dirección y sentido) en el plano define como clases de equivalencia los **vectores libres**.
    

---

### **3. Particiones de un Conjunto y el Teorema Fundamental**

#### **Definición de Partición**

Una familia $P$ de subconjuntos de $U$ es una **partición del conjunto $U$** si satisface las siguientes tres condiciones:

1. **Todos los subconjuntos son no vacíos:** $\forall A \in P, \quad A \neq \varnothing$.
2. **Son disjuntos dos a dos:** $\forall A, B \in P, \quad (A = B \lor A \cap B = \varnothing)$.
3. **Su unión cubre todo el conjunto $U$:** $\bigcup_{A \in P} A = U$.

---

#### **Teorema Fundamental de las Relaciones de Equivalencia**

**Enunciado:**

1. _Toda relación de equivalencia $\mathcal{R}$ en un conjunto $U$ induce una partición $P$ en $U$, dada por el conjunto cociente $U/\mathcal{R}$._
2. _Recíprocamente, toda partición $P$ de un conjunto $U$ permite definir una única relación de equivalencia $\mathcal{R}$ en $U$ dada por:_ $x \mathcal{R} y \iff \exists A \in P \text{ tal que } {x, y} \subseteq A$

- **Demostración Analítica del Teorema (Estándar UNED):**
    
    1. **Parte 1 (Toda relación de equivalencia $\mathcal{R}$ induce una partición en $U$):**
        
        - **Subconjuntos no vacíos:** Para todo $x \in U$, $x \in [x]$ (propiedad reflexiva), luego $[x] \neq \varnothing$.
        - **Unión total:** Como $x \in [x]$ para cada $x \in U$, es evidente que $U = \bigcup_{x \in U} {x} \subseteq \bigcup_{x \in U} [x] \subseteq U$, de donde $\bigcup_{[x] \in U/\mathcal{R}} [x] = U$.
        - **Disjuntos dos a dos:** Sean $[x], [y] \in U/\mathcal{R}$. Si $[x] \cap [y] \neq \varnothing$, existe $z \in [x] \cap [y]$.  
            Entonces $x \mathcal{R} z$ y $y \mathcal{R} z$. Por simetría y transitividad, $x \mathcal{R} y$, lo que implica que $[x] = [y]$.  
            Por tanto, o bien $[x] = [y]$ o bien $[x] \cap [y] = \varnothing$.
        - Conclusión: El conjunto cociente $U/\mathcal{R}$ forma una **partición** de $U$.
    2. **Parte 2 (Toda partición $P$ define una relación de equivalencia):**
        
        - **Reflexiva:** Para todo $x \in U$, como $U = \bigcup_{A \in P} A$, existe $A_x \in P$ tal que $x \in A_x \implies {x, x} \subseteq A_x \implies x \mathcal{R} x$.
        - **Simétrica:** Si $x \mathcal{R} y \implies \exists A \in P, {x, y} \subseteq A \implies {y, x} \subseteq A \implies y \mathcal{R} x$.
        - **Transitiva:** Si $x \mathcal{R} y \land y \mathcal{R} z \implies \exists A, B \in P$ tales que ${x, y} \subseteq A$ y ${y, z} \subseteq B$.  
            Como $y \in A \cap B$, $A$ y $B$ no son disjuntos, por lo que la definición de partición exige $A = B$.  
            Sustituyendo, ${x, z} \subseteq A \implies x \mathcal{R} z$.
        - Conclusión: La relación $\mathcal{R}$ definida a partir de la partición $P$ es **de equivalencia**. $\blacksquare$

---

### **4. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1 (Cálculo de Particiones):** Sea el conjunto $V = {1, 2, 3}$. Obtener todas las particiones posibles de $V$ (deben obtenerse exactamente $15$ particiones distintas) y determinar la relación de equivalencia asociada a la partición $P = {{1}, {2, 3}}$.
2. **Ejercicio 2 (Relación en $\mathbb{R}^2$):** En $\mathbb{R}^2$ se define la relación $(x, y) \mathcal{R} (z, t) \iff x^2 + y^2 = z^2 + t^2$.  
    Demostrar que es una relación de equivalencia y describir geométricamente sus clases de equivalencia (circunferencias concéntricas centradas en el origen).

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** En el conjunto de los números enteros $\mathbb{Z}$, se define la relación de congruencia módulo $4$: $a \equiv b \pmod 4 \iff 4 \mid (a - b)$. ¿Cuál es la clase de equivalencia $[-1]$ y qué conjunto forma parte del conjunto cociente $\mathbb{Z}/4\mathbb{Z}$?

- **A)** $[-1] = {} = {k \in \mathbb{Z} \mid \exists q \in \mathbb{Z}, k = 4q + 3}$ y la clase $[-1]$ coincide con la clase $$.
- **B)** $[-1] = {-1, 1, 3, 5}$ y el conjunto cociente tiene infinitos elementos.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Calculamos los elementos de $[-1]$: $k \in [-1] \iff k \equiv -1 \pmod 4 \iff k - (-1) = 4q \iff k = 4q - 1 = 4(q-1) + 3$.
> - Tomando $q' = q-1 \in \mathbb{Z}$, vemos que $k = 4q' + 3$, por lo que la clase $[-1]$ es idéntica a la clase $$.
> - El conjunto cociente consta de $4$ clases: $\mathbb{Z}/4\mathbb{Z} = {,,,}$.
> - La opción B es falsa porque afirma que el conjunto cociente es infinito y da una lista incorrecta de elementos.
> - Por tanto, la opción **A** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión26_Relación_de_equivalencia.pptx): Elaborada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con el encabezado oficial del Bloque 3, el escape riguroso de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la demostración del Teorema Fundamental y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión26_Relación_de_equivalencia.m4a): Enfocado en la clasificación de elementos mediante relaciones de equivalencia, la construcción formal de la clase $[x]$ y el conjunto cociente $U/\mathcal{R}$, la correspondencia biunívoca entre particiones y relaciones de equivalencia, y los ejemplos emblemáticos de la UNED ($\mathbb{Z}/p\mathbb{Z}$, vectores libres y la construcción formal de $\mathbb{Z}$ y $\mathbb{Q}$).