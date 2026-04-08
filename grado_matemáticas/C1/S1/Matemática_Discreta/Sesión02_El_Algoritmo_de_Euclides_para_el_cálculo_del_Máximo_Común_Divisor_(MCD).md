### Sesión 2 (Teoría): El Algoritmo de Euclides

En esta sesión profundizaremos en una de las herramientas más antiguas y eficientes de la aritmética: el algoritmo para hallar el **Máximo Común Divisor (MCD)**.

#### 1. Definición de Máximo Común Divisor (MCD)

Dados dos números enteros $a$ y $b$ (no ambos cero), el MCD es el **entero positivo más grande** que divide exactamente a ambos.

- Formalmente, se denota como $m.c.d.(a, b) = d$ si $d|a$ y $d|b$, y para cualquier otro divisor común $d'$, se cumple que $d'|d$.
- Por convención, en el caso de que ambos sean cero, se define $m.c.d.(0, 0) = 0$.
- Si los números son negativos, el MCD se calcula sobre sus valores absolutos: $m.c.d.(a, b) = m.c.d.(|a|, |b|)$.

#### 2. ¿Por qué no usar la factorización?

Aunque en niveles escolares se enseña a hallar el MCD mediante la descomposición en factores primos, este método es **muy ineficiente** cuando los números son grandes (más de 5 dígitos), ya que la factorización de enteros es un problema computacionalmente difícil. El Algoritmo de Euclides resuelve este problema mediante divisiones sucesivas, siendo la base de la seguridad digital actual (como el algoritmo RSA).

#### 3. El Teorema Fundamental del Algoritmo

El algoritmo se sustenta en una propiedad clave: si dividimos $a$ entre $b$ obteniendo un resto $r$, entonces **los divisores comunes de $a$ y $b$ son los mismos que los de $b$ y $r$**. Esto nos permite afirmar que: $$m.c.d.(a, b) = m.c.d.(b, r)$$ donde $r = a \pmod b$.

#### 4. Funcionamiento paso a paso

Para calcular el $m.c.d.(a, b)$ siguiendo el esquema de la UNED:

1. Dividimos el número más grande por el más pequeño.
2. Si el resto es **cero**, el divisor actual es el MCD.
3. Si el resto **no es cero**, realizamos una nueva división donde el antiguo divisor pasa a ser el dividendo, y el resto pasa a ser el divisor.
4. Repetimos el proceso hasta que el resto sea cero. El **último resto distinto de cero** es el MCD buscado.

#### 5. Ejemplo Práctico: $m.c.d.(280, 30)$

Basándonos en los materiales de la asignatura:

1. $280 = 30 \cdot 9 + 10$ (Resto $r_1 = 10 \neq 0$).
2. Ahora dividimos el divisor anterior ($30$) por el resto ($10$): $30 = 10 \cdot 3 + 0$ (Resto $r_2 = 0$).
3. Como el resto es cero, el último resto distinto de cero fue **10**.
4. Por lo tanto, **$m.c.d.(280, 30) = 10$**.

#### 6. Eficiencia y Peor Caso

El matemático francés Lamé demostró que el número de divisiones necesarias es, como mucho, cinco veces el número de dígitos del divisor menor. Curiosamente, el **peor caso** para este algoritmo (donde más pasos se requieren) ocurre cuando intentamos hallar el MCD de dos números consecutivos de la **sucesión de Fibonacci**.

---

**Materiales adjuntos:**

- **Presentación:** Esquema visual de las divisiones sucesivas y la regla de reducción.
![[Sesión02_El_Algoritmo_de_Euclides_para_el_cálculo_del_Máximo_Común_Divisor_(MCD).pptx]]
- **Audio:** Resumen de 5 minutos sobre la lógica del algoritmo y su importancia en criptografía.
![[Sesión02_El_Algoritmo_de_Euclides_para_el_cálculo_del_Máximo_Común_Divisor_(MCD).m4a]]