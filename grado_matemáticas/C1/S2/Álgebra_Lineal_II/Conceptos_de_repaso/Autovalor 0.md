Que un autovalor sea exactamente cero ($\lambda = 0$) es un caso de especial importancia en el álgebra lineal, ya que vincula directamente la teoría de autovalores con la invertibilidad de la aplicación y la estructura de su núcleo.

A continuación, te explico en detalle qué implica este valor y cómo afecta a las dimensiones algebraicas y geométricas.

### 1. El significado de $\lambda = 0$: El colapso del espacio

Por definición, un escalar $\lambda$ es un autovalor de un endomorfismo $f$ si existe un vector no nulo $u$ tal que $f(u) = \lambda u$. Si sustituimos $\lambda$ por $0$, la ecuación se convierte en: \[f(u) = 0 \cdot u = 0\] Esto significa que el autovector $u$ es enviado al vector nulo por la transformación. Por lo tanto, **el subespacio propio asociado al cero ($V_0$) es exactamente igual al Núcleo de la aplicación ($\text{Ker } f$)**.

**Consecuencias inmediatas:**

- **No invertibilidad:** Un endomorfismo es un isomorfismo (es invertible) si y solo si el $0$ **no** es un autovalor de $f$. Si el $0$ es autovalor, el determinante de la matriz asociada es necesariamente nulo, ya que el determinante es el producto de todos los autovalores (o, de forma equivalente, el término independiente del polinomio característico).
- **Pérdida de dimensión:** La presencia de un autovalor cero indica que la aplicación lineal "aplasta" o colapsa al menos una dimensión del espacio original hacia el origen.

### 2. Multiplicidad Geométrica del cero ($m_g$ o $d_0$)

La multiplicidad geométrica del autovalor cero es la dimensión del subespacio propio asociado a él. Como hemos visto que $V_0 = \text{Ker } f$, entonces: \[m_g(0) = \dim(\text{Ker } f)\] Utilizando la **fórmula de las dimensiones**, podemos calcularla a partir del rango de la matriz asociada $A$: \[m_g(0) = n - \text{rango}(A)\] Donde $n$ es la dimensión del espacio total. Esta cifra nos dice cuántos vectores linealmente independientes son "anulados" directamente por la aplicación.

### 3. Multiplicidad Algebraica del cero ($m_a$ o $\alpha_0$)

La multiplicidad algebraica es el número de veces que el cero aparece como raíz del polinomio característico $P(\lambda) = \det(A - \lambda I)$.

- Si $P(\lambda) = \lambda^k \cdot Q(\lambda)$ (donde $Q(0) \neq 0$), entonces la multiplicidad algebraica del cero es $k$.
- Esto implica que en la **Forma Canónica de Jordan**, la suma de los tamaños de todos los bloques asociados al autovalor cero debe ser exactamente $m_a(0)$.

### 4. Relación entre ambas y sus consecuencias

Como ocurre con cualquier autovalor, siempre se cumple que $1 \leq m_g(0) \leq m_a(0)$. Sin embargo, la disparidad entre estas dos dimensiones en el caso del cero revela estructuras profundas:

- **Diagonalizabilidad:** Para que el endomorfismo sea diagonalizable, es requisito que $m_g(0) = m_a(0)$. Si $m_g(0) < m_a(0)$, existen vectores que no van al cero al aplicar $f$ una vez, pero que sí terminan en el cero al aplicar $f$ varias veces ($f^2, f^3, \dots$). Estos se encuentran en los **subespacios propios generalizados** $K^i(0) = \text{ker}(f^i)$.
- **Nilpotencia:** Un caso extremo es cuando el único autovalor es el cero ($m_a(0) = n$). Si esto ocurre, el endomorfismo es **nilpotente**, lo que significa que existe una potencia $k$ tal que $f^k = 0$. En su forma de Jordan, solo habría ceros en la diagonal principal.
- **Estructura de Bloques:** Mientras que $m_a(0)$ nos dice el tamaño total del "sector nulo" en la matriz de Jordan, $m_g(0)$ nos indica el **número total de bloques de Jordan** asociados al cero. Si $m_g(0) = 1$ pero $m_a(0) = 3$, por ejemplo, sabemos que hay un único bloque de tamaño $3 \times 3$ que conecta una cadena de vectores que terminan desapareciendo en el núcleo.