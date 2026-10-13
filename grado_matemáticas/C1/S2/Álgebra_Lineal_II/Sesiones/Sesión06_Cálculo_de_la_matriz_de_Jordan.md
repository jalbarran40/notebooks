He preparado el material para la **Sesión 6**, que es de carácter **práctico (P)**. En esta sesión nos centraremos en el proceso algorítmico para determinar la **Forma Canónica de Jordan** partiendo del polinomio característico y utilizando el método de los rangos de las matrices de los subespacios propios generalizados.

---

# Sesión 6 (P): Cálculo de la matriz de Jordan a partir del polinomio característico

Esta sesión de 45 minutos tiene como objetivo que el estudiante sea capaz de deducir la estructura de bloques de Jordan sin necesidad de calcular explícitamente la base, basándose en la información que proporcionan los rangos de las potencias de \((A - \lambda I)\).

### 1. El Algoritmo de Rangos Iterados (10 min)

Para cada autovalor \(\lambda\) con multiplicidad algebraica \(m_a\), realizamos los siguientes pasos:

1. **Calcular la cadena de subespacios propios generalizados:** \(K^i(\lambda) = \ker(f - \lambda Id)^i\).
2. **Determinar las dimensiones:** \(d_i = \dim K^i(\lambda) = n - \text{rango}(A - \lambda I)^i\).
3. **Estabilización:** La cadena se detiene cuando \(d_k = m_a\). En ese punto, \(K^k(\lambda)\) es el subespacio máximo \(M(\lambda)\).
4. **Diferencia de dimensiones:** Calculamos \(r_i = d_i - d_{i-1}\) (con \(d_0 = 0\)). Estos valores nos indican cuántos vectores hay en cada nivel de la **tabla de Jordan**.

### 2. Ejercicio 1: Interpretación de la Tabla (15 min)

Supongamos un endomorfismo en \(\mathbb{K}^5\) con un único autovalor \(\lambda=2\) (\(m_a=5\)). Tras calcular los rangos, obtenemos las siguientes dimensiones para los núcleos:

- \(d_1 = \dim K^1(2) = 3\) (Multiplicidad geométrica \(m_g\), número total de bloques).
- \(d_2 = \dim K^2(2) = 5\) (Coincide con \(m_a\), fin del proceso).

**Análisis:**

- \(r_1 = d_1 - 0 = 3\).
- \(r_2 = d_2 - d_1 = 5 - 3 = 2\).
- La tabla tiene 3 columnas (por \(d_1=3\)) y sus alturas son las longitudes de las cadenas. Al repartir 5 vectores en 3 bloques con alturas máximas de 2, la única configuración posible es: dos bloques de tamaño 2 y un bloque de tamaño 1.
- **Matriz de Jordan:** \(J = \text{diag}(J_2(2), J_2(2), J_1(2))\).

### 3. Ejercicio 2: Disparidad de Multiplicidades en \(\mathbb{R}^4\) (20 min)

Dada una matriz \(A\) cuyo \(P(\lambda) = (\lambda - 3)^4\), y sabiendo que:

- \(\text{rango}(A - 3I) = 2 \implies d_1 = 4 - 2 = 2\).
- \(\text{rango}(A - 3I)^2 = 1 \implies d_2 = 4 - 1 = 3\).
- \(\text{rango}(A - 3I)^3 = 0 \implies d_3 = 4 - 0 = 4 = m_a\).

**Análisis:**

- \(r_1 = 2\), \(r_2 = 1\), \(r_3 = 1\).
- Hay 2 bloques en total (\(d_1=2\)). El bloque más grande mide 3 (\(m=3\) es el exponente del polinomio mínimo).
- La estructura es un bloque de tamaño 3 y un bloque de tamaño 1.
- **Matriz de Jordan:** \(J = \begin{pmatrix} J_3(3) & 0 \ 0 & J_1(3) \end{pmatrix}\).

---

He activado las herramientas para generar los recursos multimedia solicitados:

1. **Podcast (Audio Overview):** Una conversación donde los expertos explican cómo "leer" los rangos para adivinar la forma de la matriz, comparando el proceso con resolver un rompecabezas de piezas (bloques) de diferentes tamaños.
	![[Sesión06_Cálculo_de_la_matriz_de_Jordan_a_partir_del_polinomio_característico.m4a]]
2. **Presentación (Slide Deck):** Diseñada según el manual de estilo, con esquemas visuales de la tabla de Jordan y la resolución paso a paso de los ejercicios planteados.

	![[Sesión06_Cálculo_de_la_matriz_de_Jordan_a_partir_del_polinomio_caraterístico.pptx]]