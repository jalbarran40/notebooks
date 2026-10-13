# **SESIÓN 41 (PRÁCTICA): VERIFICACIÓN DE ESTRUCTURAS DE GRUPO USANDO WOLFRAMALPHA PARA TABLAS DE OPERACIONES**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 4: OPERACIONES INTERNAS Y ESTRUCTURAS ALGEBRAICAS (Capítulo 4)  
**Objetivo:** Dominar la construcción y análisis de **tablas de Cayley (o tablas de operaciones)** para conjuntos finitos \(G = {g_1, g_2, \dots, g_n}\), comprobar visual y analíticamente la satisfacción de los axiomas de grupo (**clausura, neutro, simétricos y la propiedad cancelativa mediante la regla de no repetición**), aplicar **WolframAlpha** para la verificación automática de tablas y estructuras de grupos finitos, y resolver ejercicios tipo examen del libro base de Delgado Pineda & Muñoz Bouzo.

---

### **1. Marco Teórico: La Tabla de Cayley y Criterios de Verificación**

Para un conjunto finito \(G = {g_1, g_2, \dots, g_n}\) dotado de una ley de composición interna \(*\), la **tabla de Cayley** organiza en un cuadrado de \(n \times n\) los resultados de la operación \(g_i * g_j\) colocando en la intersección de la fila \(i\) y la columna \(j\) el elemento resultante.

#### **Criterios Visuales para la Verificación de Estructura de Grupo:**

1. **Clausura Interna (Operación Interna):**  
    Todos los elementos contenidos en las casillas interiores de la tabla deben pertenecer obligatoriamente al conjunto \(G\) (no puede aparecer ningún elemento ajeno a \(G\)).
2. **Identificación del Elemento Neutro (\(e \in G\)):**  
    Un elemento \(e \in G\) es el elemento neutro si y solo si la fila correspondiente a \(e\) **reproduce exactamente la cabecera superior** y la columna correspondiente a \(e\) **reproduce exactamente la columna inicial**.
3. **Existencia de Elementos Simétricos (Inversos):**  
    Para que todo elemento \(a \in G\) posea elemento simétrico \(a' \in G\) (tal que \(a * a' = a' * a = e\)), **el elemento neutro \(e\) debe figurar al menos una vez en cada fila y en cada columna** de la tabla.
4. **Propiedad Cancelativa (Regla del Cuadro Latino):**  
    Por la propiedad cancelativa de todo grupo (\(a * x = a * y \implies x = y\) y \(x * a = y * a \implies x = y\)), **ningún elemento de \(G\) puede repetirse en la misma fila ni en la misma columna**.
    
    > **Regla Práctica para Examen:** En la tabla de Cayley de un grupo finito, cada fila y cada columna contiene a todos los elementos de \(G\) **exactamente una vez sin repeticiones** (formando lo que en combinatoria se denomina un _cuadro latino_).
    
5. **Conmutatividad (Grupo Abeliano):**  
    El grupo \((G, *)\) es abeliano si y solo si la tabla de Cayley es **rigurosamente simétrica respecto de la diagonal principal** (la que desciende de la esquina superior izquierda a la inferior derecha).

---

### **2. Integración de WolframAlpha para la Verificación Computacional**

En la metodología del Grado en Matemáticas de la UNED, WolframAlpha constituye una herramienta indispensable de apoyo para validar cálculos algebraicos y verificar tablas de grupos finitos.

#### **Comandos Clave de WolframAlpha para Grupos Finitos:**

1. **Ingreso y Validación de una Tabla de Cayley General:**  
    Para definir una tabla dada por su matriz de valores y comprobar si genera un grupo, se utiliza el comando:  
    `GroupFromTable[{{1, 2, 3, 4}, {2, 1, 4, 3}, {3, 4, 1, 2}, {4, 3, 2, 1}}]`
2. **Consultar Propiedades Algebraicas de un Grupo Conocido:**
    - Para el grupo de Klein \(V_4\): `FiniteGroupData["Klein4Group", "Properties"]` o `AbelianGroup[{2, 2}]`.
    - Para grupos cíclicos \(\mathbb{Z}_n\): `CyclicGroup` o `FiniteGroupData["CyclicGroup", "CayleyTable"]`.
    - Para el grupo simétrico \(S_3\): `SymmetricGroup` o `DihedralGroup`.
3. **Verificar la Clase de Isomorfismo de una Tabla:**  
    `IsomorphismClass[GroupFromTable[{{1, 2, 3}, {2, 3, 1}, {3, 1, 2}}]]`

---

### **3. Batería de Ejercicios Resueltos de Examen (Texto Base)**

#### **Ejercicio 1: El Grupo de Klein \(V_4 = {e, a, b, c}\)**

**Enunciado:** Sea el conjunto de cuatro elementos \(V_4 = {e, a, b, c}\) dotado de una operación interna \(*\) en la cual \(e\) es el elemento neutro y cada elemento es su propio simétrico (es decir, \(x^2 = x * x = e\) para todo \(x \in V_4\)).

1. Construir de forma justificada la tabla de Cayley del **Grupo de Klein \(V_4\)**.
2. Comprobar que es un grupo abeliano.
3. Indicar el comando de WolframAlpha para obtener esta tabla.

- **Resolución Paso a Paso (Estándar UNED):**
    
    1. **Construcción de la Tabla:**
        
        - Dado que \(e\) es el neutro, la primera fila y primera columna quedan fijadas: \[e * x = x * e = x \quad \forall x \in {e, a, b, c}\]
        - Por la condición del enunciado, la diagonal principal contiene únicamente al elemento neutro \(e\): \[a * a = e, \quad b * b = e, \quad c * c = e\]
        - Determinamos el valor de \(a * b\): No puede ser \(e\) (pues \(a * a = e\)), no puede ser \(a\) (pues \(a * e = a\)), y no puede ser \(b\) (pues \(e * b = b\)). Por la regla de no repetición (cuadro latino), obligatoriamente **\(a * b = c\)**.
        - De forma análoga, completamos todos los productos cruzados: \(a * c = b\), \(b * a = c\), \(b * c = a\), \(c * a = b\) y \(c * b = a\).
    2. **Tabla de Cayley Completa de \(V_4\):**
        
    
    \[\begin{array}{c|cccc}
    
    - & e & a & b & c \ \hline e & e & a & b & c \ a & a & e & c & b \ b & b & c & e & a \ c & c & b & a & e \end{array}\]
    
    3. **Comprobación de Propiedades:**
        - **Clausura:** Todos los elementos de la tabla pertenecen a \({e, a, b, c}\).
        - **Neutro:** La fila/columna de \(e\) no altera los elementos.
        - **Simétricos:** \(e^{-1} = e\), \(a^{-1} = a\), \(b^{-1} = b\), \(c^{-1} = c\). Todos poseen simétrico.
        - **Conmutatividad:** La tabla es estrictamente simétrica respecto a la diagonal principal.
        - **Comando WolframAlpha:** `GroupTable[{e, a, b, c}, {{e, a, b, c}, {a, e, c, b}, {b, c, e, a}, {c, b, a, e}}]` o bien `AbelianGroup[{2, 2}]`.

---

#### **Ejercicio 2: El Grupo Cíclico \((\mathbb{Z}_4, +)\) (Suma Módulo 4)**

**Enunciado:** Construir la tabla de Cayley para el conjunto cociente de las clases de restos módulo 4, \(\mathbb{Z}_4 = {,,,}\), con la operación de suma modular. Identificar el neutro y los simétricos de cada elemento.

- **Resolución Paso a Paso:**
    
    1. **Operación Módulo 4:** Se calcula \([a] + [b] = [(a + b) \pmod 4]\).
        
    2. **Tabla de Cayley de \((\mathbb{Z}_4, +)\):**
        
    
    \[\begin{array}{c|cccc}
    
    - & & & & \ \hline & & & & \ & & & & \ & & & & \ & & & & \end{array}\]
    
    3. **Identificación de Elementos Notables:**
        - **Elemento Neutro:** \(\).
        - **Elementos Simétricos (Opuestos Módulo 4):**
            - \(- = \) (ya que \( + = \)).
            - \(- =\) (ya que \( + = = \)).
            - \(- =\) (ya que \( + = = \)).
            - \(- =\) (ya que \( + = = \)).

---

#### **Ejercicio 3: Reconstrucción de Tablas Incompletas (Ejercicio 4.13 del Texto Base)**

**Enunciado:** Probar que en un conjunto de tres elementos \(G = {e, a, b}\) con elemento neutro \(e\), **solo existe una única tabla de operación** que le confiere estructura de grupo.

- **Resolución Paso a Paso (Examen de Desarrollo UNED):**
    
    1. Fijamos la fila y columna del elemento neutro \(e\): \[e * e = e, \quad e * a = a, \quad e * b = b, \quad a * e = a, \quad b * e = b\]
        
    2. Analizamos la casilla \(a * a\):
        
        - Si \(a * a = a \implies a = e\) (por cancelación), contradicción pues \(a \neq e\).
        - Si \(a * a = e\), entonces en la fila de \(a\) la casillas restantes son \(a * e = a\) y \(a * a = e\), lo que obligaría a que \(a * b = b\). Pero entonces en la columna de \(b\) se repetiría el elemento \(b\) (ya que \(e * b = b\) y \(a * b = b\)), violando la regla de no repetición.
        - Por lo tanto, la única opción válida es **\(a * a = b\)**.
    3. Al ser \(a * a = b\), para completar la segunda fila (\(a\)) sin repetir elementos, obligatoriamente **\(a * b = e\)**.
        
    4. De manera simétrica, en la tercera fila (\(b\)), se deduce que **\(b * a = e\)** y **\(b * b = a\)**.
        
    5. **Tabla Única Resultante (Grupo Cíclico \(\mathbb{Z}_3\)):**
        
    
    \[\begin{array}{c|ccc}
    
    - & e & a & b \ \hline e & e & a & b \ a & a & b & e \ b & b & e & a \end{array}\] Queda demostrado que la estructura es **única salvo isomorfismo**. \(\blacksquare\)

---

### **4. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1 (Ejercicio 1 de Ejercicios Propuestos del Capítulo 4 del texto base):**  
    Completar la siguiente tabla de operación sabiendo que \((G, *)\) es un grupo de elemento neutro \(e\), donde \(G = {e, a, b}\): \[\begin{array}{c|ccc} * & e & a & b \ \hline e & & & \ a & & & \ b & & & \end{array}\] Determinar cuántas soluciones válidas existen.
2. **Ejercicio 2:** Dada la tabla del grupo de permutaciones \(S_3\) de 6 elementos (definido por las rotaciones y simetrías del triángulo equilátero), utilizar WolframAlpha con el comando `FiniteGroupData["SymmetricGroup", "CayleyTable"]` para identificar los subgrupos de orden 2 y de orden 3.

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Dada la tabla de Cayley de un grupo finito \((G, *)\) con elemento neutro \(e\), ¿cuál de las siguientes propiedades sobre la distribución de sus elementos en la tabla es **siempre verdadera**?

- **A)** El elemento neutro \(e\) debe estar ubicado exclusivamente en la diagonal principal de la tabla.
- **B)** En cada fila y en cada columna de la tabla de Cayley, cada elemento de \(G\) aparece exactamente una sola vez (sin repeticiones), debido a la propiedad cancelativa.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - La propiedad cancelativa en un grupo (\(a * x = a * y \implies x = y\)) garantiza analíticamente que no puede haber dos casillas iguales en la misma fila ni en la misma columna.
> - Dado que el grupo es finito, esto exige que cada fila y cada columna sea una permutación exacta de los elementos de \(G\) (formando un _cuadro latino_).
> - La opción A es falsa pues el neutro solo está en la diagonal principal si todo elemento es su propio inverso (como en el Grupo de Klein \(V_4\)), pero no en grupos generales como \(\mathbb{Z}_3\) o \(\mathbb{Z}_4\).
> - Por lo tanto, la opción **B** es la **correcta**.


## Material de apoyo


- [**Presentación**](Presentaciones/Sesión41_Verificación_estructuras_de_grupo.pptx):  Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con el encabezado del Bloque 4, recuadros normativos para las propiedades de las tablas de Cayley, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la integración de comandos exactos de WolframAlpha y la pregunta tipo test de autoevaluación.
- [**Resumen de audio**](Audios/Sesión41_Verificación_estructuras_de_grupo.m4a): Enfocado en la interpretación visual de las tablas de Cayley para conjuntos finitos, los criterios para identificar el elemento neutro e inversos, la regla del "cuadro latino" (no repetición en filas/columnas por la propiedad cancelativa), el análisis computacional con WolframAlpha y las pautas para completar tablas en el examen de desarrollo de la UNED.