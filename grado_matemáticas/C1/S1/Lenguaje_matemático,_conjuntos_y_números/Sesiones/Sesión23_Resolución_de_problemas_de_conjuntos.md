# **SESIÓN 23 (PRÁCTICA): RESOLUCIÓN DE PROBLEMAS DE CONJUNTOS CON MÚLTIPLES CUANTIFICADORES**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 2: CONJUNTOS (Capítulo 2)  
**Objetivo:** Dominar la formalización, análisis de veracidad y negación de expresiones lógico-conjuntistas compuestas por **múltiples cuantificadores alternados** ($\forall$ y $\exists$), comprender la asimetría crítica del orden de cuantificación, construir contraejemplos formales para la refutación de enunciados universales y aplicar esta notación a propiedades de subconjuntos de $\mathbb{R}$ (como la acotación).

---

### **1. Marco Teórico: Reglas Fundamentales de Múltiples Cuantificadores**

#### **A. La Importancia Crítica del Orden de los Cuantificadores**

Cuando se combinan cuantificadores de distinto tipo ($\forall$ y $\exists$), **el orden en que se escriben altera de forma radical el significado semántico de la proposición**:

1. **Dependencia Locacional ($\forall x \exists y$):** $\forall x \in A, \exists y \in B, P(x, y)$ _Significado:_ Para cada elemento $x$ de $A$, existe al menos un elemento $y$ en $B$ que satisface la propiedad. **El elemento $y$ depende de $x$** (se puede denotar como $y_x$ o $y = f(x)$).
    
2. **Existencia Global / Uniforme ($\exists y \forall x$):** $\exists y \in B, \forall x \in A, P(x, y)$ _Significado:_ Existe al menos un elemento $y$ en $B$ **común e independiente** que satisface la propiedad simultáneamente **para todos** los elementos $x$ de $A$.
    

#### **Relación de Implicación Lógica entre Ambos Órdenes:**

$(\exists y \in B, \forall x \in A, P(x, y)) \implies (\forall x \in A, \exists y \in B, P(x, y))$

> **¡Advertencia de Rigor para Examen!**  
> El condicional recíproco $(\forall x \exists y P(x, y)) \implies (\exists y \forall x P(x, y))$ es **falso en general**. Asumir la equivalencia o intercambiar libremente el orden de cuantificadores distintos es un error grave de razonamiento en las pruebas de desarrollo de la UNED (falacia de permutación de cuantificadores).

#### **B. Permutación de Cuantificadores del Mismo Tipo**

Si los cuantificadores adyacentes son del mismo tipo, el orden de presentación es indiferente y conmutativo:

- **Doble Universal:** $(\forall x \in A, \forall y \in B, P(x, y)) \iff (\forall y \in B, \forall x \in A, P(x, y))$
- **Doble Existencial:** $(\exists x \in A, \exists y \in B, P(x, y)) \iff (\exists y \in B, \exists x \in A, P(x, y))$

#### **C. Algoritmo de Negación de Múltiples Cuantificadores**

Para negar una fórmula con múltiples cuantificadores encadenados, se aplica sistemáticamente la regla de De Morgan para cuantificadores **de izquierda a derecha**, invirtiendo cada cuantificador y trasladando el operador de negación ($\neg$) al predicado interno:

$\neg \Big( \forall x \in A, \exists y \in B, \forall z \in C, P(x, y, z) \Big) \iff \exists x \in A, \forall y \in B, \exists z \in C, \neg P(x, y, z)$

---

### **2. Batería de Ejercicios Resueltos con Redacción Formal (Estándar UNED)**

#### **Ejercicio 1: Asimetría del Orden de Cuantificadores en Conjuntos Numéricos**

**Enunciado:** Analizar el valor de verdad en el universo de los números reales $\mathbb{R}$ de las siguientes dos proposiciones lógicas:

1. $P_1 \equiv \forall x \in \mathbb{R}, \exists y \in \mathbb{R}, (x + y = 0)$
2. $P_2 \equiv \exists y \in \mathbb{R}, \forall x \in \mathbb{R}, (x + y = 0)$

- **Resolución Paso a Paso:**
    
    1. **Análisis de $P_1$ ($\forall x \in \mathbb{R}, \exists y \in \mathbb{R}, x + y = 0$):**
        
        - Fijamos un $x \in \mathbb{R}$ arbitrario.
        - Buscamos un $y \in \mathbb{R}$ tal que $x + y = 0$. Despejando, $y = -x$.
        - Como el opuesto $-x$ existe y es único para todo número real $x$, para cada $x$ existe $y = -x \in \mathbb{R}$.
        - **Conclusión:** $P_1$ toma el valor semántico **Verdadero ($1$)**.
    2. **Análisis de $P_2$ ($\exists y \in \mathbb{R}, \forall x \in \mathbb{R}, x + y = 0$):**
        
        - Supongamos por reducción al absurdo que $P_2$ es verdadera.
        - Entonces existe un valor constante $y_0 \in \mathbb{R}$ fijo que cumple $x + y_0 = 0$ para **todo** $x \in \mathbb{R}$.
        - Si evaluamos para $x = 1$, tendríamos $1 + y_0 = 0 \implies y_0 = -1$.
        - Si evaluamos para $x = 2$, tendríamos $2 + y_0 = 0 \implies y_0 = -2$.
        - Como $y_0$ no puede ser simultáneamente $-1$ y $-2$, llegamos a una contradicción ($0$).
        - **Conclusión:** $P_2$ toma el valor semántico **Falso ($0$)**.
    3. **Conclusión Global:** Queda probado analíticamente que $P_1 \neq P_2$ y que $P_1 \centernot\implies P_2$.
        

---

#### **Ejercicio 2: Negación Formal y Construcción de Contraejemplo**

**Enunciado:** Sea la proposición $Q \equiv \forall x \in \mathbb{R}, \exists y \in \mathbb{R}, (y^2 = x)$.

1. Escribir la negación formal $\neg Q$ aplicando el algoritmo de negación de cuantificadores.
2. Determinar la veracidad de $Q$ y $\neg Q$ construyendo un contraejemplo si procede.

- **Resolución Paso a Paso:**
    
    1. **Obtención de la Negación Formal $\neg Q$:** $\neg Q \iff \neg \Big( \forall x \in \mathbb{R}, \exists y \in \mathbb{R}, (y^2 = x) \Big)$ Invertimos el primer cuantificador ($\forall \rightarrow \exists$), invertimos el segundo ($\exists \rightarrow \forall$) y negamos la igualdad ($y^2 = x \rightarrow y^2 \neq x$): $\neg Q \iff \exists x \in \mathbb{R}, \forall y \in \mathbb{R}, (y^2 \neq x)$
        
    2. **Evaluación de Veracidad y Contraejemplo:**
        
        - Para probar que $\neg Q$ es **verdadera ($1$)**, basta encontrar un elemento específico $x_0 \in \mathbb{R}$ tal que ningún número real $y$ cumpla $y^2 = x_0$.
        - **Construcción del Contraejemplo:** Tomemos $x_0 = -1 \in \mathbb{R}$.
        - Dado que el cuadrado de cualquier número real es no negativo ($\forall y \in \mathbb{R}, y^2 \ge 0$), es imposible que $y^2 = -1$.
        - Por lo tanto, para $x_0 = -1$, se cumple que $\forall y \in \mathbb{R}, y^2 \neq -1$.
        - **Conclusión:** La proposición $\neg Q$ es **Verdadera ($1$)**, lo que implica que la proposición original $Q$ es **Falsa ($0$)**.

---

#### **Ejercicio 3: Formalización de Conceptos de Análisis (Acotación de Subconjuntos)**

**Enunciado:** Sea $A \subseteq \mathbb{R}$ un subconjunto no vacío de la recta real.

1. Expresar formalmente mediante cuantificadores la propiedad _"El conjunto $A$ está acotado superior e inferiormente"_.
2. Escribir la negación formal para definir la propiedad _"El conjunto $A$ no está acotado"_.

- **Resolución Paso a Paso:**
    
    1. **Formalización de Conjunto Acotado:**  
        Un conjunto $A \subseteq \mathbb{R}$ está acotado si existe un número real positivo $M > 0$ que actúa como cota de los valores absolutos de todos los elementos de $A$: $\text{Acotado}(A) \equiv \exists M \in \mathbb{R}^+, \forall x \in A, (|x| \le M)$
        
    2. **Negación Formal (Conjunto No Acotado):**  
        $\neg \text{Acotado}(A) \iff \neg \Big( \exists M \in \mathbb{R}^+, \forall x \in A, (|x| \le M) \Big)$ Aplicando la negación a los cuantificadores: $\neg \text{Acotado}(A) \iff \forall M \in \mathbb{R}^+, \exists x \in A, (|x| > M)$ _Interpretación:_ Para cualquier cota $M$ que se proponga, por grande que sea, siempre es posible encontrar un elemento $x$ en el conjunto $A$ que la supere en valor absoluto.
        

---

### **3. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Propiedad de Densidad de $\mathbb{Q}$ en $\mathbb{R}$:**  
    Expresar simbólicamente mediante cuantificadores la propiedad de densidad: _"Entre dos números reales distintos cualesquiera siempre existe un número racional"_.  
    _(Solución: $\forall x, y \in \mathbb{R}, (x < y \implies \exists q \in \mathbb{Q}, x < q < y)$)_.
    
2. **Existencia del Elemento Neutro:**  
    Traducir a lenguaje formal de cuantificadores la afirmación: _"En el conjunto de los números enteros $\mathbb{Z}$, existe un elemento neutro para la suma"_, y comparar su estructura con la afirmación de existencia de simétrico.
    

---

### **4. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Dadas las dos proposiciones lógicas sobre el conjunto de los números enteros $\mathbb{Z}$:

- $P_1 \equiv \exists x \in \mathbb{Z}, \forall y \in \mathbb{Z}, (x + y = y)$
- $P_2 \equiv \forall y \in \mathbb{Z}, \exists x \in \mathbb{Z}, (x + y = 0)$

¿Cuál de las siguientes afirmaciones es **verdadera**?

- **A)** $P_1$ expresa la existencia del elemento neutro para la suma ($x=0$), mientras que $P_2$ expresa la existencia del elemento opuesto para cada $y$. Ambas son verdaderas.
- **B)** $P_1$ y $P_2$ son lógicamente equivalentes porque los cuantificadores se pueden conmutar sin alterar el significado.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - En $P_1$, $\exists x \in \mathbb{Z}, \forall y \in \mathbb{Z}, (x + y = y)$ indica la existencia de un único valor $x$ (el $0$) que sirve universalmente para todo $y$. Es la definición formal del **elemento neutro**.
> - En $P_2$, $\forall y \in \mathbb{Z}, \exists x \in \mathbb{Z}, (x + y = 0)$ indica que para cada $y$ existe un $x$ (que es $-y$, dependiente de $y$) tal que su suma es $0$. Es la definición del **elemento opuesto**.
> - Ambas son verdaderas en $\mathbb{Z}$, pero **no son equivalentes ni conmutables** en general.
> - Por tanto, la opción **A** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión23_Resolución_de_problemas_de_conjuntos.pptx): Maquetada respetando las directrices del _Manual_de_Estilo_Presentaciones_, con la estructura por bloques, los criterios sintácticos oficiales de la UNED (escape de llaves `\{` y `\}`, notación `\varnothing`), la resolución paso a paso de problemas de examen y la pregunta de autoevaluación.
- [**Resumen de Audio**](Audios/Sesión23_Resolución_de_problemas_de_conjuntos.m4a): Enfocado en la falacia del intercambio de cuantificadores ($\forall x \exists y$ vs. $\exists y \forall x$), el algoritmo de negación encadenada y la formalización analítica de conceptos como la acotación de subconjuntos en $\mathbb{R}$.