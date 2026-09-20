Aquí tienes el desarrollo completo y riguroso de la **Sesión 10 (Teoría): Métodos de demostración II: Contrarrecíproco y contraejemplos**, diseñado para una sesión de 45 minutos conforme a nuestro Plan de Trabajo.

He generado en paralelo la **presentación de diapositivas** (siguiendo el Manual de Estilo) y el **resumen de audio en formato podcast**. Ambos materiales se están procesando en la plataforma y estarán disponibles en tu panel en unos minutos.

---

# **SESIÓN 10 (TEORÍA): MÉTODOS DE DEMOSTRACIÓN II: CONTRARRECÍPROCO Y CONTRAEJEMPLOS**

**Duración:** 45 minutos  
**Objetivo:** Dominar la demostración por la **ley del contrarrecíproco** (o ley de transposición) y aprender a refutar enunciados con cuantificador universal mediante el uso riguroso de **contraejemplos**, asegurando una redacción formal idónea para el examen de desarrollo.

---

### **1. El Método del Contrarrecíproco (Ley de Transposición)**

#### **Fundamento Lógico**

Dada una proposición condicional \(p \to q\), la **ley de transposición** o del contrarrecíproco establece la siguiente equivalencia lógica en la tabla de verdad: \[(p \to q) \Longleftrightarrow (\neg q \to \neg p)\]

A la proposición \(\neg q \to \neg p\) se le denomina **condicional contrarrecíproco** (o contrapositivo) del condicional original \(p \to q\). Como ambas expresiones poseen idéntico valor semántico para cualquier asignación de verdad, **demostrar que \(\neg q \to \neg p\) es cierto equivale exactamente a demostrar que \(p \to q\) es cierto**.

#### **¿Cuándo es conveniente utilizarlo?**

Este método resulta especialmente ventajoso cuando la negación de la tesis (\(\neg q\)) proporciona una hipótesis de trabajo con mayor estructura o información aritmética directa que la hipótesis original \(p\).

#### **Esquema de Pasos para la Redacción Formal**

1. **Identificación:** Declarar con claridad la hipótesis \(p\) y la tesis \(q\) del enunciado original.
2. **Formulación del contrarrecíproco:** Escribir explícitamente el enunciado equivalente \(\neg q \to \neg p\).
3. **Desarrollo deductivo:** Suponer que la negación de la tesis (\(\neg q\)) es verdadera y deducir, mediante pasos algebraicos o lógicos justificados, la negación de la hipótesis (\(\neg p\)).
4. **Conclusión:** Concluir que, por la equivalencia del contrarrecíproco, la implicación \(p \to q\) queda demostrada.

---

### **2. Ejemplo Resuelto Paso a Paso (Demostración Formal)**

- **Proposición:** Sea \(n \in \mathbb{Z}\). Si \(n^2\) es un número par, entonces \(n\) es un número par.

#### **Desarrollo por el Método del Contrarrecíproco:**

- **Paso 1 (Identificación):**
    - Hipótesis (\(p\)): "\(n^2\) es par".
    - Tesis (\(q\)): "\(n\) es par".
- **Paso 2 (Enunciado del contrarrecíproco):**
    - Queremos probar la proposición equivalente \(\neg q \to \neg p\): _"Si \(n\) no es par (es impar), entonces \(n^2\) no es par (es impar)"_.
- **Paso 3 (Demostración deductiva de \(\neg q \implies \neg p\)):**
    1. Suponemos que \(n\) es un número impar (\(\neg q\)). Por definición de número impar, existe un entero \(k \in \mathbb{Z}\) tal que: \[n = 2k + 1\]
    2. Elevando ambos miembros al cuadrado para analizar \(n^2\): \[n^2 = (2k + 1)^2 = 4k^2 + 4k + 1 = 2(2k^2 + 2k) + 1\]
    3. Como \(k \in \mathbb{Z}\), la expresión \(m = 2k^2 + 2k\) es también un entero (\(m \in \mathbb{Z}\)). Sustituyendo: \[n^2 = 2m + 1\]
    4. Por definición de número impar, \(n^2\) es un número impar (\(\neg p\)).
- **Paso 4 (Conclusión):** Habiendo probado que \(\neg q \implies \neg p\) es una implicación verdadera, por la ley lógica de transposición queda demostrado que **si \(n^2\) es par, entonces \(n\) es par**. \(\blacksquare\)

---

### **3. Refutación mediante Contraejemplos**

#### **Fundamento Lógico**

En matemáticas, para probar que una afirmación general precedida por el cuantificador universal (\(\forall x \in C, P_x\)) es **falsa**, debemos probar que su negación es **verdadera**: \[\neg (\forall x \in C, P_x) \Longleftrightarrow \exists x \in C, \neg P_x\]

Esto demuestra que **basta encontrar un único elemento** \(x_0 \in C\) que no satisfaga la propiedad \(P\) para invalidar completamente el enunciado universal. Dicho elemento \(x_0\) se denomina **contraejemplo**.

#### **Esquema para la Redacción Formal de un Contraejemplo**

1. Identificar la proposición universal dada de la forma \(\forall x \in C, P(x)\).
2. Proponer un valor numérico o elemento concreto \(x_0\).
3. Verificarte explícitamente que \(x_0\) pertenece al conjunto/universo \(C\).
4. Evaluar la propiedad \(P(x_0)\) y mostrar algebraicamente que no se cumple (da como resultado el valor semántico \(0\)).

---

### **4. Ejemplo Resuelto de Contraejemplo**

- **Enunciado:** Determinar la veracidad o falsedad de la siguiente proposición: \[\forall x \in \mathbb{R}, \quad x \le x^2\]

#### **Resolución y Redacción Formal:**

- **Análisis:** La proposición afirma que el cuadrado de cualquier número real es siempre mayor o igual que el propio número.
- **Refutación (Búsqueda de contraejemplo):**
    1. La negación formal es \(\exists x \in \mathbb{R}, \quad x > x^2\).
    2. Tomemos como candidato el número real \(x_0 = \frac{1}{2}\).
    3. Comprobamos que \(x_0 \in \mathbb{R}\).
    4. Calculamos su cuadrado: \[x_0^2 = \left(\frac{1}{2}\right)^2 = \frac{1}{4}\]
    5. Evaluamos la desigualdad original para \(x_0\): \[\frac{1}{2} \le \frac{1}{4} \quad \text{(Falso, ya que } \frac{1}{2} > \frac{1}{4} \text{)}\]
- **Conclusión:** El elemento \(x_0 = \frac{1}{2}\) constituye un **contraejemplo**, por lo que la proposición universal \(\forall x \in \mathbb{R}, x \le x^2\) es **falsa** (\(0\)). \(\blacksquare\)

---

### **5. Resumen de Criterios de Redacción para el Examen de la UNED**

- **Escribe la ley utilizada:** Comienza con _"Demostración por el contrarrecíproco"_ e indica la equivalencia \((p \to q) \iff (\neg q \to \neg p)\).
- **Especifica los universos en los contraejemplos:** Comprueba siempre que el contraejemplo propuesto pertenece al conjunto sobre el que actúa el cuantificador.
- **Justifica la paridad o propiedades:** Define los conceptos formalmente (ej. \(n = 2k\) para par, \(n = 2k+1\) para impar con \(k \in \mathbb{Z}\)).

## Material de apoyo

- Presentación

![[Sesión10_Métodos_de_demostración_2.pptx]]
- Resumen de audio
![[Sesión10_Métodos_de_demostración_2.m4a]]
