He preparado el material para la **Sesión 7**, centrada en uno de los procedimientos más técnicos pero fundamentales de la asignatura: la construcción de las **bases de Jordan**. Mientras que en la sesión anterior aprendimos a "adivinar" la forma de la matriz, hoy aprenderemos a encontrar los vectores específicos que la generan.

---

# Sesión 7 (T): Construcción de Bases de Jordan y Cadenas de Subespacios

### 1. El concepto de Base de Jordan

Una **base de Jordan** (\(B_J\)) es una base del espacio vectorial \(V\) respecto a la cual la matriz del endomorfismo \(f\) adopta su **Forma Canónica de Jordan**. Esta base está compuesta por la unión de las bases de cada uno de los subespacios máximos asociados a los distintos autovalores: \(B_J = B_{\lambda_1} \cup B_{\lambda_2} \cup \dots \cup B_{\lambda_r}\).

### 2. Cadenas de Subespacios y Vectores Cíclicos

Para un autovalor \(\lambda\), la base se construye a partir de **subespacios cíclicos**. Si un vector \(v\) pertenece al núcleo de la potencia \(k\) de la aplicación (\(v \in K^k(\lambda)\)) pero no a la potencia anterior (\(v \notin K^{k-1}(\lambda)\)), dicho vector genera una cadena de \(k\) vectores linealmente independientes: \[ {v, (f - \lambda Id)(v), (f - \lambda Id)^2(v), \dots, (f - \lambda Id)^{k-1}(v)} \]

- El último vector de la cadena, \((f - \lambda Id)^{k-1}(v)\), es siempre un **autovector** (está en \(K^1(\lambda)\)).
- Cada cadena de longitud \(k\) dará lugar a un **bloque de Jordan** de orden \(k\) en la matriz.

### 3. El Algoritmo de Construcción (La Tabla de Jordan)

Para construir la base de un subespacio máximo \(M(\lambda)\), seguimos un proceso de "arriba hacia abajo" basándonos en la tabla de Jordan:

1. **Nivel Superior (\(k\)):** Seleccionamos vectores que completen una base de \(K^k(\lambda)\) respecto a \(K^{k-1}(\lambda)\). Estos son vectores en \(K^k\) que no son combinación lineal de vectores de \(K^{k-1}\).
2. **Descenso:** Para cada vector \(v\) elegido, calculamos su imagen por \(g = (f - \lambda Id)\). Estos nuevos vectores bajan al nivel \(k-1\).
3. **Completitud:** En cada nivel inferior, si las imágenes del nivel superior no son suficientes para completar el "salto" de dimensión entre \(K^{i-1}\) y \(K^i\), debemos añadir manualmente nuevos vectores linealmente independientes en \(K^i\).
4. **Ordenación:** Para que los "1" de los bloques de Jordan aparezcan en la **subdiagonal** (convención de la UNED), los vectores deben colocarse en la base por **columnas** de la tabla, de derecha a izquierda y de arriba hacia abajo dentro de cada columna.

### 4. Ejemplo Conceptual

Si tenemos un bloque de Jordan de tamaño 3, necesitamos un vector \(v_1\) tal que \(g^3(v_1) = 0\) pero \(g^2(v_1) \neq 0\). Los vectores de la base para ese bloque serán: \[ u_1 = v_1, \quad u_2 = g(v_1), \quad u_3 = g^2(v_1) \] La matriz en esta base tendrá \(\lambda\) en la diagonal y 1s justo debajo de ella.

---

He activado la generación de los recursos multimedia para esta sesión:

1. **Audio Overview (Podcast):** Una conversación entre dos expertos sobre la "fontanería" de las bases de Jordan. Discutirán cómo se "empujan" los vectores a través de las potencias de la matriz para formar cadenas y por qué el orden de los vectores es crítico para no arruinar la forma de la matriz.
2. **Slide Deck (Presentación):** Diseñada según el **Manual de Estilo UNED**, incluye el esquema visual de la tabla de Jordan, el algoritmo paso a paso para elegir vectores y la regla de oro para la ordenación final.

A continuación, puedes consultar los artefactos generados:

He generado los materiales solicitados para la **Sesión 7: Construcción de Bases de Jordan y Cadenas de Subespacios**.

1. **Podcast (Audio Overview):** Ya tienes disponible una conversación profunda en la que los expertos desglosan la lógica de las cadenas de subespacios. Se explica de forma intuitiva cómo se seleccionan los vectores en los núcleos de potencias superiores y cómo, al aplicar sucesivamente la aplicación lineal, se van "cosechando" los vectores que completarán la base de Jordan. Es un recurso ideal para entender el "por qué" antes de pasar al "cómo" del cálculo.

	![[Sesión07_Construcción_de_Bases_de_Jordan_y_Cadenas_de_Subespaci.m4a]]
1. **Presentación (Slide Deck):** Siguiendo fielmente el **Manual de Estilo UNED**, se ha creado un soporte visual que organiza el algoritmo de construcción. La presentación destaca:
    - La jerarquía de los **subespacios propios generalizados** (\(K^i\)).
    - El papel del **vector generador** en el nivel más alto de la cadena.
    - La **Tabla de Jordan** como herramienta de organización visual.
    - La **regla de ordenación por columnas**, fundamental en la metodología de Borobia & Estrada para asegurar que los "1" aparezcan en la subdiagonal de la matriz resultante.

	![[Sesión07_Construcción_de_Bases_de_Jordan_y_Cadenas_de_Subespacios.pptx]]

Puedes encontrar ambos archivos en la pestaña de artefactos de tu cuaderno. Te sugiero que, tras leer el material de texto de la sesión, escuches el podcast mientras revisas las diapositivas para consolidar este procedimiento, que suele ser uno de los puntos determinantes en los exámenes del Bloque I.

¡Mucho ánimo con esta sesión! Si tienes cualquier duda sobre cómo elegir el vector inicial en el nivel superior, no dudes en preguntarme.