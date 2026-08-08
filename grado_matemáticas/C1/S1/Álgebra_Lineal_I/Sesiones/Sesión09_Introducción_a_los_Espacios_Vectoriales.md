¡Hola! Como tu tutor de **Álgebra Lineal I**, he preparado el material para la **Sesión 9**, que marca el inicio del **Tema 3: Espacios Vectoriales**. Siguiendo el plan de trabajo, hoy abandonamos la visión de las matrices como simples tablas para entrar en el estudio de las estructuras algebraicas abstractas.

A continuación, presento el contenido teórico detallado.

---

### Contenido de la Sesión 9: Introducción a los Espacios Vectoriales

#### 1. ¿Qué es un Espacio Vectorial?

Un **espacio vectorial** es un conjunto $V$ de objetos (llamados **vectores**) sobre un cuerpo $K$ (normalmente $\mathbb{R}$ o $\mathbb{C}$, cuyos elementos llamamos **escalares**). Para que $V$ sea un espacio vectorial, deben estar definidas dos operaciones:

- **Suma de vectores:** $+: V \times V \to V$.
- **Producto por un escalar:** $\cdot: K \times V \to V$.

Estas operaciones deben cumplir **ocho axiomas** fundamentales:

1. **Asociativa de la suma:** $u + (v + w) = (u + v) + w$.
2. **Conmutativa:** $u + v = v + u$.
3. **Elemento neutro:** Existe un vector $\vec{0}$ tal que $v + \vec{0} = v$.
4. **Elemento opuesto:** Para cada $v$, existe $-v$ tal que $v + (-v) = \vec{0}$.
5. **Distributiva respecto a la suma de vectores:** $a(u + v) = au + av$.
6. **Distributiva respecto a la suma de escalares:** $(a + b)v = av + bv$.
7. **Asociativa del producto por escalar:** $a(bv) = (ab)v$.
8. **Elemento unidad del cuerpo:** $1 \cdot v = v$.

#### 2. Ejemplos Fundamentales

Es vital comprender que un "vector" no es solo una flecha; puede ser cualquier objeto que cumpla los axiomas anteriores:

- **El espacio $\mathbb{K}^n$:** Conjunto de sucesiones ordenadas de $n$ escalares. Es el modelo principal.
- **Espacio de Matrices ($M_{m \times n}$):** El conjunto de matrices de un tamaño fijo con la suma y producto por escalar usuales.
- **Espacio de Polinomios ($K_n[x]$):** Polinomios de grado menor o igual a $n$.

#### 3. Subespacios Vectoriales

Un **subespacio vectorial** $U$ es un subconjunto de $V$ que, por sí mismo, tiene estructura de espacio vectorial con las mismas operaciones. Para comprobar si un conjunto es un subespacio, no hace falta verificar los 8 axiomas, basta con el **criterio de subespacio**:

1. **No vacío:** Contiene al menos el vector nulo ($\vec{0} \in U$).
2. **Cerrado bajo la suma:** Si $u, v \in U$, entonces $u + v \in U$.
3. **Cerrado bajo producto por escalar:** Si $v \in U$ y $a \in K$, entonces $av \in U$.

---

He procedido a crear los artefactos de apoyo para esta sesión:

1. **Presentación (Slides):** He diseñado una cubierta de diapositivas que sigue estrictamente el manual de estilo (minimalista, azul UNED y fórmulas limpias) para facilitar tu estudio visual.
![[Sesión09_Introducción_a_los_Espacios_Vectoriales.pptx]]
2. **Audio (Podcast):** He generado una conversación tipo "deep dive" que explica la importancia de pasar del cálculo matricial a la abstracción de los espacios vectoriales, ideal para escuchar mientras repasas.
	![[Sesión09_Introducción_a_los_Espacios_Vectoriales.m4a]]

## Visualización de subespacios en GeoGebra![[Sesión09_Introducción_a_los_Espacios_Vectoriales.pptx]]
Para visualizar los subespacios de $\mathbb{R}^2$ en GeoGebra, debes tener en cuenta que, geométricamente, los únicos subespacios de este espacio son el **vector nulo (el origen)** y cualquier **recta que pase por el origen**.

A continuación, te detallo cómo puedes representarlos y verificar sus propiedades:

### 1. Visualización de los tipos de subespacios

- **Subespacio Trivial:** Puedes marcar el origen de coordenadas simplemente creando el punto $O = (0, 0)$. Este conjunto formado solo por el vector cero es siempre un subespacio.
- **Rectas por el origen:** Para visualizar un subespacio propio, introduce en la barra de entrada una ecuación lineal homogénea (sin término independiente), por ejemplo: `2x - 3y = 0`. GeoGebra dibujará una recta que pasa por $(0,0)$. Cualquier recta que no pase por el origen no representará un subespacio vectorial.

### 2. Uso de parámetros y vectores directores

Puedes definir un subespacio de forma paramétrica, lo cual es muy útil para ver cómo se "genera" el espacio:

1. Crea un vector director, por ejemplo: `u = (1, 2)`.
2. Usa el comando `Recta( (0,0), u )`.
3. Crea un deslizador para un escalar `k`.
4. Define un punto o vector variable `v = k * u`. Al mover el deslizador, verás cómo el vector resultante se desplaza siempre sobre la misma recta, ilustrando la **cerradura bajo el producto por un escalar**.

### 3. Verificación de la cerradura bajo la suma

Para comprobar visualmente que la suma de dos vectores de un subespacio permanece en él:

1. Define dos puntos $A$ y $B$ sobre la recta que creaste.
2. Crea los vectores correspondientes: `u = Vector(A)` y `v = Vector(B)`.
3. Calcula su suma: `w = u + v`.
4. Observarás que el vector resultante $w$ (representado por la diagonal del paralelogramo) sigue estando sobre la misma recta.

### 4. Intersección de subespacios

Si creas dos rectas distintas que pasen por el origen (dos subespacios de $\mathbb{R}^2$), puedes usar la herramienta **Intersección**. Verás que el único punto común es el origen $(0,0)$, lo que confirma que la intersección de subespacios siempre es un subespacio (en este caso, el subespacio trivial).

### 5. Unión de subespacios (Contraejemplo)

Puedes visualizar por qué la unión de dos subespacios no suele ser un subespacio:

1. Dibuja el eje $X$ (`y = 0`) y el eje $Y$ (`x = 0`).
2. Toma un vector en cada uno, por ejemplo $u = (1, 0)$ y $v = (0, 1)$.
3. Súmalos: `u + v`. Verás que el resultado $(1, 1)$ no cae en ninguna de las dos rectas originales, demostrando que la unión no es cerrada bajo la suma.

---

