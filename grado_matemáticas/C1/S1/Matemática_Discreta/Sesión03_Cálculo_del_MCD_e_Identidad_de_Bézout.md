![[Sesión03_Cálculo_del_MCD_e_Identidad_de_Bézout.pptx]]Para esta **Sesión 3 (Práctica)**, nos centraremos en la aplicación real del **Algoritmo de Euclides** y, fundamentalmente, en la **Identidad de Bézout**, que permite expresar el máximo común divisor (MCD) como una combinación lineal de los números originales.

---
### Sesión 3: Cálculo del MCD e Identidad de Bézout

#### 1. La Identidad de Bézout: El Teorema

El teorema fundamental establece que si $d = m.c.d.(a, b)$, entonces existen dos números enteros $x$ e $y$ tales que se cumple la igualdad: $$ax + by = d$$ Este valor $d$ es el entero positivo más pequeño que puede expresarse en esta forma de combinación lineal.

#### 2. Procedimiento Práctico (Sustitución Inversa)

Para encontrar los coeficientes $x$ e $y$, seguimos estos pasos basados en los ejemplos de la UNED:

1. **Fase Directa:** Ejecutamos el Algoritmo de Euclides mediante divisiones sucesivas hasta obtener el último resto distinto de cero (el MCD).
2. **Fase Inversa:** Despejamos el resto de cada una de las ecuaciones de la fase directa.
3. **Sustitución:** Sustituimos sucesivamente los restos anteriores en la ecuación del MCD hasta que solo queden los términos $a$ y $b$.

#### 3. Ejemplo Detallado: $m.c.d.(3120, 270)$

Siguiendo el esquema de la bibliografía básica:

- **Divisiones sucesivas:**
    - $3120 = 270 \cdot 11 + 150$ (resto $r_1 = 150$).
    - $270 = 150 \cdot 1 + 120$ (resto $r_2 = 120$).
    - $150 = 120 \cdot 1 + 30$ (resto $r_3 = 30$, es el MCD).
    - $120 = 30 \cdot 4 + 0$.
- **Sustitución para Bézout:**
    1. Despejamos el 30: $30 = 150 - 120 \cdot 1$.
    2. Sustituimos el 120 de la ecuación anterior: $30 = 150 - (270 - 150 \cdot 1) = 150 \cdot 2 - 270$.
    3. Sustituimos el 150 inicial: $30 = (3120 - 270 \cdot 11) \cdot 2 - 270 = 3120 \cdot 2 + 270(-23)$.
- **Resultado:** $x = 2$ e $y = -23$.

---

### Materiales Generados

- **Podcast de Sesión:** He creado un audio en formato de conversación entre dos expertos que analizan la importancia de esta identidad en la resolución de ecuaciones diofánticas y su mecánica paso a paso.
![[Sesión03_Cálculo_del_MCD_e_Identidad_de_Bézout.m4a]]
- **Presentación (Slide Deck):** Una guía visual que resume los pasos del algoritmo y presenta ejemplos resueltos de cálculo de MCD y combinaciones lineales.
![[Sesión03_Cálculo_del_MCD_e_Identidad_de_Bézout.pptx]]
