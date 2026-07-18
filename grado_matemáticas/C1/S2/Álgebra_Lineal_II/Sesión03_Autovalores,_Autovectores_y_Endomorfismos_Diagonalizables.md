Para esta **Sesión 3**, de carácter **teórico (T)**, profundizaremos en el núcleo de la clasificación de matrices: el cálculo de **autovalores y autovectores** y el estudio de la **diagonalizabilidad**. El objetivo es comprender cómo una transformación puede simplificarse al máximo cuando elegimos la base adecuada.

---

# Sesión 3 (T): Autovalores, Autovectores y Endomorfismos Diagonalizables

### 1. Definiciones Fundamentales

- **Autovalor (Valor propio):** Un escalar $\lambda \in \mathbb{K}$ es un autovalor de un endomorfismo $f: V \to V$ si existe un vector no nulo $u \in V$ tal que $f(u) = \lambda u$.
- **Autovector (Vector propio):** El vector $u \neq 0$ asociado a dicho escalar. Geométricamente, son los vectores cuya dirección no varía tras la aplicación, solo se "estiran" o "encogen" por el factor $\lambda$.
- **Subespacio Propio ($V_\lambda$):** Es el conjunto de todos los autovectores asociados a $\lambda$, más el vector nulo. Coincide con el núcleo de la aplicación $(\lambda I - f)$.

### 2. El Polinomio Característico

Para hallar los autovalores de una matriz $A$, resolvemos la ecuación: $$P(\lambda) = \det(A - \lambda I) = 0$$ Este polinomio de grado $n$ tiene como raíces los autovalores de la aplicación.

- **Multiplicidad Algebraica ($m_a$ o $\alpha$):** Es el número de veces que $\lambda$ aparece como raíz del polinomio característico.
- **Multiplicidad Geométrica ($m_g$ o $d$):** Es la dimensión del subespacio propio $V_\lambda$, calculada como $n - \text{rango}(A - \lambda I)$.

### 3. Criterio de Diagonalizabilidad

Un endomorfismo es **diagonalizable** si existe una base del espacio formada íntegramente por autovectores. Para que esto ocurra, deben cumplirse dos condiciones:

1. El polinomio característico debe descomponerse totalmente en factores lineales dentro del cuerpo $\mathbb{K}$ (es decir, todas las raíces deben ser reales si trabajamos en $\mathbb{R}$).
2. Para cada autovalor, su **multiplicidad algebraica debe ser igual a su multiplicidad geométrica** ($m_a = m_g$).

_Nota importante:_ Siempre se cumple que $1 \leq m_g \leq m_a$. Si $m_a=1$, entonces automáticamente $m_g=1$ y el autovalor no da problemas para la diagonalización.

### 4. Apoyo Tecnológico

- **WolframAlpha:** Usa el comando `eigenvalues {{a, b}, {c, d}}` para obtener los valores y vectores propios rápidamente.
- **GeoGebra:** Útil para visualizar cómo los autovectores mantienen su línea de acción en transformaciones de $\mathbb{R}^2$.

---

He generado los materiales complementarios para esta sesión:

1. **Audio Overview (Podcast):** Una conversación entre dos expertos que explican la intuición detrás de la diagonalización, comparando una matriz "desordenada" con una "ordenada" (diagonal) y por qué los autovectores son las "guías" de la transformación.
![[Sesión03_Autovalores,_Autovectores_y_Endomorfismos_Diagonalizab.m4a]]
2. **Slide Deck (Presentación):** Siguiendo el manual de estilo, incluye la hoja de ruta para calcular $P(\lambda)$, la comparación de multiplicidades y el teorema fundamental de diagonalización.
![[Sesión03_Autovalores,_Autovectores_y_Endomorfismos_Diagonalizables.pptx]]

