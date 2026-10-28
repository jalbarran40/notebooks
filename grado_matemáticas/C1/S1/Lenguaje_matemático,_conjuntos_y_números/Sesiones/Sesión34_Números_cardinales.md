# **SESIÓN 34 (TEORÍA): CONCEPTO DE CARDINAL Y NÚMEROS CARDINALES. CONJUNTOS EQUIPOTENTES**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 3: RELACIONES Y APLICACIONES (Capítulo 3)  
**Objetivo:** Definir formalmente la relación de **equipotencia (o coordinabilidad) $A \approx B$** entre conjuntos mediante la existencia de aplicaciones biyectivas, demostrar que la equipotencia es una **relación de equivalencia**, definir el **cardinal de un conjunto $\text{card}(A)$ o $|A|$** como la clase de equivalencia correspondiente, establecer el orden entre cardinales ($|A| \le |B|$), estudiar el **Teorema de Cantor-Bernstein-Schröder** y demostrar el **Teorema de Cantor** sobre el conjunto de las partes ($|A| < |\mathcal{P}(A)|$).

---

### **1. Marco Teórico: Conjuntos Equipotentes y la Relación de Equipotencia**

#### **A. Definición de Equipotencia**

Dos conjuntos ~~no vacíos~~ $A$ y $B$ son **equipotentes** (o **coordinables** / **coordinables en cantidad**), y se denota por **$A \approx B$** (o bien $A \sim B$), si y solo si existe al menos una aplicación biyectiva $f$ definida de $A$ en $B$:

$$A \approx B \iff \exists f: A \to B \text{ tal que } f \text{ es biyectiva}$$
**NOTA:** En el caso del conjunto vacío $\varnothing$ existe, por verdad vacua $f_{\varnothing}: \varnothing \to \varnothing$, por lo que $\varnothing \approx \varnothing$
#### **B. Teorema 3.65 (La Equipotencia como Relación de Equivalencia)**

La relación de equipotencia $\approx$ definida sobre la clase universal de todos los conjuntos es una **relación de equivalencia**, es decir, satisface las propiedades reflexiva, simétrica y transitiva:

1. **Reflexiva ($A \approx A$):**  
    Para todo conjunto $A$, la **aplicación identidad** $I_A: A \to A$ (definida por $I_A(x) = x$) es biyectiva, luego **$A \approx A$**.
2. **Simétrica ($A \approx B \implies B \approx A$):**  
    Si $A \approx B$, existe una biyección $f: A \to B$. Por el Teorema de Caracterización de Inversas, la aplicación inversa $f^{-1}: B \to A$ existe y es también **biyectiva**, lo que implica que **$B \approx A$**.
3. **Transitiva ($A \approx B \land B \approx C \implies A \approx C$):**  
    Si existen biyecciones $f: A \to B$ y $g: B \to C$, la aplicación compuesta $g \circ f: A \to C$ es **biyectiva** (por ser composición de biyecciones), luego **$A \approx C$**.

---

### **2. El Concepto de Cardinal y Números Cardinales**

#### **A. Definición de Número Cardinal**

Dado que la equipotencia $\approx$ es una relación de equivalencia, divide a la colección de conjuntos en clases de equivalencia. Se define el **cardinal (o número cardinal)** de un conjunto $A$, denotado por **$\text{card}(A)$** o **$|A|$**, como la clase de equivalencia abstracta de todos los conjuntos equipotentes a $A$:

$$\text{card}(A) = [A]_\approx = {X \mid X \approx A}$$

- Dos conjuntos $A$ y $B$ tienen el mismo cardinal si y solo si son equipotentes: $$\text{card}(A) = \text{card}(B) \iff A \approx B$$

#### **B. Cardinales Finitos e Infinitos**

- **Cardinales Finitos:** Un conjunto $A$ tiene **cardinal finito $n \in \mathbb{N}$** si es equipotente al conjunto de los primeros $n$ números naturales $I_n = {1, 2, \dots, n}$ (o $I_0 = \varnothing$). $$\text{card}(\varnothing) = 0, \quad \text{card}({a}) = 1, \quad \text{card}({a, b}) = 2, \quad \dots$$
- **Cardinales Infinitos (Transfinitos):** Un conjunto es **infinito** si no es equipotente a ningún conjunto de la forma $I_n$.
    - El cardinal del conjunto de los números naturales $\mathbb{N}$ se denota por el símbolo **$\aleph_0$** (aleph cero): $$\text{card}(\mathbb{N}) = \aleph_0$$
    - El cardinal del conjunto de los números reales $\mathbb{R}$ se denota por la letra **$\mathfrak{c}$** (cardinal del continuo): $$\text{card}(\mathbb{R}) = \mathfrak{c} = \text{card}(\mathcal{P}(\mathbb{N}))$$

---

### **3. Comparación y Ordenación de Cardinales**

#### **A. Relación de Orden entre Cardinales**

Dados dos conjuntos $A$ y $B$, se define la relación _"el cardinal de $A$ es menor o igual que el cardinal de $B$"_ mediante:

$$\text{card}(A) \le \text{card}(B) \iff \exists f: A \to B \text{ tal que } f \text{ es inyectiva}$$

- **Orden Estricto:** $\text{card}(A) < \text{card}(B) \iff (\text{card}(A) \le \text{card}(B) \land \text{card}(A) \neq \text{card}(B))$.

---

#### **B. Teorema de Cantor-Bernstein-Schröder**

**Enunciado:** _Sean $A$ y $B$ dos conjuntos. Si existe una aplicación inyectiva de $A$ en $B$ y existe una aplicación inyectiva de $B$ en $A$, entonces existe una aplicación biyectiva entre $A$ y $B$._

$$(\text{card}(A) \le \text{card}(B) \quad \land \quad \text{card}(B) \le \text{card}(A)) \implies \text{card}(A) = \text{card}(B)$$

> **Importancia Práctica:** Este teorema es una herramienta fundamental para probar que dos conjuntos son equipotentes sin necesidad de construir directamente una biyección explícita $f$ (que a menudo resulta muy compleja), bastando con construir dos inyecciones sencillas en sentidos opuestos.

---

### **4. Teorema de Cantor sobre el Conjunto de las Partes**

**Enunciado:** _Para cualquier conjunto $A$, el cardinal del conjunto de sus partes $\mathcal{P}(A)$ es estrictamente mayor que el cardinal de $A$:_

$$\text{card}(A) < \text{card}(\mathcal{P}(A))$$

- **Demostración Analítica Paso a Paso (Método de la Diagonal de Cantor):**
    
    1. **Probar que $\text{card}(A) \le \text{card}(\mathcal{P}(A))$:**  
        Construimos la aplicación $g: A \to \mathcal{P}(A)$ dada por $g(x) = \{x\}$ (asigna a cada elemento su conjunto unitario).  
        Si $g(x) = g(x') \implies {x} = {x'} \implies x = x'$, luego $g$ es **inyectiva**. Por tanto, $\text{card}(A) \le \text{card}(\mathcal{P}(A))$.
        
    2. **Probar que $\text{card}(A) \neq \text{card}(\mathcal{P}(A))$ (Reducción al Absurdo):**  
        Supongamos por reducción al absurdo que existe una aplicación **sobreyectiva** $f: A \to \mathcal{P}(A)$.  
        Definimos el subconjunto "diagonal" de Cantor $D \subseteq A$ mediante: $$D = \{x \in A \mid x \notin f(x)\}$$ Como $D \in \mathcal{P}(A)$ y $f$ es sobreyectiva por hipótesis, debe existir al menos un elemento antecedente $a \in A$ tal que: $$f(a) = D$$ Analizamos la pertenencia del elemento $a$ al subconjunto $D$:
        
        - Si $a \in D \implies a \notin f(a) \implies a \notin D$ (contradicción).
        - Si $a \notin D \implies a \in f(a) \implies a \in D$ (contradicción).
        
        Llegamos a una **contradicción insalvable ($0$)** en ambos casos.
        
    1. **Conclusión:** La suposición de que $f$ es sobreyectiva es falsa, luego no existe ninguna biyección entre $A$ y $\mathcal{P}(A)$. Se concluye que **$\text{card}(A) < \text{card}(\mathcal{P}(A))$**. $\blacksquare$
        

---

### **5. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Demostrar que los intervalos reales $(0, 1)$ y $(0, 2)$ son equipotentes construyendo una aplicación biyectiva explícita entre ellos _(Solución: $f(x) = 2x$)_.
2. **Ejercicio 2:** Probar mediante el Teorema de Cantor-Bernstein-Schröder que el intervalo semiabierto $[0, 1)$ es equipotente al intervalo cerrado $[0,1]$.
3. **Ejercicio 3 (Ejercicio 1 del Capítulo 3 del texto base):** Sean $A, B, C, D$ conjuntos tales que $A \approx C$ y $B \approx D$ con $A \cap B = \varnothing$ y $C \cap D = \varnothing$. Demostrar que $(A \cup B) \approx (C \cup D)$.

---

### **6. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea $A$ un conjunto arbitrario no vacío y $\mathcal{P}(A)$ su conjunto de las partes. ¿Cuál de las siguientes afirmaciones sobre sus números cardinales es **verdadera**?

- **A)** Existe siempre una aplicación sobreyectiva $f: A \to \mathcal{P}(A)$, por lo que $\text{card}(A) = \text{card}(\mathcal{P}(A))$.
- **B)** El Teorema de Cantor garantiza que $\text{card}(A) < \text{card}(\mathcal{P}(A))$ porque ningún subconjunto $D = \{x \in A \mid x \notin f(x)\}$ puede poseer antecedente por una aplicación sobreyectiva.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - El Teorema de Cantor demuestra analíticamente que no existe ninguna aplicación sobreyectiva de $A$ en $\mathcal{P}(A)$ al construir el conjunto diagonal $D = \{x \in A \mid x \notin f(x)\}$, cuya supuesta existencia de antecesor $f(a) = D$ genera una contradicción lógica.
> - Por consiguiente, la relación de orden entre cardinales es estricta: $\text{card}(A) < \text{card}(\mathcal{P}(A))$.
> - La opción A es falsa pues afirma la existencia de una sobreyección que el teorema refuta.
> - Por lo tanto, la opción **B** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión34_Números_cardinales.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con el encabezado del Bloque 3, la notación del texto base de Delgado Pineda & Muñoz Bouzo (escape estricto de llaves `\{` y `\}`, símbolo `\varnothing` para el conjunto vacío), las demostraciones fundamentales y la pregunta de autoevaluación.

**NOTA**: La pregunta de evaluación es incorrecta. Ambos cardinales deben ser iguales (bien la aplicación sobreyectiva debe ser de B en A)


- [**Resumen de audio**](Audios/Sesión34_Números_cardinales.m4a) Enfocado en la abstracción del número mediante la noción de tamaño o cantidad, la relación de equipotencia $A \approx B$, la ordenación de cardinales, el Teorema de Cantor-Bernstein-Schröder y la célebre prueba de la diagonal de Cantor para demostrar que no existe un "cardinal supremo" ($|A| < |\mathcal{P}(A)|$).

---
