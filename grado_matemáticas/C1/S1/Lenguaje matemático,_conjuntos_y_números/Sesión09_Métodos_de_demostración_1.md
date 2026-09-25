# **SESIÓN 9 (TEORÍA): MÉTODOS DE DEMOSTRACIÓN I: DEDUCCIÓN DIRECTA Y REDUCCIÓN AL ABSURDO**

**Duración:** 45 minutos  
**Objetivo:** Comprender la estructura lógica de las demostraciones matemáticas formales, dominando tanto el razonamiento por **deducción directa** como el método de **reducción al absurdo**, con vistas a la redacción precisa exigida en el examen de desarrollo.

---

### **0. La Estructura de un Teorema Matemático**

#### Presentación de resultados en matemáticas

Establece la jerarquía del conocimiento matemático:

- **Definición:** Sentencia bien formada que describe directamente un objeto o sus propiedades características.
- **Teorema:** Enunciado demostrado de gran relevancia y utilidad práctica dentro de una teoría.
- **Proposición:** Enunciado demostrado de utilidad práctica pero de menor jerarquía o alcance que un teorema.
- **Lema:** Resultado intermedio previo que facilita la demostración de un teorema o proposición.
- **Corolario:** Resultado que se deduce con relativa facilidad e inmediata consecuencia de un teorema.
- **Conjetura / Hipótesis:** Afirmación que se presume cierta pero que aún no ha sido demostrada formalmente (como la _Conjetura de Goldbach_ o la _Conjetura de Poincaré_).

#### Estructura

En matemáticas, el conocimiento se organiza mediante **definiciones** y **teoremas** (o proposiciones, lemas y corolarios).

- **Hipótesis ($P$):** Es el conjunto de premisas o condiciones iniciales que se asumen como verdaderas.
- **Tesis o Conclusión ($Q$):** Es el resultado que se pretende demostrar a partir de las hipótesis.
- **Demostración:** Es la cadena finita de argumentos lógicos válidos que establece la veracidad de la implicación $P \Rightarrow Q$.
---

### **1. Método 1: Deducción Directa**

#### **Fundamento Lógico**

El método deductivo directo se fundamenta en la **ley del silogismo hipotético** o transitividad del condicional: $[(P \to R) \land (R \to Q)] \Rightarrow (P \to Q)$ Así como en las reglas de inferencia clásicas como el **Modus Ponendo Ponens** ($[(P \to Q) \land P] \Rightarrow Q$).

#### **Procedimiento**

1. **Punto de partida:** Se asume que el antecedente o hipótesis $P$ es verdadero ($P = 1$).
2. **Pasos intermedios:** Se aplican axiomas, definiciones previamente establecidas o teoremas ya demostrados para deducir una serie de proposiciones verdaderas intermedias: $P \Rightarrow R_1 \Rightarrow R_2 \Rightarrow \dots \Rightarrow Q$.
3. **Conclusión:** Se alcanza de forma directa la tesis $Q$, concluyendo que $Q$ es verdadera ($Q = 1$).

---

### **2. Método 2: Reducción al Absurdo (_Reductio ad Absurdum_)**

#### **Fundamento Lógico**

Se basa en la **ley de reducción al absurdo**, respaldada por el principio del tercio excluso y la ley de contradicción: $\neg P \to (Q \land \neg Q) \Longleftrightarrow P$ Esta ley establece que si al suponer falsa una proposición $P$ se deduce una contradicción ($Q \land \neg Q$), entonces la proposición $P$ debe ser necesariamente verdadera.

#### **Procedimiento en 3 Pasos**

1. **Suposición inicial:** Se supone que la tesis o proposición que se quiere demostrar es **falsa** (se asume $\neg P$).
2. **Deducción de la contradicción:** Razonando de forma lógica a partir de las hipótesis y de la suposición $\neg P$, se llega a una proposición manifiestamente imposible o contradictoria de la forma $Q \land \neg Q$ (un valor semántico $0$).
3. **Conclusión:** Como un sistema matemático consistente no puede albergar contradicciones, la suposición de que $P$ era falsa es errónea. Por lo tanto, $P$ es **verdadera**.

---

#### **Ejemplo Clásico del Texto Base: Irracionalidad de $\sqrt{2}$**

A continuación se detalla la demostración por reducción al absurdo presentada por Delgado Pineda y Muñoz Bouzo:

- **Enunciado:** Probar que $\sqrt{2}$ es un número irracional.
- **Demostración paso a paso:**
    1. **Paso 1 (Suposición de falsedad):** Supongamos por absurdo que $\sqrt{2}$ **no es irracional**, es decir, que es un número racional. Por definición de número racional, existen dos enteros $a, b \in \mathbb{Z}$ con $b \neq 0$ tales que: $\sqrt{2} = \frac{a}{b} \quad \text{con } \gcd(a, b) = 1 \quad (\text{fracción irreducible})$
    2. **Paso 2 (Desarrollo algebraico):** Elevando ambos miembros al cuadrado: $2 = \frac{a^2}{b^2} \implies a^2 = 2b^2$ Esto indica que $a^2$ es un número par. Por las propiedades de los enteros, si el cuadrado de un número es par, el propio número es par, luego $a = 2k$ para algún $k \in \mathbb{Z}$.
    3. **Paso 3 (Sustitución y deducción de paridad para $b$):** Sustituyendo $a = 2k$ en la igualdad anterior: $(2k)^2 = 2b^2 \implies 4k^2 = 2b^2 \implies b^2 = 2k^2$ De aquí se deduce que $b^2$ también es par, y por ende $b$ debe ser par.
    4. **Paso 4 (Contradicción):** Si tanto $a$ como $b$ son números pares, ambos son divisibles por $2$. Esto significa que $\gcd(a, b) \ge 2$, lo cual contradice directamente la hipótesis de que la fracción $\frac{a}{b}$ era irreducible ($\gcd(a, b) = 1$).
    5. **Conclusión:** Dado que la suposición ha conducido a una contradicción ($1 \neq 1$), concluimos que la hipótesis de que $\sqrt{2}$ es racional es falsa. Por tanto, **$\sqrt{2}$ es un número irracional**.

---

### **5. Consejos de Redacción para el Examen de Desarrollo (UNED)**

Para obtener la máxima puntuación en los problemas de demostración del examen presencial:

1. **Declara explícitamente el método utilizado:** Comienza tu respuesta escribiendo _"Demostración por deducción directa"_ o _"Demostración por reducción al absurdo"_.
2. **Identifica las partes:** Escribe con claridad las **Hipótesis ($H$)** y la **Tesis ($T$)**.
3. **Justifica cada paso:** No te limites a poner fórmulas; acompaña cada igualdad o implicación de su razón lógica (ej. _"por definición de número par"_, _"por la ley del modus ponens"_, _"por elevación al cuadrado"_).

## Material de apoyo

- Presentación
![[Sesión09_Métodos_de_demostración_1.pptx]]
- Audio
![[Sesión09_Métodos_de_demostración_1.m4a]]