# **SESIÓN 55 (TEORÍA): FORMA POLAR Y EXPONENCIAL. OPERACIONES EN FORMA POLAR**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 6: RACIONALES, REALES Y COMPLEJOS (Capítulos 6 y 7)  
**Objetivo:** Definir el módulo $r = |z|$ y el argumento $\theta = \text{arg}(z)$ de un número complejo no nulo $z \neq 0$, caracterizar el **argumento principal $\text{Arg}(z)$**, expresar un número complejo en forma **trigonométrica** $z = r(\cos \theta + i \sin \theta)$, **polar** $z = r_\theta$ y **exponencial** $z = r e^{i\theta}$ mediante la **Fórmula de Euler $e^{i\theta} = \cos \theta + i \sin \theta$**, dominar las operaciones en forma polar y exponencial (producto, cociente, inverso, potencia y **Fórmula de De Moivre**), e interpretar su significado geométrico como giros y homotecias en el plano complejo.

---

### **1. Módulo, Argumento y Argumento Principal**

Dado un número complejo no nulo $z = a + bi \in \mathbb{C}^*$ (con $a, b \in \mathbb{R}$ no simultáneamente nulos):

1. **Módulo ($r = |z|$):** Es la distancia euclídea desde el origen hasta el afijo $P(a, b)$: $$r = |z| = \sqrt{a^2 + b^2} > 0$$
    
2. **Argumento ($\theta = \text{arg}(z)$):** Es el ángulo (medido en radianes) que forma el vector de posición $\vec{OP} = (a, b)$ con el semieje real positivo $OX^+$.
    
    - Puesto que las funciones seno y coseno son periódicas de período $2\pi$, todo número complejo no nulo admite **infinitos argumentos**, que difieren entre sí en múltiplos enteros de $2\pi$: $$\text{arg}(z) = {\theta_0 + 2k\pi \mid k \in \mathbb{Z}}$$
3. **Argumento Principal ($\text{Arg}(z)$):** Para evitar la multiplicidad de argumentos y definir una función unívoca, se selecciona el único ángulo $\theta \in (-\pi, \pi]$ (o en $[0, 2\pi)$ según el convenio del texto base) que satisface las ecuaciones trigonométricas: $$\cos \theta = \frac{a}{r} = \frac{a}{\sqrt{a^2 + b^2}}, \quad \sin \theta = \frac{b}{r} = \frac{b}{\sqrt{a^2 + b^2}}$$ Se denota mediante mayúscula: **$\text{Arg}(z) \in (-\pi, \pi]$**.
    

> **Caso del Elemento Nulo:** Para $z = 0$, el módulo es cero ($|0| = 0$), pero su argumento no está definido.

---

### **2. Conversión a Forma Trigonométrica y Forma Polar**

A partir de las relaciones trigonométricas básicas en el triángulo rectángulo formado por el afijo $P(a, b)$: $$a = r \cos \theta, \quad b = r \sin \theta$$

Sustituyendo en la forma binómica $z = a + bi$:

#### **Forma Trigonométrica:**

$$z = r(\cos \theta + i \sin \theta)$$

#### **Forma Polar:**

Representa al complejo mediante el par ordenado del módulo y el argumento escrito como subíndice: $$z = r_\theta$$

#### **Algoritmo de Cambio de Forma Binómica a Polar:**

Dado $z = a + bi \in \mathbb{C}^*$:

1. $r = \sqrt{a^2 + b^2}$.
2. Para calcular $\theta = \text{Arg}(z)$, se determina la arcotangente considerando el **cuadrante geométrico** de $(a, b)$:
    - **Primer cuadrante ($a > 0, b \ge 0$):** $\theta = \arctan\left(\frac{b}{a}\right)$.
    - **Segundo cuadrante ($a < 0, b \ge 0$):** $\theta = \arctan\left(\frac{b}{a}\right) + \pi$.
    - **Tercer cuadrante ($a < 0, b < 0$):** $\theta = \arctan\left(\frac{b}{a}\right) - \pi$.
    - **Cuarto cuadrante ($a > 0, b < 0$):** $\theta = \arctan\left(\frac{b}{a}\right)$.

---

### **3. La Fórmula de Euler y la Forma Exponencial**

#### **Definición 7.10 / Sección 7.4 (Fórmula de Euler):**

_Para todo ángulo real $\theta \in \mathbb{R}$, se define la **Fórmula de Euler** como la función exponencial compleja de exponente imaginario puro:_

$$e^{i\theta} = \exp(i\theta) = \cos \theta + i \sin \theta$$

#### **Propiedades Inmediatas de $e^{i\theta}$:**

- **Módulo Unitario:** $|e^{i\theta}| = \sqrt{\cos^2 \theta + \sin^2 \theta} = 1$ para todo $\theta \in \mathbb{R}$.
- **Periodicidad:** $e^{i(\theta + 2k\pi)} = e^{i\theta}$ para todo $k \in \mathbb{Z}$.
- **Conjugado:** $\overline{e^{i\theta}} = \cos \theta - i \sin \theta = \cos(-\theta) + i \sin(-\theta) = e^{-i\theta}$.
- **Inverso:** $(e^{i\theta})^{-1} = \frac{1}{e^{i\theta}} = e^{-i\theta}$.

#### **Fórmulas de Euler para Seno y Coseno:**

Sumando y restando las expresiones $e^{i\theta} = \cos \theta + i \sin \theta$ y $e^{-i\theta} = \cos \theta - i \sin \theta$, obtenemos la expresión analítica de las funciones trigonométricas reales mediante exponenciales complejas:

$$\cos \theta = \frac{e^{i\theta} + e^{-i\theta}}{2}, \quad \sin \theta = \frac{e^{i\theta} - e^{-i\theta}}{2i}$$

#### **La Identidad de Euler:**

Sustituyendo $\theta = \pi$ en la fórmula de Euler, $e^{i\pi} = \cos \pi + i \sin \pi = -1 + 0i = -1$, se llega a la célebre **Identidad de Euler**, que relaciona las cinco constantes fundamentales de las matemáticas: $$e^{i\pi} + 1 = 0$$

#### **Forma Exponencial de un Número Complejo:**

Todo complejo $z \in \mathbb{C}^*$ de módulo $r = |z|$ y argumento $\theta$ se escribe unívocamente como:

$$z = r e^{i\theta}$$

---

### **4. Operaciones en Forma Polar y Exponencial**

La forma polar y la forma exponencial son extraordinariamente superiores a la forma binómica para efectuar **multiplicaciones, divisiones y potencias**, reduciendo cálculos algebraicos pesados a simples sumas y restas de ángulos.

Sean $z_1 = r_1 e^{i\theta_1} = (r_1)_{\theta_1}$ y $z_2 = r_2 e^{i\theta_2} = (r_2)_{\theta_2}$ dos números complejos no nulos:

1. **Producto:**  
    Para multiplicar números complejos expresados en forma exponencial, se **multiplican sus módulos** y se **suman sus argumentos**: $$z_1 \cdot z_2 = (r_1 e^{i\theta_1}) \cdot (r_2 e^{i\theta_2}) = (r_1 r_2) e^{i(\theta_1 + \theta_2)}$$ En notación polar: $$(r_1)_{\theta_1} \cdot (r_2)_{\theta_2} = (r_1 r_2)_{\theta_1 + \theta_2}$$ _Interpretación Geométrica:_ Multiplicar por $z_2 = r_2 e^{i\theta_2}$ equivale a aplicar una **homotecia de razón $r_2$** combinada con una **rotación o giro de ángulo $\theta_2$** respecto del origen.
    
2. **Inverso Multiplicativo:**  
    $$z^{-1} = \frac{1}{r e^{i\theta}} = \left(\frac{1}{r}\right) e^{-i\theta} = \left(\frac{1}{r}\right)_{-\theta}$$
    
3. **Cociente:**  
    Para dividir dos números complejos, se **dividen sus módulos** y se **restan sus argumentos**: $$\frac{z_1}{z_2} = \frac{r_1 e^{i\theta_1}}{r_2 e^{i\theta_2}} = \left(\frac{r_1}{r_2}\right) e^{i(\theta_1 - \theta_2)}$$ En notación polar: $$\frac{(r_1)_{\theta_1}}{(r_2)_{\theta_2}} = \left(\frac{r_1}{r_2}\right)_{\theta_1 - \theta_2}$$
    

---

### **5. Potenciación y la Fórmula de De Moivre**

#### **Potencia Entren-ésima:**

Dado $z = r e^{i\theta}$ y cualquier entero $n \in \mathbb{Z}$: $$z^n = (r e^{i\theta})^n = r^n e^{i n \theta} = (r^n)_{n\theta}$$

#### **Teorema / Fórmula de De Moivre:**

_Para todo número real $\theta \in \mathbb{R}$ y para todo número entero $n \in \mathbb{Z}$, se cumple la identidad:_

$$(\cos \theta + i \sin \theta)^n = \cos(n\theta) + i \sin(n\theta)$$

- **Demostración Analítica (Examen UNED):**  
    Usando la fórmula de Euler, el miembro izquierdo es $(e^{i\theta})^n = e^{i(n\theta)}$. Aplicando nuevamente la fórmula de Euler para el ángulo compuesto $n\theta$, se obtiene de inmediato $\cos(n\theta) + i \sin(n\theta)$. $\blacksquare$

#### **Aplicación a Identidades Trigonométricas de Ángulos Múltiples:**

Desarrollando el miembro izquierdo de $(\cos \theta + i \sin \theta)^n$ mediante el **Binomio de Newton** e igualando la parte real con $\cos(n\theta)$ y la parte imaginaria con $\sin(n\theta)$, se obtienen fórmulas directas para $\cos(2\theta), \sin(2\theta), \cos(3\theta), \sin(3\theta)$, etc.

- _Ejemplo ($n = 3$):_ $$(\cos \theta + i \sin \theta)^3 = \cos^3 \theta + 3i \cos^2 \theta \sin \theta - 3 \cos \theta \sin^2 \theta - i \sin^3 \theta$$ Igualando partes reales e imaginarias: $$\cos(3\theta) = \cos^3 \theta - 3 \cos \theta \sin^2 \theta = 4\cos^3 \theta - 3\cos \theta$$ $$\sin(3\theta) = 3 \cos^2 \theta \sin \theta - \sin^3 \theta = 3\sin \theta - 4\sin^3 \theta$$

---

### **6. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Expresar en forma polar y exponencial los siguientes números complejos dados en forma binómica:
    - a) $z_1 = -1 + i\sqrt{3}$
    - b) $z_2 = -2 - 2i$
    - c) $z_3 = -5i$
2. **Ejercicio 2:** Calcular en forma exponencial y dar el resultado final en forma binómica: $$z = \frac{(-1 + i\sqrt{3})^{10}}{(1 - i)^6}$$
3. **Ejercicio 3 (Ejercicio 10 del Capítulo 7 del texto base):** Obtener $\cos(5\alpha)$ y $\sin(5\alpha)$ en función de $\cos \alpha$ y $\sin \alpha$ aplicando la fórmula de De Moivre. Deducir a partir del resultado el valor exacto de $\cos\left(\frac{\pi}{10}\right)$.

---

### **7. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea el número complejo $z = -1 - i \in \mathbb{C}$. ¿Cuál es su expresión exacta en **forma exponencial** utilizando su argumento principal $\text{Arg}(z) \in (-\pi, \pi]$?

- **A)** $z = \sqrt{2} , e^{i \frac{5\pi}{4}}$
- **B)** $z = \sqrt{2} , e^{-i \frac{3\pi}{4}}$
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Calculamos el módulo: $r = |z| = \sqrt{(-1)^2 + (-1)^2} = \sqrt{2}$.
> - El afijo $P(-1, -1)$ está situado en el **tercer cuadrante**.
> - Su argumento principal debe pertenecer al intervalo $(-\pi, \pi]$. Calculamos: $$\text{Arg}(z) = \arctan\left(\frac{-1}{-1}\right) - \pi = \frac{\pi}{4} - \pi = -\frac{3\pi}{4} \in (-\pi, \pi]$$
> - La forma exponencial con el argumento principal es $z = \sqrt{2} , e^{-i \frac{3\pi}{4}}$.
> - _(Nota: La opción A usa el argumento $\frac{5\pi}{4}$, que es un argumento válido pero NO es el argumento principal al superar a $\pi$)._
> - Por lo tanto, la opción **B** es la **correcta**.

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión55_Forma_polar_y_exponencial.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_ y la notación LaTeX requerida (`$` para expresiones en línea y `$$` para bloques), con la jerarquía del Bloque 6, recuadros normativos para el paso a coordenadas polares, la elección del argumento principal $\text{Arg}(z) \in (-\pi, \pi]$, la Fórmula de Euler $e^{i\theta} = \cos \theta + i \sin \theta$, las reglas operativas de producto y cociente exponencial, la Fórmula de De Moivre y la deducción de identidades trigonométricas.
- [**Resumen de audio**](Audios/Sesión55_Forma_polar_y_exponencial.m4a): Enfocado en la necesidad geométrica del sistema de coordenadas polares $(r, \theta)$, la interpretación del argumento como ángulo de rotación, la fascinante conexión entre la función exponencial y la trigonometría expresada por la Fórmula de Euler $e^{i\theta}$, la enorme simplificación que supone operar productos y potencias en forma exponencial frente a la binómica, la Fórmula de De Moivre y consejos de redacción formal para el examen presencial de desarrollo de la UNED.

---
