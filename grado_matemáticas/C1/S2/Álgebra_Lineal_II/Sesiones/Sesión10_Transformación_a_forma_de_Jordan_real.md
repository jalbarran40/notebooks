# Material de Estudio: Sesión 10 (P)

## Ejercicios de Transformación a Forma de Jordan Real

**Asignatura:** Álgebra Lineal II (Grado en Matemáticas, UNED)  
**Bloque I:** Clasificación de Endomorfismos y Formas de Jordan  
**Duración estimada:** 45 minutos

---

### 1. Resumen Operativo del Algoritmo

Para transformar una matriz real $A \in \mathcal{M}_n(\mathbb{R})$ con autovalores complejos a su **Forma Canónica de Jordan Real** ($J_R$), seguimos de forma sistemática los siguientes pasos:

1. **Ecuación característica y autovalores:**  
    Hallamos las raíces de $P(\lambda) = \det(A - \lambda I)$. Separamos los autovalores reales $\lambda \in \mathbb{R}$ de las parejas complejas conjugadas $\lambda = a \pm bi$ (con $b > 0$).
2. **Cálculo de la base de Jordan compleja:**  
    Para cada autovalor complejo $\lambda = a + bi$, resolvemos el sistema de vectores propios o la cadena de núcleos generalizados en $\mathbb{C}^n$: $$K^1(\lambda) \subsetneq K^2(\lambda) \subsetneq \dots \subsetneq K^k(\lambda) = M(\lambda)$$ Obtenemos una base compleja de cadenas $z_j = u_j + i w_j$, donde $u_j = \text{Re}(z_j)$ y $w_j = \text{Im}(z_j)$.
3. **Extracción de la base real ($\mathcal{B}''$):**  
    Reemplazamos cada cadena compleja de vectores ${z_1, \dots, z_k}$ por las partes reales e imaginarias ordenadas alternadamente por parejas: $$\mathcal{B}'' = {u_1, w_1, u_2, w_2, \dots, u_k, w_k}$$
4. **Construcción de la Forma de Jordan Real ($J_R$):**
    - Los autovalores reales ocupan bloques de Jordan estándar $B_r(\lambda)$.
    - Cada pareja compleja $\lambda = a \pm bi$ de orden $k$ genera un bloque real $C_{2k}(\lambda)$ de dimensión $2k \times 2k$, formado por bloques $C(\lambda) = \begin{pmatrix} a & b \\ -b & a \end{pmatrix}$ en la diagonal y matrices identidad $I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$ en la subdiagonal de bloques.
5. **Relación de semejanza:**  
    Colocando la base $\mathcal{B}''$ por columnas en la matriz de paso $P$, se verifica $A P = P J_R \iff J_R = P^{-1} A P$.

---

### 2. Ejercicio 1: Espectro Mixto en $\mathbb{R}^3$ (Raíz Real y Pareja Compleja)

#### Enunciado

Dada la matriz $A \in \mathcal{M}_3(\mathbb{R})$ asociada a un endomorfismo $f$ en la base canónica: $$A = \begin{pmatrix} 3 & 0 & 0 \\ 0 & 1 & -1 \\ 0 & 1 & 1 \end{pmatrix}$$ Determine su Forma Canónica de Jordan Real $J_R$, halle la matriz de paso $P$ y compruebe que $A P = P J_R$.

---

#### Paso 1: Autovalores y Polinomio Característico

Calculamos el determinante característico: $$P(\lambda) = \det(A - \lambda I) = \begin{vmatrix} 3 - \lambda & 0 & 0 \\ 0 & 1 - \lambda & -1 \\ 0 & 1 & 1 - \lambda \end{vmatrix} = (3 - \lambda)\left((1 - \lambda)^2 + 1\right) = (3 - \lambda)(\lambda^2 - 2\lambda + 2)$$

Las raíces son:

- $\lambda_1 = 3$ (autovalor real simple, $m_a = 1$).
- $\lambda_{2,3} = 1 \pm i$ (pareja compleja conjugada simple, con $a = 1$ y $b = 1$).

---

#### Paso 2: Autovector Real para $\lambda_1 = 3$

Resolvemos $(A - 3I)v = 0$: $$\begin{pmatrix} 0 & 0 & 0 \\ 0 & -2 & -1 \\ 0 & 1 & -2 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \implies \begin{cases} -2x_2 - x_3 = 0 \\ x_2 - 2x_3 = 0 \end{cases} \implies x_2 = 0, x_3 = 0$$ Tomamos como autovector real $v_1 = \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix}$.

---

#### Paso 3: Autovector Complejo para $\lambda = 1 + i$

Resolvemos el sistema homogéneo en $\mathbb{C}^3$ dado por $(A - (1+i)I)w = 0$: $$\begin{pmatrix} 2 - i & 0 & 0 \\ 0 & -i & -1 \\ 0 & 1 & -i \end{pmatrix} \begin{pmatrix} w_1 \\ w_2 \\ w_3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix}$$

- De la primera fila: $(2 - i)w_1 = 0 \implies w_1 = 0$.
- De la segunda fila: $-i w_2 - w_3 = 0 \implies w_3 = -i w_2$.

Elegimos $w_2 = 1 \implies w_3 = -i$. El autovector complejo es: $$w = \begin{pmatrix} 0 \\ 1 \\ -i \end{pmatrix} = \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix} + i \begin{pmatrix} 0 \\ 0 \\ -1 \end{pmatrix}$$

Extraemos sus partes real e imaginaria: $$u = \text{Re}(w) = \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix}, \quad v = \text{Im}(w) = \begin{pmatrix} 0 \\ 0 \\ -1 \end{pmatrix}$$

---

#### Paso 4: Base Real y Matriz de Jordan Real

Formamos la base de Jordan real ordenando los vectores: $\mathcal{B}'' = {v_1, u, v}$. La matriz de paso $P$ es: $$P = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & -1 \end{pmatrix}$$

El bloque real asociado a $1 + i$ es $C(1+i) = \begin{pmatrix} a & b \\ -b & a \end{pmatrix} = \begin{pmatrix} 1 & 1 \\ -1 & 1 \end{pmatrix}$. La **Forma Canónica de Jordan Real** resulta: $$J_R = \begin{pmatrix} 3 & 0 & 0 \\ 0 & 1 & 1 \\ 0 & -1 & 1 \end{pmatrix}$$

---

#### Paso 5: Verificación

Comprobamos el producto $A P = P J_R$: $$A P = \begin{pmatrix} 3 & 0 & 0 \\ 0 & 1 & -1 \\ 0 & 1 & 1 \end{pmatrix} \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & -1 \end{pmatrix} = \begin{pmatrix} 3 & 0 & 0 \\ 0 & 1 & 1 \\ 0 & 1 & -1 \end{pmatrix}$$ $$P J_R = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & -1 \end{pmatrix} \begin{pmatrix} 3 & 0 & 0 \\ 0 & 1 & 1 \\ 0 & -1 & 1 \end{pmatrix} = \begin{pmatrix} 3 & 0 & 0 \\ 0 & 1 & 1 \\ 0 & 1 & -1 \end{pmatrix}$$

Dado que $A P = P J_R$, la transformación es correcta.

---

### 3. Ejercicio 2: Bloque de Jordan Complejo de Orden 2 en $\mathbb{R}^4$

#### Enunciado

Dada la matriz $A \in \mathcal{M}_4(\mathbb{R})$: $$A = \begin{pmatrix} 0 & 1 & 0 & 0 \\ -1 & 0 & 0 & 0 \\ 1 & 0 & 0 & 1 \\ 0 & 1 & -1 & 0 \end{pmatrix}$$ Determine su Forma Canónica de Jordan Real $J_R$ y una base de Jordan real $\mathcal{B}''$.

---

#### Paso 1: Polinomio Característico

$$P(\lambda) = \det(A - \lambda I) = \begin{vmatrix} -\lambda & 1 & 0 & 0 \\ -1 & -\lambda & 0 & 0 \\ 1 & 0 & -\lambda & 1 \\ 0 & 1 & -1 & -\lambda \end{vmatrix} = (\lambda^2 + 1)^2$$ Los autovalores son $\lambda = \pm i$ con multiplicidad algebraica $m_a(i) = 2$.

---

#### Paso 2: Análisis de Multiplicidades y Rango

Evaluamos la matriz $(A - iI)$: $$A - iI = \begin{pmatrix} -i & 1 & 0 & 0 \\ -1 & -i & 0 & 0 \\ 1 & 0 & -i & 1 \\ 0 & 1 & -1 & -i \end{pmatrix}$$ El rango es $\text{rg}(A - iI) = 3$, por lo que la multiplicidad geométrica es $d_1 = 4 - 3 = 1$.  
Al tener $m_g(i) = 1$, existe **un único bloque de Jordan complejo** de orden 2 asociado a $\lambda = i$.

Calculamos la potencia $(A - iI)^2$: $$(A - iI)^2 = \begin{pmatrix} -2 & -2i & 0 & 0 \\ 2i & -2 & 0 & 0 \\ -2i & 2 & -2 & -2i \\ -2 & 2i & 2i & -2 \end{pmatrix}$$ Su rango es $2$, de donde $d_2 = 4 - 2 = 2 = m_a(i)$. La cadena se estabiliza en $k = 2$.

---

#### Paso 3: Selección de Cadenas Complejas

Buscamos un vector $z_2 \in K^2(i) \setminus K^1(i)$ en $\mathbb{C}^4$: Tomamos $z_2 = \begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix}$.

Descendemos en la cadena calculando $z_1 = (A - iI)z_2$: $$z_1 = \begin{pmatrix} -i & 1 & 0 & 0 \\ -1 & -i & 0 & 0 \\ 1 & 0 & -i & 1 \\ 0 & 1 & -1 & -i \end{pmatrix} \begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ -i \\ -1 \end{pmatrix}$$

#### Paso 4: Extracción de las partes reales e imaginarias

Partiendo de la cadena de autovectores complejos asociada a $\lambda = i$ ($z_2 \in K^2(i) \setminus K^1(i)$ y $z_1 = (A - iI)z_2 \in K^1(i)$):

- **Para el vector $z_1 = \begin{pmatrix} 0 \\ 0 \\ -i \\ -1 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ -1 \end{pmatrix} + i \begin{pmatrix} 0 \\ 0 \\ -1 \\ 0 \end{pmatrix}$:** $u_1 = \text{Re}(z_1) = \begin{pmatrix} 0 \\ 0 \\ 0 \\ -1 \end{pmatrix}, \quad w_1 = \text{Im}(z_1) = \begin{pmatrix} 0 \\ 0 \\ -1 \\ 0 \end{pmatrix}$
    
- **Para el vector $z_2 = \begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix} + i \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix}$:** $u_2 = \text{Re}(z_2) = \begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix}, \quad w_2 = \text{Im}(z_2) = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix}$
    

---

#### Paso 5: Base Real, Matriz de Paso y Forma Canónica de Jordan Real

1. **Base de Jordan Real ($\mathcal{B}''$):** Ordenamos alternando por parejas la parte real e imaginaria de los vectores de la cadena: $\mathcal{B}'' = {u_1, w_1, u_2, w_2}$
    
2. **Matriz de cambio de base ($P$):** Disponemos los vectores de $\mathcal{B}''$ por columnas: $P = \begin{pmatrix} u_1 & w_1 & u_2 & w_2 \end{pmatrix} = \begin{pmatrix} 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & -1 & 1 & 0 \\ -1 & 0 & 0 & 0 \end{pmatrix}$
    
3. **Forma Canónica de Jordan Real ($J_R$):** Para $\lambda = i = 0 + 1i$ (con $a=0, b=1$), el bloque elemental es $C(i) = \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix}$. Al ser una caja de Jordan de orden 2, introducimos la matriz identidad $I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$ en la subdiagonal de bloques: $J_R = \begin{pmatrix} C(i) & 0 \\ I_2 & C(i) \end{pmatrix} = \begin{pmatrix} 0 & 1 & 0 & 0 \\ -1 & 0 & 0 & 0 \\ 1 & 0 & 0 & 1 \\ 0 & 1 & -1 & 0 \end{pmatrix}$
    
4. **Comprobación de la semejanza ($AP = PJ_R$):**
    
    - **Producto $AP$:** $AP = \begin{pmatrix} 0 & 1 & 0 & 0 \\ -1 & 0 & 0 & 0 \\ 1 & 0 & 0 & 1 \\ 0 & 1 & -1 & 0 \end{pmatrix} \begin{pmatrix} 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & -1 & 1 & 0 \\ -1 & 0 & 0 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ -1 & 0 & 0 & 0 \\ 0 & -1 & 1 & 0 \end{pmatrix}$
        
    - **Producto $PJ_R$:** $PJ_R = \begin{pmatrix} 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & -1 & 1 & 0 \\ -1 & 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} 0 & 1 & 0 & 0 \\ -1 & 0 & 0 & 0 \\ 1 & 0 & 0 & 1 \\ 0 & 1 & -1 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ -1 & 0 & 0 & 0 \\ 0 & -1 & 1 & 0 \end{pmatrix}$
        

Como $AP = PJ_R$, queda totalmente verificada la base y la matriz de paso.
# Material de Estudio: Sesión 10 (P)

## Ejercicios de Transformación a Forma de Jordan en el Caso Real

**Asignatura:** Álgebra Lineal II (Grado en Matemáticas, UNED)  
**Bloque I:** Clasificación de Endomorfismos y Formas de Jordan  
**Carácter:** Práctico (45 minutos)

---

### 1. Resumen Operativo del Algoritmo

Para obtener la **Forma Canónica de Jordan Real** ($J_R$) y la base de Jordan real ($\mathcal{B}''$) de una matriz real $A \in \mathcal{M}_n(\mathbb{R})$ con autovalores complejos, seguimos de forma sistemática los siguientes pasos:

1. **Autovalores y multiplicidades:**  
    Hallamos las raíces del polinomio característico $P(\lambda) = \det(A - \lambda I)$. Distinguimos las raíces reales $\lambda \in \mathbb{R}$ de las parejas complejas conjugadas $\lambda = a \pm bi$ (con $b > 0$).
2. **Cadenas complejas en $\mathbb{C}^n$:**  
    Para cada autovalor complejo $\lambda = a + bi$, resolvemos el sistema homogéneo o la cadena de núcleos generalizados $K^k(\lambda) = \ker(f - \lambda \text{Id})^k$. Obtenemos la base compleja de Jordan formada por vectores $z_j = u_j + i w_j$.
3. **Extracción de la base real ($\mathcal{B}''$):**  
    Sustituimos cada cadena compleja ${z_1, \dots, z_k}$ por el conjunto ordenado de sus partes reales e imaginarias alternadas por parejas: $$\mathcal{B}'' = {u_1, w_1, u_2, w_2, \dots, u_k, w_k}$$
4. **Estructura de la matriz $J_R$:**
    - Los autovalores reales conservan sus bloques de Jordan estándar.
    - Cada bloque de Jordan complejo de orden $k$ se convierte en un bloque real de orden $2k \times 2k$, formado por bloques $C(\lambda) = \begin{pmatrix} a & b \\ -b & a \end{pmatrix}$ en la diagonal y matrices identidad $I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$ en la subdiagonal de bloques.
5. **Relación de semejanza:**  
    Colocando la base real $\mathcal{B}''$ por columnas en la matriz de paso $P$, se verifica la relación $A P = P J_R \iff J_R = P^{-1} A P$.

---

### 2. Ejercicio Práctico 1: Espectro Mixto en $\mathbb{R}^3$

#### Enunciado

Dada la matriz $A \in \mathcal{M}_3(\mathbb{R})$ asociada a un endomorfismo $f$ en la base canónica: $$A = \begin{pmatrix} 3 & 0 & 0 \\ 0 & 1 & -1 \\ 0 & 1 & 1 \end{pmatrix}$$ Determine su Forma Canónica de Jordan Real $J_R$, halle la matriz de paso $P$ y verifique la semejanza.

#### Resolución Paso a Paso

1. **Polinomio característico y autovalores:**  
    $$P(\lambda) = \det(A - \lambda I) = (3 - \lambda)(\lambda^2 - 2\lambda + 2) = 0$$
    
    - $\lambda_1 = 3$ (real, $m_a = 1$).
    - $\lambda_{2,3} = 1 \pm i$ (complejo conjugado, $a = 1, b = 1$, $m_a = 1$).
2. **Autovector real para $\lambda_1 = 3$:**  
    Solving $(A - 3I)v = 0$ da $v_1 = \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix}$.
    
3. **Autovector complejo para $\lambda = 1 + i$:**  
    Solving $(A - (1+i)I)z = 0$ en $\mathbb{C}^3$: $$\begin{pmatrix} 2-i & 0 & 0 \\ 0 & -i & -1 \\ 0 & 1 & -i \end{pmatrix} \begin{pmatrix} z_1 \\ z_2 \\ z_3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \implies z_1 = 0, \quad z_3 = -i z_2$$ Tomando $z_2 = 1$, obtenemos $z = \begin{pmatrix} 0 \\ 1 \\ -i \end{pmatrix} = \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix} + i \begin{pmatrix} 0 \\ 0 \\ -1 \end{pmatrix}$.  
    Separando partes real e imaginaria: $$u = \text{Re}(z) = \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix}, \quad w = \text{Im}(z) = \begin{pmatrix} 0 \\ 0 \\ -1 \end{pmatrix}$$
    
4. **Base real y Forma de Jordan Real:**
    
    - Base de Jordan real: $\mathcal{B}'' = {v_1, u, w}$.
    - Matriz de cambio de base:  
        $$P = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & -1 \end{pmatrix}$$
    - Forma Canónica de Jordan Real:  
        $$J_R = \begin{pmatrix} 3 & 0 & 0 \\ 0 & 1 & 1 \\ 0 & -1 & 1 \end{pmatrix}$$
1. **Comprobación:**  
    Calculando los productos matriciales se comprueba directamente que $A P = P J_R = \begin{pmatrix} 3 & 0 & 0 \\ 0 & 1 & 1 \\ 0 & 1 & -1 \end{pmatrix}$.
    

---

### 3. Ejercicio Práctico 2: Caja de Jordan Compleja de Orden 2 en $\mathbb{R}^4$

#### Enunciado

Dada la matriz $A \in \mathcal{M}_4(\mathbb{R})$: $$A = \begin{pmatrix} 0 & 1 & 0 & 0 \\ -1 & 0 & 0 & 0 \\ 1 & 0 & 0 & 1 \\ 0 & 1 & -1 & 0 \end{pmatrix}$$ Calcular su Forma Canónica de Jordan Real $J_R$ y la matriz de paso $P$.

#### Resolución Paso a Paso

1. **Polinomio característico y rango:**  
    $$P(\lambda) = (\lambda^2 + 1)^2 \implies \lambda = \pm i \quad (m_a(i) = 2)$$  
    Evaluando $A - iI$, se obtiene $\text{rg}(A - iI) = 3 \implies m_g(i) = 4 - 3 = 1$.  
    Por tanto, hay **un único bloque de Jordan complejo** de tamaño 2 asociado a $\lambda = i$.
    
2. **Cálculo de la cadena de núcleos:**  
    $\text{rg}(A - iI)^2 = 2 \implies d_2 = 4 - 2 = 2 = m_a(i)$.  
    Elegimos un vector $z_2 \in K^2(i) \setminus K^1(i)$, por ejemplo $z_2 = (0, 0, 1, 0)^t$.  
    Su imagen por $(A - iI)$ nos da $z_1 = (A - iI)z_2 = (0, 0, -i, -1)^t$.
    
3. **Descomposición en partes reales e imaginarias:**
    
    - $z_1 = \begin{pmatrix} 0 \\ 0 \\ 0 \\ -1 \end{pmatrix} + i \begin{pmatrix} 0 \\ 0 \\ -1 \\ 0 \end{pmatrix} \implies u_1 = \begin{pmatrix} 0 \\ 0 \\ 0 \\ -1 \end{pmatrix}, \quad w_1 = \begin{pmatrix} 0 \\ 0 \\ -1 \\ 0 \end{pmatrix}$
    - $z_2 = \begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix} + i \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix} \implies u_2 = \begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix}, \quad w_2 = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix}$
4. **Matriz de Jordan Real y Matriz de Paso:**
    
    - Base real: $\mathcal{B}'' = {u_1, w_1, u_2, w_2}$.
    - Matriz de cambio de base:  
        $$P = \begin{pmatrix} 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & -1 & 1 & 0 \\ -1 & 0 & 0 & 0 \end{pmatrix}$$
    - Forma Canónica de Jordan Real:  
        $$J_R = \begin{pmatrix} C(i) & O \\ I_2 & C(i) \end{pmatrix} = \begin{pmatrix} 0 & 1 & 0 & 0 \\ -1 & 0 & 0 & 0 \\ 1 & 0 & 0 & 1 \\ 0 & 1 & -1 & 0 \end{pmatrix}$$

---

### Recursos Multimedia Generados

He solicitado la creación de los artefactos para esta **Sesión 10**:

1. [**Presentación**](Presentaciones/Sesión10_Transformación_a_forma_de_Jordan_real.pptx): Una presentación estructurada conforme al **Manual de Estilo UNED**, que incluye los objetivos de la práctica, el repaso algorítmico de la Forma de Jordan Real, los ejercicios resueltos paso a paso y cuadros de advertencia sobre errores comunes de examen.
2. [**Resumen de audio**](Audios/Sesión10_Transformación_a_forma_de_Jordan_real.m4a): Una conversación en profundidad entre dos profesores expertos repasando las claves prácticas de la transformación en el caso real, el manejo de partes reales e imaginarias y la verificación matricial $AP = PJ_R$.

