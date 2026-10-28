# **SESIÓN 36 (PRÁCTICA): EJERCICIOS SOBRE APLICACIONES Y CARDINALIDAD (DEMOSTRACIONES FORMALES DE BIYECTIVIDAD)**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 3: RELACIONES Y APLICACIONES (Capítulo 3 / Capítulo 5)  
**Objetivo:** Dominar la resolución analítica de problemas de examen sobre **equipotencia de conjuntos $A \approx B$** y **demostraciones formales de biyectividad**, ejercitar las dos técnicas fundamentales para probar la igualdad de cardinales (construcción de biyección explícita y aplicación del Teorema de Cantor-Bernstein-Schröder), y resolver la selección de ejercicios prioritarios recomendados por la Guía Completa de la asignatura.

---

### **1. Resumen Metodológico: Estrategias para Demostrar Equipotencia ($A \approx B$)**

En el examen de desarrollo de la UNED, para demostrar que dos conjuntos tienen el mismo cardinal ($\text{card}(A) = \text{card}(B) \iff A \approx B$), existen dos estrategias formales principales:

1. **Estrategia Directa (Biyección Explícita):**  
    Construir una aplicación $f: A \to B$ y demostrar explícitamente que es **inyectiva** y **sobreyectiva** (o bien exhibir su aplicación inversa $f^{-1}: B \to A$ verificando $f^{-1} \circ f = I_A$ y $f \circ f^{-1} = I_B$).
2. **Estrategia Indirecta (Teorema de Cantor-Bernstein-Schröder):**  
    Cuando construir una biyección directa resulta técnicamente complejo (frecuente entre intervalos abiertos, cerrados y semiabiertos), se construyen **dos inyecciones sencillas en sentidos opuestos**: $$\exists f: A \to B \text{ inyectiva } \land \exists g: B \to A \text{ inyectiva } \implies A \approx B$$

---

### **2. Batería de Ejercicios Resueltos de Examen (Texto Base)**

#### **Ejercicio 1: Biyecciones entre Intervalos Reales y la Recta Real ($\mathbb{R}$)**

**Enunciado:**

1. Demostrar analíticamente que el intervalo abierto $(0, 1)$ es equipotente al intervalo abierto general $(a, b)$ con $a < b$.
2. Demostrar analíticamente que el intervalo abierto $(-1, 1)$ es equipotente a toda la recta real $\mathbb{R}$.

- **Resolución Paso a Paso (Estándar UNED):**
    
    1. **Prueba de $(0, 1) \approx (a, b)$:**
        
        - Definimos la aplicación lineal $f: (0, 1) \to (a, b)$ mediante: $$f(x) = a + (b - a)x$$
        - **Inyectividad:** Sean $x_1, x_2 \in (0, 1)$ con $f(x_1) = f(x_2)$: $$a + (b - a)x_1 = a + (b - a)x_2 \implies (b - a)x_1 = (b - a)x_2$$ Como $a < b \implies b - a \neq 0$, dividiendo por $b - a$ obtenemos $x_1 = x_2$. Por tanto, **$f$ es inyectiva**.
        - **Sobreyectividad:** Dado cualquier $y \in (a, b)$, buscamos un antecedente $x \in (0, 1)$: $$a + (b - a)x = y \implies x = \frac{y - a}{b - a}$$ Como $a < y < b \implies 0 < y - a < b - a \implies 0 < \frac{y - a}{b - a} < 1$, de modo que $x \in (0, 1)$. Por tanto, **$f$ es sobreyectiva**.
        - **Conclusión:** La aplicación $f$ es biyectiva, luego **$(0, 1) \approx (a, b)$**.
    2. **Prueba de $(-1, 1) \approx \mathbb{R}$:**
        
        - Definimos la aplicación $g: (-1, 1) \to \mathbb{R}$ mediante la fórmula: $$g(x) = \frac{x}{1 - |x|}$$
        - **Inyectividad:** Como $x$ y $g(x)$ tienen siempre el mismo signo, si $g(x_1) = g(x_2)$, ambos números deben tener igual signo:
            - Si $x_1, x_2 \ge 0 \implies \frac{x_1}{1 - x_1} = \frac{x_2}{1 - x_2} \implies x_1(1 - x_2) = x_2(1 - x_1) \implies x_1 = x_2$.
            - Si $x_1, x_2 < 0 \implies \frac{x_1}{1 + x_1} = \frac{x_2}{1 + x_2} \implies x_1(1 + x_2) = x_2(1 + x_1) \implies x_1 = x_2$.
            - Luego **$g$ es inyectiva**.
        - **Sobreyectividad:** Para todo $y \in \mathbb{R}$, despejando obtenemos la función inversa: $$g^{-1}(y) = \frac{y}{1 + |y|}$$ Como $|g^{-1}(y)| = \frac{|y|}{1 + |y|} < 1$ para todo $y \in \mathbb{R}$, la imagen inversa está contenida en $(-1, 1)$.
        - **Conclusión:** $g$ es una biyección, luego **$(-1, 1) \approx \mathbb{R}$ (cardinal del continuo $\mathfrak{c}$)**.

---


#### **Ejercicio 2: Aplicación del Teorema de Cantor-Bernstein-Schröder**


**Enunciado:** Demostrar analíticamente que el intervalo cerrado $[0,1]$ es equipotente al intervalo abierto $(0, 1)$, es decir, $[0,1] \approx (0, 1)$.

- **Resolución Paso a Paso (Estándar UNED):**
    
    1. **Inyección de $(0, 1)$ en $[0,1]$:**  
        La aplicación inclusión natural $g: (0, 1) \to [0,1]$ dada por $g(x) = x$ es una función **inyectiva**.  
        Esto demuestra inmediatamente que: $$\text{card}((0, 1)) \le \text{card}([0,1])$$
        
    2. **Inyección de $[0,1]$ en $(0, 1)$:**  
        Definimos la aplicación lineal contraída $f: [0,1] \to (0, 1)$ mediante la fórmula: $f(x) = \frac{x + 1}{3} = \frac{1}{3}x + \frac{1}{3}$
        
        - **Comprobación de Codominio:** Para todo $x \in$, se cumple que: $$0 \le x \le 1 \implies 0 \le \frac{1}{3}x \le \frac{1}{3} \implies \frac{1}{3} \le \frac{1}{3}x + \frac{1}{3} \le \frac{2}{3}$$ Como el intervalo $[\frac{1}{3}, \frac{2}{3}] \subset (0, 1)$, la función $f$ está correctamente definida con valores dentro de $(0, 1)$.
        - **Inyectividad de $f$:**  
            $$f(x_1) = f(x_2) \implies \frac{x_1 + 1}{3} = \frac{x_2 + 1}{3} \implies x_1 + 1 = x_2 + 1 \implies x_1 = x_2$$ Por lo tanto, $f$ es **inyectiva**.
        - Esto demuestra la existencia de una inyección de $[0,1]$ en $(0, 1)$, por lo que: $\text{card}([0,1]) \le \text{card}((0, 1))$
    1. **Conclusión:**  
        Al existir dos aplicaciones inyectivas en ambos sentidos ($g: (0, 1) \to [0,1]$ y $f: [0,1] \to (0, 1)$), por el **Teorema de Cantor-Bernstein-Schröder** concluimos que sus cardinales son iguales: $\text{card}([0,1]) = \text{card}((0, 1)) \iff [0,1] \approx (0, 1) \quad \blacksquare$
        

#### **Ejercicio 3: Identificación del Conjunto de las Partes y Funciones Características**

**Enunciado:** Sea $A$ un conjunto no vacío arbitrario. Demostrar que el conjunto de las partes $\mathcal{P}(A)$ es equipotente al conjunto de aplicaciones $\{0, 1\}^A = \mathcal{F}(A, \{0, 1\})$.

- **Demostración Paso a Paso (Examen de Desarrollo UNED):**
    
    1. **Construcción de la Aplicación:**  
        Definimos la aplicación $\Phi: \mathcal{P}(A) \to \{0, 1\}^A$ asignando a cada subconjunto $B \in \mathcal{P}(A)$ su **función característica $\chi_B: A \to \{0, 1\}$**: $$\Phi(B) = \chi_B \quad \text{donde } \chi_B(x) = \begin{cases} 1 & \text{si } x \in B \\ 0 & \text{si } x \notin B \end{cases}$$
        
    2. **Inyectividad de $\Phi$:**  
        Sean $B_1, B_2 \in \mathcal{P}(A)$ tales que $\Phi(B_1) = \Phi(B_2) \implies \chi_{B_1} = \chi_{B_2}$.  
        Por la definición de igualdad de funciones, $\forall x \in A, \chi_{B_1}(x) = \chi_{B_2}(x)$.  
        Por consiguiente, $x \in B_1 \iff \chi_{B_1}(x) = 1 \iff \chi_{B_2}(x) = 1 \iff x \in B_2$.  
        Por el Axioma de Extensionalidad, $B_1 = B_2$. **$\Phi$ es inyectiva**.
        
    3. **Sobreyectividad de $\Phi$:**  
        Dada una aplicación arbitraria $f \in \{0, 1\}^A$, definimos el subconjunto antecedente $B_f \in \mathcal{P}(A)$ por: $$B_f = \{x \in A \mid f(x) = 1\}$$ Es evidente por definición que $\chi_{B_f}(x) = f(x)$ para todo $x \in A$, de donde $\Phi(B_f) = f$. **$\Phi$ es sobreyectiva**.
        
    4. **Conclusión:** La aplicación $\Phi$ es biyectiva, luego **$\mathcal{P}(A) \approx \{0, 1\}^A$** y **$\text{card}(\mathcal{P}(A)) = 2^{\text{card}(A)}$**. $\blacksquare$
        

---

### **3. Ejercicios Seleccionados de la Guía Completa para Estudio Personal**

A partir de la lista de ejercicios prioritarios seleccionados por la **Guía Completa (Curso 2026/2027)** para el **Tema 3**, se recomienda resolver los siguientes problemas del libro de texto base:

1. **Ejercicio 1 del Capítulo 3:** Sean $A, B, C, D$ conjuntos tales que $A \approx C$ y $B \approx D$ con $A \cap B = \varnothing$ y $C \cap D = \varnothing$. Demostrar analíticamente que $(A \cup B) \approx (C \cup D)$.
2. **Ejercicio 2 del Capítulo 3:** Demostrar que para cualesquiera dos conjuntos $A$ y $B$, el producto cartesiano $A \times B$ es equipotente a $B \times A$ exhibiendo la biyección explícita $f(a, b) = (b, a)$.

---
#### Solución ejercicio 1

1. **Hipótesis e Inicios:** Al ser $A \approx C$ y $B \approx D$, existen dos aplicaciones biyectivas: $$f: A \to C \quad \text{y} \quad g: B \to D$$
2. **Construcción y Buena Definición de** $h$**:** Como $A \cap B = \varnothing$, para todo $x \in A \cup B$ se cumple que $x \in A$ o $x \in B$ de forma exclusiva. Por tanto, podemos definir la aplicación por ramas: $$h(x) = \begin{cases} f(x) & \text{si } x \in A \\ g(x) & \text{si } x \in B \end{cases}$$ Al no haber elementos en común entre $A$ y $B$, no hay ambigüedad y la función $h$ está **bien definida**.
3. **Inyectividad:** Sean $x, x' \in A \cup B$ tales que $h(x) = h(x')$. Como $C \cap D = \varnothing$, la imagen común $h(x) = h(x')$ o bien pertenece a $C$, o bien a $D$:
    - Si $h(x) \in C$, los antecedentes provienen de $A$, luego $f(x) = f(x')$. Como $f$ **es inyectiva**, $x = x'$.
    - Si $h(x) \in D$, los antecedentes provienen de $B$, luego $g(x) = g(x')$. Como $g$ **es inyectiva**, $x = x'$. Por tanto, $h$ **es inyectiva**.
4. **Sobreyectividad:** Sea $y \in C \cup D$. Por ser $C \cap D = \varnothing$:
    - Si $y \in C$, como $f$ **es sobreyectiva**, existe un antecedente $x \in A$ tal que $h(x) = f(x) = y$.
    - Si $y \in D$, como $g$ **es sobreyectiva**, existe un antecedente $x \in B$ tal que $h(x) = g(x) = y$. Por tanto, todo elemento de $C \cup D$ tiene antecedente en $A \cup B$, luego $h$ **es sobreyectiva**.
5. **Conclusión:** Al ser $h$ biyectiva, concluimos que $(A \cup B) \approx (C \cup D)$. $\quad \blacksquare$

#### Solución ejercicio 2

**Enunciado:** Demostrar que para cualesquiera dos conjuntos $A$ y $B$, se cumple $A \times B \approx B \times A$.

---

**1. Definición de la Aplicación y Buena Definición**

Consideramos la aplicación: $$f: A \times B \longrightarrow B \times A$$ $$f(a, b) = (b, a)$$

- **Buena definición:** Para todo $(a, b) \in A \times B$, se tiene $a \in A$ y $b \in B$. Por la definición de producto cartesiano, el par $(b, a)$ pertenece a $B \times A$. Por tanto, la imagen cae en el codominio correcto y la función está bien definida.

_(Nota de rigor: Si_ $A = \varnothing$ _o_ $B = \varnothing$_, entonces_ $A \times B = \varnothing$ _y_ $B \times A = \varnothing$_. La única relación posible es la aplicación vacía_ $f_{\varnothing}: \varnothing \to \varnothing$_, que es biyectiva por verdad vacua, concluyendo directamente_ $\varnothing \approx \varnothing$_)._

---

**2. Demostración de Inyectividad**

Sean $(a_1, b_1), (a_2, b_2) \in A \times B$ dos elementos tales que sus imágenes por $f$ coinciden: $$f(a_1, b_1) = f(a_2, b_2)$$

1. Por la definición por la que actúa la función $f$, esto equivale a: $$(b_1, a_1) = (b_2, a_2)$$
2. Por la propiedad de **igualdad de pares ordenados**, dos pares son iguales si y solo si lo son sus componentes término a término: $$b_1 = b_2 \quad \text{y} \quad a_1 = a_2$$
3. Reorganizando ambas igualdades, obtenemos: $$a_1 = a_2 \quad \text{y} \quad b_1 = b_2 \implies (a_1, b_1) = (a_2, b_2)$$

Por lo tanto, $f(a_1, b_1) = f(a_2, b_2) \implies (a_1, b_1) = (a_2, b_2)$, lo que demuestra formalmente que $f$ **es inyectiva**.

---

**3. Demostración de Sobreyectividad**

Sea $(y, x) \in B \times A$ un elemento arbitrario del codominio.

1. Por definición de producto cartesiano $B \times A$, se cumple que $y \in B$ y $x \in A$.
2. Por tanto, el par $(x, y)$ pertenece al dominio $A \times B$.
3. Evaluando la función $f$ sobre este elemento antecedente: $$f(x, y) = (y, x)$$

Dado que para todo elemento $(y, x) \in B \times A$ hemos exhibido un antecedente $(x, y) \in A \times B$ cuya imagen es $(y, x)$, concluimos que $f$ **es sobreyectiva**.

---

**4. Conclusión**

Al ser $f: A \times B \longrightarrow B \times A$ una aplicación inyectiva y sobreyectiva, $f$ es una **biyección**, lo que demuestra por definición de equipotencia que: $$A \times B \approx B \times A$$

$$\quad \blacksquare$$
### **4. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Queremos demostrar que el intervalo cerrado $[0,1]$ es equipotente al intervalo abierto $(0, 1)$. Si construimos las aplicaciones $g: (0, 1) \to [0,1]$ dada por $g(x) = x$ y $f:[0,1] \to (0, 1)$ dada por $f(x) = \frac{x+1}{3}$, ¿qué teorema permite concluir la equipotencia sin necesidad de construir la biyección explícita?

- **A)** El Teorema de Cantor-Bernstein-Schröder, porque $f$ y $g$ son aplicaciones inyectivas en ambos sentidos.
- **B)** El Teorema de Bolzano-Weierstrass sobre compacidad de intervalos en $\mathbb{R}$.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Las aplicaciones $g(x) = x$ y $f(x) = \frac{x+1}{3}$ son ambas **estrictamente inyectivas**.
> - El **Teorema de Cantor-Bernstein-Schröder** establece precisamente que si existen inyecciones $f: A \to B$ y $g: B \to A$, entonces los conjuntos $A$ y $B$ son equipotentes ($A \approx B$).
> - Por consiguiente, la opción **A** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión36_Cardinalidad_y_biyecciones.pptx): Maquetada respetando el _AAA_Manual_de_Estilo_Presentaciones_, con el encabezado del Bloque 3, la notación del texto base de Delgado Pineda & Muñoz Bouzo (escape estricto de llaves `\{` y `\}`, símbolo `\varnothing` para el conjunto vacío), las demostraciones analíticas de equipotencia y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión36_Cardinalidad_y_biyecciones.m4a): Enfocado en la metodología de resolución de problemas sobre cardinalidad, la estrategia de construcción de biyecciones continuas e inversas entre intervalos reales, la aplicación del Teorema de Cantor-Bernstein-Schröder para evitar el diseño de biyecciones complejas, la equivalencia $\mathcal{P}(A) \approx {0, 1}^A$ mediante la función característica y los criterios sintácticos de redacción formal para el examen de desarrollo.

---
