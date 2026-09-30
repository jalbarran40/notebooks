
# **SESIÓN 11 (PRÁCTICA): RESOLUCIÓN DE EJERCICIOS PROPUESTOS DEL CAPÍTULO 1 (REDACCIÓN FORMAL DE DEMOSTRACIONES)**

**Duración:** 45 minutos  
**Objetivo:** Dominar la resolución y redacción escrita de problemas sobre lógica proposicional y métodos de demostración (deducción directa, reducción al absurdo, contrarrecíproco, contraejemplos y forma clausulada), aplicando los criterios formales de corrección de la UNED.

---

### **1. Criterios Clave de Redacción para el Examen de Desarrollo**

En la prueba presencial de desarrollo se evaluará la claridad, la precisión y la justificación lógica de cada argumento. Recuerda aplicar siempre esta estructura:

1. **Declaración explícita del método:** Iniciar la respuesta indicando la estrategia (_"Demostración por reducción al absurdo"_, _"Demostración por el contrarrecíproco"_, etc.).
2. **Definición de premisas:** Identificar claramente las **Hipótesis ($H$)** y la **Tesis ($T$)**.
3. **Justificación paso a paso:** No realizar saltos algebraicos sin indicar la regla o propiedad lógica aplicada (ej. _"por definición de número par"_, _"por Modus Ponens"_, _"por Leyes de Morgan"_).
4. **Respeto a la notación oficial:** Emplear proposiciones atómicas $p, q, r$, conectores $(\neg, \land, \lor, \to, \leftrightarrow)$ y valores semánticos ${1, 0}$.

---

### **2. Batería de Ejercicios Resueltos con Redacción Formal**

#### **Ejercicio 1: Deducción Directa y Transitividad Lógica**

**Enunciado:** Demostrar que si las condicionales $p \to q$ y $q \to r$ son verdaderas, entonces la proposición compuesta $(p \land s) \to r$ es verdadera para cualquier proposición $s$.

- **Demostración por Deducción Directa:**
    1. **Hipótesis ($H$):** Asumimos como verdaderas las implicaciones $p \to q = 1$ y $q \to r = 1$.
    2. **Análisis del antecedente:** Queremos determinar el valor de la condicional principal $(p \land s) \to r$. Supongamos que su antecedente es verdadero, es decir, $p \land s = 1$. NOTA: Si el antecedente es falso, la implicación siempre es verdadera
    3. **Paso 1 (Simplificación de la conjunción):** Si la conjunción $p \land s$ es verdadera ($1$), por la regla de simplificación necesariamente $p = 1$ (y $s = 1$).
    4. **Paso 2 (Inferencia intermedia):** Dado que $p = 1$ y sabemos por hipótesis que $p \to q = 1$, aplicando la regla de inferencia **Modus Ponendo Ponens** deducimos que $q = 1$.
    5. **Paso 3 (Inferencia final):** Dado que $q = 1$ y sabemos por hipótesis que $q \to r = 1$, aplicando nuevamente el **Modus Ponendo Ponens** deducimos que $r = 1$.
    6. **Conclusión:** Habiendo demostrado que al ser verdadero el antecedente ($p \land s = 1$) el consecuente resulta ser necesariamente verdadero ($r = 1$), se concluye que la implicación **$(p \land s) \to r$ es verdadera ($1$)**. $\blacksquare$

---

#### **Ejercicio 2: Reducción al Absurdo (_Reductio ad Absurdum_)**

**Enunciado:** Sea $n \in \mathbb{Z}$. Demostrar que si $n^2 + 5$ es un número impar, entonces $n$ es un número par.

- **Demostración por Reducción al Absurdo:**
    1. **Hipótesis ($H$):** $n^2 + 5$ es un número entero impar.
    2. **Tesis ($T$):** $n$ es un número par.
    3. **Suposición de falsedad ($\neg T$):** Supongamos por absurdo que $n$ **no es par**, es decir, que $n$ es un número **impar**.
    4. **Desarrollo algebraico:** Por definición de entero impar, existe un entero $k \in \mathbb{Z}$ tal que $n = 2k + 1$. Sustituyendo este valor en la expresión $n^2 + 5$: \[n^2 + 5 = (2k + 1)^2 + 5 = (4k^2 + 4k + 1) + 5 = 4k^2 + 4k + 6 = 2(2k^2 + 2k + 3)\]
    5. **Deducción de la contradicción:** Dado que $k \in \mathbb{Z}$, la expresión $m = 2k^2 + 2k + 3$ pertenece a $\mathbb{Z}$. Por tanto, $n^2 + 5 = 2m$, lo que por definición implica que $n^2 + 5$ es un número **par**.
    6. **Conclusión:** Hemos deducido que $n^2 + 5$ es par, lo cual entra en **contradicción directa** con la hipótesis inicial de que $n^2 + 5$ es impar ($1 \land 0 \equiv 0$). Por tanto, la suposición de que $n$ era impar es errónea, concluyendo que **$n$ es un número par**. $\blacksquare$

---

#### **Ejercicio 3: Demostración por el Contrarrecíproco (Transposición)**

**Enunciado:** Sea $x \in \mathbb{Z}$. Demostrar que si $x^2 - 1$ no es divisible por $4$, entonces $x$ es un número par.

- **Demostración por el Contrarrecíproco:**
    1. **Estructura del enunciado:** Identificamos $p \equiv \text{"}x^2 - 1 \text{ no es divisible por } 4\text{"}$ y $q \equiv \text{"}x \text{ es par"}$. Nos piden probar $p \to q$.
    2. **Formulación del contrarrecíproco ($\neg q \to \neg p$):** Por la ley de transposición $(p \to q) \iff (\neg q \to \neg p)$, demostraremos la proposición equivalente: _"Si $x$ es un número impar ($\neg q$), entonces $x^2 - 1$ es divisible por $4$ ($\neg p$)"_.
    3. **Desarrollo deductivo:** Suponemos que $x$ es impar, luego existe $k \in \mathbb{Z}$ tal que $x = 2k + 1$. Evaluamos la expresión $x^2 - 1$: \[x^2 - 1 = (2k + 1)^2 - 1 = 4k^2 + 4k + 1 - 1 = 4k^2 + 4k = 4(k^2 + k)\]
    4. **Análisis de divisibilidad:** Como $k^2 + k \in \mathbb{Z}$, el número $x^2 - 1$ es un múltiplo entero de $4$, lo que significa que $x^2 - 1$ **es divisible por $4$** ($\neg p$).
    5. **Conclusión:** Habiendo demostrado que $\neg q \implies \neg p$, por la ley de transposición queda probado que **si $x^2 - 1$ no es divisible por $4$, entonces $x$ es par**. $\blacksquare$

---

#### **Ejercicio 4: Refutación mediante Contraejemplo**

**Enunciado:** Determinar la veracidad o falsedad de la proposición: $\forall x \in \mathbb{R}, ; x^2 + 1 > 2x$.

- **Resolución mediante Contraejemplo:**
    1. **Análisis:** La proposición afirma que la desigualdad se cumple para **todos** los números reales.
    2. **Negación formal:** La negación de un enunciado universal es un existencial: $\exists x \in \mathbb{R}, ; x^2 + 1 \le 2x$.
    3. **Elección del candidato:** Proponemos como contraejemplo el valor $x_0 = 1$.
    4. **Comprobación de condiciones:**
        - Verificamos que $x_0 = 1 \in \mathbb{R}$.
        - Evaluamos el miembro izquierdo: $x_0^2 + 1 = 1^2 + 1 = 2$.
        - Evaluamos el miembro derecho: $2x_0 = 2(1) = 2$.
        - La desigualdad $2 > 2$ es **falsa** ($0$), ya que $2 = 2$.
    5. **Conclusión:** El elemento $x_0 = 1$ es un **contraejemplo** válido, lo que demuestra que la proposición universal dada es **falsa** ($0$). $\blacksquare$

---

### **3. Ejercicios Propuestos para Trabajo Personal (45 min)**

Te recomiendo resolver en papel los siguientes dos ejercicios aplicando la misma estructura de redacción antes de pasar al Bloque 2:

1. **Ejercicio de Reducción al Absurdo:** Demostrar que no existen enteros $a, b \in \mathbb{Z}$ tales que $6a + 15b = 1$. _(Pista: Analizar la divisibilidad por $3$ en el miembro izquierdo)_.
2. **Ejercicio de Forma Clausulada:** Obtener la Forma Normal Conjuntiva (FNC) redactando cada paso de la proposición $[(p \lor q) \to r] \land \neg r$.

## Contenidos de soporte
- [**Presentación**](Sesión11_Resolución_ejercicios_capítulo_1.pptx)
- [**Resumen de audio**](Sesión11_Resolución_ejercicios_capítulo_1.m4a)
