# Material de Estudio: Sesión 13 (T)

## Descomposición de Subespacios Invariantes

**Asignatura:** Álgebra Lineal II (Grado en Matemáticas, UNED)  
**Bloque I:** Clasificación de Endomorfismos y Formas de Jordan  
**Texto de Referencia:** Borobia, A. & Estrada, B. (Capítulo 6.2)

---

### 1. El Teorema de Descomposición de Subespacios Invariantes

Cuando un endomorfismo \(f: V \to V\) en un espacio de dimensión finita \(n\) admite una Forma Canónica de Jordan, el espacio vectorial total se descompone en suma directa de sus subespacios máximos (propios generalizados) asociados a los autovalores distintos \(\lambda_1, \dots, \lambda_k\): \[V = M(\lambda_1) \oplus M(\lambda_2) \oplus \dots \oplus M(\lambda_k)\]

El siguiente teorema fundamental establece que la estructura de cualquier subespacio \(f\)-invariante respeta totalmente esta descomposición del espacio global:

> **Teorema 6.7 (Descomposición de Subespacios Invariantes):**  
> Sea \(f: V \to V\) un endomorfismo que admite forma canónica de Jordan y sea \(U \subseteq V\) un subespacio \(f\)-invariante. Entonces, \(U\) se descompone de manera única en suma directa de subespacios invariantes \(U_i\) contenidos en los subespacios máximos \(M(\lambda_i)\): \[U = U_1 \oplus U_2 \oplus \dots \oplus U_k, \quad \text{donde } U_i = U \cap M(\lambda_i)\]

---

### 2. Subespacios Reducibles e Irreducibles

Para clasificar la totalidad de los subespacios invariantes de un endomorfismo, introducimos la distinción entre subespacios "primitivos" y subespacios "compuestos":

- **Subespacio Invariante Reducible:** Un subespacio \(f\)-invariante \(U\) es _reducible_ si puede expresarse como suma directa de dos subespacios \(f\)-invariantes no triviales (\(U = U_1 \oplus U_2\), con \(U_1, U_2 \neq {0}\)).
- **Subespacio Invariante Irreducible:** Un subespacio \(f\)-invariante \(U\) es _irreducible_ si no se puede descomponer como suma directa no trivial de otros subespacios invariantes.

> **Corolario 6.8:**  
> Todo subespacio invariante **irreducible** está obligatoriamente contenido en un único subespacio máximo \(M(\lambda_i)\).

_Consecuencia metodológica:_ Para encontrar **todos** los subespacios invariantes de un endomorfismo, basta con hallar primero los subespacios **irreducibles** dentro de cada subespacio máximo \(M(\lambda_i)\), y posteriormente formar los subespacios **reducibles** combinando todas las sumas directas posibles de los irreducibles.

---

### 3. Caracterización de Subespacios Irreducibles: Subespacios \(r\)-Cíclicos

¿Cómo se identifican geométricamente los subespacios irreducibles dentro de un subespacio máximo \(M(\lambda)\)? La respuesta la aportan los bloques de Jordan:

> **Proposición 6.11 (Caracterización de Subespacios Irreducibles):**  
> Un subespacio vectorial \(U\) de dimensión \(r\) es \(f\)-invariante e irreducible si y solo si es un **subespacio \(r\)-cíclico** asociado a un autovalor \(\lambda\).  
> Es decir, está generado por un vector \(v \in K^r(\lambda) \setminus K^{r-1}(\lambda)\) y sus imágenes iteradas por \(g = f - \lambda \text{Id}\): \[U = L\left(v, (f - \lambda \text{Id})(v), (f - \lambda \text{Id})^2(v), \dots, (f - \lambda \text{Id})^{r-1}(v)\right)\]

#### Propiedades fundamentales de las cadenas cíclicas:

1. **Relación con las filas de la Tabla de Jordan:** Cada bloque de Jordan de orden \(j \times j\) (correspondiente a una fila de \(j\) vectores en la tabla de Jordan) genera exactamente \(j\) subespacios invariantes irreducibles anidados (uno de cada dimensión entre \(1\) y \(j\)): \[L(v_j) \subset L(v_{j-1}, v_j) \subset \dots \subset L(v_1, v_2, \dots, v_j)\]
2. **Las rectas invariantes (\(r=1\)):** Toda recta invariante es \(1\)-cíclica y, por tanto, siempre es un subespacio irreducible.

---

### 4. Ejemplo Práctico Ilustrativo paso a paso

#### Enunciado

Considere un endomorfismo \(f: \mathbb{R}^4 \to \mathbb{R}^4\) cuya matriz asociada en la base de Jordan \(B = {v_1, v_2, v_3, v_4}\) es: \[J = \begin{pmatrix} 2 & 0 & 0 & 0 \\ 1 & 2 & 0 & 0 \\ 0 & 0 & 3 & 0 \\ 0 & 0 & 1 & 3 \end{pmatrix}\] Determine todos los subespacios invariantes irreducibles y construya un subespacio reducible de dimensión 3.

---

#### Resolución Paso a Paso

1. **Descomposición del espacio total en subespacios máximos:** Los autovalores son \(\lambda_1 = 2\) (\(m_a = 2\)) y \(\lambda_2 = 3\) (\(m_a = 2\)).  
    El espacio se descompone en: \(\mathbb{R}^4 = M(2) \oplus M(3)\), donde: \[M(2) = L(v_1, v_2), \quad M(3) = L(v_3, v_4)\]
    
2. **Subespacios irreducibles en \(M(2)\):** En \(M(2)\), tenemos el bloque de Jordan \(2 \times 2\) asociado a \(v_1 \in K^2(2) \setminus K^1(2)\) y \(v_2 = (f - 2\text{Id})(v_1) \in K^1(2)\):
    
    - **Recta irreducible (\(1\)-cíclica):** \(R_1 = K^1(2) = L(v_2)\).
    - **Plano irreducible (\(2\)-cíclico):** \(P_1 = M(2) = L(v_1, v_2)\).
3. **Subespacios irreducibles en \(M(3)\):** En \(M(3)\), el bloque \(2 \times 2\) está generado por \(v_3 \in K^2(3) \setminus K^1(3)\) y \(v_4 = (f - 3\text{Id})(v_3) \in K^1(3)\):
    
    - **Recta irreducible (\(1\)-cíclica):** \(R_2 = K^1(3) = L(v_4)\).
    - **Plano irreducible (\(2\)-cíclico):** \(P_2 = M(3) = L(v_3, v_4)\).
4. **Construcción de un subespacio reducible de dimensión 3:** Para obtener un hiperplano invariante reducible \(H\), aplicamos el Teorema de Descomposición sumando un subespacio irreducible de \(M(2)\) y uno de \(M(3)\): \[H = P_1 \oplus R_2 = L(v_1, v_2) \oplus L(v_4) = L(v_1, v_2, v_4)\] Su ecuación implícita en la base \(B\) es \(x_3 = 0\).
    

---

### Cuadro de Advertencia para el Examen

> **Precaución Frecuente en Exámenes de la UNED:**  
> No confundas un **subespacio \(r\)-cíclico** (que es irreducible y está asociado a un único bloque de Jordan de orden \(\ge r\)) con un subespacio formado por la suma de \(r\) autovectores independientes de autovalores distintos. Este último es **totalmente reducible** (es suma directa de \(r\) rectas invariantes).

---

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión13_Subespacios_invariantes.pptx):
- [**Resumen de audio**](Audios/Sesión13_Subespacios_invariantes.m4a)
### Diapositiva 1: Portada
* Título: Sesión 13: Descomposición de Subespacios Invariantes
* Subtítulo: Subespacios Reducibles, Irreducibles y Cadenas r-Cíclicas
* Asignatura: Álgebra Lineal II — Grado en Matemáticas (UNED)
* Referencia: Borobia, A. & Estrada, B. (Capítulo 6.2)

### Diapositiva 2: Objetivos de la Sesión
* Estudiar el Teorema de Descomposición de subespacios invariantes en subespacios máximos.
* Distinguir entre subespacios invariantes reducibles e irreducibles.
* Caracterizar los subespacios irreducibles mediante subespacios r-cíclicos.
* Diseñar la estrategia algorítmica para enumerar todos los subespacios invariantes.

### Diapositiva 3: Teorema de Descomposición
> Teorema (Descomposición de Subespacios Invariantes):
> Si $V = M(\lambda_1) \oplus \dots \oplus M(\lambda_k)$, todo subespacio $f$-invariante $U \subseteq V$ se descompone de forma única en:
> $$U = U_1 \oplus U_2 \oplus \dots \oplus U_k, \quad \text{donde } U_i = U \cap M(\lambda_i)$$

* Cada componente $U_i$ es un subespacio invariante contenido en el subespacio máximo $M(\lambda_i)$.

### Diapositiva 4: Reducibilidad e Irreducibilidad
* **Subespacio Reducible:** $U = U_1 \oplus U_2$ con $U_1, U_2$ subespacios invariantes no triviales.
* **Subespacio Irreducible:** No admite descomposición en suma directa no trivial.
> Corolario:
> Todo subespacio invariante irreducible está contenido en un único subespacio máximo $M(\lambda_i)$.

### Diapositiva 5: Subespacios r-Cíclicos y Bloques de Jordan
> Caracterización:
> Un subespacio de dimensión $r$ es irreducible si y solo si es $r$-cíclico:
> $$U = L\left(v, (f - \lambda \text{Id})(v), \dots, (f - \lambda \text{Id})^{r-1}(v)\right)$$

* Un bloque de Jordan de orden $j \times j$ genera exactamente $j$ subespacios irreducibles anidados.
* Toda recta invariante ($r=1$) es siempre irreducible.

### Diapositiva 6: Cuadro de Advertencia (Nota de Examen)
> Atención:
> Un subespacio generado por $r$ autovectores asociados a autovalores distintos NO es irreducible; es la suma directa de $r$ rectas invariantes y, por tanto, es un subespacio totalmente REDUCIBLE.

### Diapositiva 7: Resumen Ejecutivo
* **Descomposición General:** $U = \bigoplus (U \cap M(\lambda_i))$.
* **Irreducibles:** Coinciden con los subespacios $r$-cíclicos dentro de cada bloque de Jordan.
* **Reducibles:** Se obtienen formando todas las sumas directas posibles entre subespacios irreducibles.

