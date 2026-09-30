# **SESIÓN 15 (TEORÍA): LÓGICA DE PREDICADOS Y CUANTIFICADORES (EXISTENCIAL Y UNIVERSAL)**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 2: CONJUNTOS (Capítulo 2)  
**Objetivo:** Comprender la necesidad de ampliar la lógica proposicional mediante la **lógica de predicados**, formalizar el concepto de **universo** y **extensión de un predicado**, dominar la sintaxis y semántica de los **cuantificadores universal ($\forall$) y existencial ($\exists$)**, y aplicar las leyes de negación de cuantificadores para la construcción de contraejemplos.

---

### **1. De la Lógica Proposicional a la Lógica de Predicados**

#### **Limitaciones de la Lógica Proposicional**

En la lógica proposicional (Capítulo 1), una expresión como _"El número natural elegido es par"_ no puede ser evaluada directamente como verdadera ($1$) o falsa ($0$) porque no alude a un objeto individual específico, sino a un elemento genérico no determinado. Su valor semántico depende del objeto concreto $x$ que seleccionemos.

#### **Definición de Predicado y Universo**

- **Universo del predicado ($C$):** Es el conjunto no vacío de objetos sobre el cual opera la variable.
- **Predicado ($P_x$ o $P(x)$):** Es una propiedad o condición referida a una variable genérica $x \in C$. Se convierte en una proposición lógica (con valor semántico $1$ o $0$) al sustituir $x$ por un elemento particular de $C$.

#### **Extensión o Conjunto Característico ($C_P$)**

Dado un predicado $P$ sobre un universo $C$, el subconjunto formado por todos los elementos de $C$ que satisfacen la propiedad $P$ se denomina **extensión del predicado**: $C_P = {x \in C \mid P_x}$

> **Propiedad Fundamental:** Dos predicados $P_x$ y $Q_x$ son **equivalentes** sobre el universo $C$ si y solo si determinan exactamente el mismo subconjunto extensión ($C_P = C_Q$).

---

### **2. Cuantificadores Lógicos: Universal ($\forall$) y Existencial ($\exists$)**

Cuando se quiere indicar la cantidad de elementos del universo $C$ que satisfacen un predicado $P_x$, se utilizan los **cuantificadores**.

#### **A. Cuantificador Universal ($\forall$)**

- **Símbolo y lectura:** El símbolo $\forall$ se denomina cuantificador universal y se lee _"para todo"_, _"para cada"_ o _"cualquiera que sea"_.
- **Definición:** La expresión $(\forall x \in C) P_x$ es una proposición que es verdadera ($1$) si **todos** los elementos del universo $C$ satisfacen el predicado $P_x$.
- **Caracterización conjuntista:** $(\forall x \in C) P_x \iff C_P = C$
- **Interpretación finita:** Si $C = {x_1, x_2, \dots, x_n}$ es un conjunto finito, el cuantificador universal es una generalización de la **conjunción ($\land$)**: $(\forall x \in C) P_x \iff P(x_1) \land P(x_2) \land \dots \land P(x_n)$

#### **B. Cuantificador Existencial ($\exists$)**

- **Símbolo y lectura:** El símbolo $\exists$ se denomina cuantificador existencial y se lee _"existe al menos un"_ o _"existe algún"_.
- **Definición:** La expresión $(\exists x \in C) P_x$ es una proposición que es verdadera ($1$) si existe **al menos un elemento** en $C$ que satisface el predicado $P_x$.
- **Caracterización conjuntista:** $(\exists x \in C) P_x \iff C_P \neq \emptyset$
- **Interpretación finita:** Si $C = {x_1, x_2, \dots, x_n}$ es finito, el cuantificador existencial es una generalización de la **disyunción ($\lor$)**: $(\exists x \in C) P_x \iff P(x_1) \lor P(x_2) \lor \dots \lor P(x_n)$

---

### **3. Negación de Cuantificadores (Leyes de Morgan con Cuantificadores)**

Para negar un enunciado cuantificado, el operador negación ($\neg$) intercambia el tipo de cuantificador y niega el predicado interior:

1. **Negación del cuantificador universal:** $\neg [(\forall x \in C) P_x] \iff (\exists x \in C) (\neg P_x)$
    
    - _Significado:_ Decir que _"no todos los elementos cumplen $P$"_ equivale a afirmar que _"existe al menos un elemento que no cumple $P$"_.
2. **Negación del cuantificador existencial:** $\neg [(\exists x \in C) P_x] \iff (\forall x \in C) (\neg P_x)$
    
    - _Significado:_ Decir que _"no existe ningún elemento que cumpla $P$"_ equivale a afirmar que _"para todo elemento se satisface la negación de $P$"_.

> **Fundamento del Contraejemplo:** La equivalencia $\neg [(\forall x \in C) P_x] \iff (\exists x \in C) (\neg P_x)$ es la base lógica del uso de **contraejemplos** en demostraciones. Para probar que una propiedad universal es falsa, basta exhibir un elemento concreto $x_0 \in C$ tal que $P(x_0)$ sea falso ($x_0 \notin C_P$).

---

### **4. Ejemplo Resuelto con Notación Oficial**

**Enunciado:** Expresar formalmente mediante cuantificadores el conjunto de los números enteros pares y negar la afirmación universal _"Todos los números reales cumplen $x < x^2$"_.

#### **Resolución:**

1. **Definición de números pares:** $2\mathbb{Z} = {x \in \mathbb{Z} \mid (\exists k \in \mathbb{Z}) (x = 2k)}$
2. **Negación formal de $\forall x \in \mathbb{R}, x < x^2$:** $\neg (\forall x \in \mathbb{R}, x < x^2) \iff \exists x \in \mathbb{R}, \neg(x < x^2) \iff \exists x \in \mathbb{R}, x \ge x^2$
3. **Verificación por contraejemplo:** Tomando $x_0 = \frac{1}{2} \in \mathbb{R}$, se tiene $x_0^2 = \frac{1}{4}$. Como $\frac{1}{2} \ge \frac{1}{4}$ es verdadero, el elemento $x_0 = \frac{1}{2}$ demuestra la veracidad de la negación y, por tanto, refuta la afirmación universal original.

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea $C = {1, 2, 3}$ el universo y el predicado $P_x \equiv \text{"}x^2 < 5\text{"}$. ¿Cuál de las siguientes afirmaciones es **verdadera**?

- **A)** La proposición $(\forall x \in C) P_x$ toma el valor semántico $1$.
- **B)** La proposición $(\exists x \in C) (\neg P_x)$ toma el valor semántico $1$.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Evaluamos $P(x)$ para cada elemento de $C$:
>     - Para $x = 1$: $1^2 = 1 < 5$ (Verdadero, $1$).
>     - Para $x = 2$: $2^2 = 4 < 5$ (Verdadero, $1$).
>     - Para $x = 3$: $3^2 = 9 < 5$ (Falso, $0$).
> - Como para $x = 3$ no se cumple $P_x$, la proposición universal $(\forall x \in C) P_x$ es **falsa ($0$)**, por lo que la opción A es incorrecta.
> - Evaluamos la opción **B**: La negación $\neg P_x$ equivale a $x^2 \ge 5$. Existe el elemento $x_0 = 3 \in C$ tal que $3^2 = 9 \ge 5$ es verdadero, luego $(\exists x \in C)(\neg P_x)$ toma el valor semántico **$1$**. Por tanto, la opción **B** es la **correcta**.

---
## Material adicional
- Presentación
[[Sesión15_Lógica_de_predicados_y_cuantificadores.pptx]]
- Resumen de audio
[[Sesión15_Lógica_de_predicados_y_cuantificadores.m4a]]