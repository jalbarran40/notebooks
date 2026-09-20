He preparado el desarrollo de la **Sesión 8: Práctica: Determinación de supremos y máximos en conjuntos dados**. En esta sesión de 45 minutos consolidaremos la aplicación del **Axioma del Supremo**, aprendiendo a diferenciar con precisión cuándo un conjunto posee un elemento máximo y cuándo solo una cota superior mínima (supremo).

He activado la creación de la **presentación de apoyo** y el **resumen de audio** en formato de diálogo para profundizar en estas técnicas operativas.

---

### Sesión 8: Determinación de Supremos e Ínfimos (45 minutos)

#### 1. Marco Teórico-Práctico (5 minutos)

Recordemos que el **supremo** es la menor de las cotas superiores y el **ínfimo** la mayor de las cotas inferiores. La clave práctica es:

- Si el supremo pertenece al conjunto, se llama **máximo**.
- Si el ínfimo pertenece al conjunto, se llama **mínimo**.
- **Unicidad:** Si existen, tanto el supremo como el ínfimo son únicos.

#### 2. Ejercicio 1: Conjuntos Definidos por Inecuaciones (15 minutos)

Sea $A = {x \in \mathbb{R} : x^2 - 5x + 6 < 0}$.

- **Resolución:** Factorizamos el trinomio $(x - 2)(x - 3) < 0$. El conjunto solución es el intervalo abierto $(2, 3)$.
- **Determinación:**
    - Cotas superiores: Cualquier $z \geq 3$. La menor de ellas es $3$, luego **$\sup A = 3$**.
    - Cotas inferiores: Cualquier $z \leq 2$. La mayor de ellas es $2$, luego **$\inf A = 2$**.
- **Análisis de Extremos:** Como $3 \notin A$ y $2 \notin A$, el conjunto **no tiene máximo ni mínimo**.

#### 3. Ejercicio 2: Conjuntos de Término General (Sucesiones) (15 minutos)

Sea $C = { \frac{n+1}{n} : n \in \mathbb{N} } = { 2, 1.5, 1.33, \dots }$.

- **Análisis de cotas:** Observamos que los términos decrecen a medida que $n$ aumenta.
- **Extremo Superior:** El primer término ($n=1$) es $2$. Como todos los demás son menores, **$\sup C = 2$**. Puesto que $2 \in C$, entonces **$\max C = 2$**.
- **Extremo Inferior:** El límite de la expresión cuando $n \to \infty$ es $1$. Ningún término es menor que $1$, por lo que **$\inf C = 1$**. Sin embargo, como no existe ningún natural $n$ tal que $\frac{n+1}{n} = 1$, el conjunto **no tiene mínimo**.

#### 4. El Reto: Conjuntos sin Supremo en $\mathbb{Q}$ (5 minutos)

Considera $B = { x \in \mathbb{Q} : x^2 < 2 }$.

- En $\mathbb{Q}$, este conjunto está acotado pero **no tiene supremo** porque $\sqrt{2} \notin \mathbb{Q}$.
- En $\mathbb{R}$, gracias al **Axioma del Supremo**, afirmamos que **$\sup B = \sqrt{2}$**. Esta es la propiedad que dota de **completitud** a la recta real.

#### 5. Uso de Herramientas (5 minutos)

Para verificar tus resultados, te recomiendo:

1. **WolframAlpha:** Introduce `supremum of {(n+1)/n, n in N}` para obtener el valor analítico.
2. **GeoGebra:** Representa el conjunto en el eje $X$ para visualizar si el intervalo es abierto o cerrado, lo que te indicará la existencia de máximo/mínimo.

---

**Recursos multimedia generados:**

- **Presentación de Soporte:** Contiene el desglose paso a paso de los ejercicios resueltos, con gráficas que distinguen intervalos abiertos y cerrados para identificar máximos.
	![[Sesión08_Determinación_de_supremos_y_máximos_en_conjuntos_dados.pptx]]
- **Audio Overview (Diálogo):** Dos expertos discuten por qué la caracterización por $\epsilon$ es el "arma secreta" para demostrar que un número es efectivamente el supremo y analizan la importancia histórica de la completitud de $\mathbb{R}$.
	![[Sesión08_Determinación_de_supremos_y_máximos_en_conjuntos_dados.m4a]]

Ya tienes disponibles estos materiales en tu panel de **Studio**. ¿Deseas que para la **Sesión 9** exploremos cómo los números reales se representan mediante expresiones decimales infinitas?

Se han generado los siguientes artefactos:

1. **Presentación de Soporte** para la Sesión 8.
2. **Resumen de Audio** (Podcast) detallado para la Sesión 8.