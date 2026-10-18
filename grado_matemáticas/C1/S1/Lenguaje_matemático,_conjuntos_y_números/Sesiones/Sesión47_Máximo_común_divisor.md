# **SESIÓN 47 (TEORÍA): EL ALGORITMO DE LA DIVISIÓN Y EL MÁXIMO COMÚN DIVISOR**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 5: LOS NÚMEROS NATURALES Y LOS ENTEROS (Capítulo 5)  
**Objetivo:** Formalizar el **Teorema de la División Entera (o División Euclídea)** en el anillo de los números enteros $\mathbb{Z}$, demostrar analíticamente la **existencia y unicidad del cociente $q$ y del resto $r$**, dominar el cálculo de la división cuando el dividendo o el divisor son negativos respetando la condición estricta $0 \le r < |b|$, caracterizar la divisibilidad a través de la teoría de **ideales principales $n\mathbb{Z}$**, y definir algebraicamente el **Máximo Común Divisor (m.c.d.)** y el **Mínimo Común Múltiplo (m.c.m.)** mediante la suma e intersección de ideales.

---

### **1. Marco Teórico: El Teorema de la División Entera en $\mathbb{Z}$**

En el anillo íntegro de los números enteros $(\mathbb{Z}, +, \cdot)$, dados dos elementos $a, b \in \mathbb{Z}$ con $b \neq 0$, no siempre existe un entero $x \in \mathbb{Z}$ tal que $b \cdot x = a$ (es decir, la división exacta no es una operación interna). Sin embargo, se puede realizar la **división con resto**.

#### **Teorema 5.43 (Teorema de la División Entera o Euclídea):**

_Sean $a, b \in \mathbb{Z}$ dos números enteros con $b \neq 0$. Existen **únicos** números enteros $q, r \in \mathbb{Z}$ tales que:_

$$a = q \cdot b + r \quad \text{con} \quad 0 \le r < |b|$$

- **Vocabulario:** $a$ es el **dividendo**, $b$ es el **divisor**, $q$ es el **cociente entero** y $r$ es el **resto**.
- **Condición Clave del Resto:** El resto $r$ es obligatoriamente **un número no negativo estrictamente menor que el valor absoluto del divisor**: $$0 \le r < |b|$$

---

#### **Demostración Analítica Paso a Paso (Examen de Desarrollo UNED):**

Para simplificar la demostración, asumimos inicialmente $b > 0$ (el caso $b < 0$ se deduce tomando $|b|$):

1. **Demostración de Existencia:**
    
    - Consideramos el conjunto de múltiplos enteros de $b$ que no superan a $a$: $$A = {n \cdot b \in \mathbb{Z} \mid n \cdot b \le a \text{ con } n \in \mathbb{Z}}$$
    - **$A$ es No Vacío:** Si $a \ge 0$, tomando $n = 0$ tenemos $0 \cdot b = 0 \le a \implies 0 \in A$. Si $a < 0$, como $b \ge 1$, tomando $n = a$ tenemos $a \cdot b \le a \implies ab \in A$.
    - **$A$ está Acotado Superiormente:** Todo elemento $x \in A$ cumple $x \le a$, por lo que $a$ es cota superior de $A$.
    - Por la propiedad del orden de $\mathbb{Z}$ (Proposición 5.41: todo subconjunto de $\mathbb{Z}$ no vacío y acotado superiormente posee elemento máximo), existe un entero $q \in \mathbb{Z}$ tal que su múltiplo $m = q \cdot b$ es el **elemento máximo de $A$**: $$q \cdot b \le a \quad \land \quad (q + 1) \cdot b > a$$
    - Definimos el resto como $r = a - q \cdot b$.  
        De $q \cdot b \le a \implies r = a - q \cdot b \ge 0$.  
        De $(q + 1) \cdot b > a \implies qb + b > a \implies b > a - qb = r \implies r < b$.
    - Por tanto, existen $q, r \in \mathbb{Z}$ tales que $a = qb + r$ con $0 \le r < b$.
1. **Demostración de Unicidad:**
    
    - Supongamos por contradicción que existen dos parejas de cocientes y restos $(q, r)$ y $(q', r')$ que cumplen las condiciones del teorema: $$a = qb + r \quad (0 \le r < b) \quad \land \quad a = q'b + r' \quad (0 \le r' < b)$$
    - Igualando ambas expresiones y restando: $$qb + r = q'b + r' \implies b(q - q') = r' - r$$
    - Dado que $0 \le r < b$ y $0 \le r' < b$, estimamos el valor de la diferencia $-b < r' - r < b$.
    - Por consiguiente, $r' - r$ es un múltiplo de $b$ contenido en el intervalo abierto $(-b, b)$. El único múltiplo entero de $b$ estrictamente entre $-b$ y $b$ es el cero: $$r' - r = 0 \implies r = r'$$
    - Sustituyendo $r' - r = 0$ en $b(q - q') = 0$, como por hipótesis $b \neq 0$, se deduce que $q - q' = 0 \implies q = q'$.
    - Concluimos que el cociente $q$ y el resto $r$ son **únicos**. $\blacksquare$

---

### **2. Manejo Práctico con Dividendos y Divisores Negativos**

En los exámenes presenciales de la UNED es muy frecuente plantear divisiones enteras donde el dividendo o el divisor son negativos. El error más común de los estudiantes consiste en dejar restos negativos, lo cual invalida el ejercicio.

#### **Regla Práctica del Texto Base (Delgado Pineda & Muñoz Bouzo):**

Si la división directa produce un resto negativo $r < 0$, debemos **sumar el divisor en el resto y compensarlo restando $1$ en el cociente**:

1. **Caso $a = 14, b = 3$ (Positivos):**  
    $14 = 4 \cdot 3 + 2 \implies \mathbf{q = 4, r = 2}$ (cumple $0 \le 2 < 3$).
2. **Caso $a = 14, b = -3$ (Divisor Negativo):**  
    $14 = (-4) \cdot (-3) + 2 \implies \mathbf{q = -4, r = 2}$ (cumple $0 \le 2 < |-3| = 3$).
3. **Caso $a = -14, b = 3$ (Dividendo Negativo):**  
    Si hacemos $-14 = (-4) \cdot 3 - 2$, el resto $-2$ es negativo e **incorrecto**.  
    Sumamos y restamos el divisor $3$: $$-14 = (-4) \cdot 3 - 3 + 3 - 2 = (-4 - 1) \cdot 3 + (3 - 2) = (-5) \cdot 3 + 1$$ Por lo tanto: $\mathbf{q = -5, r = 1}$ (cumple $0 \le 1 < 3$).
4. **Caso $a = -14, b = -3$ (Ambos Negativos):**  
    Usamos la expresión anterior adaptando el signo del divisor: $$-14 = 5 \cdot (-3) + 1 \implies \mathbf{q = 5, r = 1}$$

---

### **3. Divisibilidad y Subgrupos/Ideales en $\mathbb{Z}$**

#### **A. Definición Formal de Divisibilidad (Definición 5.40)**

Sean $a, b \in \mathbb{Z}$. Se dice que **$b$ divide a $a$** (o que **$a$ es múltiplo de $b$**), y se denota por **$b \mid a$**, si existe un entero $k \in \mathbb{Z}$ tal que:

$$a = k \cdot b \iff a \in b\mathbb{Z} \iff a\mathbb{Z} \subseteq b\mathbb{Z}$$

- **Propiedades Inmediatas:**
    - El $0$ es divisible por cualquier número entero ($b \mid 0$ pues $0 = 0 \cdot b$).
    - $1$ y $-1$ son divisores de cualquier número entero.
    - $b \mid a \iff -b \mid a \iff b \mid -a$.

#### **B. Caracterización de Ideales y Subgrupos de $\mathbb{Z}$ (Ejercicio 5.44)**

Por la Proposición probada en la Sesión 40, todo subgrupo del grupo aditivo $(\mathbb{Z}, +)$ es de la forma $n\mathbb{Z}$ para algún $n \in \mathbb{N}$. En la teoría de anillos:

> **Teorema:** _Todo ideal de $(\mathbb{Z}, +, \cdot)$ es un **ideal principal**, es decir, es de la forma $I = (n) = n\mathbb{Z} = {kn \mid k \in \mathbb{Z}}$ para un único $n \in \mathbb{N}$._

---

### **4. Máximo Común Divisor (m.c.d.) y Mínimo Común Múltiplo (m.c.m.) vía Ideales**

La fundamentación algebraica moderna de la UNED introduce el m.c.d. y el m.c.m. a través de las operaciones con ideales principales:

#### **A. Mínimo Común Múltiplo (m.c.m.) como Intersección de Ideales (Teorema 5.45)**

Sean $a, b \in \mathbb{N}^*$. La intersección de los ideales principales $a\mathbb{Z}$ y $b\mathbb{Z}$ es la colección de todos los múltiplos comunes de $a$ y $b$.  
Dado que la intersección de ideales es un ideal de $\mathbb{Z}$, debe ser un ideal principal:

$$a\mathbb{Z} \cap b\mathbb{Z} = m\mathbb{Z} \quad \text{con } m \in \mathbb{N}^*$$

- Dicho entero positivo único $m$ se define como el **Mínimo Común Múltiplo**: **$m = \text{mcm}(a, b)$**.

---

#### **B. Máximo Común Divisor (m.c.d.) como Suma de Ideales (Teorema 5.46)**

Sean $a, b \in \mathbb{N}^*$. La suma de los ideales principales $a\mathbb{Z} + b\mathbb{Z} = {a \cdot u + b \cdot v \mid u, v \in \mathbb{Z}}$ es a su vez un ideal principal de $\mathbb{Z}$:

$$a\mathbb{Z} + b\mathbb{Z} = d\mathbb{Z} \quad \text{con } d \in \mathbb{N}^*$$

- Dicho entero positivo único $d$ se define como el **Máximo Común Divisor**: **$d = \text{mcd}(a, b)$**.
- **Caracterización Clave de $d = \text{mcd}(a, b)$:**
    1. $d$ es un divisor común de $a$ y $b$ ($d \mid a$ y $d \mid b$).
    2. Si $c \in \mathbb{Z}$ es cualquier otro divisor común de $a$ y $b$, entonces $c$ divide a $d$ ($c \mid d$).

---

#### **C. Relación Fundamental entre m.c.d. y m.c.m. (Ejercicio 21 del Capítulo 5)**

_Para cualesquiera dos números enteros no nulos $a, b \in \mathbb{N}^*$, el producto de su máximo común divisor por su mínimo común múltiplo coincide con el producto de sus valores absolutos:*

$$\text{mcd}(a, b) \cdot \text{mcm}(a, b) = a \cdot b$$

---

### **5. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Efectuar la división entera calculando explícitamente el cociente $q$ y el resto $r$ en los siguientes casos:  
    a) $a = 345, b = 23$  
    b) $a = -345, b = 23$  
    c) $a = -345, b = -23$
2. **Ejercicio 2 (Ejercicio 5.44.2 del texto base):** Demostrar que todo subgrupo $G$ del grupo aditivo $(\mathbb{Z}, +)$ es de la forma $G = n\mathbb{Z}$ para algún $n \in \mathbb{N}$ aplicando el algoritmo de la división entera sobre el elemento positivo mínimo de $G$.
3. **Ejercicio 3 (Ejercicio 20 del Capítulo 5):** Sean $a, b \in \mathbb{N}^*$. Demostrar que si $q$ y $r$ son el cociente y el resto de la división entera de $a$ entre $b$, entonces para todo $n \in \mathbb{N}^*$, $q$ y $n \cdot r$ son el cociente y el resto de la división entera de $n \cdot a$ entre $n \cdot b$.

---

### **6. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Consideramos la división entera del número $a = -23$ entre $b = 5$ según el Teorema de la División Entera en $\mathbb{Z}$ ($a = q \cdot b + r$). ¿Cuáles son los valores correctos y únicos del cociente $q$ y del resto $r$?

- **A)** $q = -4$ y $r = -3$
- **B)** $q = -5$ y $r = 2$
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - El Teorema 5.43 exige de forma estricta que el resto satisfaga la condición **$0 \le r < |b|$**.
> - La opción A propone $-23 = (-4) \cdot 5 + (-3)$, pero el resto $r = -3 < 0$ viola el teorema.
> - Ajustando el cociente: $-23 = (-5) \cdot 5 + 2$. Como el resto $r = 2$ cumple estrictamente $0 \le 2 < 5$, el cociente es **$q = -5$** y el resto es **$r = 2$**.
> - Por lo tanto, la opción **B** es la **correcta**.

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión47_Máximo_común_divisor.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con la jerarquía del Bloque 5, recuadros normativos para el Teorema de la División Entera, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, ejemplos prácticos de cociente y resto con números negativos, la caracterización de m.c.d. y m.c.m. vía ideales y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión47_Máximo_común_divisor.m4a): Enfocado en la necesidad de la división no exacta en el anillo íntegro $\mathbb{Z}$, el enunciado y demostración analítica del Teorema de la División Entera ($a = qb + r$ con $0 \le r < |b|$), la regla del resto estrictamente no negativo al trabajar con enteros negativos, la caracterización de la divisibilidad mediante ideales principales $n\mathbb{Z}$, las definiciones algebraicas de m.c.d. y m.c.m., y los criterios de redacción para el examen presencial de desarrollo de la UNED.

---
