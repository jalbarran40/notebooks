# **SESIÓN 59 (SIMULACIÓN): SIMULACIÓN DE EXAMEN PRESENCIAL DE DESARROLLO**

**Duración recomendada:** 120 minutos de realización autónoma + 45 minutos de revisión analítica  
**Bloque:** REPASO FINAL Y EVALUACIÓN  
**Objetivo:** Enfrentarse a una prueba presencial completa de desarrollo adaptada al nuevo modelo oficial de la UNED (4 problemas teórico-prácticos en 120 minutos, sin material permitido), ejercitando la redacción lógica rigurosa, la declaración explícita de hipótesis y tesis, la notación oficial del texto base (_Delgado Pineda & Muñoz Bouzo_) y la gestión óptima del tiempo.

---

### **1. Normativa y Criterios Oficiales de Evaluación (UNED 2026/2027)**

- **Duración total:** **120 minutos** (2 horas).
- **Estructura:** **4 problemas de desarrollo** teórico-práctico (ponderación de $2,5$ puntos por problema).
- **Material permitido:** **Ninguno** (prohibido el uso de calculadora, formularios o apuntes).
- **Criterios de Calificación del Equipo Docente:**
    1. **Uso correcto del lenguaje matemático:** Claridad, precisión sintáctica y ausencia de ambigüedades.
    2. **Desarrollo de argumentos lógicos:** Declaración explícita de las hipótesis de partida, razonamientos intermedios justificados y formulación clara de la conclusión o tesis.
    3. **Dominio de la notación oficial:** Uso estricto de la notación del texto base (escape de llaves ${ }$, conjunto vacío $\varnothing$, pertenencia $\in$, inclusión $\subseteq$, equivalencia $\iff$, implicación $\implies$).
    4. **Puntuación mínima para sumar la PEC:** Obtener al menos un **$4,5$ sobre $10$** en esta prueba presencial.

---

### **2. Enunciado del Examen Simulado (4 Problemas - 120 Minutos)**

---

#### **PROBLEMA 1 (Bloque 2: Teoría de Conjuntos - 2,5 puntos)**

Sean $A, B, C \subseteq U$ tres subconjuntos cualesquiera de un conjunto universal $U$. Demostrar analíticamente mediante la técnica de la **doble inclusión** la Ley de De Morgan para la diferencia de conjuntos: $$A \setminus (B \cup C) = (A \setminus B) \cap (A \setminus C)$$

---

#### **PROBLEMA 2 (Bloque 3: Aplicaciones y Biyectividad - 2,5 puntos)**

Consideremos la función homográfica $f: \mathbb{R} \setminus {3} \longrightarrow \mathbb{R} \setminus {2}$ definida por: $$f(x) = \frac{2x + 1}{x - 3}$$

1. Demostrar analíticamente que $f$ es una aplicación **inyectiva**.
2. Demostrar analíticamente que $f$ es una aplicación **sobreyectiva**.
3. Deducir la expresión algebraica de la **función inversa $f^{-1}$** indicando su dominio y codominio.

---

#### **PROBLEMA 3 (Bloque 5: Enteros y Ecuaciones Diofánticas - 2,5 puntos)**

Un comerciante dispone de $430$ euros para adquirir dos tipos de artículos. El artículo de tipo A cuesta $20$ euros por unidad y el de tipo B cuesta $50$ euros por unidad.

1. Plantear la ecuación diofántica asociada $20x + 50y = 430$, calcular $d = \text{mcd}(20, 50)$ mediante el **Algoritmo de Euclides** y justificar la existencia de soluciones enteras.
2. Obtener los coeficientes de la **Identidad de Bézout** para $d = \text{mcd}(20, 50)$ y determinar una **solución particular $(x_0, y_0) \in \mathbb{Z}^2$**.
3. Determinar la **familia completa de soluciones enteras** en $\mathbb{Z}$ y hallar todas las **soluciones con sentido físico práctico** (unidades enteras estrictamente positivas $x > 0, y > 0$).

---

#### **PROBLEMA 4 (Bloque 6: Números Complejos - 2,5 puntos)**

Se considera en el cuerpo complejo $\mathbb{C}$ la ecuación polinómica: $$z^3 = -27i$$

1. Expresar el número complejo $w = -27i$ en forma exponencial $w = \rho e^{i\theta}$ con argumento principal $\text{Arg}(w) \in (-\pi, \pi]$.
2. Obtener las **tres soluciones $z_0, z_1, z_2 \in \mathbb{C}$** expresadas en forma exponencial y en forma binómica $a + bi$.
3. Representar e interpretar la **geometría de las tres raíces** en el Plano de Argand.

---

### **3. Solución Oficial Desarrollada y Criterios de Redacción Paso a Paso**

---

#### **SOLUCIÓN DEL PROBLEMA 1**

**Objetivo:** Probar $A \setminus (B \cup C) = (A \setminus B) \cap (A \setminus C)$.

- **Parte 1: Inclusión a la izquierda ($\subseteq$)**
    
    1. Sea $x \in A \setminus (B \cup C)$ un elemento genérico.
    2. Por definición de diferencia de conjuntos: $$x \in A \quad \land \quad x \notin (B \cup C)$$
    3. Por la definición de la unión y la Ley de De Morgan para conectores lógicos ($\neg(P \lor Q) \iff \neg P \land \neg Q$): $$x \notin (B \cup C) \iff \neg(x \in B \lor x \in C) \iff (x \notin B \land x \notin C)$$
    4. Reagrupando la conjunción previa por la propiedad idempotente y conmutativa del conector $\land$: $$(x \in A \land x \notin B) \quad \land \quad (x \in A \land x \notin C)$$
    5. Por definición de diferencia de conjuntos, esto equivale a: $$x \in (A \setminus B) \quad \land \quad x \in (A \setminus C)$$
    6. Por definición de intersección de conjuntos: $$x \in (A \setminus B) \cap (A \setminus C)$$
    7. Por lo tanto, queda demostrada la primera inclusión: **$A \setminus (B \cup C) \subseteq (A \setminus B) \cap (A \setminus C)$**.
- **Parte 2: Inclusión a la derecha ($\supseteq$)**
    
    1. Sea $y \in (A \setminus B) \cap (A \setminus C)$ un elemento genérico.
    2. Por definición de intersección: $y \in (A \setminus B)$ y $y \in (A \setminus C)$.
    3. Por definición de diferencia: $(y \in A \land y \notin B)$ y $(y \in A \land y \notin C)$.
    4. Por la propiedad distributiva de la lógica proposicional, la condición $(y \notin B \land y \notin C)$ equivale a $y \notin (B \cup C)$.
    5. Por lo tanto, $y \in A \land y \notin (B \cup C) \implies y \in A \setminus (B \cup C)$.
    6. Queda demostrada la segunda inclusión: **$(A \setminus B) \cap (A \setminus C) \subseteq A \setminus (B \cup C)$**.

**Conclusión:** Al verificarse ambas inclusiones, se concluye la igualdad de conjuntos. $\quad \blacksquare$

---

#### **SOLUCIÓN DEL PROBLEMA 2**

**Dado:** $f: \mathbb{R} \setminus {3} \to \mathbb{R} \setminus {2}$ con $f(x) = \frac{2x + 1}{x - 3}$.

1. **Demostración de Inyectividad:**
    
    - **Hipótesis:** Sean $x, x' \in \mathbb{R} \setminus {3}$ tales que $f(x) = f(x')$.
    - Igualamos las expresiones algebraicas: $$\frac{2x + 1}{x - 3} = \frac{2x' + 1}{x' - 3}$$
    - Multiplicamos en cruz (válido puesto que $x \neq 3$ y $x' \neq 3$): $$(2x + 1)(x' - 3) = (2x' + 1)(x - 3)$$ $$2xx' - 6x + x' - 3 = 2xx' - 6x' + x - 3$$
    - Cancelamos los términos idénticos $2xx'$ y $-3$ en ambos miembros: $$-6x + x' = -6x' + x \implies x' + 6x' = x + 6x \implies 7x' = 7x \implies x = x'$$
    - **Conclusión:** $f(x) = f(x') \implies x = x'$, luego **$f$ es inyectiva**.
2. **Demostración de Sobreyectividad:**
    
    - **Hipótesis:** Sea $y \in \mathbb{R} \setminus {2}$ un elemento arbitrario del codominio. Buscamos un antecedente $x \in \mathbb{R} \setminus {3}$ tal que $f(x) = y$.
    - Planteamos la ecuación: $y = \frac{2x + 1}{x - 3} \implies y(x - 3) = 2x + 1 \implies xy - 3y = 2x + 1$.
    - Agrupamos los términos con $x$ en un miembro evitando signos negativos innecesarios: $$xy - 2x = 3y + 1 \iff x(y - 2) = 3y + 1$$
    - Puesto que $y \in \mathbb{R} \setminus {2}$, el factor $(y - 2) \neq 0$, luego podemos despejar $x$: $$x = \frac{3y + 1}{y - 2}$$
    - Comprobamos que el antecedente pertenece al dominio ($x \neq 3$):  
        $$\frac{3y + 1}{y - 2} = 3 \implies 3y + 1 = 3(y - 2) \implies 3y + 1 = 3y - 6 \implies 1 = -6 \quad (\text{Imposible})$$ Como la igualdad llega a una contradicción, no existe ningún $y \in \mathbb{R} \setminus {2}$ que produzca $x = 3$.
    - **Conclusión:** Todo $y$ posee un antecedente bien definido en el dominio, luego **$f$ es sobreyectiva**.
3. **Función Inversa:**
    
    - La aplicación es biyectiva y su inversa $f^{-1}: \mathbb{R} \setminus {2} \longrightarrow \mathbb{R} \setminus {3}$ viene dada explícitamente por: $$f^{-1}(y) = \frac{3y + 1}{y - 2}$$

---

#### **SOLUCIÓN DEL PROBLEMA 3**

**Dada:** Ecuación $20x + 50y = 430$.

1. **Cálculo de $\text{mcd}(20, 50)$ por el Algoritmo de Euclides:**
    
    - Dividimos $50$ entre $20$: $$50 = 2 \cdot 20 + 10$$
    - Dividimos $20$ entre el resto $10$: $$20 = 2 \cdot 10 + 0$$
    - El último resto no nulo es $10$, luego **$d = \text{mcd}(20, 50) = 10$**.
    - **Criterio de solvencia:** La ecuación diofántica $ax + by = c$ tiene solución entera si y solo si $d \mid c$. Como $10 \mid 430$ ($430 = 10 \cdot 43$), **la ecuación tiene solución en $\mathbb{Z}$**.
2. **Identidad de Bézout y Solución Particular:**
    
    - Despejamos el resto $10$ de la primera división: $$10 = 50 - 2 \cdot 20 = 20(-2) + 50(1)$$
    - Multiplicamos toda la Identidad de Bézout por $43$ para obtener la suma $430$: $$10 \cdot 43 = 20(-2 \cdot 43) + 50(1 \cdot 43) \implies 430 = 20(-86) + 50(43)$$
    - Obtenemos una **solución particular:** $(x_0, y_0) = (-86, 43)$.
3. **Familia Completa de Soluciones y Soluciones Positivas ($x, y > 0$):**
    
    - Aplicamos la fórmula de la solución general en $\mathbb{Z}$ con $k \in \mathbb{Z}$: $$x = x_0 + \left(\frac{b}{d}\right)k = -86 + \left(\frac{50}{10}\right)k = -86 + 5k$$ $$y = y_0 - \left(\frac{a}{d}\right)k = 43 - \left(\frac{20}{10}\right)k = 43 - 2k$$
    - Imponemos las restricciones de cantidades físicas estrictamente positivas ($x > 0 \land y > 0$):
        1. $-86 + 5k > 0 \implies 5k > 86 \implies k > \frac{86}{5} = 17,2 \implies k \ge 18$.
        2. $43 - 2k > 0 \implies 2k < 43 \implies k < \frac{43}{2} = 21,5 \implies k \le 21$.
    - Los valores enteros admisibles para el parámetro son **$k \in {18, 19, 20, 21}$**. Evaluamos cada uno:
        - **Para $k = 18$:** $x = -86 + 5(18) = 4, \quad y = 43 - 2(18) = 7 \implies \mathbf{(4, 7)}$
        - **Para $k = 19$:** $x = -86 + 5(19) = 9, \quad y = 43 - 2(19) = 5 \implies \mathbf{(9, 5)}$
        - **Para $k = 20$:** $x = -86 + 5(20) = 14, \quad y = 43 - 2(20) = 3 \implies \mathbf{(14, 3)}$
        - **Para $k = 21$:** $x = -86 + 5(21) = 19, \quad y = 43 - 2(21) = 1 \implies \mathbf{(19, 1)}$

---

#### **SOLUCIÓN DEL PROBLEMA 4**

**Dada:** Ecuación $z^3 = -27i$.

1. **Forma Exponencial de $w = -27i$:**
    
    - Módulo: $\rho = |-27i| = 27$.
    - Argumento principal: El afijo se sitúa sobre el semieje imaginario negativo $\implies \text{Arg}(w) = -\frac{\pi}{2} \in (-\pi, \pi]$.
    - Forma exponencial: **$w = 27 e^{-i \frac{\pi}{2}}$**.
2. **Cálculo de las Tres Raíces Cúbicas ($n = 3$):**
    
    - Módulo de las raíces: $R = \sqrt{27} = 3$.
    - Argumentos para $k \in {0, 1, 2}$: $$\alpha_k = \frac{-\frac{\pi}{2} + 2k\pi}{3} = -\frac{\pi}{6} + \frac{2k\pi}{3}$$
    - **Evaluación de soluciones:**
        - **Para $k = 0$:** $\alpha_0 = -\frac{\pi}{6} \implies z_0 = 3 e^{-i \frac{\pi}{6}} = 3\left(\cos\left(-\frac{\pi}{6}\right) + i \sin\left(-\frac{\pi}{6}\right)\right) = \mathbf{\frac{3\sqrt{3}}{2} - \frac{3}{2}i}$
        - **Para $k = 1$:** $\alpha_1 = -\frac{\pi}{6} + \frac{2\pi}{3} = \frac{\pi}{2} \implies z_1 = 3 e^{i \frac{\pi}{2}} = \mathbf{3i}$
        - **Para $k = 2$:** $\alpha_2 = -\frac{\pi}{6} + \frac{4\pi}{3} = \frac{7\pi}{6} \equiv -\frac{5\pi}{6} \implies z_2 = 3 e^{-i \frac{5\pi}{6}} = 3\left(-\frac{\sqrt{3}}{2} - \frac{1}{2}i\right) = \mathbf{-\frac{3\sqrt{3}}{2} - \frac{3}{2}i}$
3. **Geometría en el Plano de Argand:**
    
    - Todas las raíces poseen módulo $R = 3$, situándose sobre la **circunferencia centrada en el origen de radio $3$**.
    - La separación angular entre raíces consecutivas es $\frac{2\pi}{3} = 120^\circ$.
    - Sus afijos forman los vértices de un **triángulo equilátero perfecto** en el plano complejo.

---

### **4. Consejos Tácticos de Gestión de Tiempo durante el Examen**

1. **Minutos 0 a 10 (Lectura y Planificación):** Lee los 4 problemas, identifica la estructura lógica de cada uno y decide el orden de resolución (empienza siempre por el que te resulte más claro).
2. **Minutos 10 a 100 (Desarrollo a 22,5 min/problema):** Redacta con letra clara. Recuerda definir siempre los símbolos antes de usarlos (ej. _"Sea $x \in A$ un elemento arbitrario..."_).
3. **Minutos 100 a 120 (Revisión de Rigor sintáctico):** Revisa que no falten cuantificadores ($\forall, \exists$), comprueba los signos algebraicos y asegúrate de haber cerrado formalmente cada demostración.

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión59_Simulación_de_examen.pptx): Maquetada en estricta conformidad con el _AAA_Manual_de_Estilo_Presentaciones_ y la notación LaTeX requerida (`$` para expresiones en línea y `$$` para bloques), estructurando las reglas del examen presencial, los 4 problemas simulados con sus soluciones oficiales explicadas paso a paso y la guía de criterios de corrección.
- [**Resumen de audio**](Audios/Sesión59_Simulación_de_examen.m4a): Enfocado en la estrategia de afrontamiento del examen de 120 minutos, la distribución de tiempo recomendada (30 minutos por problema), las pautas clave para no perder puntos en la explicitación de hipótesis y tesis, y la revisión verbal paso a paso de los cuatro ejercicios de la simulación.
