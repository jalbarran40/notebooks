¡Hola! Como tu tutor de **Álgebra Lineal I**, es fundamental que estos dos conceptos queden muy claros, ya que son los pilares para clasificar las aplicaciones lineales y entender su estructura.

Aquí tienes la definición, su alcance y los métodos de cálculo según la bibliografía de nuestra asignatura:

### 1. Definición de Núcleo e Imagen

- **Núcleo ($Ker(f)$):** Es el conjunto de todos los vectores del espacio de partida (dominio) cuya imagen mediante la aplicación es el vector nulo del espacio de llegada. Formalmente: $$Ker(f) = {u \in U \mid f(u) = 0_V}$$. El núcleo siempre es un subespacio vectorial del espacio de partida $U$.
    
- **Imagen ($Im(f)$):** Es el conjunto de todos los vectores del espacio de llegada (codominio) que son el resultado de aplicar $f$ a algún vector del espacio de partida. Formalmente: $Im(f) = {f(u) \mid u \in U}$. La imagen es un subespacio vectorial del espacio de llegada $V$.
    

### 2. ¿Aplican sólo a endomorfismos?

**No.** El núcleo y la imagen se definen para **cualquier aplicación lineal** $f: U \to V$, sin importar si el espacio de partida y de llegada son el mismo.

En el caso particular de que $U = V$, la aplicación se llama endomorfismo, pero las definiciones de núcleo e imagen siguen siendo las mismas. Nuestra bibliografía presenta múltiples ejemplos de aplicaciones entre espacios de distintas dimensiones (como de $\mathbb{R}^3$ a $\mathbb{R}^2$ o de $\mathbb{R}^4$ a $\mathbb{R}^3$) donde se calculan ambos subespacios.

### 3. ¿Cómo se calculan?

Para el cálculo práctico, solemos utilizar la **matriz asociada ($A$)** de la aplicación lineal respecto a unas bases dadas:

#### Cálculo del Núcleo ($Ker(f)$):

1. **Planteamiento:** Se resuelve el sistema de ecuaciones lineales homogéneo $AX = 0$, donde $A$ es la matriz asociada.
2. **Resolución:** Aplicamos el **Método de Gauss** para escalonar la matriz y hallar las soluciones del sistema.
3. **Resultado:** El conjunto de soluciones nos da las ecuaciones implícitas del núcleo. La dimensión del núcleo (nulidad) será $n - rg(A)$, siendo $n$ la dimensión del dominio.

#### Cálculo de la Imagen ($Im(f)$):

1. **Planteamiento:** La imagen está generada por las imágenes de los vectores de cualquier base del dominio.
2. **Procedimiento:** Tomamos las **columnas de la matriz asociada $A$**, ya que estas columnas representan las coordenadas de las imágenes de la base del dominio.
3. **Obtención de la Base:** Para encontrar una base de la imagen, eliminamos las columnas dependientes (por ejemplo, trasponiendo y aplicando Gauss por filas, o aplicando Gauss por columnas directamente) hasta obtener un conjunto de vectores linealmente independientes.
4. **Resultado:** El número de vectores de esta base es el **rango** de la aplicación ($rg(f)$), que coincide con el rango de la matriz $A$.

**Consejo del tutor:** Recuerda siempre verificar la **fórmula de las dimensiones**: $\dim(Ker(f)) + \dim(Im(f)) = \dim(U)$. Es la mejor forma de comprobar en un examen que no has cometido errores de cálculo.

Si quieres, podemos resolver un ejercicio concreto de **Beatriz Estrada** para practicar estos cálculos. ¿Te gustaría que eligiera uno de una aplicación de $\mathbb{R}^4$ en $\mathbb{R}^3$?