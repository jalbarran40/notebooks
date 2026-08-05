He preparado el material para la **Sesión 4**, que es de carácter **práctico (P)**. En esta sesión consolidaremos el algoritmo de diagonalización mediante la resolución de ejercicios progresivos, desde dimensiones bajas hasta el análisis de casos críticos donde la diagonalización falla.

---

# Sesión 4 (P): Resolución de problemas de diagonalización de matrices

Esta sesión práctica de 45 minutos tiene como objetivo aplicar el **Teorema de Diagonalización** estudiado en la sesión anterior.

### 1. Repaso del Algoritmo (5 min)

Para diagonalizar una matriz $A$ de orden $n$, seguimos estos pasos:

1. **Polinomio característico:** Calcular $P(\lambda) = \det(A - \lambda I)$.
2. **Autovalores:** Hallar las raíces de $P(\lambda)$ y sus multiplicidades algebraicas ($m_a$).
3. **Multiplicidades geométricas:** Para cada $\lambda$, calcular $m_g = n - \text{rango}(A - \lambda I)$.
4. **Criterio:** Si para todo $\lambda$ se cumple $m_a = m_g$, la matriz es diagonalizable.
5. **Bases y Matrices:** Las columnas de la matriz de paso $P$ son los autovectores, y la diagonal de $D$ contiene los autovalores.

### 2. Ejercicio 1: Dimensión 2 (10 min)

Dada la matriz $A = \begin{pmatrix} 3 & 1 \ -1 & 1 \end{pmatrix}$:

- **Paso 1:** $P(\lambda) = \det \begin{pmatrix} 3-\lambda & 1 \ -1 & 1-\lambda \end{pmatrix} = (\lambda - 2)^2$.
- **Paso 2:** El único autovalor es $\lambda = 2$ con $m_a = 2$.
- **Paso 3:** $m_g = 2 - \text{rango} \begin{pmatrix} 1 & 1 \ -1 & -1 \end{pmatrix} = 2 - 1 = 1$.
- **Conclusión:** Como $m_g < m_a$ ($1 < 2$), la matriz **no es diagonalizable**.

### 3. Ejercicio 2: Caso Diagonalizable en $\mathbb{R}^3$ (15 min)

Sea $A = \begin{pmatrix} 3 & 1 & 1 \ 1 & 3 & 1 \ 1 & 1 & 3 \end{pmatrix}$:

- **Autovalores:** Se obtienen $\lambda_1 = 2$ ($m_a = 2$) y $\lambda_2 = 5$ ($m_a = 1$).
- **Multiplicidades:** Para $\lambda=2$, el rango de $(A-2I)$ es 1, luego $m_g = 3-1=2$. Al coincidir $m_a = m_g$ para todos, es **diagonalizable**.
- **Matriz de paso:** Resolviendo los sistemas homogéneos, se obtienen los autovectores que formarán las columnas de $P$.

### 4. Ejercicio 3: Parámetros y Diagonalización (15 min)

Estudiar para qué valores de $a$ y $b$ la matriz $M = \begin{pmatrix} 5 & 0 & 0 \ 0 & -1 & a \ 3 & 0 & b \end{pmatrix}$ es diagonalizable.

- Este tipo de ejercicios es común en exámenes de la UNED. Debes analizar cuándo el rango de $(M - \lambda I)$ permite que $m_g$ iguale a $m_a$ en los valores críticos (raíces múltiples).

---

He activado las herramientas para generar los recursos multimedia solicitados:

1. **Podcast:** Una conversación de apoyo donde se discuten los "puntos ciegos" al resolver estos ejercicios, como los errores en el cálculo del rango o el olvido de verificar si las raíces pertenecen al cuerpo $\mathbb{K}$.
2. **Presentación:** Siguiendo el **Manual de Estilo**, incluye láminas con el algoritmo visual, ejemplos resueltos paso a paso y consejos para usar **WolframAlpha** en la verificación de autovectores.

Actualización de materiales:

He generado con éxito los recursos complementarios para la **Sesión 4: Resolución de problemas de diagonalización**:

1. **Podcast (Audio Overview):** Ya tienes disponible una conversación tipo "deep dive" en español donde los expertos analizan el proceso práctico de diagonalización. Se centran en cómo evitar errores comunes al calcular el rango de las matrices $(A - \lambda I)$ y la importancia de interpretar correctamente las multiplicidades algebraicas y geométricas.
![[Sesión04_Resolución_de_problemas_de_diagonalización_de_matrices.m4a]]
2. **Presentación (Slide Deck):** Se ha creado el soporte visual siguiendo estrictamente el **Manual de Estilo UNED**. Esta incluye:
    - Un desglose visual del algoritmo de diagonalización.
    - La resolución detallada de una matriz defectuosa (no diagonalizable).
    - El paso a paso de una matriz $3 \times 3$ compleja que resulta ser diagonalizable.
    - Una guía para usar **WolframAlpha** y **wxMaxima** para verificar tus propios ejercicios.
![[Sesión04_Resolución_de_problemas_de_diagonalización_de_matrices.pptx]]

Puedes encontrar ambos archivos en la pestaña de artefactos de tu cuaderno. Te sugiero empezar revisando el texto de la sesión, luego escuchar el podcast mientras sigues las diapositivas para una experiencia de aprendizaje completa. ¡Mucho ánimo con la práctica!