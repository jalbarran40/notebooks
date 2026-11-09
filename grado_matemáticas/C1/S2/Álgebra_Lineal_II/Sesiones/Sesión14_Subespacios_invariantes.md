# Ejercicios sobre la Estructura de Subespacios Generalizados

**Asignatura:** Álgebra Lineal II (Grado en Matemáticas, UNED)  
**Bloque I:** Clasificación de Endomorfismos y Formas de Jordan  
**Carácter:** Práctico (45 minutos)

---

## 1. Resumen Operativo y Metodología Algorítmica

En esta sesión práctica aplicaremos de forma sistemática el cálculo de los **subespacios propios generalizados** (o cadenas de núcleos) y el procedimiento para enumerar sin olvidos todos los **subespacios invariantes** de un endomorfismo.

Para un autovalor \(\lambda\) con multiplicidad algebraica \(m_a(\lambda)\):

1. **Cadena ascendente de subespacios generalizados:** \[K^1(\lambda) \subsetneq K^2(\lambda) \subsetneq \dots \subsetneq K^k(\lambda) = M(\lambda)\] donde \(K^i(\lambda) = \ker(f - \lambda \text{Id})^i\).
2. **Dimensiones e invariantes \(d_i\) y \(r_i\):**
    - \(d_i = \dim K^i(\lambda) = n - \text{rg}(A - \lambda I)^i\).
    - \(r_i = d_i - d_{i-1}\) es el número de vectores en la fila \(i\) de la Tabla de Jordan (satisface \(r_1 \ge r_2 \ge \dots \ge r_k\)).
    - La cadena se estabiliza en el menor entero \(k\) tal que \(d_k = m_a(\lambda)\), definiendo el **subespacio máximo** \(M(\lambda) = K^k(\lambda)\).
3. **Clasificación de subespacios invariantes \(U\):**
    - **Teorema de Descomposición:** \(U = \bigoplus_{j} (U \cap M(\lambda_j))\).
    - **Irreducibles:** Todo subespacio irreducible está contenido en un único \(M(\lambda_j)\) y es un subespacio **\(r\)-cíclico** generado por un vector \(v \in K^r(\lambda) \setminus K^{r-1}(\lambda)\) y sus imágenes por \((f - \lambda \text{Id})\).
    - **Reducibles:** Se obtienen mediante suma directa de subespacios irreducibles de distintos autovalores o bloques independientes.

---

## 2. Ejercicio 1: Determinación de la Cadena de Subespacios Generalizados en \(\mathbb{R}^4\)

### Enunciado

Dada la matriz \(A \in \mathcal{M}_4(\mathbb{R})\) en la base canónica: \[A = \begin{pmatrix} 2 & 0 & 0 & 0 \\ 1 & 2 & 0 & 0 \\ 0 & 1 & 2 & 0 \\ 0 & 0 & 0 & 2 \end{pmatrix}\]

1. Determine el polinomio característico, los autovalores y la cadena de subespacios propios generalizados \(K^i(\lambda)\).
2. Halle las ecuaciones implícitas y bases de cada \(K^i(\lambda)\) hasta alcanzar el subespacio máximo \(M(\lambda)\).

---

### Resolución Paso a Paso

1. **Polinomio Característico y Autovalores:** Al ser una matriz triangular inferior, las raíces del polinomio característico se leen en la diagonal principal: \[P(\lambda) = \det(A - \lambda I) = (\lambda - 2)^4 = 0\] Existe un único autovalor \(\lambda = 2\) con multiplicidad algebraica \(m_a(2) = 4\).
    
2. **Primer Subespacio Generalizado \(K^1(2) = \ker(A - 2I)\) (Subespacio Propio):** Calculamos la matriz de la aplicación reducida \(A - 2I\): \[A - 2I = \begin{pmatrix} 0 & 0 & 0 & 0 \\ 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}\] El rango es \(\text{rg}(A - 2I) = 2\), luego \(d_1 = \dim K^1(2) = 4 - 2 = 2\) (multiplicidad geométrica \(m_g = 2\), lo que indica **2 bloques de Jordan**).
    
    Resolviendo \((A - 2I)X = 0\), obtenemos las **ecuaciones implícitas de \(K^1(2)\)**: \[K^1(2) \equiv \begin{cases} x_1 = 0 \\ x_2 = 0 \end{cases}\] Una base de \(K^1(2)\) es \(B_1 = {(0, 0, 1, 0)^t, (0, 0, 0, 1)^t}\).
    
3. **Segundo Subespacio Generalizado \(K^2(2) = \ker(A - 2I)^2\):** Calculamos la potencia \((A - 2I)^2\): \[(A - 2I)^2 = \begin{pmatrix} 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}\] El rango es \(\text{rg}(A - 2I)^2 = 1\), de donde \(d_2 = \dim K^2(2) = 4 - 1 = 3\).
    
    Resolviendo \((A - 2I)^2 X = 0\), obtenemos la **ecuación implícita de \(K^2(2)\)**: \[K^2(2) \equiv { x_1 = 0 }\] Una base de \(K^2(2)\) es \(B_2 = {(0, 1, 0, 0)^t, (0, 0, 1, 0)^t, (0, 0, 0, 1)^t}\).
    
4. **Tercer Subespacio Generalizado \(K^3(2) = \ker(A - 2I)^3\):** Calculamos \((A - 2I)^3\): \[(A - 2I)^3 = \begin{pmatrix} 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix} = 0_4\] El rango es \(0\), por lo que \(d_3 = \dim K^3(2) = 4 = m_a(2)\).
    
    La cadena se estabiliza en \(k = 3\): \[K^1(2) \subsetneq K^2(2) \subsetneq K^3(2) = M(2) = \mathbb{R}^4\] Las diferencias de dimensión son \(r_1 = 2\), \(r_2 = 3 - 2 = 1\), \(r_3 = 4 - 3 = 1\), confirmando un bloque de Jordan de orden \(3 \times 3\) y un bloque de orden \(1 \times 1\).
    

---

## 3. Ejercicio 2: Enumeración Sistemática de Subespacios Invariantes

### Enunciado

Sea \(f: \mathbb{R}^4 \to \mathbb{R}^4\) el endomorfismo cuya matriz en la base de Jordan \(B = {v_1, v_2, v_3, v_4}\) es: \[J = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 3 & 0 \\ 0 & 0 & 1 & 3 \end{pmatrix}\] Determine de forma exhaustiva todos los subespacios invariantes de dimensiones 1, 2 y 3 (rectas, planos e hiperplanos).

---

### Resolución Paso a Paso

1. **Estructura de Subespacios Máximos:** Los autovalores son \(\lambda_1 = 1\) (\(m_a = 2, m_g = 2\), diagonalizable) y \(\lambda_2 = 3\) (\(m_a = 2, m_g = 1\), bloque \(2 \times 2\)). \[\mathbb{R}^4 = M(1) \oplus M(3) = L(v_1, v_2) \oplus L(v_3, v_4)\]
    
2. **Rectas Invariantes (Dimensión 1) [Irreducibles]:** Toda recta invariante debe ser \(1\)-cíclica (estar contenida en un subespacio propio \(K^1(\lambda)\)):
    
    - **En \(M(1) = K^1(1)\):** Al tener \(m_g = 2\), **cualquier combinación no nula** \(a v_1 + b v_2\) genera una recta invariante. Hay infinitas rectas: \[R_{a,b} = L(a v_1 + b v_2) \quad (\text{con } (a,b) \neq (0,0))\]
    - **En \(M(3)\):** El subespacio propio \(K^1(3)\) es de dimensión 1 generado por el autovector \(v_4\). Hay **1 única recta**: \[R_3 = K^1(3) = L(v_4)\]
3. **Planos Invariantes (Dimensión 2):**
    
    - **Planos Irreducibles (\(2\)-cíclicos):**
        1. El propio subespacio propio \(M(1) = L(v_1, v_2)\).
        2. El subespacio \(2\)-cíclico \(M(3) = L(v_3, v_4)\) generado por \(v_3 \in K^2(3) \setminus K^1(3)\) y su imagen \((f - 3\text{Id})(v_3) = v_4\).
    - **Planos Reducibles (\(U_1 \oplus U_2\)):** Suma directa de una recta de \(M(1)\) y la recta única de \(M(3)\): \[P_{a,b} = R_{a,b} \oplus R_3 = L(a v_1 + b v_2, v_4)\]
4. **Hiperplanos Invariantes (Dimensión 3) [Reducibles]:** Un hiperplano invariante \(H\) en \(\mathbb{R}^4\) no puede ser irreducible (el bloque mayor es de tamaño 2). Se obtiene sumando un plano y una recta de distintos subespacios máximos:
    
    - Suma del plano \(M(1)\) y la recta \(R_3\): \[H_1 = M(1) \oplus R_3 = L(v_1, v_2, v_4) \equiv { x_3 = 0 }\]
    - Suma de una recta de \(M(1)\) y el plano \(M(3)\): \[H_{a,b} = R_{a,b} \oplus M(3) = L(a v_1 + b v_2, v_3, v_4) \equiv { b x_1 - a x_2 = 0 }\]

---

## Cuadro de Advertencia para el Examen

> **Precaución Frecuente en Exámenes de la UNED:**  
> Un error clásico consiste en asumir que un subespacio generado por dos autovectores independientes \(u_1, u_2\) de autovalores distintos es un plano "irreducible". Esto es **falso**: \(L(u_1, u_2) = L(u_1) \oplus L(u_2)\) es un subespacio **totalmente reducible** al descomponerse en suma directa de dos rectas invariantes independientes.

---

## Materiales de apoyo

1. [**Presentación**](Presentaciones/Sesión14_Subespacios_invariantes.pptx): Diseñada bajo el **Manual de Estilo UNED**, que incluye la portada oficial, la fundamentación algorítmica de la cadena de núcleos \(K^i(\lambda)\), los dos ejercicios resueltos paso a paso con tablas de Jordan y el cuadro de advertencia sobre errores comunes de examen.
2. [**Resumen de audio**](Audios/Sesión14_Subespacios_invariantes.m4a): Un debate en profundidad entre dos profesores especialistas en Álgebra Lineal repasando la técnica de selección de vectores, el cálculo de ecuaciones implícitas y la estrategia para enumerar subespacios sin olvidar ningún tipo geométrico.