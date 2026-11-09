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

Expresión completa:
$$\forall a \in \mathbb{Z}, \; \forall b \in \mathbb{Z} \setminus \{0\}, \; \exists! (q, r) \in \mathbb{Z} \times \mathbb{Z} : (a = q \cdot b + r \;\land\; 0 \le r < |b|)$$

- **Vocabulario:** $a$ es el **dividendo**, $b$ es el **divisor**, $q$ es el **cociente entero** y $r$ es el **resto**.
- **Condición Clave del Resto:** El resto $r$ es obligatoriamente **un número no negativo estrictamente menor que el valor absoluto del divisor**: $$0 \le r < |b|$$

---

#### **Demostración Analítica Paso a Paso (Examen de Desarrollo UNED):**

Para simplificar la demostración, asumimos inicialmente $b > 0$ (el caso $b < 0$ se deduce tomando $|b|$):

1. **Demostración de Existencia:**
    
    - Consideramos el conjunto de múltiplos enteros de $b$ que no superan a $a$: $$A = \{n \cdot b \in \mathbb{Z} \mid n \cdot b \le a \text{ con } n \in \mathbb{Z}\}$$
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

$$\forall a, b \in \mathbb{Z}, \quad b \mid a \iff (\exists k \in \mathbb{Z}, \, a = k \cdot b) \iff a \in b\mathbb{Z} \iff a\mathbb{Z} \subseteq b\mathbb{Z}$$

- **Propiedades Inmediatas:**
    - El $0$ es divisible por cualquier número entero ($b \mid 0$ pues $0 = 0 \cdot b$).
    - $1$ y $-1$ son divisores de cualquier número entero.
    - $b \mid a \iff -b \mid a \iff b \mid -a$.

#### **B. Caracterización de Ideales y Subgrupos de $\mathbb{Z}$ (Ejercicio 5.44)**

Por la Proposición probada en la Sesión 40, todo subgrupo del grupo aditivo $(\mathbb{Z}, +)$ es de la forma $n\mathbb{Z}$ para algún $n \in \mathbb{N}$. En la teoría de anillos:

> **Teorema:** _Todo ideal de $(\mathbb{Z}, +, \cdot)$ es un **ideal principal**, es decir, es de la forma $I = (n) = n\mathbb{Z} = \{kn \mid k \in \mathbb{Z}\}$ para un único $n \in \mathbb{N}$._

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

Sean $a, b \in \mathbb{N}^*$. La suma de los ideales principales $a\mathbb{Z} + b\mathbb{Z} = \{a \cdot u + b \cdot v \mid u, v \in \mathbb{Z}\}$ es a su vez un ideal principal de $\mathbb{Z}$:

$$a\mathbb{Z} + b\mathbb{Z} = d\mathbb{Z} \quad \text{con } d \in \mathbb{N}^*$$

- Dicho entero positivo único $d$ se define como el **Máximo Común Divisor**: **$d = \text{mcd}(a, b)$**.
- **Caracterización Clave de $d = \text{mcd}(a, b)$:**
    1. $d$ es un divisor común de $a$ y $b$ ($d \mid a$ y $d \mid b$).
    2. Si $c \in \mathbb{Z}$ es cualquier otro divisor común de $a$ y $b$, entonces $c$ divide a $d$ ($c \mid d$).

##### **Teorema: Caracterización del m.c.d. mediante el Ideal Suma**

###### **Enunciado:**

Sean $a, b \in \mathbb{N}^*$ dos números naturales no nulos.

1. Existe un único número entero positivo $d \in \mathbb{N}^*$ tal que la suma de los ideales principales $a\mathbb{Z}$ y $b\mathbb{Z}$ coincide con el ideal principal $d\mathbb{Z}$: $$a\mathbb{Z} + b\mathbb{Z} = d\mathbb{Z}$$
2. El entero $d$ es el máximo común divisor de $a$ y $b$ ($d = \text{mcd}(a, b)$), verificando:
    - $d$ es un divisor común de $a$ y $b$ ($d \mid a$ y $d \mid b$).
    - Si $c \in \mathbb{Z}$ es cualquier otro divisor común de $a$ y $b$, entonces $c \mid d$.

---

##### **Demostración Paso a Paso**

###### **Paso 1: Demostrar que la suma $a\mathbb{Z} + b\mathbb{Z}$ es un ideal de $(\mathbb{Z}, +, \cdot)$**

Recordemos que un subconjunto no vacío $I \subseteq \mathbb{Z}$ es un ideal de $\mathbb{Z}$ si satisface las condiciones de subgrupo aditivo y absorción de producto:

- $\forall x, y \in I, \quad x - y \in I$
- $\forall x \in I, \forall k \in \mathbb{Z}, \quad x \cdot k \in I$

Definimos el conjunto suma de ideales: $$a\mathbb{Z} + b\mathbb{Z} = \{a \cdot m + b \cdot n \mid m, n \in \mathbb{Z}\}$$

Comprobamos las dos condiciones:

1. **No vacuidad:** Tomando $m = 0$ y $n = 0$, se tiene $a \cdot 0 + b \cdot 0 = 0 \in a\mathbb{Z} + b\mathbb{Z}$.
2. **Cierre respecto a la resta:** Sean $x, y \in a\mathbb{Z} + b\mathbb{Z}$. Existen $m_1, n_1, m_2, n_2 \in \mathbb{Z}$ tales que $x = a m_1 + b n_1$ y $y = a m_2 + b n_2$. Entonces: $$x - y = (a m_1 + b n_1) - (a m_2 + b n_2) = a(m_1 - m_2) + b(n_1 - n_2)$$ Como $m_1 - m_2, n_1 - n_2 \in \mathbb{Z}$, se deduce que $x - y \in a\mathbb{Z} + b\mathbb{Z}$.
3. **Absorción del producto:** Sea $x = a m + b n \in a\mathbb{Z} + b\mathbb{Z}$ y $k \in \mathbb{Z}$. Entonces: $$x \cdot k = (a m + b n)k = a(m \cdot k) + b(n \cdot k)$$ Como $m \cdot k, n \cdot k \in \mathbb{Z}$, se tiene que $x \cdot k \in a\mathbb{Z} + b\mathbb{Z}$.

Por lo tanto, la suma $a\mathbb{Z} + b\mathbb{Z}$ es un ideal del anillo $(\mathbb{Z}, +, \cdot)$.

---

###### __Paso 2: Existencia y unicidad del generador $d \in \mathbb{N}^*$

Puesto que todo ideal de $\mathbb{Z}$ es un **ideal principal** (Ejercicio 5.44 del texto base), existe un número entero $d \in \mathbb{N}$ tal que: $$a\mathbb{Z} + b\mathbb{Z} = d\mathbb{Z}$$

- **No trivialidad ($d \neq 0$):** Dado que $a, b \in \mathbb{N}^*$, el producto $a \cdot b = a \cdot b + b \cdot 0 \in a\mathbb{Z} + b\mathbb{Z}$ es no nulo. Luego $a\mathbb{Z} + b\mathbb{Z} \neq {0}$, por lo que $d > 0$ (es decir, $d \in \mathbb{N}^*$).
- **Unicidad:** Si existiera otro $d' \in \mathbb{N}^*$ tal que $a\mathbb{Z} + b\mathbb{Z} = d'\mathbb{Z}$, tendríamos $d\mathbb{Z} = d'\mathbb{Z}$. Por las propiedades de divisibilidad de ideales ($d\mathbb{Z} \subseteq d'\mathbb{Z} \iff d' \mid d$), se deduce que $d \mid d'$ y $d' \mid d$. Al ser ambos enteros estrictamente positivos, $d = d'$.

---

###### **Paso 3: Demostrar las propiedades de Máximo Común Divisor**

1. **$d$ es un divisor común de $a$ y $b$:** El ideal suma contiene a sus generadores individuales $a$ y $b$:
    
    - Para $m = 1, n = 0 \implies a = a \cdot 1 + b \cdot 0 \in a\mathbb{Z} + b\mathbb{Z} = d\mathbb{Z} \implies d \mid a$.
    - Para $m = 0, n = 1 \implies b = a \cdot 0 + b \cdot 1 \in a\mathbb{Z} + b\mathbb{Z} = d\mathbb{Z} \implies d \mid b$. Por tanto, $d$ es un divisor común de $a$ y $b$.
2. **Cualquier divisor común $c$ divide a $d$ (Identidad de Bézout):** Como $d \in d\mathbb{Z} = a\mathbb{Z} + b\mathbb{Z}$, existen coeficientes enteros $u, v \in \mathbb{Z}$ tales que: $$d = a \cdot u + b \cdot v \quad \text{(Identidad de Bézout)}$$ Sea $c \in \mathbb{Z}$ un divisor común de $a$ y $b$ ($c \mid a$ y $c \mid b$). Entonces existen $a', b' \in \mathbb{Z}$ con $a = c \cdot a'$ y $b = c \cdot b'$. Sustituyendo: $$d = (c \cdot a')u + (c \cdot b')v = c(a'u + b'v) \implies c \mid d$$
    

---

###### **Paso 4: Conclusión**

Al ser $d \in \mathbb{N}^*$ un divisor común positivo de $a$ y $b$ tal que todo divisor común $c$ es divisor de $d$, $d$ satisface la definición del **máximo común divisor**: $$d = \text{mcd}(a, b)$$

Y concluimos la igualdad de ideales principales: $$a\mathbb{Z} + b\mathbb{Z} = \text{mcd}(a, b)\mathbb{Z} \quad \blacksquare$$
#### **C. Relación Fundamental entre m.c.d. y m.c.m. (Ejercicio 21 del Capítulo 5)**

_Para cualesquiera dos números enteros no nulos $a, b \in \mathbb{N}^*$, el producto de su máximo común divisor por su mínimo común múltiplo coincide con el producto de sus valores absolutos:*

$$\text{mcd}(a, b) \cdot \text{mcm}(a, b) = a \cdot b$$

---

##### **1. Demostración Oficial del Texto Base (Vía Teorema de Gauss)**

Esta es la demostración canónica que exige el equipo docente en las pruebas presenciales de desarrollo de la UNED, basada en la caracterización de los divisores y el Teorema de Gauss.

NOTA: El teorema de Gauss y el teorema de Bézout se ven en la siguiente sesión: [Sesión48_Algoritmo_de_Euclides](Sesión48_Algoritmo_de_Euclides.md)

###### **Paso 1: Factorizar por el m.c.d.**

Sea $d = \text{mcd}(a, b) \in \mathbb{N}^*$. Por definición de máximo común divisor, existen dos enteros naturales $a_1, b_1 \in \mathbb{N}^*$ tales que: $$a = d \cdot a_1 \quad \text{y} \quad b = d \cdot b_1 \quad \text{con} \quad \text{mcd}(a_1, b_1) = 1$$

###### **Paso 2: Caracterizar la forma de los múltiplos comunes**

Sea $M \in \mathbb{N}^*$ un múltiplo común cualquiera de $a$ y $b$. Por ser múltiplo de ambos, existen $K, K' \in \mathbb{N}^*$ tales que: $$M = K \cdot a = K' \cdot b$$

Sustituyendo las expresiones de $a$ y $b$ del Paso 1: $$K \cdot (d \cdot a_1) = K' \cdot (d \cdot b_1)$$

Como $d \neq 0$, aplicando la propiedad cancelativa en $\mathbb{N}$: $$K \cdot a_1 = K' \cdot b_1$$

De esta igualdad se deduce que $a_1$ divide al producto $K' \cdot b_1$ (es decir, $a_1 \mid K' \cdot b_1$). Como $\text{mcd}(a_1, b_1) = 1$, por el **Teorema de Gauss (Teorema 5.52)**, $a_1$ debe dividir necesariamente a $K'$.

Existe por tanto un entero $\lambda \in \mathbb{N}^*$ tal que: $$K' = \lambda \cdot a_1$$

###### **Paso 3: Identificar el mínimo común múltiplo**

Sustituyendo $K'$ en la expresión del múltiplo común $M$: $$M = K' \cdot b = (\lambda \cdot a_1) \cdot (d \cdot b_1) = \lambda \cdot (a_1 \cdot b_1 \cdot d)$$

Dado que todo múltiplo común de $a$ y $b$ es de la forma $\lambda \cdot (a_1 \cdot b_1 \cdot d)$ con $\lambda \ge 1$, el **menor** de todos los múltiplos comunes positivos (el $\text{mcm}(a, b)$) se obtiene eligiendo $\lambda = 1$: $$m = \text{mcm}(a, b) = a_1 \cdot b_1 \cdot d$$

###### **Paso 4: Conclusión del producto**

Multiplicamos el $\text{mcm}(a, b)$ obtenido por el $\text{mcd}(a, b) = d$: $$m \cdot d = (a_1 \cdot b_1 \cdot d) \cdot d = (a_1 \cdot d) \cdot (b_1 \cdot d)$$

Como $a = a_1 \cdot d$ y $b = b_1 \cdot d$, concluimos que: $$\text{mcm}(a, b) \cdot \text{mcd}(a, b) = a \cdot b \quad \blacksquare$$

##### **2. Aplicación Práctica Directa**

Esta relación es la herramienta principal para **calcular el m.c.m. a partir del Algoritmo de Euclides**, evitando tener que factorizar números enteros grandes: $$\text{mcm}(a, b) = \frac{|a \cdot b|}{\text{mcd}(a, b)}$$

- **Ejemplo del libro base ($a = 4704$, $b = 903$):**
    1. Calculamos el m.c.d. mediante el Algoritmo de Euclides: $\text{mcd}(4704, 903) = 21$.
    2. Aplicamos la fórmula del producto: $$\text{mcm}(4704, 903) = \frac{4704 \cdot 903}{21} = 4704 \cdot 43 = 202.272$$

---

### **5. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Efectuar la división entera calculando explícitamente el cociente $q$ y el resto $r$ en los siguientes casos:  
    a) $a = 345, b = 23$  
    b) $a = -345, b = 23$  
    c) $a = -345, b = -23$
2. **Ejercicio 2 (Ejercicio 5.44.2 del texto base):** Demostrar que todo subgrupo $G$ del grupo aditivo $(\mathbb{Z}, +)$ es de la forma $G = n\mathbb{Z}$ para algún $n \in \mathbb{N}$ aplicando el algoritmo de la división entera sobre el elemento positivo mínimo de $G$.
3. **Ejercicio 3 (Ejercicio 20 del Capítulo 5):** Sean $a, b \in \mathbb{N}^*$. Demostrar que si $q$ y $r$ son el cociente y el resto de la división entera de $a$ entre $b$, entonces para todo $n \in \mathbb{N}^*$, $q$ y $n \cdot r$ son el cociente y el resto de la división entera de $n \cdot a$ entre $n \cdot b$.

#### Solución ejercicio 2

**Enunciado:** Demostrar que todo subgrupo $G$ del grupo aditivo $(\mathbb{Z}, +)$ es de la forma $G = n\mathbb{Z}$ para algún $n \in \mathbb{N}$, aplicando el algoritmo de la división entera sobre el elemento positivo mínimo de $G$.

---

##### **Demostración:**

Sea $(G, +)$ un subgrupo del grupo aditivo $(\mathbb{Z}, +)$. Distinguimos dos casos según la naturaleza del subgrupo $G$:

---

##### **Caso 1: $G = {0}$ (Subgrupo trivial)**

Si $G = {0}$, basta tomar $n = 0 \in \mathbb{N}$. Puesto que $0\mathbb{Z} = {k \cdot 0 \mid k \in \mathbb{Z}} = {0}$, se cumple de forma inmediata que $G = 0\mathbb{Z}$.

---

##### **Caso 2: $G \neq {0}$ (Subgrupo no trivial)**

Si $G \neq {0}$, existe al menos un elemento $x \in G$ tal que $x \neq 0$.

1. **Existencia de elementos estrictamente positivos en $G$:**  
    Como $(G, +)$ es un subgrupo, para todo $x \in G$, su opuesto $-x \in G$. Puesto que $x \neq 0$, uno de los dos enteros (o bien $x$ o bien $-x$) es estrictamente positivo.  
    Por lo tanto, el conjunto de los elementos estrictamente positivos de $G$, definido por: $$G^+ = {x \in G \mid x > 0}$$ es un subconjunto no vacío de números naturales positivos, es decir, $\varnothing \neq G^+ \subseteq \mathbb{N}^*$.
    
2. **Elección del mínimo elemento positivo $n$:**  
    Por el **Principio del Buen Orden** en $\mathbb{N}$ (toda colección no vacía de enteros positivos posee un elemento mínimo), existe un entero $n \in G^+$ tal que: $$n = \min(G^+)$$ Por construcción, $n \in G$ y $n > 0$ (luego $n \in \mathbb{N}^*$).
    
3. **Demostración por doble inclusión de que $G = n\mathbb{Z}$:**
    
    - **Inclusión 1 ($n\mathbb{Z} \subseteq G$):**  
        Sea $y \in n\mathbb{Z}$ un múltiplo genérico. Por definición de ideal principal, $y = k \cdot n$ para algún $k \in \mathbb{Z}$.  
        Puesto que $n \in G$ y $(G, +)$ es un subgrupo (cerrado respecto a la suma iterada y a los opuestos), se concluye de inmediato que todo múltiplo entero de $n$ pertenece a $G$: $$k \cdot n \in G \implies n\mathbb{Z} \subseteq G$$
        
    - **Inclusión 2 ($G \subseteq n\mathbb{Z}$):**  
        Sea $g \in G$ un elemento arbitrario de $G$.  
        Aplicamos el **Teorema de la División Entera** (Teorema 5.43) dividiendo $g$ entre el entero positivo $n > 0$: existen únicos enteros $q, r \in \mathbb{Z}$ tales que: $$g = q \cdot n + r \quad \text{con} \quad 0 \le r < n$$
        
        Despejamos el resto: $$r = g - q \cdot n$$
        
        Analizamos la pertenencia del resto $r$ al subgrupo $G$:
        
        - $g \in G$ por hipótesis.
        - $q \cdot n \in n\mathbb{Z} \subseteq G \implies q \cdot n \in G$.
        - Como $G$ es subgrupo de $(\mathbb{Z}, +)$, la diferencia de dos de sus elementos permanece en $G$. Luego $r = g - q \cdot n \in G$.
        
        Estudiamos los posibles valores del resto $r$, sabiendo que $0 \le r < n$:
        
        - Si fuera $r > 0$, tendríamos que $r \in G^+$. Pero como $r < n$, esto entraría en **contradicción** directa con el hecho de que $n$ es el **mínimo** elemento de $G^+$ ($n = \min(G^+)$).
        - Por lo tanto, **necesariamente $r = 0$**.
        
        Al ser $r = 0$, la división resulta exacta: $$g = q \cdot n + 0 = q \cdot n \in n\mathbb{Z}$$ Dado que todo elemento $g \in G$ es un múltiplo de $n$, se deduce que $G \subseteq n\mathbb{Z}$.
        
4. **Conclusión:**  
    Al verificarse ambas inclusiones ($n\mathbb{Z} \subseteq G$ y $G \subseteq n\mathbb{Z}$), concluyo que: $$G = n\mathbb{Z}$$
    

	Por lo tanto, todo subgrupo $G$ de $(\mathbb{Z}, +)$ es de la forma $n\mathbb{Z}$ para algún $n \in \mathbb{N}$. $\quad \blacksquare$

---

##### **Claves de redacción para el examen presencial:**

1. **Tratamiento del caso $G = {0}$:** No olvides mencionarlo al inicio para asegurar que el conjunto $G^+$ sea no vacío antes de aplicar el Buen Orden.
2. **Justificación por el Buen Orden:** Citar explícitamente el Principio del Buen Orden en $\mathbb{N}$ para justificar la existencia de $n = \min(G^+)$.
3. **Contradicción sobre la minimalidad:** Redactar con claridad que si el resto $r$ fuera estricto ($r > 0$), sería un elemento de $G^+$ menor que el mínimo $n$, lo cual es imposible.

---


#### Solución ejercicio 3

**Enunciado:** Sean $a, b \in \mathbb{N}^*$. Demostrar que si $q$ y $r$ son el cociente y el resto de la división entera de $a$ entre $b$, entonces para todo $n \in \mathbb{N}^*$, $q$ y $n \cdot r$ son el cociente y el resto de la división entera de $n \cdot a$ entre $n \cdot b$.

---

##### **Demostración:**

**1. Declaración de Hipótesis y Tesis**

- **Hipótesis (H):**
    
    1. $a, b \in \mathbb{N}^*$ (números naturales estrictamente positivos).
    2. $q, r$ son el cociente y el resto de la división entera de $a$ entre $b$. Por el **Teorema de la División Entera (Teorema 5.43)**, esto significa que $q, r \in \mathbb{Z}$ cumplen simultáneamente: $$\text{(H1)} \quad a = q \cdot b + r$$ $$\text{(H2)} \quad 0 \le r < b$$
    3. $n \in \mathbb{N}^*$ (entero positivo arbitrario, luego $n > 0$).
- **Tesis (T):** Para el dividendo $n \cdot a$ y el divisor $n \cdot b$, debemos demostrar que $q$ es el cociente y $n \cdot r$ es el resto, es decir, que la pareja $(q, n \cdot r)$ satisface las dos condiciones del Teorema de la División Entera: $$\text{(T1)} \quad n \cdot a = q \cdot (n \cdot b) + (n \cdot r)$$ $$\text{(T2)} \quad 0 \le n \cdot r < n \cdot b$$
    

---

**2. Desarrollo de la Demostración paso a paso**

- **Paso 1: Demostración de la igualdad del algoritmo (T1)**  
    Partimos de la hipótesis de la división inicial $\text{(H1)}$: $$a = q \cdot b + r$$
    
    Multiplicamos ambos miembros de la igualdad por el número entero positivo $n \in \mathbb{N}^*$: $$n \cdot a = n \cdot (q \cdot b + r)$$
    
    Aplicando la propiedad distributiva del producto respecto de la suma en $\mathbb{Z}$: $$n \cdot a = n \cdot (q \cdot b) + n \cdot r$$
    
    Aplicando las propiedades conmutativa y asociativa del producto en $\mathbb{Z}$: $$n \cdot a = q \cdot (n \cdot b) + n \cdot r$$ Quedando verificada la condición de igualdad $\text{(T1)}$.
    
- **Paso 2: Demostración de la acotación del nuevo resto (T2)**  
    Partimos de la hipótesis de acotación del resto original $\text{(H2)}$: $$0 \le r < b$$
    
    Dado que $n \in \mathbb{N}^*$, sabemos que $n > 0$. Multiplicamos los tres términos de la doble desigualdad por $n$, lo cual preserva estrictamente el sentido de las desigualdades: $$n \cdot 0 \le n \cdot r < n \cdot b$$
    
    Puesto que $n \cdot 0 = 0$, obtenemos: $$0 \le n \cdot r < n \cdot b$$ Quedando verificada la condición de acotación $\text{(T2)}$.
    

---

**3. Conclusión por el Teorema de Unicidad**

Por el **Teorema de la División Entera (Teorema 5.43 del texto base)**, dados dos enteros con divisor no nulo (en este caso dividendo $n \cdot a$ y divisor $n \cdot b > 0$), existe una **única pareja de enteros** $(q', r')$ que cumple la relación de división y la acotación del resto $0 \le r' < n \cdot b$.

Habiendo demostrado en los Pasos 1 y 2 que la pareja $(q, n \cdot r)$ satisface ambas condiciones $\text{(T1)}$ y $\text{(T2)}$, por la unicidad del cociente y del resto se deduce necesariamente que: $$q' = q \quad \text{y} \quad r' = n \cdot r$$

Por lo tanto, $q$ es el cociente y $n \cdot r$ es el resto de la división entera de $n \cdot a$ entre $n \cdot b$. $\quad \blacksquare$

---

##### **Clave Didáctica de Examen (¿Por qué es imprescindible citar el Teorema de Unicidad?):**

En la corrección de los exámenes de desarrollo de la UNED, un error muy común es quedarse únicamente en la parte algebraica (multiplicar por $n$) y dar el ejercicio por finalizado.

Para obtener la puntuación máxima ($10/10$), es **absolutamente crucial incluir el apartado 3**: recordar que la definición de cociente y resto exige no solo satisfacer la igualdad $A = Q \cdot B + R$, sino cumplir **simultáneamente** la acotación $0 \le R < B$ y apelar a la **unicidad** garantizada por el Teorema 5.43.
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
