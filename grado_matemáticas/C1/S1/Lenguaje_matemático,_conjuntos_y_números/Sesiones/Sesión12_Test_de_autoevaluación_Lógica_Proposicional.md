# **SESIÓN 12 (SEGUIMIENTO): TEST DE AUTOEVALUACIÓN SOBRE LÓGICA PROPOSICIONAL (PREPARATORIO PARA LA PEC)**

**Duración:** 45 minutos  
**Objetivo:** Evaluar el nivel de comprensión de todos los conceptos del **Bloque 1 (Capítulo 1: Nociones de Lógica)**, familiarizándose con la estructura de preguntas de selección múltiple, el sistema de penalización y las estrategias de resolución para la **Prueba de Evaluación Continua (PEC)** del 15 de diciembre.

---

### **1. Estructura y Criterios de Evaluación de la PEC**

De acuerdo con la guía oficial de la asignatura:

- **Fecha y formato:** La PEC se celebrará el **15 de diciembre** mediante un cuestionario en línea de **5 preguntas tipo test** sobre los capítulos 1 al 6.
- **Sistema de puntuación:**
    - **+2 puntos** por cada respuesta correcta.
    - **-1 punto** por cada respuesta incorrecta.
    - **0 puntos** por respuesta no contestada (en blanco).
- **Opciones de respuesta:** Cada pregunta contiene **3 opciones** ($A$, $B$ y $C$), donde la opción $C$ suele ser _"Ninguna de las anteriores"_ (o _"Ninguna de las otras respuestas"_).

---

### **2. Cuestionario de Autoevaluación del Bloque 1 (10 Preguntas)**

#### **Pregunta 1: Definición de Proposición y Predicado**

¿Cuál de las siguientes expresiones constituye una **proposición lógica simple** con un valor semántico bien definido?

- **A)** _"El número natural $x$ es primo."_
- **B)** _"El número $9$ es el cubo de $3$."_
- **C)** Ninguna de las anteriores.

> **Solución: B.**  
> **Razonamiento:** La expresión B atribuye una propiedad a un objeto concreto ($9$), por lo que es una proposición simple cuya veracidad o falsedad se evalúa sin ambigüedad (en este caso tiene valor semántico $0$ o falso, pues $3^3 = 27$). La opción A es un predicado lógico dependiente de la variable $x$, no una proposición atómica.

---

#### **Pregunta 2: Interpretación del Conector Disyunción**

Dadas las proposiciones atómicas $p$ y $q$, la expresión $p \lor q$ toma el valor semántico $0$ si y solo si:

- **A)** Al menos una de las dos proposiciones toma el valor $0$.
- **B)** Ambas proposiciones $p$ y $q$ toman el valor $0$.
- **C)** Ninguna de las anteriores.

> **Solución: B.**  
> **Razonamiento:** En la lógica proposicional oficial, el símbolo $\lor$ representa la **disyunción inclusiva**, la cual es verdadera ($1$) si al menos una de las proposiciones componentes es verdadera, y es falsa ($0$) **únicamente cuando ambas proposiciones son falsas** ($p = 0$ y $q = 0$).

---

#### **Pregunta 3: Condicionales Asociados**

Dada la proposición condicional $p \to q$, su **condicional contrarrecíproco** es:

- **A)** $q \to p$
- **B)** $\neg p \to \neg q$
- **C)** Ninguna de las anteriores.

> **Solución: C.**  
> **Razonamiento:** El condicional contrarrecíproco de $p \to q$ es **$\neg q \to \neg p$**. La opción A corresponde al condicional _recíproco_ y la opción B al condicional _contrario_. Por tanto, la respuesta correcta por eliminación es la opción C (_"Ninguna de las anteriores"_).

---

#### **Pregunta 4: Tablas de Verdad Complejas**

¿Cuántas filas de combinaciones de verdad son necesarias en la tabla de verdad de una proposición compuesta formada por $4$ variables proposicionales atómicas distintas?

- **A)** $8$ filas.
- **B)** $16$ filas.
- **C)** Ninguna de las anteriores.

> **Solución: B.**  
> **Razonamiento:** El número de filas o asignaciones semánticas posibles para una proposición de $n$ variables bivalentes viene dado por la fórmula $2^n$. Para $n = 4$, la tabla requiere $2^4 = 16$ filas.

---

#### **Pregunta 5: Leyes de Morgan**

La negación formal de la fórmula proposicional $\neg p \lor (q \land r)$ es equivalente a:

- **A)** $p \land (\neg q \lor \neg r)$
- **B)** $p \lor (\neg q \land \neg r)$
- **C)** Ninguna de las anteriores.

> **Solución: A.**  
> **Razonamiento:** Aplicando la primera ley de Morgan sobre la disyunción principal $\neg[\neg p \lor (q \land r)] \equiv \neg(\neg p) \land \neg(q \land r)$. Aplicando la ley de doble negación $\neg(\neg p) \equiv p$ y la segunda ley de Morgan sobre el paréntesis $\neg(q \land r) \equiv \neg q \lor \neg r$, obtenemos **$p \land (\neg q \lor \neg r)$**.

---

#### **Pregunta 6: Tautologías Lógicas**

¿Cuál de las siguientes fórmulas proposicionales constituye una **tautología** (valor semántico $1$ en todos los casos)?

- **A)** $p \land \neg p$
- **B)** $p \to (p \lor q)$
- **C)** Ninguna de las anteriores.

> **Solución: B.**  
> **Razonamiento:** La opción A es la Ley de contradicción, cuyo valor es siempre $0$. Para la opción B, si $p = 1$, el consecuente $(1 \lor q) = 1$, luego $1 \to 1 \equiv 1$; si $p = 0$, un condicional con antecedente falso es siempre verdadero ($0 \to X \equiv 1$). Por tanto, $p \to (p \lor q)$ es siempre verdadera ($1$).

---

#### **Pregunta 7: Forma Clausulada (Forma Normal Conjuntiva)**

La **forma clausulada** de la implicación $p \to (q \land r)$ viene dada por la expresión:

- **A)** $(\neg p \lor q) \land (\neg p \lor r)$
- **B)** $(\neg p \land q) \lor (\neg p \land r)$
- **C)** Ninguna de las anteriores.

> **Solución: A.**  
> **Razonamiento:** Eliminando el condicional mediante la equivalencia $A \to B \equiv \neg A \lor B$, obtenemos $\neg p \lor (q \land r)$. Aplicando la propiedad distributiva de la disyunción respecto a la conjunción: **$(\neg p \lor q) \land (\neg p \lor r)$**, la cual es una conjunción de disyunciones (cláusulas).

---

#### **Pregunta 8: Ley de Reducción al Absurdo**

El fundamento del método de demostración por reducción al absurdo para probar la veracidad de la proposición $P$ consiste en demostrar la tautología:

- **A)** $(P \to Q) \land (Q \to P) \iff 1$
- **B)** $\neg P \to (Q \land \neg Q) \iff P$
- **C)** Ninguna de las anteriores.

> **Solución: B.**  
> **Razonamiento:** La ley de reducción al absurdo establece formalmente que si al suponer falsa la tesis ($\neg P$) deducimos una contradicción manifestada como una conjunción de un enunciado y su negación ($Q \land \neg Q \equiv 0$), la proposición original $P$ queda demostrada como verdadera ($1$).

---

#### **Pregunta 9: Método del Contrarrecíproco**

Para demostrar mediante el método del contrarrecíproco la implicación _"Si $x^2 - 1$ no es divisible por $4$, entonces $x$ es par"_, la hipótesis de trabajo inicial debe ser:

- **A)** Suponer que $x^2 - 1$ es divisible por $4$.
- **B)** Suponer que $x$ es un número impar.
- **C)** Ninguna de las anteriores.

> **Solución: B.**  
> **Razonamiento:** Por la ley de transposición $(p \to q) \iff (\neg q \to \neg p)$, el método del contrarrecíproco consiste en **negar la tesis ($\neg q$)** para deducir la negación de la hipótesis ($\neg p$). Como la tesis es _"x es par"_, la hipótesis de partida es su negación: _"x es impar"_.

---

#### **Pregunta 10: Refutación mediante Contraejemplos**

Para refutar y demostrar la falsedad del enunciado universal $\forall x \in \mathbb{R}, ; x \le x^2$, es suficiente presentar como **contraejemplo**:

- **A)** El número real $x_0 = 2$.
- **B)** El número real $x_0 = \frac{1}{2}$.
- **C)** Ninguna de las anteriores.

> **Solución: B.**  
> **Razonamiento:** Para refutar $\forall x P(x)$ se debe probar la existencia de un elemento $\exists x_0$ tal que $P(x_0)$ sea falso. Evaluando en $x_0 = \frac{1}{2} \in \mathbb{R}$: $(\frac{1}{2})^2 = \frac{1}{4}$. Como $\frac{1}{2} \le \frac{1}{4}$ es falso ($\frac{1}{2} > \frac{1}{4}$), la proposición queda refutada.

---

## Material de apoyo

### [**Presentación**](Presentaciones/Sesión12_Test_de_autoevaluación_Lógica_Proposicional.pptx)

De acuerdo con el _Manual_de_Estilo_Presentaciones_ de la asignatura, a continuación se detalla la maquetación exacta diapositiva por diapositiva:

- **Diapositiva 1: Portada e Identificación**
    - **Encabezado:** BLOQUE 1. Sesión 12: Test de autoevaluación sobre lógica proposicional.
    - **Título:** Test de Autoevaluación y Seguimiento: Capítulo 1 (Nociones de Lógica).
    - **Subtítulo:** Preparación práctica para la Prueba de Evaluación Continua (PEC).
- **Diapositiva 2: Objetivos de Aprendizaje y Criterios PEC**
    - **Objetivos:** Validar el dominio del lenguaje proposicional, tablas de verdad, equivalencias y métodos de demostración.
    - **Recuadro destacado:** Normativa de la PEC (15 de diciembre, 5 preguntas, $+2$ acierto, $-1$ fallo, opción $C$: _"Ninguna de las anteriores"_).
- **Diapositiva 3: Módulo I - Proposiciones y Conectores Bivalentes**
    - Presentación visual de las Preguntas 1 y 2 del test.
    - Soluciones justificadas con la notación oficial ${1, 0}$.
- **Diapositiva 4: Módulo II - Condicionales Asociados y Tablas de Verdad**
    - Presentación visual de las Preguntas 3 y 4.
    - Resaltado especial de la diferencia entre recíproco ($q \to p$), contrario ($\neg p \to \neg q$) y contrarrecíproco ($\neg q \to \neg p$).
- **Diapositiva 5: Módulo III - Leyes Lógicas y Tautologías**
    - Presentación visual de las Preguntas 5 y 6.
    - Tabla resumen de las Leyes de Morgan y reglas de sustitución.
- **Diapositiva 6: Módulo IV - Forma Clausulada y Algoritmo FNC**
    - Presentación visual de la Pregunta 7.
    - Esquema del algoritmo de 4 pasos para la extracción de la Forma Normal Conjuntiva.
- **Diapositiva 7: Módulo V - Métodos de Demostración I y II**
    - Presentación visual de las Preguntas 8 y 9.
    - Cuadro comparativo entre Reducción al Absurdo y Método del Contrarrecíproco.
- **Diapositiva 8: Módulo VI - Cuantificadores y Refutación por Contraejemplo**
    - Presentación visual de la Pregunta 10.
    - Esquema de la negación de cuantificadores $\neg(\forall x P_x) \equiv \exists x \neg P_x$.
- **Diapositiva 9: Recomendaciones Estratégicas para la PEC**
    - Recomendaciones sobre la gestión del riesgo: _Responder únicamente cuando se esté seguro del desarrollo analítico para evitar la penalización de $-1$ punto_.
    - Cierre del Bloque 1 y preparación para el inicio del **Bloque 2: Conjuntos (Sesión 13)**.

### [**Resumen de audio**](Audios/Sesión12_Test_de_autoevaluación_Lógica_Proposicional.m4a)

