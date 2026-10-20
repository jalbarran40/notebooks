# **SESIÓN 53 (TEORÍA): LOS NÚMEROS COMPLEJOS: DEFINICIÓN, PARTE REAL E IMAGINARIA**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 6: RACIONALES, REALES Y COMPLEJOS (Capítulos 6 y 7)  
**Objetivo:** Comprender la motivación algebraica para extender el cuerpo de los números reales \(\mathbb{R}\) al conjunto de los números complejos \(\mathbb{C}\), formalizar la definición de \(\mathbb{C}\) como el plano \(\mathbb{R}^2\) equipado con operaciones de suma y producto específicas, demostrar la estructura de **cuerpo conmutativo \((\mathbb{C}, +, \cdot)\)**, formalizar la inclusión de \(\mathbb{R}\) como subcuerpo, definir la **unidad imaginaria \(i\)** y la **forma binómica \(z = a + bi\)**, caracterizar con rigor la **parte real \(\text{Re}(z)\)** y la **parte imaginaria \(\text{Im}(z)\)**, y demostrar analíticamente la imposibilidad de definir un orden total en \(\mathbb{C}\) compatible con su estructura algebraica.

---

### **1. Motivación Algebraica y Necesidad de Extensión de \(\mathbb{R}\)**

A lo largo de la historia del álgebra, la ampliación de los sistemas numéricos ha respondido a la necesidad de resolver ecuaciones que carecían de solución en el sistema previo:

- De \(\mathbb{N}\) a \(\mathbb{Z}\) para resolver ecuaciones aditivas \(b + x = a\) con \(a < b\).
- De \(\mathbb{Z}\) a \(\mathbb{Q}\) para resolver ecuaciones multiplicativas \(ax = b\) con \(a \neq 0\).
- De \(\mathbb{Q}\) a \(\mathbb{R}\) (extensión analítica) para garantizar la completitud (Axioma del Supremo) y la existencia de raíces de ecuaciones geométricas como \(x^2 = 2\).

Sin embargo, en el cuerpo totalmente ordenado de los números reales \((\mathbb{R}, +, \cdot, \le)\), el cuadrado de todo número real no nulo es estrictamente positivo (\(x^2 > 0\) para todo \(x \neq 0\)). En consecuencia, una ecuación tan elemental como: \[ x^2 + 1 = 0 \iff x^2 = -1 \] **no posee solución en \(\mathbb{R}\)**. Para superar esta restricción, se construye una extensión algebraica del cuerpo real introduciendo un nuevo sistema numérico \(\mathbb{C}\) donde todo número real negativo admita raíz cuadrada.

---

### **2. Definición Formal de \(\mathbb{C}\) como \(\mathbb{R}^2\) con Operaciones Internas**

En lugar de asumir de forma vaga la existencia de "números imaginarios", la matemática moderna (sabiendo que la teoría de conjuntos y \(\mathbb{R}\) ya están bien fundamentados) define rigurosamente el conjunto de los números complejos a partir del producto cartesiano \(\mathbb{R}^2 = \mathbb{R} \times \mathbb{R}\).

#### **Definición 7.1 (Texto Base Delgado Pineda & Muñoz Bouzo):**

_Se define el conjunto de los **números complejos**, denotado por \(\mathbb{C}\), como el conjunto de pares ordenados de números reales:_ \[ \mathbb{C} = \mathbb{R}^2 = {(a, b) \mid a \in \mathbb{R}, b \in \mathbb{R}} \]

En este conjunto \(\mathbb{C}\) se definen dos **operaciones internas** (leyes de composición interna):

1. **Suma de números complejos (\(+\)):** \[ (a, b) + (c, d) = (a + c, \quad b + d) \]
2. **Producto de números complejos (\(\cdot\)):** \[ (a, b) \cdot (c, d) = (ac - bd, \quad ad + bc) \]

---

### **3. Estructura de Cuerpo Conmutativo \((\mathbb{C}, +, \cdot)\)**

#### **Teorema 7.2 (Estructura Algebraica de \(\mathbb{C}\)):**

_El trío \((\mathbb{C}, +, \cdot)\) tiene estructura de **cuerpo conmutativo**._

#### **Demostración Analítica Paso a Paso (Examen UNED):**

1. **Estructura de Grupo Abeliano Aditivo \((\mathbb{C}, +)\):**
    
    - **Asociativa:** \(((a,b) + (c,d)) + (e,f) = (a+c+e, b+d+f) = (a,b) + ((c,d) + (e,f))\).
    - **Conmutativa:** \((a, b) + (c, d) = (a+c, b+d) = (c+a, d+b) = (c, d) + (a, b)\).
    - **Elemento Neutro Aditivo (Elemento Nulo):** Existe \(0_{\mathbb{C}} = (0, 0) \in \mathbb{C}\) tal que: \[ (a, b) + (0, 0) = (a + 0, b + 0) = (a, b) \]
    - **Elemento Simétrico Aditivo (Opuesto):** Para todo \(z = (a, b) \in \mathbb{C}\), existe \(-z = (-a, -b) \in \mathbb{C}\) tal que: \[ (a, b) + (-a, -b) = (a + (-a), b + (-b)) = (0, 0) \]
2. __Estructura de Grupo Conmutativo Multiplicativo \((\mathbb{C}^_, \cdot)\):_*
    
    - **Asociativa y Conmutativa:** Se verifican mediante cálculo algebraico directo apoyándose en la conmutatividad y asociatividad en \(\mathbb{R}\).
    - **Elemento Neutro Multiplicativo (Unidad):** Existe \(1_{\mathbb{C}} = (1, 0) \in \mathbb{C}\) tal que: \[ (a, b) \cdot (1, 0) = (a \cdot 1 - b \cdot 0, \quad a \cdot 0 + b \cdot 1) = (a, b) \]
    - **Elemento Inverso Multiplicativo:** Para todo \(z = (a, b) \neq (0, 0)\) (lo que exige \(a^2 + b^2 > 0\)), existe un único elemento \(z^{-1} = (x, y) \in \mathbb{C}\) tal que \((a, b) \cdot (x, y) = (1, 0)\).  
        Sustituyendo en la definición de producto obtenemos el sistema lineal en \(\mathbb{R}\): \[ \begin{cases} ax - by = 1 \ bx + ay = 0 \end{cases} \implies x = \frac{a}{a^2 + b^2}, \quad y = \frac{-b}{a^2 + b^2} \] Por tanto, todo complejo no nulo admite inverso multiplicativo explícito: \[ (a, b)^{-1} = \left( \frac{a}{a^2 + b^2}, \quad \frac{-b}{a^2 + b^2} \right) \in \mathbb{C} \]
3. **Distributividad del Producto respecto de la Suma:**  
    \[ z_1 \cdot (z_2 + z_3) = z_1 \cdot z_2 + z_1 \cdot z_3 \quad \forall z_1, z_2, z_3 \in \mathbb{C} \] \(\blacksquare\)
    

---

### **4. Identificación de \(\mathbb{R}\) como Subcuerpo de \(\mathbb{C}\)**

Consideremos el subconjunto de \(\mathbb{C}\) formado por los pares cuya segunda componente es nula: \[ \mathbb{R}' = {(a, 0) \in \mathbb{C} \mid a \in \mathbb{R}} \subset \mathbb{C} \]

Si operamos con dos elementos de este subconjunto:

- **Suma:** \((a, 0) + (c, 0) = (a + c, 0)\)
- **Producto:** \((a, 0) \cdot (c, 0) = (a \cdot c - 0 \cdot 0, \quad a \cdot 0 + 0 \cdot c) = (ac, 0)\)

La aplicación \(f: \mathbb{R} \to \mathbb{R}'\) dada por \(f(a) = (a, 0)\) es un **isomorfismo de cuerpos**. Por ello, **identificamos unívocamente el número real \(a \in \mathbb{R}\) con el complejo \((a, 0) \in \mathbb{C}\)**: \[ (a, 0) \equiv a \]

---

### **5. La Unidad Imaginaria \(i\) y la Forma Binómica**

#### **Definición 7.3 (Unidad Imaginaria):**

_Se llama **unidad imaginaria**, y se denota por \(i\), al número complejo representado por el par ordenado:_ \[ i = (0, 1) \]

#### **Propiedad Fundamental de \(i\):**

Calculemos el cuadrado del complejo \(i\): \[ i^2 = i \cdot i = (0, 1) \cdot (0, 1) = (0 \cdot 0 - 1 \cdot 1, \quad 0 \cdot 1 + 1 \cdot 0) = (-1, 0) \] Aplicando la identificación del subcuerpo real \((-1, 0) \equiv -1\), obtenemos la célebre identidad: \[ i^2 = -1 \]

#### **Deducción de la Forma Binómica:**

Dado un número complejo arbitrario \(z = (a, b) \in \mathbb{C}\), podemos descomponerlo empleando la suma vectorial y la unidad imaginaria: \[ z = (a, b) = (a, 0) + (0, b) = (a, 0) + (b, 0) \cdot (0, 1) \] Sustituyendo \((a, 0) \equiv a\), \((b, 0) \equiv b\) y \((0, 1) = i\): \[ z = a + bi \]

> **Forma Binómica:** Expresión de un número complejo como \(z = a + bi\), donde \(a, b \in \mathbb{R}\).

---

### **6. Parte Real y Parte Imaginaria: Definición y Clasificación**

Dado un número complejo \(z = a + bi \in \mathbb{C}\) (con \(a, b \in \mathbb{R}\)):

- **Parte Real:** Es el número real \(a\). Se denota por **\(\text{Re}(z) = a \in \mathbb{R}\)**.
- **Parte Imaginaria:** Es el número real \(b\). Se denota por **\(\text{Im}(z) = b \in \mathbb{R}\)**.

> **¡Atención a la Trampa de Examen UNED!**  
> La parte imaginaria es el escalar real \(b\), **NUNCA incluye la \(i\)**.  
> _Ejemplo:_ Si \(z = 3 - 4i\), entonces \(\text{Re}(z) = 3\) y \(\text{Im}(z) = -4\) (decir \(\text{Im}(z) = -4i\) es un fallo de rigor sintáctico penalizado en el examen).

#### **Clasificación de Números Complejos:**

- **Número Real Puro:** Si \(\text{Im}(z) = 0 \iff z = a + 0i = a \in \mathbb{R}\).
- **Número Imaginario Puro:** Si \(\text{Re}(z) = 0\) y \(\text{Im}(z) \neq 0 \iff z = 0 + bi = bi\).

---

### **7. Inexistencia de Orden Total Compatible en \(\mathbb{C}\)**

#### **Teorema (Incompatibilidad de Orden en \(\mathbb{C}\)):**

_No existe en el cuerpo de los números complejos \(\mathbb{C}\) ninguna relación de orden total \(\le\) que sea compatible con las operaciones de cuerpo (suma y producto)._

- **Demostración Analítica por Reducción al Absurdo (Texto Base / Examen UNED):**
    
    1. Supongamos por contradicción que existiera una relación de orden total \(\le\) en \(\mathbb{C}\) compatible con la suma y el producto.
    2. En todo cuerpo totalmente ordenado, el cuadrado de cualquier elemento no nulo debe ser estrictamente positivo (\(x \neq 0 \implies x^2 > 0\)).
    3. Como \(1 \neq 0\), aplicando la propiedad a \(x = 1\) se deduce que: \[ 1^2 > 0 \implies 1 > 0 \quad (*) \]
    4. Como la unidad imaginaria cumple \(i \neq 0\), aplicando la misma propiedad a \(x = i\) se deduce que: \[ i^2 > 0 \implies -1 > 0 \quad (**) \]
    5. Sumando las desigualdades \((*)\) y \((**)\) miembro a miembro por la compatibilidad de la suma: \[ 1 + (-1) > 0 + 0 \implies 0 > 0 \]
    6. Llegamos a la **contradicción de que \(0 > 0\)**.
    7. **Conclusión:** Es imposible definir un orden total en \(\mathbb{C}\) compatible con su estructura de cuerpo. \(\blacksquare\)

---

### **8. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1 (Ejercicio 1 del Capítulo 7 del texto base):** Demostrar detalladamente en forma binómica las propiedades asociativa, conmutativa y distributiva del producto en \(\mathbb{C}\).
2. **Ejercicio 2:** Dado el número complejo \(z = \frac{a + 6i}{2 - i}\) con \(a \in \mathbb{R}\), determinar el valor del parámetro \(a\) para que:
    - a) \(z\) sea un número real puro.
    - b) \(z\) sea un número imaginario puro.
    - c) \(z\) esté sobre la bisectriz del segundo y cuarto cuadrante (\(\text{Re}(z) = -\text{Im}(z)\)).
3. **Ejercicio 3:** Sean \(z_1 = 2 - 3i\) y \(z_2 = 1 + 4i\). Calcular explícitamente en forma binómica \(z_1 + z_2\), \(z_1 \cdot z_2\), y el inverso \(z_1^{-1}\).

---

### **9. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea el número complejo \(z = 3 - 5i \in \mathbb{C}\). ¿Cuál de las siguientes afirmaciones es la única **correcta**?

- **A)** Su parte imaginaria es \(\text{Im}(z) = -5i\).
- **B)** Su parte imaginaria es \(\text{Im}(z) = -5\) y su inverso multiplicativo es \(z^{-1} = \frac{3}{34} + \frac{5}{34}i\).
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - La opción A es falsa porque por definición la parte imaginaria es el número real \(b = -5\), no incluye la unidad imaginaria \(i\).
> - Analizamos la opción B: \(\text{Im}(z) = -5 \in \mathbb{R}\). Para el inverso de \(z = (3, -5)\): \[ z^{-1} = \left( \frac{a}{a^2 + b^2}, \frac{-b}{a^2 + b^2} \right) = \left( \frac{3}{3^2 + (-5)^2}, \frac{-(-5)}{3^2 + (-5)^2} \right) = \left( \frac{3}{34}, \frac{5}{34} \right) = \frac{3}{34} + \frac{5}{34}i \]
> - Comprobación: \((3 - 5i) \cdot \left( \frac{3}{34} + \frac{5}{34}i \right) = \frac{9 - 15i + 15i - 25i^2}{34} = \frac{9 + 25}{34} = 1\).
> - Por lo tanto, la opción **B** es la **correcta**.


## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión53_Números_complejos.pptx): Maquetada según el _AAA_Manual_de_Estilo_Presentaciones_ y la notación LaTeX requerida (`$` para expresiones en línea y `$$` para bloques), con la jerarquía del Bloque 6, recuadros normativos para la definición de \(\mathbb{C}\), la demostración de la estructura de cuerpo conmutativo, la deducción de \(i^2 = -1\), la forma binómica \(z = a + bi\), la advertencia sobre \(\text{Im}(z) \in \mathbb{R}\) y la prueba de imposibilidad de orden total.
- [**Resumen de audio**](Audios/Sesión53_Números_complejos.m4a): Enfocado en la necesidad algebraica de extender la recta real \(\mathbb{R}\) al plano complejo \(\mathbb{C}\), la construcción formal mediante pares ordenados, las reglas de operaciones, la forma binómica, la identificación de partes reales e imaginarias, la trampa del examen sobre \(\text{Im}(z)\) y las pautas para la prueba presencial de desarrollo.

---
