# **SESIÓN 56 (PRÁCTICA): CÁLCIULO DE RAÍCES N-ÉSIMAS DE NÚMEROS COMPLEJOS CON WOLFRAMALPHA**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 6: RACIONALES, REALES Y COMPLEJOS (Capítulos 6 y 7)  
**Objetivo:** Deducir formalmente la fórmula analítica para la extracción de las \(n\) raíces \(n\)-ésimas de un número complejo no nulo \(w = r e^{i\theta}\), interpretar la geometría de las raíces como los vértices de un polígono regular de \(n\) lados inscrito en la circunferencia de radio \(\sqrt[n]{r}\) en el plano de Argand, resolver ecuaciones polinómicas complejas de la forma \(z^n = w\), e integrar la verificación computacional mediante comandos específicos en WolframAlpha.

---

### **1. Resumen Metodológico: Radicación Compleja e Interpretación Geométrica**

Sea \(w \in \mathbb{C}^*\) un número complejo no nulo expresado en forma exponencial \(w = \rho e^{i\theta}\) (donde \(\rho = |w| > 0\) y \(\theta = \text{arg}(w)\)) y sea \(n \in \mathbb{N}^*\) con \(n \ge 2\).

Buscamos todos los números complejos \(z = r e^{i\alpha} \in \mathbb{C}\) que satisfacen la ecuación polinómica: \[z^n = w\]

#### **Deducción Analítica de la Fórmula de Radicación:**

Sustituyendo la forma exponencial de \(z\) y \(w\): \[(r e^{i\alpha})^n = \rho e^{i\theta} \iff r^n e^{i n \alpha} = \rho e^{i\theta}\]

Igualando módulos y argumentos según la igualdad de complejos en forma polar:

1. **Igualdad de módulos:** \(r^n = \rho \implies r = \sqrt[n]{\rho} \in \mathbb{R}^+\) (raíz \(n\)-ésima real positiva unívoca).
2. **Igualdad de argumentos:** \(n\alpha = \theta + 2k\pi \implies \alpha_k = \frac{\theta + 2k\pi}{n}\) para \(k \in \mathbb{Z}\).

Al hacer variar el entero \(k\) desde \(0\) hasta \(n - 1\), se obtienen exactamente **\(n\) argumentos distintos** módulo \(2\pi\). Para \(k = n\), se obtiene \(\alpha_n = \frac{\theta + 2n\pi}{n} = \frac{\theta}{n} + 2\pi \equiv \alpha_0\), repitiéndose periódicamente las soluciones.

#### **Teorema de la Radicación Compleja (Texto Base Delgado Pineda & Muñoz Bouzo):**

_Todo número complejo no nulo \(w = \rho e^{i\theta} \in \mathbb{C}^_\) posee exactamente \(n\) raíces \(n\)-ésimas distintas en \(\mathbb{C}\), dadas por la fórmula:*

\[z_k = \sqrt[n]{\rho} \cdot e^{i \left( \frac{\theta + 2k\pi}{n} \right)} = \sqrt[n]{\rho} \left( \cos\left(\frac{\theta + 2k\pi}{n}\right) + i \sin\left(\frac{\theta + 2k\pi}{n}\right) \right), \quad k = 0, 1, 2, \dots, n - 1\]

#### **Geometría de las Raíces en el Plano de Argand:**

1. Todas las \(n\) raíces \(z_0, z_1, \dots, z_{n-1}\) poseen el **mismo módulo** \(R = \sqrt[n]{\rho}\), de modo que sus afijos están situados sobre la **circunferencia centrada en el origen y de radio \(R = \sqrt[n]{|w|}\)**.
2. La diferencia entre los argumentos de dos raíces consecutivas es constante e igual a \(\Delta\alpha = \frac{2\pi}{n}\) radianes (\(\frac{360^\circ}{n}\)).
3. Por consiguiente, los afijos de las \(n\) raíces constituyan los **vértices de un polígono regular de \(n\) lados** inscrito en dicha circunferencia.

---

### **2. Batería de Ejercicios Resueltos Paso a Paso (Examen UNED)**

#### **Ejercicio 1: Raíces Cúbicas de \(-1\) y Raíces Cuartas de la Unidad**

**Enunciado:** Calcular analíticamente en forma exponencial, trigonométrica y binómica:

1. Las raíces cúbicas de \(w = -1\).
2. Las raíces cuartas de \(w = 1\).

- **Resolución Paso a Paso:**
    
    **Apartado 1: Raíces Cúbicas de \(w = -1\)**
    
    1. Escribimos \(w = -1\) en forma polar/exponencial:  
        \[\rho = |-1| = 1, \quad \theta = \text{Arg}(-1) = \pi \implies w = 1 e^{i\pi}\]
    2. Aplicamos la fórmula de radicación para \(n = 3\):  
        \[r = \sqrt{1} = 1, \quad \alpha_k = \frac{\pi + 2k\pi}{3}, \quad k \in {0, 1, 2}\]
    3. Evaluamos para cada valor del índice \(k\):
        - **Para \(k = 0\):** \(\alpha_0 = \frac{\pi}{3} \implies z_0 = 1 e^{i \frac{\pi}{3}} = \cos\left(\frac{\pi}{3}\right) + i \sin\left(\frac{\pi}{3}\right) = \frac{1}{2} + i \frac{\sqrt{3}}{2}\)
        - **Para \(k = 1\):** \(\alpha_1 = \frac{\pi + 2\pi}{3} = \pi \implies z_1 = 1 e^{i\pi} = \cos(\pi) + i \sin(\pi) = -1\)
        - **Para \(k = 2\):** \(\alpha_2 = \frac{\pi + 4\pi}{3} = \frac{5\pi}{3} \equiv -\frac{\pi}{3} \implies z_2 = 1 e^{-i \frac{\pi}{3}} = \cos\left(-\frac{\pi}{3}\right) + i \sin\left(-\frac{\pi}{3}\right) = \frac{1}{2} - i \frac{\sqrt{3}}{2}\)
    4. **Interpretación Geométrica:** Los afijos forman un **triángulo equilátero** en la circunferencia unidad.
    
    **Apartado 2: Raíces Cuartas de \(w = 1\) (Conjunto \(U_4\))**
    
    1. Escribimos \(w = 1\) en forma exponencial: \(\rho = 1\), \(\theta = 0 \implies w = 1 e^{i 0}\).
    2. Aplicamos la fórmula para \(n = 4\):  
        \[\alpha_k = \frac{0 + 2k\pi}{4} = \frac{k\pi}{2}, \quad k \in {0, 1, 2, 3}\]
    3. Obtenemos las soluciones:
        - \(k = 0 \implies z_0 = e^{i 0} = 1\)
        - \(k = 1 \implies z_1 = e^{i \frac{\pi}{2}} = i\)
        - \(k = 2 \implies z_2 = e^{i\pi} = -1\)
        - \(k = 3 \implies z_3 = e^{i \frac{3\pi}{2}} = -i\)
    4. **Interpretación Geométrica:** Los afijos formados por \({1, i, -1, -i}\) constituyen un **cuadrado perfecto** inscrito en la circunferencia \(r = 1\).

---

#### **Ejercicio 2: Resolución de Ecuaciones Polinómicas Complejas**

**Enunciado:** Resolver en el cuerpo complejo \(\mathbb{C}\):

1. \(z^3 = -27i\)
2. \(z^4 + 16 = 0\)

- **Resolución Paso a Paso:**
    
    **Apartado 1: \(z^3 = -27i\)**
    
    1. Expresamos el término independiente \(w = -27i\) en forma exponencial:  
        \[\rho = |-27i| = 27, \quad \theta = \text{Arg}(-27i) = -\frac{\pi}{2} \implies w = 27 e^{-i \frac{\pi}{2}}\]
    2. Calculamos el módulo y argumentos de las raíces cúbicas (\(n = 3\)):  
        \[R = \sqrt{27} = 3, \quad \alpha_k = \frac{-\frac{\pi}{2} + 2k\pi}{3} = -\frac{\pi}{6} + \frac{2k\pi}{3}, \quad k \in {0, 1, 2}\]
    3. Sustituimos los tres valores del parámetro \(k\):
        - **Para \(k = 0\):** \(\alpha_0 = -\frac{\pi}{6} \implies z_0 = 3 e^{-i \frac{\pi}{6}} = 3\left(\frac{\sqrt{3}}{2} - \frac{1}{2}i\right) = \frac{3\sqrt{3}}{2} - \frac{3}{2}i\)
        - **Para \(k = 1\):** \(\alpha_1 = -\frac{\pi}{6} + \frac{2\pi}{3} = \frac{\pi}{2} \implies z_1 = 3 e^{i \frac{\pi}{2}} = 3i\)
        - **Para \(k = 2\):** \(\alpha_2 = -\frac{\pi}{6} + \frac{4\pi}{3} = \frac{7\pi}{6} \equiv -\frac{5\pi}{6} \implies z_2 = 3 e^{-i \frac{5\pi}{6}} = 3\left(-\frac{\sqrt{3}}{2} - \frac{1}{2}i\right) = -\frac{3\sqrt{3}}{2} - \frac{3}{2}i\)
    
    **Apartado 2: \(z^4 + 16 = 0 \iff z^4 = -16\)**
    
    4. Expresamos \(w = -16\) en forma exponencial: \(\rho = 16\), \(\theta = \pi \implies w = 16 e^{i\pi}\).
    5. Calculamos las raíces cuartas (\(n = 4\)):  
        \[R = \sqrt{16} = 2, \quad \alpha_k = \frac{\pi + 2k\pi}{4} = \frac{\pi}{4} + \frac{k\pi}{2}, \quad k \in {0, 1, 2, 3}\]
    6. Evaluamos \(k\):
        - \(k = 0 \implies z_0 = 2 e^{i \frac{\pi}{4}} = 2\left(\frac{\sqrt{2}}{2} + i \frac{\sqrt{2}}{2}\right) = \sqrt{2} + i\sqrt{2}\)
        - \(k = 1 \implies z_1 = 2 e^{i \frac{3\pi}{4}} = 2\left(-\frac{\sqrt{2}}{2} + i \frac{\sqrt{2}}{2}\right) = -\sqrt{2} + i\sqrt{2}\)
        - \(k = 2 \implies z_2 = 2 e^{i \frac{5\pi}{4}} = 2\left(-\frac{\sqrt{2}}{2} - i \frac{\sqrt{2}}{2}\right) = -\sqrt{2} - i\sqrt{2}\)
        - \(k = 3 \implies z_3 = 2 e^{i \frac{7\pi}{4}} = 2\left(\frac{\sqrt{2}}{2} - i \frac{\sqrt{2}}{2}\right) = \sqrt{2} - i\sqrt{2}\)

---

### **3. Verificación Computacional en WolframAlpha**

De acuerdo con el _AAA_Manual_de_Estilo_Presentaciones_, es fundamental dominar la sintaxis exacta de entrada en WolframAlpha para comprobar resultados analíticos de examen:

1. **Resolución de Ecuaciones Polinómicas Complejas:**
    - Para resolver \(z^3 = -27i\):  
        `Solve[z^3 == -27 I, z]`
    - Para resolver \(z^4 + 16 = 0\):  
        `Solve[z^4 + 16 == 0, z]`
2. **Cálculo Directo de Raíces \(n\)-ésimas:**
    - Para obtener todas las raíces complejas de \(-16\):  
        `ComplexRoot[-16, 4]` o `(-16)^(1/4)`
3. **Conversión Automática a Forma Binómica:**
    - Para expandir una expresión en forma binómica \(a + bi\):  
        `ComplexExpand[(-27 I)^(1/3)]`
4. **Representación Gráfica del Polígono de Raíces:**
    - WolframAlpha dibuja automáticamente la distribución de raíces en el diagrama de Argand al introducir comandos de resolución `Solve`.

---

### **4. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Resolver la ecuación \(z^6 - 64 = 0\) en \(\mathbb{C}\), dar el resultado en forma binómica y comprobar que los afijos forman un **hexágono regular**.
2. **Ejercicio 2 (Ejercicio 1.34 del Capítulo 7 del texto base):** Calcular las tres raíces cúbicas de \(w = 1 - i\), expresándolas en forma exponencial con argumento principal en \((-\pi, \pi]\).
3. **Ejercicio 3 (Factorización de Polinomios):** Resolver la ecuación \(z^4 + 9 = 0\) y utilizar las cuatro raíces complejas obtenidas para factorizar el polinomio \(P(z) = z^4 + 9\) en producto de dos polinomios cuadráticos con coeficientes reales.

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** ¿Cuáles son las tres raíces cúbicas en forma exponencial del número complejo \(w = 27i \in \mathbb{C}\)?

- **A)** \(z_0 = 3 e^{i \frac{\pi}{6}}\), \(z_1 = 3 e^{i \frac{5\pi}{6}}\), \(z_2 = 3 e^{-i \frac{\pi}{2}}\)
- **B)** \(z_0 = 3 e^{i \frac{\pi}{2}}\), \(z_1 = 3 e^{i \frac{7\pi}{6}}\), \(z_2 = 3 e^{i \frac{11\pi}{6}}\)
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Expresamos \(w = 27i\) en forma exponencial: \(|27i| = 27\) y \(\text{Arg}(27i) = \frac{\pi}{2} \implies w = 27 e^{i \frac{\pi}{2}}\).
> - Calculamos el módulo de las raíces: \(R = \sqrt{27} = 3\).
> - Los argumentos son \(\alpha_k = \frac{\pi/2 + 2k\pi}{3} = \frac{\pi}{6} + \frac{2k\pi}{3}\) para \(k \in {0, 1, 2}\):
>     - \(k = 0 \implies \alpha_0 = \frac{\pi}{6} \implies z_0 = 3 e^{i \frac{\pi}{6}}\).
>     - \(k = 1 \implies \alpha_1 = \frac{\pi}{6} + \frac{2\pi}{3} = \frac{5\pi}{6} \implies z_1 = 3 e^{i \frac{5\pi}{6}}\).
>     - \(k = 2 \implies \alpha_2 = \frac{\pi}{6} + \frac{4\pi}{3} = \frac{9\pi}{6} = \frac{3\pi}{2} \equiv -\frac{\pi}{2} \implies z_2 = 3 e^{-i \frac{\pi}{2}}\).
> - Por consiguiente, la opción **A** es la **correcta**.

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión56_Cálculo_de_raices.pptx): Maquetada en estricta conformidad con el _AAA_Manual_de_Estilo_Presentaciones_ y con notación LaTeX (`$` para expresiones en línea y `$$` para bloques), organizando la deducción analítica de la radicación, la geometría de los polígonos regulares inscritos en la circunferencia de radio \(\sqrt[n]{r}\), el algoritmo de resolución de ecuaciones \(z^n = w\), ejemplos resueltos de examen y comandos exactos de entrada para WolframAlpha.
- [**Resumen de audio**](Audios/Sesión56_Cálculo_de_raices.m4a): Enfocado en la transición analítica de la forma exponencial al cálculo de raíces complejas, la existencia garantizada de exactamente \(n\) soluciones distintas, la distribución simétrica de los argumentos en el plano de Argand, la resolución paso a paso de ecuaciones polinómicas complejas y las pautas para el examen presencial de desarrollo de la UNED.

---
