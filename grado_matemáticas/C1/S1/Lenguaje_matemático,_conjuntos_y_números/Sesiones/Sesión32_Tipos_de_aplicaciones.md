# **SESIÓN 32 (TEORÍA): TIPOS DE APLICACIONES: INYECTIVA, SOBREYECTIVA Y BIYECTIVA**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 3: RELACIONES Y APLICACIONES (Capítulo 3)  
**Objetivo:** Definir formalmente las propiedades de **inyectividad, sobreyectividad y biyectividad** para una aplicación $f: A \to B$ mediante lógica de predicados y cuantificadores, dominar la caracterización analítica y el **criterio gráfico de las rectas horizontales**, analizar el comportamiento de estas propiedades frente a la **composición de aplicaciones**, comprender la **descomposición/factorización canónica $f = i \circ b \circ p$** y calcular el **número de aplicaciones** entre conjuntos finitos.

---

### **1. Marco Teórico: Clasificación de Aplicaciones**

Dada una aplicación $f: A \to B$ entre dos conjuntos no vacíos:

#### **A. Aplicación Inyectiva (o Inyección)**

Una aplicación $f: A \to B$ es **inyectiva** (o una **inyección**) si y solo si elementos distintos del conjunto inicial $A$ tienen imágenes distintas en el conjunto final $B$ (ningún elemento de $B$ es imagen de más de un elemento de $A$):

$$\forall x, x' \in A, \quad (f(x) = f(x') \implies x = x')$$

- **Forma Contrarrecíproca Equivalente:** $$\forall x, x' \in A, \quad (x \neq x' \implies f(x) \neq f(x'))$$
- **Criterio Gráfico (Funciones Reales):** La representación gráfica de una función real $f: \mathbb{R} \to \mathbb{R}$ es inyectiva si y solo si **cualquier recta horizontal $y = k$ corta a la gráfica a lo sumo en un punto** (en cero o en un punto).

---

#### **B. Aplicación Sobreyectiva (o Sobreyección / Suprayectiva)**

Una aplicación $f: A \to B$ es **sobreyectiva** (o una **sobreyección**) si y solo si todo elemento del conjunto final $B$ es imagen de al menos un elemento del conjunto inicial $A$. En términos de conjuntos, esto equivale a que el **conjunto imagen coincide con el codominio**:

$$\text{Im}(f) = f(A) = B \iff \forall y \in B, \quad \exists x \in A \text{ tal que } f(x) = y$$

- **Criterio Gráfico (Funciones Reales):** La representación gráfica de una función real $f: \mathbb{R} \to \mathbb{R}$ es sobreyectiva si y solo si **cualquier recta horizontal $y = k$ corta a la gráfica al menos en un punto** (en uno o más puntos).

---

#### **C. Aplicación Biyectiva (o Biyección / Correspondencia Biunívoca)**

Una aplicación $f: A \to B$ es **biyectiva** (o una **biyección**) si es **simultáneamente inyectiva y sobreyectiva**. Esto significa que a cada elemento del conjunto final $B$ le corresponde **un único** antecedente en el conjunto inicial $A$:

$$\forall y \in B, \quad \exists! x \in A \text{ tal que } f(x) = y$$

- **Criterio Gráfico (Funciones Reales):** La representación gráfica de una función real $f: \mathbb{R} \to \mathbb{R}$ es biyectiva si y solo si **cualquier recta horizontal $y = k$ corta a la gráfica exactamente en un punto**.

---

### **2. Teoremas Fundamentales sobre Aplicaciones Biyectivas e Inversas**

#### **Teorema 3.59 (Caracterización de Biyección mediante Inversa)**

Una aplicación $f: A \to B$ es **biyectiva** si y solo si existe una aplicación $g: B \to A$ tal que: $$f \circ g = I_B \quad \land \quad g \circ f = I_A$$ En tal caso, la aplicación $g$ es **única**, se denomina **aplicación inversa de $f$** y se denota por **$f^{-1}: B \to A$**.

#### **Teorema 3.61 (Existencia de Inversas por la Izquierda y por la Derecha)**

Dada una aplicación $f: A \to B$:

1. $f$ es **sobreyectiva** $\iff$ existe una aplicación $h: B \to A$ tal que $f \circ h = I_B$ _(utiliza el Axioma de Elección)_. NOTA: La inversa es inyectiva y no tiene por qué ser única.
2. $f$ es **inyectiva** $\iff$ existe una aplicación $g: B \to A$ tal que $g \circ f = I_A$. NOTA: La inversa es sobreyectiva y no tiene por qué ser única.

#### **Proposición 3.56 (Composición de Inyecciones y Sobreyecciones)**

Dadas dos aplicaciones $f: A \to B$ y $g: B \to C$:

1. Si $f$ y $g$ son **inyectivas**, entonces la composición $g \circ f: A \to C$ es **inyectiva**.
2. Si $f$ y $g$ son **sobreyectivas**, entonces la composición $g \circ f: A \to C$ es **sobreyectiva**.
3. Si $f$ y $g$ son **biyectivas**, entonces $g \circ f$ es **biyectiva** y su inversa es $(g \circ f)^{-1} = f^{-1} \circ g^{-1}$.

---

### **3. Descomposición (o Factorización) Canónica de una Aplicación**

Toda aplicación arbitraria $f: A \to B$ se puede descomponer o factorizando de forma canónica como la composición de tres aplicaciones elementales:

$$f = i \circ b \circ p$$

donde:

1. **$p: A \to A/\mathcal{E}_f$** es la **proyección canónica** (definida por $p(x) = [x]$ según la relación de equivalencia $x \mathcal{E}_f x' \iff f(x) = f(x')$), que es siempre **sobreyectiva**.
2. **$b: A/\mathcal{E}_f \to \text{Im}(f)$** es la **biyección canónica** (definida por $b([x]) = f(x)$), que es siempre **biyectiva**.
3. **$i: \text{Im}(f) \to B$** es la **inyección (o inclusión) canónica** (definida por $i(y) = y$), que es siempre **inyectiva**.

---

### **4. Conteo de Aplicaciones entre Conjuntos Finitos**

Sean $A$ y $B$ dos conjuntos finitos con $\text{card}(A) = n$ y $\text{card}(B) = m$:

1. **Número Total de Aplicaciones ($\mathcal{F}(A, B)$ o $B^A$):**  
    Existen $m^n$ aplicaciones distintas de $A$ en $B$ (variaciones con repetición de $m$ elementos tomados de $n$ en $n$).
2. **Número de Aplicaciones Inyectivas:**
    - Si $n \le m$: Existen $V_{m, n} = m(m-1)(m-2)\dots(m-n+1) = \frac{m!}{(m-n)!}$ aplicaciones inyectivas.
    - Si $n > m$: Existen **$0$ aplicaciones inyectivas** _(Principio del Palomar / Dirichlet)_.
3. **Número de Aplicaciones Biyectivas:**
    - Si $n = m$: Existen $n!$ biyecciones (permutaciones de $n$ elementos).
    - Si $n \neq m$: Existen **$0$ aplicaciones biyectivas**.
4. **Número de Aplicaciones Sobreyectivas:**
    - Si $n < m$: Existen **$0$ aplicaciones sobreyectivas**.
    - Si $m \ge n$
	    - Caso particular: Si $m = 2$: Existen $2^n - 2$ aplicaciones sobreyectivas.
	    - Caso general: $\text{Nº de sobreyecciones} = \sum_{k=0}^{m} (-1)^k \binom{m}{k} (m - k)^n$
---

### **5. Ejemplos Emblemáticos del Texto Base (Delgado Pineda & Muñoz Bouzo)**

#### **Ejemplo 1: Análisis de Funciones Reales**

1. **$f: \mathbb{R} \to \mathbb{R}$, $f(x) = 2^x$:**
    - **Inyectiva:** Si $2^x = 2^{x'} \implies \ln(2^x) = \ln(2^{x'}) \implies x \ln 2 = x' \ln 2 \implies x = x'$.
    - **No sobreyectiva:** $\text{Im}(f) = (0, +\infty) \neq \mathbb{R}$ (no toma valores negativos ni nulos).
2. **$g: \mathbb{R} \to \mathbb{R}$, $g(x) = x^3 - x$:**
    - **No inyectiva:** $g(0) = 0$ y $g(1) = 0$, con $0 \neq 1$.
    - **Sobreyectiva:** Toda ecuación polinómica de grado impar $x^3 - x - y = 0$ posee al menos una raíz real para cualquier $y \in \mathbb{R}$.
3. **$h: \mathbb{R} \to \mathbb{R}$, $h(x) = x^3$:**
    - **Biyectiva:** Para todo $y \in \mathbb{R}$, la ecuación $x^3 = y$ tiene como única solución real $x = \sqrt{y}$. Su función inversa es $h^{-1}(y) = \sqrt{y}$.

---

### **6. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1 (Ejercicio 13 del Capítulo 3 del texto base):** Poner un ejemplo formal en cada caso de una aplicación $f: \mathbb{N} \to \mathbb{N}$ que sea:  
    a) Inyectiva y no sobreyectiva _(Solución: $f(n) = n + 1$)_.  
    b) Sobreyectiva y no inyectiva _(Solución: $f(n) = \lfloor n/2 \rfloor$)_.  
    c) Ni inyectiva ni sobreyectiva _(Solución: $f(n) = 5$)_.  
    d) Biyectiva _(Solución: $f(n) = n$)_.
2. **Ejercicio 2 (Ejercicio 20 del Capítulo 3 del texto base):** Dadas $f: A \to B$ y $g: B \to C$, demostrar o refutar mediante contraejemplo:  
    a) Si $g \circ f$ es inyectiva, entonces $f$ es inyectiva. _(Verdadero)_.  
    b) Si $g \circ f$ es inyectiva, entonces $g$ es inyectiva. _(Falso)_.  
    c) Si $g \circ f$ es sobreyectiva, entonces $g$ es sobreyectiva. _(Verdadero)_.

---

### **7. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Dadas dos aplicaciones $f: A \to B$ y $g: B \to C$, sabemos que su composición $g \circ f: A \to C$ es una aplicación **inyectiva**. ¿Qué se puede deducir con absoluta certeza lógica sobre las aplicaciones componentes $f$ y $g$?

- **A)** Obligatoriamente la aplicación $f$ debe ser inyectiva, pero $g$ no tiene por qué ser inyectiva.
- **B)** Ambas aplicaciones, $f$ y $g$, deben ser obligatoriamente inyectivas.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - **Demostración de que $f$ es inyectiva:** Sean $x, x' \in A$ tales que $f(x) = f(x')$. Aplicando $g$ a ambos miembros, tenemos $g(f(x)) = g(f(x')) \iff (g \circ f)(x) = (g \circ f)(x')$. Como $g \circ f$ es inyectiva por hipótesis, se deduce inmediatamente que $x = x'$. Por tanto, **$f$ es inyectiva**.
> - **Contraejemplo para $g$:** Consideremos $f: \mathbb{N} \to \mathbb{N}$ dada por $f(n) = 2n$ (inyectiva) y $g: \mathbb{N} \to \mathbb{N}$ dada por $g(m) = \lfloor m/2 \rfloor$ (no inyectiva, pues $g(0)=g(1)=0$). La composición $(g \circ f)(n) = g(2n) = \lfloor 2n/2 \rfloor = n = I_\mathbb{N}$ es la identidad, que es inyectiva, a pesar de que $g$ no lo es.
> - Por consiguiente, la opción **A** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión32_Tipos_de_aplicaciones.pptx)
- [**Resumen de audio**](Audios/Sesión32_Tipos_de_aplicaciones.m4a)
