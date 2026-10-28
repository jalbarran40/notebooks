# **SESIÓN 35 (TEORÍA): CONJUNTOS FINITOS E INFINITOS. CONJUNTOS NUMERABLES Y NO NUMERABLES**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 3: RELACIONES Y APLICACIONES (Capítulo 3 / Capítulo 5)  
**Objetivo:** Formalizar conjuntistamente las definiciones de **conjunto finito e infinito**, caracterizar los **conjuntos numerables** mediante la existencia de biyecciones con $\mathbb{N}$ (cardinal $\aleph_0$), demostrar las propiedades algebraicas de estabilidad (subconjuntos, unión numerable y producto cartesiano $\mathbb{N} \times \mathbb{N}$), probar que $\mathbb{Z}$ y $\mathbb{Q}$ son numerables, y demostrar analíticamente mediante la **diagonal de Cantor** la no numerabilidad del intervalo y de $\mathbb{R}$ (cardinal del continuo $\mathfrak{c}$).

---

### **1. Marco Teórico: Conjuntos Finitos e Infinitos**

#### **A. Definición Conjuntista de Conjunto Finito e Infinito**

- **Conjunto Finito:** Un conjunto $A$ es **finito** si es el conjunto vacío $A = \varnothing$, o bien si existe un número natural $n \in \mathbb{N}^* = {1, 2, 3, \dots}$ tal que $A$ es equipotente al intervalo inicial de naturales $I_n = {1, 2, \dots, n}$: $$A \text{ es finito} \iff A = \varnothing \quad \lor \quad \exists n \in \mathbb{N}^*, A \approx \{1, 2, \dots, n\}$$ En este caso, el único entero $n$ se denomina **cardinal de $A$** y se escribe $\text{card}(A) = n$.
- **Conjunto Infinito:** Un conjunto $A$ es **infinito** si no es un conjunto finito.
- **Caracterización Dedekind-Cantor de Infinitud:** Un conjunto $A$ es infinito si y solo si es equipotente a un subconjunto propio suyo (es decir, existe $B \subset A$ con $B \neq A$ tal que $A \approx B$).  
    _(A diferencia de los conjuntos finitos, donde ninguna aplicación inyectiva de un conjunto finito en sí mismo puede dejar elementos fuera de la imagen, en los conjuntos infinitos sí existen subconjuntos propios equipotentes a todo el conjunto)._

---

### **2. Conjuntos Numerables y Cardinal $\aleph_0$**

#### **A. Definición de Conjunto Numerable**

Un conjunto $A$ es **numerable** (o **infinito numerable**) si y solo si es equipotente al conjunto de los números naturales $\mathbb{N}$:

$$A \text{ es numerable} \iff A \approx \mathbb{N} \iff \exists f: \mathbb{N} \to A \text{ tal que } f \text{ es biyectiva}$$

- **Cardinal Aleph Cero ($\aleph_0$):** El cardinal de todo conjunto numerable se denota por el símbolo **$\aleph_0$** (alef cero): $$\text{card}(\mathbb{N}) = \aleph_0$$
- **Enumeración:** Al existir una biyección $f: \mathbb{N} \to A$, los elementos de $A$ pueden disponerse en forma de secuencia o lista ordenada infinita sin repeticiones: $$A = \{x_0, x_1, x_2, \dots, x_n, \dots\} \quad \text{donde } x_n = f(n)$$

#### **Ejemplos Inmediatos de Conjuntos Numerables:**

1. El propio conjunto de los números naturales $\mathbb{N}$ y $\mathbb{N}^* = \mathbb{N} \setminus \{0\}$.
2. El conjunto de los números pares $2\mathbb{N} = \{0, 2, 4, 6, \dots\}$ via la biyección $f(n) = 2n$.
3. El conjunto de los cuadrados perfectos $\{0, 1, 4, 9, 16, \dots\}$ via la biyección $g(n) = n^2$.

---

### **3. Propiedades de Estabilidad de los Conjuntos Numerables**

#### **Proposición 5.29 / 5.32 (Texto Base Delgado Pineda & Muñoz Bouzo):**

1. **Subconjuntos de $\mathbb{N}$:**  
    _Todo subconjunto de $\mathbb{N}$ es finito o numerable._  
    (No existen cardinales transfinitos estrictamente menores que $\aleph_0$; $\aleph_0$ es el menor cardinal infinito).
2. **Unión de Conjuntos Numerables:**
    - La unión de un conjunto numerable y un conjunto finito es **numerable**.
    - La unión de dos conjuntos numerables es **numerable** ($A \cup B$).
    - **Unión Numerable de Conjuntos Numerables:** Si para cada $i \in \mathbb{N}$, $A_i$ es un conjunto numerable, la unión infinita $\bigcup_{i \in \mathbb{N}} A_i$ es un **conjunto numerable**.
3. **Producto Cartesiano $\mathbb{N} \times \mathbb{N}$:**  
    _El producto cartesiano $\mathbb{N} \times \mathbb{N} = \mathbb{N}^2$ es numerable._

#### **Demostración de la Numerabilidad de $\mathbb{N} \times \mathbb{N}$ (Método Diagonal de Cantor):**

Organizando las parejas ordenadas $(n, m) \in \mathbb{N} \times \mathbb{N}$ por la suma de sus componentes $k = n + m$ (diagonales cartesianas $A_k = \{(x, y) \in \mathbb{N}^2 \mid x + y = k\}$), se construye la función biyectiva polinómica explícita $f: \mathbb{N} \times \mathbb{N} \to \mathbb{N}$:

$$f(n, m) = \frac{(n + m)(n + m + 1)}{2} + m$$

Al ser $f$ biyectiva, queda probado que $\text{card}(\mathbb{N} \times \mathbb{N}) = \text{card}(\mathbb{N}) = \aleph_0$.

![[Sesión35_Conjuntos_infinitos_Diagonal_de_Cantor.png]]

---

#### **B. Numerabilidad de los Enteros ($\mathbb{Z}$) y Racionales ($\mathbb{Q}$)**

1. **Numerabilidad de $\mathbb{Z}$:**  
    El conjunto de los enteros $\mathbb{Z}$ es la unión de dos conjuntos numerables: los enteros no negativos $\mathbb{Z}^+ = {0, 1, 2, \dots}$ y los enteros negativos $\mathbb{Z}^- = {-1, -2, -3, \dots}$. La aplicación $f: \mathbb{N} \to \mathbb{Z}$ dada por: $$f(n) = \begin{cases} \frac{n}{2} & \text{si } n \text{ es par} \\ -\frac{n+1}{2} & \text{si } n \text{ es impar} \end{cases}$$ es una biyección. Por tanto, **$\text{card}(\mathbb{Z}) = \aleph_0$**.
    
2. **Numerabilidad de $\mathbb{Q}$:**  
    - Todo número racional positivo $q \in \mathbb{Q}^+$ se expresa de forma única como fracción irreducible $p/q$ con $p \in \mathbb{N}, q \in \mathbb{N}^*$.  
    - La aplicación $g: \mathbb{Q}^+ \to \mathbb{N} \times \mathbb{N}^*$ dada por $g(p/q) = (p, q)$ es **inyectiva**.  Por tanto $g$**:** $\text{card}(\mathbb{Q}^+) \le \aleph_0 \implies \mathbb{Q}^+$ es **finito o numerable**.
    - Como $\mathbb{N} \times \mathbb{N}^* \subseteq \mathbb{N} \times \mathbb{N}$ es numerable, el subconjunto de su imagen es finito o numerable. 
    - Como $\mathbb{N} \subset \mathbb{Q}^+$, se deduce que $\mathbb{Q}^+$ es numerable ($\mathbb{N}$ es infinito)
    - Dado que $\mathbb{Q} = \mathbb{Q}^- \cup \{0\} \cup \mathbb{Q}^+$, por ser unión de tres conjuntos numerables/finitos, **el conjunto de los números racionales $\mathbb{Q}$ es numerable ($\text{card}(\mathbb{Q}) = \aleph_0$)**.
    

---

### **4. Conjuntos No Numerables y la Diagonal de Cantor**

Un conjunto infinito se llama **no numerable** (o **inconmensurable**) si no es equipotente a $\mathbb{N}$, es decir, si su cardinal es estrictamente mayor que $\aleph_0$.

#### **Teorema de la No Numerabilidad de $\mathbb{R}$ (Segundo Argumento Diagonal de Cantor)**

**Enunciado:** _El intervalo real semiabierto $(0, 1]$ (y por consiguiente el cuerpo de los números reales $\mathbb{R}$) es un conjunto NO numerable._

- **Demostración Analítica Paso a Paso (Examen de Desarrollo UNED):**
    
    1. **Supuesto de Reducción al Absurdo:**  
        Supongamos que el intervalo $(0, 1]$ es numerable.  
        Entonces existe una enumeración o lista completa que contiene a todos sus elementos: $$(0, 1] = \{x_1, x_2, x_3, \dots, x_n, \dots\}$$
        
    2. **Representación Decimal:**  
        Escribimos la expansión decimal infinita de cada elemento de la lista (adoptando la convención estándar de evitar colas infinitas de nueves para garantizar la unicidad de representación, e.g., $1/2 = 0{,}5000\dots$): $$\begin{aligned} x_1 &= 0{,}d_{11} d_{12} d_{13} d_{14} \dots \ x_2 &= 0{,}d_{21} d_{22} d_{23} d_{24} \dots \ x_3 &= 0{,}d_{31} d_{32} d_{33} d_{34} \dots \ &\vdots \ x_n &= 0{,}d_{n1} d_{n2} d_{n3} d_{n4} \dots \end{aligned}$$ donde $d_{ij} \in \{0, 1, 2, \dots, 9\}$ representa la $j$-ésima cifra decimal del $i$-ésimo número $x_i$.
        
    3. **Construcción del Número Diagonal de Cantor:**  
        Construimos un nuevo número real $y = 0{,}c_1 c_2 c_3 \dots c_n \dots \in (0, 1]$ definiendo cada una de sus cifras decimales $c_n$ mediante la regla: $$c_n = \begin{cases} 1 & \text{si } d_{nn} \neq 1 \\ 2 & \text{si } d_{nn} = 1 \end{cases}$$
        
    4. **Deducción de la Contradicción:**
        
        - Por construcción, $y \in (0, 1]$ pues sus cifras son únicamente $1$ ó $2$.
        - Comparamos $y$ con cada elemento $x_n$ de la supuesta lista completa:
            - $y \neq x_1$ porque difieren en la 1ª cifra decimal ($c_1 \neq d_{11}$).
            - $y \neq x_2$ porque difieren en la 2ª cifra decimal ($c_2 \neq d_{22}$).
            - En general, $\forall n \in \mathbb{N}^*$, $y \neq x_n$ porque difieren en la $n$-ésima cifra decimal ($c_n \neq d_{nn}$).
        - Por consiguiente, $y$ es un número real de $(0, 1]$ que **no figura en la lista**. Esto contradice la hipótesis de que la lista contenía a todos los elementos de $(0, 1]$.
    5. **Conclusión:** El intervalo $(0, 1]$ y el conjunto de los números reales $\mathbb{R}$ son **no numerables**.  
        El cardinal de $\mathbb{R}$ se denomina **cardinal del continuo** y se denota por **$\mathfrak{c}$** (o $2^{\aleph_0}$): $$\aleph_0 = \text{card}(\mathbb{N}) < \text{card}(\mathbb{R}) = \mathfrak{c}$$
        

---

### **5. Jerarquía de Infinitos y la Hipótesis del Continuo**

- **Teorema de Cantor sobre el Potencia:** Para cualquier conjunto $A$, $\text{card}(A) < \text{card}(\mathcal{P}(A))$.
- **Cadena Infinita de Cardinales Transfinitos:**  
    $$\aleph_0 = \text{card}(\mathbb{N}) < \text{card}(\mathcal{P}(\mathbb{N})) = \mathfrak{c} < \text{card}(\mathcal{P}(\mathcal{P}(\mathbb{N}))) < \dots$$
- **Hipótesis del Continuo (HC):** Formulada por Cantor, afirma que no existe ningún cardinal intermedio entre $\aleph_0$ y $\mathfrak{c}$ (es decir, $\aleph_1 = \mathfrak{c}$). Gödel (1938) y Cohen (1963) demostraron que la Hipótesis del Continuo es **independiente de los axiomas de Zermelo-Fraenkel (ZFC)** (es un enunciado no decidible en la teoría de conjuntos estándar).

---

### **6. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Demostrar que el conjunto de los números irracionales $\mathbb{R} \setminus \mathbb{Q}$ es un conjunto no numerable. _(Indicación: Usar que $\mathbb{R} = \mathbb{Q} \cup (\mathbb{R} \setminus \mathbb{Q})$ y razonar por reducción al absurdo)._
2. **Ejercicio 2:** Probar que el conjunto de todos los polinomios con coeficientes enteros es numerable, y deducir que el conjunto de los **números reales algebraicos** es numerable.
3. **Ejercicio 3 (Ejercicio 16 del Capítulo 5 del texto base):** Demostrar por reducción al absurdo que no existe ningún conjunto $X$ tal que su conjunto de las partes $\mathcal{P}(X)$ sea numerable.


---

#### **Solución ejercicio 2**

##### **Parte 1: El conjunto de polinomios con coeficientes enteros $\mathbb{Z}[x]$ es numerable**

1. Sea $\mathcal{P}_n(\mathbb{Z})$ el conjunto de polinomios con coeficientes enteros de grado $n \ge 0$: $$\mathcal{P}_n(\mathbb{Z}) = \{a_n x^n + a_{n-1} x^{n-1} + \dots + a_1 x + a_0 \mid a_i \in \mathbb{Z}, a_n \neq 0\}$$
2. Todo polinomio $P(x) \in \mathcal{P}_n(\mathbb{Z})$ viene determinado de forma única por la $(n+1)$-tupla ordenada de sus coeficientes: $$(a_0, a_1, \dots, a_n) \in \mathbb{Z}^{n+1}$$
    
3. Puesto que $\mathbb{Z}$ es un conjunto numerable ($\text{card}(\mathbb{Z}) = \aleph_0$), el producto cartesiano finito $\mathbb{Z}^{n+1} = \mathbb{Z} \times \dots \times \mathbb{Z}$ es **numerable** ($\text{card}(\mathbb{Z}^{n+1}) = \aleph_0$).
    
4. Al ser $\mathcal{P}_n(\mathbb{Z})$ equipotente a un subconjunto de $\mathbb{Z}^{n+1}$, se deduce que **$\mathcal{P}_n(\mathbb{Z})$ es numerable** para cada $n \in \mathbb{N}$.
    
5. El conjunto de todos los polinomios con coeficientes enteros, $\mathbb{Z}[x]$, es la unión numerable de los conjuntos de polinomios de cada grado: $$\mathbb{Z}[x] = \bigcup_{n=0}^{\infty} \mathcal{P}_n(\mathbb{Z})$$
    
6. Por la **Proposición 5.32** del texto base (_la unión numerable de conjuntos numerables es numerable_), concluimos que **$\mathbb{Z}[x]$ es un conjunto numerable** ($\text{card}(\mathbb{Z}[x]) = \aleph_0$).
    

---

##### **Parte 2: El conjunto de los números reales algebraicos $\mathbb{A}_{\mathbb{R}}$ es numerable**

1. **Definición:** Un número real $\alpha \in \mathbb{R}$ es **algebraico** si es raíz de algún polinomio no nulo con coeficientes enteros, es decir, existe $P(x) \in \mathbb{Z}[x] \setminus {0}$ tal que $P(\alpha) = 0$.
    
2. Para cada polinomio no nulo $P(x) \in \mathbb{Z}[x] \setminus {0}$ de grado $n \ge 1$, denotamos por $R_P$ al conjunto de sus raíces reales: $$R_P = {x \in \mathbb{R} \mid P(x) = 0}$$
    
3. Por el Teorema Fundamental del Álgebra, todo polinomio no nulo de grado $n$ tiene a lo sumo $n$ raíces complejas/reales. Por tanto, para cada $P(x)$, el conjunto $R_P$ es un **conjunto finito**.
    
4. El conjunto de todos los números reales algebraicos $\mathbb{A}_{\mathbb{R}}$ es la unión del conjunto de raíces de todos los polinomios no nulos con coeficientes enteros: $$\mathbb{A}_{\mathbb{R}} = \bigcup_{P \in \mathbb{Z}[x] \setminus {0}} R_P$$
    
5. Como el conjunto de índices de la unión, $\mathbb{Z}[x] \setminus {0}$, es **numerable** (demostrado en la Parte 1) y cada $R_P$ es un conjunto **finito**, estamos ante una **unión numerable de conjuntos finitos**.
    
6. Aplicando nuevamente la **Proposición 5.32** del libro base, concluimos que **el conjunto de los números reales algebraicos $\mathbb{A}_{\mathbb{R}}$ es numerable** ($\text{card}(\mathbb{A}_{\mathbb{R}}) = \aleph_0$). $\quad \blacksquare$
    
##### **💡 Corolario estrella para el examen**

Como los reales $\mathbb{R}$ son **no numerables** ($\text{card}(\mathbb{R}) = \mathfrak{c}$) y los algebraicos $\mathbb{A}_{\mathbb{R}}$ son **numerables** ($\aleph_0$), la diferencia $\mathbb{R} \setminus \mathbb{A}_{\mathbb{R}}$ (los **números trascendentes**, como $\pi$ o $e$) debe ser **no numerable** con cardinal del continuo $\mathfrak{c}$. ¡Casi todos los números reales son trascendentes!

---

### **7. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Consideremos los conjuntos de números $\mathbb{Z}$ (enteros), $\mathbb{Q}$ (racionales) y $\mathbb{R}$ (reales). ¿Cuál de las siguientes afirmaciones sobre su cardinalidad es **verdadera**?

- **A)** $\mathbb{Z}$ y $\mathbb{Q}$ son conjuntos numerables ($\text{card}(\mathbb{Z}) = \text{card}(\mathbb{Q}) = \aleph_0$), mientras que $\mathbb{R}$ es un conjunto no numerable de cardinal $\mathfrak{c} > \aleph_0$.
- **B)** $\mathbb{Z}$ es numerable, pero $\mathbb{Q}$ es no numerable porque entre dos racionales siempre existen infinitos números racionales.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Hemos probado analíticamente que tanto $\mathbb{Z}$ como $\mathbb{Q}$ son equipotentes a $\mathbb{N}$, teniendo cardinal numerable $\aleph_0$. La densidad de $\mathbb{Q}$ no impide su numerabilidad (que se demuestra mediante la biyección con $\mathbb{N} \times \mathbb{N}$).
> - En cambio, el segundo argumento diagonal de Cantor demuestra que $\mathbb{R}$ no puede enumerarse, teniendo cardinal del continuo $\mathfrak{c} > \aleph_0$.
> - Por lo tanto, la opción **A** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión35_Conjuntos_infinitos.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con la jerarquía del Bloque 3, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la notación $\aleph_0$ y $\mathfrak{c}$, el método diagonal de Cantor y la pregunta de autoevaluación.

**NOTA**: Las diapositivas 2 y 3 llaman a engaño, puesto que lo dibujado no es una relación biyectiva. Cuando 

- [**Resumen de audio**](Audios/Sesión35_Conjuntos_infinitos.m4a) Enfocado en la revolución conceptual de Georg Cantor sobre los "distintos tamaños del infinito", la definición estricta de numerabilidad, las demostraciones de que $\mathbb{Z}$ y $\mathbb{Q}$ son numerables a pesar de parecer "más grandes" que $\mathbb{N}$, el argumento diagonal para probar que $\mathbb{R}$ no es numerable, la Jerarquía de Alephs y pautas de rigor para el examen de desarrollo.

---
