# **SESIÓN 33 (PRÁCTICA): EJERCICIOS DE COMPOSICIÓN DE APLICACIONES Y CÁLCULO DE APLICACIONES INVERSAS**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 3: RELACIONES Y APLICACIONES (Capítulo 3)  
**Objetivo:** Dominar la resolución práctica de ejercicios de examen sobre **composición de aplicaciones $g \circ f$** y **cálculo explícito de aplicaciones inversas $f^{-1}$**, verificar las condiciones de compatibilidad de dominios e imágenes ($\text{Im}(f) \subseteq \text{Dom}(g)$), probar rigurosamente la biyectividad como condición necesaria y suficiente para la existencia de inversa, ejercitar la propiedad $(g \circ f)^{-1} = f^{-1} \circ g^{-1}$ y resolver la lista de problemas seleccionados por la Guía Completa de la asignatura.

---

### **1. Marco Teórico y Resumen Metodológico**

#### **A. Composición de Aplicaciones ($g \circ f$)**

Dadas dos aplicaciones $f: A \to B$ y $g: B \to C$, se define la **aplicación compuesta $g \circ f$** (se lee _"f compuesta con g"_ o _"g sobre f"_) como la aplicación de $A$ en $C$ dada por: $$(g \circ f): A \to C, \quad (g \circ f)(x) = g(f(x)) \quad \forall x \in A$$

- **Condición de Compatibilidad:** Para poder formar la composición $g \circ f$, es condición indispensable que el conjunto imagen de la primera aplicación esté contenido en el dominio de la segunda: $$\text{Im}(f) \subseteq \text{Dom}(g)$$
- **No Conmutatividad:** En general, la composición de aplicaciones **NO es conmutativa**: $$g \circ f \neq f \circ g$$ _(Incluso aunque ambos productos estén definidos y los conjuntos inicial y final coincidan, sus fórmulas algebraicas suelen ser completamente distintas)._
- **Asociatividad:** La composición satisface la propiedad asociativa:  
    $$h \circ (g \circ f) = (h \circ g) \circ f$$

---

#### **B. Aplicación Inversa ($f^{-1}$)**

Una aplicación $f: A \to B$ admite **aplicación inversa** $f^{-1}: B \to A$ si y solo si $f$ es **biyectiva** (inyectiva y sobreyectiva). La aplicación $f^{-1}$ viene unívocamente determinada por la relación: $$f^{-1}(y) = x \iff f(x) = y \quad (\forall y \in B, \forall x \in A)$$

#### **Propiedades Clave de la Inversa:**

1. **Identidad:** $f^{-1} \circ f = I_A$ y $f \circ f^{-1} = I_B$.
2. **Involutividad:** $(f^{-1})^{-1} = f$.
3. **Inversa de la Composición:** Si $f: A \to B$ y $g: B \to C$ son biyectivas, la compuesta $g \circ f$ es biyectiva y su inversa invierte el orden de la composición: $$(g \circ f)^{-1} = f^{-1} \circ g^{-1}$$

---

### **2. Batería de Ejercicios Resueltos de Examen (Texto Base)**

#### **Ejercicio 1: Composición de Funciones Reales y Compatibilidad de Dominios**

**Enunciado:** Sean las funciones reales de variable real definidas por $f(x) = \frac{x + 1}{x - 2}$ y $g(x) = \sqrt{x}$.

1. Determinar los dominios de definición de $f$ y $g$.
2. Determinar el dominio de definición de la función compuesta $(g \circ f)(x)$ y hallar su expresión algebraica.
3. Calcular $(f \circ g)(x)$ y verificar que $g \circ f \neq f \circ g$.

- **Resolución Paso a Paso (Estándar UNED):**
    
    1. **Dominios Individuales:**
        
        - $\text{Dom}(f) = \mathbb{R} \setminus {2}$ _(el denominador no se anula)_.
        - $\text{Dom}(g) = [0, +\infty)$ _(el radicando debe ser no negativo)_.
    2. **Composición $(g \circ f)(x)$:**
        
        - Por definición, $(g \circ f)(x) = g(f(x)) = g\left(\frac{x+1}{x-2}\right) = \sqrt{\frac{x+1}{x-2}}$.
        - **Dominio de $g \circ f$:** Para que $x \in \text{Dom}(g \circ f)$, se requiere que $x \in \text{Dom}(f)$ y que $f(x) \in \text{Dom}(g)$: $$x \neq 2 \quad \land \quad \frac{x+1}{x-2} \ge 0$$
        - Estudiamos el signo de la fracción $\frac{x+1}{x-2}$ mediante la tabla de signos con las raíces $x = -1$ y $x = 2$:
            - En $(-\infty, -1]$: numerador $\le 0$, denominador $< 0 \implies \text{fracción} \ge 0$.
            - En $(-1, 2)$: numerador $> 0$, denominador $< 0 \implies \text{fracción} < 0$.
            - En $(2, +\infty)$: numerador $> 0$, denominador $> 0 \implies \text{fracción} > 0$.
        - Por lo tanto, **$\text{Dom}(g \circ f) = (-\infty, -1] \cup (2, +\infty)$**.
    3. **Composición $(f \circ g)(x)$:**
        
        - $(f \circ g)(x) = f(g(x)) = f(\sqrt{x}) = \frac{\sqrt{x} + 1}{\sqrt{x} - 2}$.
        - **Dominio de $f \circ g$:** Se exige $x \ge 0$ y $\sqrt{x} \neq 2 \implies x \neq 4$. Luego **$\text{Dom}(f \circ g) = [0, 4) \cup (4, +\infty)$**.
        - Es evidente que las expresiones algebraicas y los dominios difieren, por lo que **$g \circ f \neq f \circ g$**.

- Imagen de la función f(x)
![[Sesión33_Composición_de_aplicaciones_2_1_f.png]]
---

#### **Ejercicio 2: Prueba de Biyectividad y Cálculo de la Función Inversa**

**Enunciado:** Consideremos la función homográfica $f: \mathbb{R} \setminus \{3\} \to \mathbb{R} \setminus \{2\}$ definida por: $$f(x) = \frac{2x + 1}{x - 3}$$

1. Demostrar analíticamente que $f$ es inyectiva.
2. Demostrar analíticamente que $f$ es sobreyectiva.
3. Deducir la expresión algebraica de la función inversa $f^{-1}: \mathbb{R} \setminus \{2\} \to \mathbb{R} \setminus \{3\}$.

- **Resolución Paso a Paso (Estándar UNED):**
    
    1. **Demostración de Inyectividad:**  
        Sean $x, x' \in \mathbb{R} \setminus \{3\}$ tales que $f(x) = f(x')$: $$\frac{2x + 1}{x - 3} = \frac{2x' + 1}{x' - 3}$$ Multiplicando en cruz: $$(2x + 1)(x' - 3) = (2x' + 1)(x - 3)$$ $$2xx' - 6x + x' - 3 = 2xx' - 6x' + x - 3$$ Simplificando los términos comunes $2xx'$ y $-3$: $$-6x + x' = -6x' + x \implies 7x' = 7x \implies x = x'$$ Por tanto, **$f$ es inyectiva**.
        
    2. **Demostración de Sobreyectividad:**  
        Sea $y \in \mathbb{R} \setminus \{2\}$ un elemento genérico del codominio. Buscamos un $x \in \mathbb{R} \setminus \{3\}$ tal que $f(x) = y$: $$\frac{2x + 1}{x - 3} = y \implies 2x + 1 = y(x - 3) \implies 2x + 1 = xy - 3y$$ Agrupando los términos con $x$: $$2x - xy = -3y - 1 \implies x(2 - y) = -(3y + 1) \implies x = \frac{-(3y + 1)}{2 - y} = \frac{3y + 1}{y - 2}$$ Como $y \in \mathbb{R} \setminus {2}$, el denominador $2 - y \neq 0$, luego siempre existe un valor de $x \in \mathbb{R}$.  
        Comprobamos que $x \neq 3$: $$\frac{3y + 1}{2 - y} = 3 \implies 3y + 1 = 6 - 3y \implies 6y = 5 \implies y = 5/6 \neq 2$$ Luego para todo $y \in \mathbb{R} \setminus \{2\}$ existe antecesor en $\mathbb{R} \setminus \{3\}$. **$f$ es sobreyectiva**.
        
    3. **Cálculo de la Función Inversa:**  
        Al ser inyectiva y sobreyectiva, $f$ es **biyectiva**. Su función inversa $f^{-1}: \mathbb{R} \setminus \{2\} \to \mathbb{R} \setminus \{3\}$ viene dada por la fórmula obtenida al despejar: $$f^{-1}(y) = \frac{3y + 1}{y - 2} \quad \text{o bien, en la variable estándar: } \quad f^{-1}(x) = \frac{3x + 1}{x - 2}$$
        

---

#### **Ejercicio 3: Inversa de la Composición ($(g \circ f)^{-1} = f^{-1} \circ g^{-1}$)**

**Enunciado:** Demostrar analíticamente que si $f: A \to B$ y $g: B \to C$ son dos aplicaciones biyectivas, entonces $(g \circ f)^{-1} = f^{-1} \circ g^{-1}$.

- **Demostración Paso a Paso (Examen de Desarrollo UNED):**
    
    1. Para probar que una aplicación $k: C \to A$ es la inversa de $h = g \circ f$, por el Teorema de Caracterización de la Inversa basta verificar que: $$k \circ (g \circ f) = I_A \quad \land \quad (g \circ f) \circ k = I_C$$
    2. Tomamos $k = f^{-1} \circ g^{-1}$ y calculamos la primera composición usando la propiedad asociativa: $$(f^{-1} \circ g^{-1}) \circ (g \circ f) = f^{-1} \circ (g^{-1} \circ g) \circ f$$ Como $g$ es biyectiva, $g^{-1} \circ g = I_B$: $$= f^{-1} \circ I_B \circ f = f^{-1} \circ f = I_A$$
    3. Calculamos la segunda composición: $$(g \circ f) \circ (f^{-1} \circ g^{-1}) = g \circ (f \circ f^{-1}) \circ g^{-1}$$ Como $f$ es biyectiva, $f \circ f^{-1} = I_B$: $$= g \circ I_B \circ g^{-1} = g \circ g^{-1} = I_C$$
    4. Por la unicidad de la aplicación inversa, concluimos que **$(g \circ f)^{-1} = f^{-1} \circ g^{-1}$**. $\blacksquare$

---

### **3. Ejercicios Seleccionados de la Guía Completa para Estudio Personal**

A partir de la lista de ejercicios prioritarios seleccionados por la **Guía Completa (Curso 2026/2027)** para el **Tema 3**, se recomienda resolver los siguientes problemas del Capítulo 3 del libro base:

1. **Ejercicio 17 del Capítulo 3:** Dadas las aplicaciones $f: \mathbb{R} \to \mathbb{R}$ con $f(x) = x^2 + 1$ y $g: \mathbb{R} \to \mathbb{R}$ con $g(x) = 3x - 2$.  
    a) Calcular $(g \circ f)(x)$ y $(f \circ g)(x)$.  
    b) Determinar si $g$ admite inversa y hallarla.
2. **Ejercicio 21 del Capítulo 3:** Sea $f: A \to B$ una aplicación. Demostrar que $f$ es inyectiva si y solo si para todo par de subconjuntos $X, Y \subseteq A$ se cumple que $f(X \cap Y) = f(X) \cap f(Y)$.

#### Solución ejercicio 21

##### **Enunciado**

Sea $f: A \to B$ una aplicación. Demostrar que $f$ es **inyectiva** si y solo si para todo par de subconjuntos $X, Y \subseteq A$ se cumple que:
$f(X \cap Y) = f(X) \cap f(Y)$

---

##### **Estrategia de Demostración**

Al tratarse de un bicondicional ($\iff$), la demostración consta de dos partes bien diferenciadas:

1. **Lema Previo (Propiedad General):** Demostrar que la inclusión $f(X \cap Y) \subseteq f(X) \cap f(Y)$ se cumple **siempre** para cualquier aplicación $f$, sea inyectiva o no.
2. **Implicación Directa ($\implies$):** Suponer que $f$ es inyectiva y probar la inclusión contraria $f(X) \cap f(Y) \subseteq f(X \cap Y)$.
3. **Implicación Recíproca ($\impliedby$):** Suponer que se cumple la igualdad de imágenes de la intersección para todo par de subconjuntos y deducir que $f$ es inyectiva.

---

##### **1. Lema Previo: Inclusión Contenida $f(X \cap Y) \subseteq f(X) \cap f(Y)$**

Sea $y \in f(X \cap Y)$ un elemento genérico.
* Por definición de imagen de un conjunto, existe al menos un $x \in X \cap Y$ tal que $f(x) = y$.
* Como $x \in X \cap Y$, por definición de intersección se tiene que $x \in X$ y $x \in Y$.
* Como $x \in X \implies f(x) \in f(X) \implies y \in f(X)$.
* Como $x \in Y \implies f(x) \in f(Y) \implies y \in f(Y)$.
* Al pertenecer $y$ a ambos conjuntos, por definición de intersección se deduce que $y \in f(X) \cap f(Y)$.

Por lo tanto, la inclusión **$f(X \cap Y) \subseteq f(X) \cap f(Y)$ se verifica siempre**.

---

##### **2. Implicación Directa ($\implies$)**

**Hipótesis:** $f: A \to B$ es inyectiva.  
**Objetivo:** Probar que para todo $X, Y \subseteq A$ se cumple $f(X \cap Y) = f(X) \cap f(Y)$.

Gracias al Lema Previo, solo necesitamos demostrar la inclusión opuesta: **$f(X) \cap f(Y) \subseteq f(X \cap Y)$**.

1. Sea $y \in f(X) \cap f(Y)$ un elemento genérico.
2. Por definición de intersección, $y \in f(X)$ y $y \in f(Y)$.
3. Por definición de imagen directa de un subconjunto:
   * Como $y \in f(X)$, existe algún $x_1 \in X$ tal que $f(x_1) = y$.
   * Como $y \in f(Y)$, existe algún $x_2 \in Y$ tal que $f(x_2) = y$.
1. Igualando ambas expresiones obtenemos $f(x_1) = f(x_2) = y$.
2. **Aplicamos la Hipótesis de Inyectividad:** Puesto que $f$ es inyectiva, de $f(x_1) = f(x_2)$ se deduce necesariamente que:
   \$$x_1 = x_2\$$
3. Llamemos $x = x_1 = x_2$. Como $x = x_1 \in X$ y $x = x_2 \in Y$, concluimos que $x \in X \cap Y$.
4. Por lo tanto, $y = f(x)$ con $x \in X \cap Y$, lo que significa por definición que **$y \in f(X \cap Y)$**.

Al haberse demostrado ambas inclusiones, queda establecida la igualdad **$f(X \cap Y) = f(X) \cap f(Y)$**. $\quad \blacksquare$

---

##### **3. Implicación Recíproca ($\impliedby$)**

**Hipótesis:** Para todo $X, Y \subseteq A$ se cumple $f(X \cap Y) = f(X) \cap f(Y)$.  
**Objetivo:** Demostrar que $f$ es inyectiva (es decir, $\forall x, x' \in A, f(x) = f(x') \implies x = x'$).

1. Sean $x, x' \in A$ dos elementos arbitrarios del dominio tales que **$f(x) = f(x')$**.
2. Consideremos los subconjuntos unitarios $X = \{x\} \subseteq A$ e $Y = \{x'\} \subseteq A$.
3. Aplicamos la hipótesis a estos dos conjuntos unitarios concretos:
   \$$f(\{x\} \cap \{x'\}) = f(\{x\}) \cap f(\{x'\})\$$
4. Evaluamos el miembro de la derecha:
   * $f(\{x\}) = \{f(x)\}$
   * $f(\{x'\}) = \{f(x')\}$
   * Como $f(x) = f(x')$, se deduce que $\{f(x)\} \cap \{f(x')\} = \{f(x)\}$.
1. Sustituyendo en la igualdad de la hipótesis:
   \$$f(\{x\} \cap \{x'\}) = \{f(x)\}\$$
2. Observamos que el conjunto $\{f(x)\}$ es un conjunto unitario no vacío (contiene al elemento $f(x)$). Por tanto, su imagen precursora $\{x\} \cap \{x'\}$ **no puede ser el conjunto vacío** ($\{x\} \cap \{x'\} \neq \varnothing$).
3. La única forma de que la intersección de dos conjuntos unitarios no sea vacía es que **ambos elementos sean idénticos**:
   \$$x = x'\$$

Por lo tanto, **$f$ es inyectiva**. $\quad \blacksquare$

### **4. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Dadas dos aplicaciones biyectivas $f: A \to B$ y $g: B \to C$, consideramos su compuesta $h = g \circ f: A \to C$. ¿Cuál es la expresión correcta de la aplicación inversa $h^{-1}: C \to A$?

- **A)** $h^{-1} = g^{-1} \circ f^{-1}$
- **B)** $h^{-1} = f^{-1} \circ g^{-1}$
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Al aplicar la inversa a la composición de dos funciones, el orden de aplicación se invierte necesariamente para que los dominios y codominios coincidan:
>     - $g \circ f$ aplica primero $f$ (de $A$ a $B$) y luego $g$ (de $B$ a $C$).
>     - Para deshacer el camino, la inversa $h^{-1}$ debe ir de $C$ a $A$, aplicando primero $g^{-1}$ (de $C$ a $B$) y a continuación $f^{-1}$ (de $B$ a $A$).
> - Por tanto, **$(g \circ f)^{-1} = f^{-1} \circ g^{-1}$**.
> - La opción A comete el error de no invertir el orden de composición.
> - Por lo tanto, la opción **B** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión33_Composición_de_aplicaciones.pptx): Elaborada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con el encabezado del Bloque 3, la notación del texto base de Delgado Pineda & Muñoz Bouzo (escape de llaves `\{` y `\}`, símbolo `\varnothing` para el conjunto vacío), los ejercicios resueltos paso a paso y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión33_Composición_de_aplicaciones.m4a) Enfocado en las técnicas algebraicas para calcular compuestas $(g \circ f)(x)$, la verificación estricta de dominios de compatibilidad, la demostración formal de biyectividad para justificar la existencia de la función inversa $f^{-1}$, el procedimiento de despeje, la regla $(g \circ f)^{-1} = f^{-1} \circ g^{-1}$ y las pautas para obtener la máxima calificación en el examen de desarrollo.

# Notas

## Función homográfica

Una **función homográfica** (o transformación homográfica) es una función racional de primer grado, definida como el cociente de dos polinomios lineales:

$$f(x) = \frac{ax + b}{cx + d}$$

donde $a, b, c, d \in \mathbb{R}$ son escalares fijos que satisfacen dos condiciones fundamentales:

1. **$c \neq 0$**: Si $c = 0$, la función se reduciría a una función afín o lineal $f(x) = \frac{a}{d}x + \frac{b}{d}$.
2. **$ad - bc \neq 0$**: Si el determinante $ad - bc = 0$, el numerador y el denominador serían proporcionales, por lo que la función se reduciría a una constante $f(x) = \frac{a}{c}$.

---

### **Propiedades Clave para la Asignatura (Especialmente en la Sesión 33)**

En el estudio de aplicaciones reales (Capítulo 3 del texto base de _Delgado Pineda & Muñoz Bouzo_), las funciones homográficas son el ejemplo clásico para practicar el **análisis de dominios, la demostración de biyectividad y el cálculo algebraico de funciones inversas**:

#### **1. Dominio de Definición ($\text{Dom}(f)$)**

La función no está definida en el punto que anula el denominador ($cx + d = 0 \implies x = -d/c$): 
$$\text{Dom}(f) = \mathbb{R} \setminus \left\{ -\frac{d}{c} \right\}$$

#### **2. Conjunto Imagen ($\text{Im}(f)$)**

El recorrido de la función alcanza todos los números reales excepto el cociente de los coeficientes de grado 1 ($y = a/c$): $$\text{Im}(f) = \mathbb{R} \setminus \left\{ \frac{a}{c} \right\}$$

#### **3. Biyectividad e Inversa ($f^{-1}$)**

Considerada como aplicación entre sus dominios naturales: $$f: \mathbb{R} \setminus \left\{ -\frac{d}{c} \right\} \longrightarrow \mathbb{R} \setminus \left\{ \frac{a}{c} \right\}$$ $f$ es una **aplicación biyectiva**.

Para obtener la expresión de la **función inversa $f^{-1}$**, igualamos $y = f(x)$ y despejamos $x$: $$y = \frac{ax + b}{cx + d} \implies y(cx + d) = ax + b \implies cxy + dy = ax + b$$ $$cxy - ax = -dy + b \implies x(cy - a) = -dy + b \implies x = \frac{-dy + b}{cy - a}$$

Por tanto, **la inversa de una función homográfica es también otra función homográfica**: $$f^{-1}(y) = \frac{-dy + b}{cy - a}$$

> **Regla mnemotécnica para el examen:** Los coeficientes de la diagonal principal ($a$ y $d$) se **intercambian de posición y cambian de signo** (el $d$ pasa arriba como $-d$, y el $a$ pasa abajo como $-a$).

---

### **4. Interpretación Geométrica**

En el plano cartesiano $\mathbb{R}^2$, la gráfica de toda función homográfica es una **hipérbola equilátera** que posee dos asíntotas:

- **Asíntota vertical:** $x = -\frac{d}{c}$
- **Asíntota horizontal:** $y = \frac{a}{c}$

