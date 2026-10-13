# **SESIÓN 45 (TEORÍA): LOS NÚMEROS NATURALES: AXIOMAS DE PEANO Y DEFINICIÓN RECURRENTE DE SUMA Y PRODUCTO**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 5: LOS NÚMEROS NATURALES Y LOS ENTEROS (Capítulo 5)  
**Objetivo:** Comprender la construcción axiomática del conjunto de los **números naturales \(\mathbb{N}\)** a partir de los **Axiomas de Peano**, analizar la función **sucesor \(s: \mathbb{N} \to \mathbb{N}\)**, formalizar las definiciones **por recurrencia (o inducción)** de las operaciones de **suma \(+\) y producto \(\cdot\)**, y demostrar rigurosamente mediante inducción matemática sus propiedades algebraicas (**asociatividad, conmutatividad, elementos neutros y propiedad cancelativa**).

---

### **1. Marco Teórico: Axiomática de Peano para los Números Naturales (\(\mathbb{N}\))**

Intuitivamente, los números naturales son aquellos que utilizamos de forma cotidiana para contar elementos de colecciones finitas: \[\mathbb{N} = {0, 1, 2, 3, 4, \dots}\] _(En el texto base de Delgado Pineda & Muñoz Bouzo se incluye el \(0\) en \(\mathbb{N}\), utilizando la notación \(\mathbb{N}^_ = {1, 2, 3, 4, \dots}\) para los naturales estrictamente positivos)*.

Para dotar a la aritmética de una fundamentación lógica rigurosa e independiente de la intuición física o geométrica, Giuseppe Peano (1889) formuló la siguiente definición axiomática:

#### **Los Cinco Axiomas de Peano:**

1. **Axioma A1 (Existencia del Primer Elemento):**  
    El elemento \(0\) es un número natural (\(0 \in \mathbb{N}\)).  
    _(Garantiza que el conjunto \(\mathbb{N}\) es no vacío)_.
2. **Axioma A2 (Existencia de Sucesor):**  
    Todo número natural \(n \in \mathbb{N}\) tiene un único elemento **sucesor** (o siguiente) que es también un número natural.  
    _(Se traduce en la existencia de una aplicación bien definida \(s: \mathbb{N} \to \mathbb{N}\) que a cada natural \(n\) le asigna su sucesor \(s(n)\))_.
3. **Axioma A3 (El Cero no es Sucesor):**  
    El elemento \(0\) no es el sucesor de ningún número natural (\(0 \notin \text{Im}(s)\)).  
    _(Asegura que \(0\) es el primer elemento del proceso de contar)_.
4. **Axioma A4 (Inyectividad del Sucesor):**  
    Dos números naturales cuyos sucesores son iguales, son iguales entre sí: \[\forall m, n \in \mathbb{N}, \quad (s(m) = s(n) \implies m = n)\] _(Significa que la aplicación sucesor \(s: \mathbb{N} \to \mathbb{N}\) es **estrictamente inyectiva**)_.
5. **Axioma A5 (Axioma de Inducción):**  
    Si un subconjunto \(A \subseteq \mathbb{N}\) contiene al \(0\) y contiene a los sucesores de todos sus elementos, entonces contiene a todos los números naturales (\(A = \mathbb{N}\)): \[(0 \in A \quad \land \quad (\forall n \in A, s(n) \in A)) \implies A = \mathbb{N}\]

#### **Consecuencias Inmediatas del Sistema Axiomático:**

- **Unicidad de Antecesor para Nulo:** Todo número natural \(n \neq 0\) es el sucesor de algún número natural (el \(0\) es el único elemento sin antecesor).
- **Ausencia de Bucles Finitos:** Para todo \(n \in \mathbb{N}\), se cumple que \(n \neq s(n)\) (ningún número es igual a su sucesor).
- **Representación de la Sucesión:** Permite concebir \(\mathbb{N}\) como la secuencia infinita no repetitiva: \[\mathbb{N} = {0, s(0), s(s(0)), s(s(s(0))), \dots}\] donde \(1 = s(0)\), \(2 = s(1) = s(s(0))\), \(3 = s(2)\), etc.

---

### **2. Definición Recurrente y Propiedades de la Suma (\(+\)) en \(\mathbb{N}\)**

Apoyándose en el Axioma A5 (Principio de Inducción), las operaciones aritméticas no se introducen arbitrariamente, sino que **se definen de forma única por recurrencia**.

#### **Definición 5.1 (Definición Recurrente de la Suma):**

Dados dos números naturales \(m, n \in \mathbb{N}\), la **suma \(m + n\)** se define por recurrencia sobre el segundo argumento \(n\) mediante las dos condiciones:

1. **Base:** \(m + 0 = m\) para todo \(m \in \mathbb{N}\).
2. **Paso Recurrente:** \(m + s(n) = s(m + n)\) para todo \(m, n \in \mathbb{N}\).

> **Observación:** A partir de esta definición, para \(n = 0\) se obtiene que \(m + 1 = m + s(0) = s(m + 0) = s(m)\). Es decir, el **sucesor \(s(m)\) coincide exactamente con la expresión \(m + 1\)**.

---

#### **Proposición 5.2 (Propiedades Algebraicas de la Suma en \(\mathbb{N}\)):**

La suma de números naturales es una operación interna en \(\mathbb{N}\) que satisface las siguientes propiedades estructurales para cualesquiera \(m, n, p \in \mathbb{N}\):

1. **Elemento Neutro (\(0\)):** \(m + 0 = 0 + m = m\).
2. **Propiedad Asociativa:** \((m + n) + p = m + (n + p)\).
3. **Propiedad Conmutativa:** \(m + n = n + m\).
4. **Propiedad Cancelativa (de Simplificación):** Si \(m + p = n + p \implies m = n\).

#### **Demostración Analítica Ejemplar por Inducción (Proposición 5.2.4 - Cancelación):**

_Probaremos por inducción sobre \(p\) que si \(m + p = n + p \implies m = n\)_:

1. **Base Inductiva (\(p = 0\)):**  
    Si \(m + 0 = n + 0\), por el punto 1 de la Definición 5.1 tenemos \(m = n\). La propiedad es cierta para \(p = 0\).
2. **Paso Inductivo:**  
    Supongamos como **Hipótesis de Inducción (HI)** que la propiedad vale para \(p\) (es decir, \(m + p = n + p \implies m = n\)).  
    Queremos probar que de \(m + s(p) = n + s(p)\) se deduce que \(m = n\): \[m + s(p) = n + s(p) \implies s(m + p) = s(n + p) \quad (\text{por def. de suma})\] Como la aplicación sucesor \(s\) es **estrictamente inyectiva** (Axioma A4): \[m + p = n + p\] Aplicando ahora la **Hipótesis de Inducción**, concluimos inmediatamente que **\(m = n\)**. \(\blacksquare\)

---

### **3. Definición Recurrente y Propiedades del Producto (\(\cdot\)) en \(\mathbb{N}\)**

De forma análoga a la adición, la multiplicación se define rigurosamente por recurrencia.

#### **Definición 5.3 (Definición Recurrente del Producto):**

Dados dos números naturales \(m, n \in \mathbb{N}\), el **producto \(m \cdot n\)** (o \(mn\)) se define por recurrencia sobre \(n\) mediante las dos condiciones:

1. **Base:** \(m \cdot 0 = 0\) para todo \(m \in \mathbb{N}\).
2. **Paso Recurrente:** \(m \cdot s(n) = (m \cdot n) + m\) para todo \(m, n \in \mathbb{N}\).  
    _(En notación estándar: \(m(n + 1) = mn + m\))_.

---

#### **Proposición 5.4 (Propiedades Algebraicas del Producto en \(\mathbb{N}\)):**

El producto de números naturales es una operación interna en \(\mathbb{N}\) que satisface las siguientes propiedades estructurales para cualesquiera \(m, n, p \in \mathbb{N}\):

1. **Elemento Neutro (\(1 = s(0)\)):** \(m \cdot 1 = 1 \cdot m = m\).
2. **Propiedad Distributiva respecto de la Suma:**  
    \[m(n + p) = mn + mp \quad \land \quad (n + p)m = nm + pm\]
3. **Propiedad Asociativa:** \((mn)p = m(np)\).
4. **Propiedad Conmutativa:** \(mn = nm\).
5. **Propiedad Cancelativa:** Si \(mp = np\) y \(p \neq 0 \implies m = n\).

> **Consecuencia Crucial (Ausencia de Divisores de Cero en \(\mathbb{N}\)):**  
> De la propiedad cancelativa y conmutativa del producto se deduce que si \(m, p \in \mathbb{N}\) y \(m \cdot p = 0 \implies m = 0 \lor p = 0\).  
> Por tanto, el semianillo de los números naturales **carece de divisores de cero**.

---

### **4. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Demostrar por inducción sobre \(m\) que \(0 + m = m\) para todo \(m \in \mathbb{N}\) (completando formalmente la primera parte de la Proposición 5.2.1).
2. **Ejercicio 2:** Probar por inducción sobre \(n\) que para todo \(m \in \mathbb{N}\) se cumple la propiedad absorbente del cero en el producto a la izquierda: \(0 \cdot m = 0\).
3. **Ejercicio 3 (Ejercicio 1 del Capítulo 5 del texto base):** Demostrar por inducción que para todo \(n \in \mathbb{N}^*\) y para todo par de naturales \(a, b \in \mathbb{N}\), si \(a + n = b + n \implies a = b\) sin hacer uso directo de la propiedad cancelativa general.

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** En la fundamentación axiomática de Peano de los números naturales \(\mathbb{N}\) mediante la función sucesor \(s: \mathbb{N} \to \mathbb{N}\), la adición se define por recurrencia mediante \(m + 0 = m\) y \(m + s(n) = s(m + n)\). ¿Qué axioma de Peano garantiza de forma estricta la **propiedad cancelativa de la suma** (es decir, que \(m + p = n + p \implies m = n\))?

- **A)** El Axioma A4, que exige que la función sucesor \(s: \mathbb{N} \to \mathbb{N}\) sea **inyectiva** (\(s(a) = s(b) \implies a = b\)).
- **B)** El Axioma A3, que afirma que el \(0\) no es sucesor de ningún número natural.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - En el paso inductivo de la demostración de la propiedad cancelativa, la igualdad \(m + s(p) = n + s(p)\) se transforma por definición de suma en \(s(m + p) = s(n + p)\).
> - Para deducir a partir de ahí que \(m + p = n + p\), es condición indispensable aplicar la **inyectividad de la función sucesor \(s\)**, la cual viene dada de forma explícita y única por el **Axioma A4 de Peano**.
> - Por consiguiente, la opción **A** es la **correcta**.


## Material de apoyo

- [**Presentación**](Presentaciones/Sesión45_Números_naturales.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con la jerarquía del Bloque 5, recuadros normativos para los axiomas de Peano, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, las definiciones recurrentes y las demostraciones por inducción de las propiedades de la suma y el producto.
- [**Resumen de audio**](Audios/Sesión45_Números_naturales.m4a): Enfocado en la transición de la noción intuitiva de contar al rigor de la fundamentación axiomática de Giuseppe Peano, el papel de la función sucesor \(s(n)\), el quinto axioma como motor del Principio de Inducción, la construcción por recurrencia de la suma y el producto, las pruebas de asociatividad, conmutatividad y cancelación, y los criterios de redacción para el examen presencial de desarrollo de la UNED.

---
