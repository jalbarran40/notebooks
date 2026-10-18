# **SESIÓN 51 (TEORÍA): LOS NÚMEROS REALES: EL AXIOMA DEL SUPREMO Y COMPLETITUD**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 6: RACIONALES, REALES Y COMPLEJOS (Capítulos 6 y 7)  
**Objetivo:** Comprender la insuficiencia del cuerpo de los números racionales \(\mathbb{Q}\) (carencia de completitud y presencia de "agujeros" analíticos), formalizar la **definición axiomática del cuerpo de los números reales \((\mathbb{R}, +, \cdot, \le)\)**, dominar el **Axioma del Supremo** como la superpropiedad definitoria del orden continuo de \(\mathbb{R}\), caracterizar analíticamente el **supremo e ínfimo mediante el parámetro \(\varepsilon > 0\)**, demostrar la **Propiedad del Ínfimo** y la **Propiedad Arquimediana**, y estudiar la **densidad de \(\mathbb{Q}\) y de los irracionales \(\mathbb{R} \setminus \mathbb{Q}\)** en la recta real.

---

### **1. Marco Teórico: La Insuficiencia del Cuerpo de los Racionales (\(\mathbb{Q}\))**

El conjunto de los números racionales \((\mathbb{Q}, +, \cdot, \le)\) es un **cuerpo conmutativo totalmente ordenado**. Sin embargo, carece de la propiedad de la continuidad geométrica: la recta racional presenta infinitas "lagunas" o "agujeros" correspondientes a las magnitudes inconmensurables (como \(\sqrt{2}\), \(\pi\) o \(e\)).

#### **Ejemplo Emblemático del Texto Base (Ejemplo 6.7 / Ejemplo 3.28):**

Consideremos en el conjunto ordenado \((\mathbb{Q}, \le)\) el subconjunto de racionales no negativos cuyo cuadrado es menor que 2: \[ A = {x \in \mathbb{Q} \mid x \ge 0 \land x^2 < 2} \]

1. **Acotación:** El conjunto \(A\) está acotado superiormente en \(\mathbb{Q}\) (por ejemplo, el número \(2 \in \mathbb{Q}\) cumple que \(\forall x \in A, x \le 2\)).
2. **Carencia de Supremo en \(\mathbb{Q}\):** Si buscamos el supremo de \(A\) _dentro del conjunto \(\mathbb{Q}\)_, observamos que no existe ningún racional \(s \in \mathbb{Q}\) que sea la menor cota superior de \(A\).
    - Si existiera \(s \in \mathbb{Q}\), debería cumplirse \(s^2 = 2\), pero demostramos en la Sesión 9 que \(\sqrt{2} \notin \mathbb{Q}\).
    - Si \(s^2 < 2\), se puede construir un racional ligeramente mayor \(s + \delta \in A\), luego \(s\) no sería cota superior.
    - Si \(s^2 > 2\), se puede construir un racional ligeramente menor \(s - \delta\) que sigue siendo cota superior de \(A\), luego \(s\) no sería la _menor_ cota superior.

> **Conclusión:** En \(\mathbb{Q}\), existen subconjuntos no vacíos acotados superiormente que **no poseen supremo**. Para disponer de un sistema numérico continuo donde todo proceso límite o aproximación decimal converja a un número del propio sistema, se requiere extender \(\mathbb{Q}\) al cuerpo de los números reales \(\mathbb{R}\).

---

### **2. Definición Axiomática de los Números Reales (\(\mathbb{R}\))**

En lugar de construir explícitamente \(\mathbb{R}\) mediante cortaduras de Dedekind o sucesiones de Cauchy de números racionales (que se comentan en las secciones finales del Capítulo 6 del libro base), en el texto de Delgado Pineda & Muñoz Bouzo se adopta la **introducción axiomática** de los números reales.

#### **Definición 6.21 / Axioma del Supremo:**

_Existe un cuerpo conmutativo totalmente ordenado \((\mathbb{R}, +, \cdot, \le)\), que contiene a \(\mathbb{Q}\) como subcuerpo ordenado, y que satisface la siguiente propiedad fundamental:_

> **Axioma del Supremo:**  
> _Todo subconjunto no vacío \(A \subseteq \mathbb{R}\) acotado superiormente posee **supremo** en \(\mathbb{R}\)_ (\(\exists \sup(A) \in \mathbb{R}\)).

#### **Teorema 6.22 (Unicidad del Cuerpo Real salvo Isomorfismo):**

_Todos los cuerpos ordenados que satisfacen el Axioma del Supremo son **isomorfos entre sí** tanto para la estructura de cuerpo como para la relación de orden._  
Por esta razón, nos referimos unívocamente a **el** cuerpo de los números enteros y reales. Los elementos del subconjunto complementario \(\mathbb{R} \setminus \mathbb{Q}\) se denominan **números irracionales**.

---

### **3. Cotas, Supremo, Ínfimo y Caracterización por \(\varepsilon\)**

Sea \(A \subseteq \mathbb{R}\) un subconjunto no vacío de la recta real:

- **Cota Superior:** \(M \in \mathbb{R}\) es una cota superior de \(A\) si \(\forall a \in A, a \le M\).
- **Cota Inferior:** \(m \in \mathbb{R}\) es una cota inferior de \(A\) si \(\forall a \in A, m \le a\).
- **Supremo (\(\sup(A)\)):** Es la menor de todas las cotas superiores de \(A\).
- **Ínfimo (\(\inf(A)\)):** Es la mayor de todas las cotas inferiores de \(A\).
- **Máximo (\(\max(A)\)) y Mínimo (\(\min(A)\)):** Si el supremo pertenece al conjunto (\(\sup(A) \in A\)), entonces es el máximo. Si el ínfimo pertenece al conjunto (\(\inf(A) \in A\)), entonces es el mínimo.

---

#### **Teorema (Caracterización \(\varepsilon\) del Supremo e Ínfimo):**

En los exámenes presenciales de desarrollo de la UNED, la herramienta analítica fundamental para probar que un número \(s\) es el supremo (o \(i\) el ínfimo) de un conjunto \(A\) es la **caracterización por \(\varepsilon\)**:

1. **Caracterización por \(\varepsilon\) del Supremo:**  
    Un número real \(s \in \mathbb{R}\) es el supremo de \(A \subseteq \mathbb{R}\) (\(s = \sup(A)\)) si y solo si cumple las dos condiciones:
    
    - **C1 (Es cota superior):** \(\forall a \in A, \quad a \le s\).
    - **C2 (Es la menor cota superior):** \(\forall \varepsilon > 0, \quad \exists a_0 \in A \quad \text{tal que} \quad s - \varepsilon < a_0\).
2. **Caracterización por \(\varepsilon\) del Ínfimo:**  
    Un número real \(i \in \mathbb{R}\) es el ínfimo de \(A \subseteq \mathbb{R}\) (\(i = \inf(A)\)) si y solo si cumple las dos condiciones:
    
    - **C1 (Es cota inferior):** \(\forall a \in A, \quad i \le a\).
    - **C2 (Es la mayor cota inferior):** \(\forall \varepsilon > 0, \quad \exists a_0 \in A \quad \text{tal que} \quad a_0 < i + \varepsilon\).

---

### **4. Propiedades Fundamentales de \(\mathbb{R}\): Propiedad del Ínfimo y Propiedad Arquimediana**

#### **Proposición 6.10 (Propiedad del Ínfimo):**

_Todo subconjunto no vacío \(A \subseteq \mathbb{R}\) acotado inferiormente posee **ínfimo** en \(\mathbb{R}\)_ (\(\exists \inf(A) \in \mathbb{R}\)).

- **Demostración Analítica Paso a Paso (Examen UNED):**
    
    1. Sea \(A \subseteq \mathbb{R}\) un conjunto no vacío (\(A \neq \varnothing\)) acotado inferiormente por una cota \(k \in \mathbb{R}\) (\(\forall a \in A, k \le a\)).
    2. Consideramos el conjunto opuesto o reflejado respecto al origen: \[ -A = {-x \in \mathbb{R} \mid x \in A} \]
    3. Comprobamos las hipótesis del Axioma del Supremo para \(-A\):
        - Como \(A \neq \varnothing\), se deduce que \(-A \neq \varnothing\).
        - Como \(k \le a\) para todo \(a \in A\), multiplicando por \(-1\) y invirtiendo el orden obtenemos \(-a \le -k\) para todo \(-a \in -A\). Por tanto, **\(-A\) está acotado superiormente por \(-k\)**.
    4. Por el **Axioma del Supremo**, el conjunto \(-A\) posee supremo en \(\mathbb{R}\). Llamemos \(S = \sup(-A) \in \mathbb{R}\).
    5. Definimos \(i = -S \in \mathbb{R}\). Probemos que \(i = \inf(A)\):
        - **\(i\) es cota inferior de \(A\):** Como \(S = \sup(-A)\), \(\forall -a \in -A, -a \le S \implies -S \le a \implies i \le a\).
        - **\(i\) es la mayor cota inferior:** Si \(m\) es cualquier cota inferior de \(A\) (\(\forall a \in A, m \le a\)), entonces \(-a \le -m\), por lo que \(-m\) es cota superior de \(-A\). Como \(S = \sup(-A)\) es la menor cota superior, \(S \le -m \implies m \le -S = i\).
    6. Concluimos que \(i = -S\) es el ínfimo de \(A\), luego **\(\inf(A) = -\sup(-A) \in \mathbb{R}\)**. \(\blacksquare\)

---

#### **Proposición 6.12 (Propiedad Arquimediana de \(\mathbb{R}\)):**

_El conjunto de los números naturales \(\mathbb{N}\) no está acotado superiormente en \(\mathbb{R}\). Es decir:_

\[ \forall x \in \mathbb{R}, \quad \exists n \in \mathbb{N} \quad \text{tal que} \quad n > x \]

- **Demostración Analítica por Reducción al Absurdo:**
    
    1. Supongamos por contradicción que \(\mathbb{N}\) estuviera **acotado superiormente** en \(\mathbb{R}\).
    2. Como \(\mathbb{N} \subseteq \mathbb{R}\) es no vacío (\(0 \in \mathbb{N}\)), por el **Axioma del Supremo** existiría un supremo real \(s = \sup(\mathbb{N}) \in \mathbb{R}\).
    3. Consideramos el número real \(s - 1\). Como \(s - 1 < s\), el número \(s - 1\) **no puede ser cota superior de \(\mathbb{N}\)**.
    4. Por la definición de cota superior, debe existir al menos un número natural \(n_0 \in \mathbb{N}\) tal que: \[ s - 1 < n_0 \]
    5. Sumando 1 a ambos lados de la desigualdad: \[ s < n_0 + 1 \]
    6. Como la suma de números naturales es un número natural, \(n_1 = n_0 + 1 \in \mathbb{N}\).
    7. Llegamos a la **contradicción** de que existe un natural \(n_1 \in \mathbb{N}\) tal que \(n_1 > s\), lo que imposibilita que \(s\) sea cota superior de \(\mathbb{N}\).
    8. **Conclusión:** \(\mathbb{N}\) no está acotado superiormente en \(\mathbb{R}\). \(\blacksquare\)

#### **Corolario Práctico (Consecuencia Arquimediana):**

Para cualquier número real estrictamente positivo \(\varepsilon > 0\), existe un entero positivo \(n \in \mathbb{N}^*\) tal que: \[ \frac{1}{n} < \varepsilon \]

---

### **5. Densidad de los Números Racionales e Irracionales en \(\mathbb{R}\)**

#### **Teorema de Densidad de \(\mathbb{Q}\) y \(\mathbb{R} \setminus \mathbb{Q}\):**

1. **Densidad de \(\mathbb{Q}\) en \(\mathbb{R}\):** Dados dos números reales cualesquiera \(x, y \in \mathbb{R}\) con \(x < y\), existe al menos un número racional \(q \in \mathbb{Q}\) tal que: \[ x < q < y \]
2. **Densidad de los Irracionales en \(\mathbb{R}\):** Dados dos números reales \(x < y\), existe al menos un número irracional \(r \in \mathbb{R} \setminus \mathbb{Q}\) tal que: \[ x < r < y \]

> **Consecuencia Topológica:** Entre dos números reales distintos existen **infinitos números racionales e infinitos números irracionales**.

---

### **6. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Considerar el conjunto \(A = \left{ \frac{n}{n+1} \mid n \in \mathbb{N}^* \right} = \left{ \frac{1}{2}, \frac{2}{3}, \frac{3}{4}, \dots \right} \subset \mathbb{R}\). Demostrar analíticamente aplicando la caracterización \(\varepsilon\) que \(\sup(A) = 1\) e \(\inf(A) = \frac{1}{2} = \min(A)\).
2. **Ejercicio 2 (Ejercicio 6.7 del libro base):** Sea \(A = {x \in \mathbb{R} \mid x \ge 0 \land x^2 < 2}\). Demostrar que \(\sup(A) = \sqrt{2}\) aplicando el Axioma del Supremo sobre \(\mathbb{R}\).
3. **Ejercicio 3 (Ejercicio 17 del Capítulo 6 del texto base):** Sean \(A, B \subseteq \mathbb{R}\) dos subconjuntos no vacíos y acotados superiormente. Definimos el conjunto suma \(A + B = {a + b \mid a \in A, b \in B}\). Demostrar que \(\sup(A + B) = \sup(A) + \sup(B)\).

---

### **7. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea \(A \subseteq \mathbb{R}\) un subconjunto no vacío acotado superiormente y sea \(s = \sup(A) \in \mathbb{R}\) su supremo. ¿Cuál de las siguientes afirmaciones expresa de forma analítica rigurosa la caracterización del supremo mediante \(\varepsilon\)?

- **A)** Para todo \(\varepsilon > 0\), existe un elemento \(a_0 \in A\) tal que \(s - \varepsilon < a_0\).
- **B)** Para todo \(\varepsilon > 0\), se cumple que \(s + \varepsilon \in A\).
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - La condición definitoria del supremo como la _menor cota superior_ exige que al restar cualquier cantidad positiva \(\varepsilon > 0\) al valor \(s\), el número resultante \(s - \varepsilon\) deja de ser cota superior de \(A\).
> - Esto equivale a garantizar que **existe al menos un elemento del conjunto \(a_0 \in A\) que supera a \(s - \varepsilon\)** (\(s - \varepsilon < a_0\)). Por lo tanto, la opción **A** es la **correcta**.
> - La opción B es falsa ya que \(s + \varepsilon > s\), por lo que \(s + \varepsilon\) es una cota superior estricta que no pertenece en general a \(A\) (por ejemplo, para \(A = (0, 1)\), \(\sup(A) = 1\), pero \(1 + \varepsilon \notin (0, 1)\)).
> - Por lo tanto, la opción **A** es la **correcta**.

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión51_Números_reales.pptx)
- [**Resumen de audio**](Audios/Sesión51_Números_reales.m4a)
