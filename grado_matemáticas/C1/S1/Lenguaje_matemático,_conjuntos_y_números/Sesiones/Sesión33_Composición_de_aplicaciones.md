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

---

#### **Ejercicio 2: Prueba de Biyectividad y Cálculo de la Función Inversa**

**Enunciado:** Consideremos la función homográfica $f: \mathbb{R} \setminus {3} \to \mathbb{R} \setminus {2}$ definida por: $$f(x) = \frac{2x + 1}{x - 3}$$

1. Demostrar analíticamente que $f$ es inyectiva.
2. Demostrar analíticamente que $f$ es sobreyectiva.
3. Deducir la expresión algebraica de la función inversa $f^{-1}: \mathbb{R} \setminus {2} \to \mathbb{R} \setminus {3}$.

- **Resolución Paso a Paso (Estándar UNED):**
    
    1. **Demostración de Inyectividad:**  
        Sean $x, x' \in \mathbb{R} \setminus {3}$ tales que $f(x) = f(x')$: $$\frac{2x + 1}{x - 3} = \frac{2x' + 1}{x' - 3}$$ Multiplicando en cruz: $$(2x + 1)(x' - 3) = (2x' + 1)(x - 3)$$ $$2xx' - 6x + x' - 3 = 2xx' - 6x' + x - 3$$ Simplificando los términos comunes $2xx'$ y $-3$: $$-6x + x' = -6x' + x \implies 7x' = 7x \implies x = x'$$ Por tanto, **$f$ es inyectiva**.
        
    2. **Demostración de Sobreyectividad:**  
        Sea $y \in \mathbb{R} \setminus {2}$ un elemento genérico del codominio. Buscamos un $x \in \mathbb{R} \setminus {3}$ tal que $f(x) = y$: $$\frac{2x + 1}{x - 3} = y \implies 2x + 1 = y(x - 3) \implies 2x + 1 = xy - 3y$$ Agrupando los términos con $x$: $$2x - xy = -3y - 1 \implies x(2 - y) = -(3y + 1) \implies x = \frac{3y + 1}{2 - y} = \frac{3y + 1}{-(y - 2)}$$ Como $y \in \mathbb{R} \setminus {2}$, el denominador $2 - y \neq 0$, luego siempre existe un valor de $x \in \mathbb{R}$.  
        Comprobamos que $x \neq 3$: $$\frac{3y + 1}{2 - y} = 3 \implies 3y + 1 = 6 - 3y \implies 6y = 5 \implies y = 5/6 \neq 2$$ Luego para todo $y \in \mathbb{R} \setminus {2}$ existe antecesor en $\mathbb{R} \setminus {3}$. **$f$ es sobreyectiva**.
        
    3. **Cálculo de la Función Inversa:**  
        Al ser inyectiva y sobreyectiva, $f$ es **biyectiva**. Su función inversa $f^{-1}: \mathbb{R} \setminus {2} \to \mathbb{R} \setminus {3}$ viene dada por la fórmula obtenida al despejar: $$f^{-1}(y) = \frac{3y + 1}{2 - y} \quad \text{o bien, en la variable estándar: } \quad f^{-1}(x) = \frac{3x + 1}{2 - x}$$
        

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

---

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

---
