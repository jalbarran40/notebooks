# **SESIÓN 14 (PRÁCTICA): REPRESENTACIÓN DE CONJUNTOS Y SUBCONJUNTOS EN GEOGEBRA (DIAGRAMAS DE VENN)**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 2: CONJUNTOS (Capítulo 2)  
**Objetivo:** Trasladar los conceptos abstractos de pertenencia (\(\in\)), inclusión (\(\subseteq\)) y conjunto universal (\(U\)) a representaciones geométricas bidimensionales mediante **Diagramas de Venn** y el software de apoyo **GeoGebra**.

---

### **1. Marco Teórico: Diagramas de Venn y Conjunto Universal**

#### **Concepto de Diagrama de Venn-Euler**

Un **diagrama de Venn** es una representación gráfica donde el **conjunto universal (\(U\))** se simboliza mediante una región rectangular del plano, y los conjuntos o subconjuntos de interés se representan como regiones delimitadas por curvas cerradas simples (usualmente elipses o círculos) situadas en el interior de \(U\).

#### **Traducción de Relaciones de Conjuntos a Geometría Plana**

1. **Pertenencia de un elemento (\(x \in A\)):** Se representa situando un punto individual \(x\) dentro de la frontera del círculo que delimita al conjunto \(A\).
2. **Inclusión de conjuntos (\(A \subseteq B\)):** Se representa dibujando el contorno del conjunto \(A\) **totalmente contenido en el interior** del contorno del conjunto \(B\).
3. **Conjuntos disjuntos (\(A \cap B = \emptyset\)):** Se representan mediante dos círculos sin ningún punto ni región en común (no se solapan).
4. **Subconjunto Propio (\(A \subset B\)):** \(A\) está dentro de \(B\), pero existe al menos una región dentro de \(B\) que no pertenece a \(A\).

---

### **2. Guía Práctica de Uso de GeoGebra para Teoría de Conjuntos**

Tal como recomienda la guía oficial de la UNED, emplearemos **GeoGebra** (entorno gráfico interactivo) para verificar visualmente propiedades de conjuntos.

#### **Paso a Paso en GeoGebra:**

1. **Delimitación del Universo (\(U\)):**
    - Dibuja un rectángulo en la vista gráfica mediante la herramienta `Polígono` con vértices en \((-5,-3)\), \((5,-3)\), \((5,3)\) y \((-5,3)\). Renombra este polígono como \(U\).
2. **Construcción de Conjuntos Básicos:**
    - Utiliza la herramienta `Circunferencia (Centro, Punto)` o la entrada de comandos para definir regiones.
    - Por ejemplo, para definir el conjunto \(A\) como un disco circular: \[A: (x - 1)^2 + y^2 \le 4\]
    - Introduce la inecuación directamente en la barra de entrada de GeoGebra. El programa sombreará automáticamente la región que cumple la condición.
3. **Representación de la Inclusión (\(A \subseteq B\)):**
    - Para visualizar \(A \subseteq B\), define un segundo conjunto \(B\) de mayor radio que contenga completamente a \(A\): \[B: (x - 1)^2 + y^2 \le 9\]
    - Al superponer ambas regiones con diferentes colores y opacidades, la región correspondiente a \(A\) queda enteramente sumergida en \(B\).

---

### **3. Ejercicios Prácticos de la Sesión (45 minutos)**

#### **Ejercicio 1: Verificación de Inclusión mediante Inecuaciones**

**Enunciado:** Sean los conjuntos \(A = {(x, y) \in \mathbb{R}^2 : x^2 + y^2 \le 1}\) y \(B = {(x, y) \in \mathbb{R}^2 : |x| \le 1.5 \land |y| \le 1.5}\). Representar en GeoGebra ambos conjuntos y determinar visualmente si se cumple \(A \subseteq B\).

- **Resolución en GeoGebra:**
    1. En la barra de entrada, introduce `A: x^2 + y^2 <= 1` (Círculo de radio 1 centrado en el origen).
    2. En la barra de entrada, introduce `B: abs(x) <= 1.5 && abs(y) <= 1.5` (Cuadrado centrado en el origen de lado 3).
    3. **Análisis gráfico:** El disco circular \(A\) queda completamente circunscrito dentro de la región cuadrada \(B\).
- **Conclusión formal:** Gráficamente se observa que para todo punto \((x,y)\), si \(x^2 + y^2 \le 1\), entonces \(|x| \le 1\) y \(|y| \le 1\), lo que implica \(|x| \le 1.5\) y \(|y| \le 1.5\). Por tanto, **\(A \subseteq B\)**.

---

#### **Ejercicio 2: Partición de las 8 Regiones del Universo para 3 Conjuntos**

**Enunciado:** Dados tres conjuntos generales \(A, B, C\) en posición no trivial dentro del universo \(U\), identificar y sombrear en GeoGebra la región correspondiente a los elementos que pertenecen exclusivamente a \(A\) pero no a \(B\) ni a \(C\).

- **Traducción Formal:** La región buscada corresponde al conjunto \(A \setminus (B \cup C)\) o, equivalentemente, en lenguaje algebraico: \[A \land \neg B \land \neg C\]
- **Instrucción en GeoGebra:** Si los conjuntos se definen por las inecuaciones `a`, `b` y `c`, la región exclusiva se obtiene tecleando: `a && !b && !c`

---

### **4. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Si dos conjuntos \(A\) y \(B\) cumplen que en su diagrama de Venn la región de \(A\) no tiene ningún punto en común con la región de \(B\) (son disjuntos), ¿cuál de las siguientes afirmaciones es **necesariamente verdadera**?

- **A)** \(A \subseteq B\)
- **B)** \(A \cap B = \emptyset\)
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - La opción **B** es **correcta** porque, por definición formal de conjuntos disjuntos, si dos conjuntos no comparten ningún punto en su representación gráfica, su intersección es el conjunto vacío (\(A \cap B = \emptyset\)).
> - La opción A es falsa ya que la inclusión exigiría que la región de \(A\) estuviese totalmente dentro de la región de \(B\).


## Material adicional
- Presentación

- Resumen de audio
