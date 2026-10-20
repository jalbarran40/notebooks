# Material de Estudio: Sesión 11 (T)

## Subespacios Invariantes: Rectas e Hiperplanos

**Asignatura:** Álgebra Lineal II (Grado en Matemáticas, UNED)  
**Bloque I:** Clasificación de Endomorfismos y Formas de Jordan  
**Texto de Referencia:** Borobia, A. & Estrada, B. (Capítulo 6.1)

---

### 1. Rectas Invariantes (Dimensión 1)

Un subespacio vectorial de dimensión 1 es una **recta vectorial** $L(u) = {k u : k \in \mathbb{K}}$ generada por un vector no nulo $u \neq 0$.

> **Proposición 6.4 (1) (Caracterización de Rectas Invariantes):**  
> Sea $f: V \to V$ un endomorfismo. Una recta $L(u)$ es $f$-invariante ($f(L(u)) \subseteq L(u)$) si y solo si el vector generador $u$ es un **autovector** no nulo de $f$. Es decir, existe un escalar $\lambda \in \mathbb{K}$ tal que: $$f(u) = \lambda u$$

#### Consecuencias y recuento de rectas invariantes:

- **Asociadas a un autovalor $\lambda$:** Las rectas invariantes asociadas a $\lambda$ son las rectas contenidas en el subespacio propio $V_\lambda = \ker(f - \lambda \text{Id})$.
- **Multiplicidad geométrica $m_g(\lambda) = 1$:** El subespacio propio $V_\lambda$ es de dimensión 1, por lo que existe **una única recta invariante** asociada a $\lambda$.
- **Multiplicidad geométrica $m_g(\lambda) \ge 2$:** El subespacio propio $V_\lambda$ tiene dimensión mayor o igual a 2, por lo que existen **infinitas rectas invariantes** contenidas en $V_\lambda$ (todas las rectas que pasan por el origen en dicho subespacio).

---

### 2. Hiperplanos Invariantes (Dimensión $n-1$)

Un **hiperplano** $H \subset V$ en un espacio de dimensión $n$ es un subespacio de dimensión $n-1$, definido por una única ecuación implícita homogénea respecto a una base $B$: $$H \equiv {v_1 x_1 + v_2 x_2 + \dots + v_n x_n = 0}$$ donde $v = (v_1, v_2, \dots, v_n)_B^t \neq 0$ es el vector formado por los coeficientes de la ecuación implícita.

> **Proposición 6.4 (2) (Caracterización de Hiperplanos Invariantes):**  
> Sea $f$ un endomorfismo de $V$ y $A = \mathcal{M}_B(f)$ su matriz respecto a una base $B$. El hiperplano $H \equiv {v_1 x_1 + \dots + v_n x_n = 0}$ es $f$-invariante si y solo si el vector de coeficientes $v = (v_1, \dots, v_n)_B^t$ es un **autovector no nulo de la matriz traspuesta** $A^t$ (asociado a un autovalor $\lambda$). $$A^t v = \lambda v$$

#### Demostración (vía Espacio Dual):

El hiperplano $H$ es el núcleo de la forma lineal $\varphi \in V^*$ dada por $\varphi(x) = v^t x$. Que $H = \ker \varphi$ sea $f$-invariante equivale a que la recta dual $L(\varphi) \subset V^*$ sea invariante por el endomorfismo traspuesto $f^*$, cuya matriz en la base dual es $A^t$. Por tanto, $f^*(\varphi) = \lambda \varphi \iff A^t v = \lambda v$.

---

### 3. Teorema de Dualidad entre Rectas e Hiperplanos

Puesto que una matriz $A$ y su traspuesta $A^t$ poseen el mismo polinomio característico y la misma estructura de bloques de Jordan (salvo trasposición), las multiplicidades geométricas de cada autovalor en $A$ y $A^t$ son idénticas:

$$\text{rg}(A - \lambda I) = \text{rg}(A^t - \lambda I) \implies \dim \ker(A - \lambda I) = \dim \ker(A^t - \lambda I)$$

> **Teorema de Dualidad:**  
> En cualquier espacio vectorial de dimensión finita, el número de hiperplanos $f$-invariantes es **exactamente igual** al número de rectas $f$-invariantes.

---

### 4. Estudio de Subespacios Invariantes en Dimensión 3 ($\mathbb{K}^3$)

Supongamos un endomorfismo $f$ en un espacio $V$ de dimensión 3 con base $B = {v_1, v_2, v_3}$. Analizamos los casos según la matriz de Jordan $J$:

#### Caso 3.1: Tres autovalores distintos ($\lambda_1 \neq \lambda_2 \neq \lambda_3$)

$$J = \begin{pmatrix} \lambda_1 & 0 & 0 \\ 0 & \lambda_2 & 0 \\ 0 & 0 & \lambda_3 \end{pmatrix}$$

- **Rectas invariantes ( exactas 3 ):** $L(v_1)$, $L(v_2)$, $L(v_3)$ (los tres subespacios propios $V_{\lambda_i}$).
- **Planos invariantes ( exactos 3 ):** Los planos generados por parejas de autovectores: $H_1 = L(v_1, v_2) \equiv {x_3 = 0}$, $H_2 = L(v_1, v_3) \equiv {x_2 = 0}$, $H_3 = L(v_2, v_3) \equiv {x_1 = 0}$.

#### Caso 3.2: Dos autovalores distintos, uno doble diagonalizable ($\lambda_1$ con $m_a=2, m_g=2$, y $\lambda_2$ simple)

$$J = \begin{pmatrix} \lambda_1 & 0 & 0 \\ 0 & \lambda_1 & 0 \\ 0 & 0 & \lambda_2 \end{pmatrix}$$

- **Rectas invariantes:** Infinitas en el plano $V_{\lambda_1} = L(v_1, v_2)$ y 1 recta $V_{\lambda_2} = L(v_3)$.
- **Planos invariantes:** Infinitos (todos los que contienen a la recta $L(v_3)$ combinada con cualquier recta de $V_{\lambda_1}$) más el propio plano $V_{\lambda_1}$.

#### Caso 3.3: Dos autovalores distintos, uno no diagonalizable ($\lambda_1$ con $m_a=2, m_g=1$, y $\lambda_2$ simple)

$$J = \begin{pmatrix} \lambda_1 & 0 & 0 \\ 1 & \lambda_1 & 0 \\ 0 & 0 & \lambda_2 \end{pmatrix}$$

- **Rectas invariantes ( exactas 2 ):** $V_{\lambda_1} = L(v_2)$ y $V_{\lambda_2} = L(v_3)$.
- **Planos invariantes ( exactos 2 ):**
    1. El plano reducible $H_1 = V_{\lambda_1} \oplus V_{\lambda_2} = L(v_2, v_3) \equiv {x_1 = 0}$.
    2. El plano irreducible $H_2 = L(v_1, v_2) \equiv {x_3 = 0}$ (asociado al bloque de Jordan de orden 2).

#### Caso 3.4: Único autovalor con bloque de Jordan completo de orden 3

$$J = \begin{pmatrix} \lambda & 0 & 0 \\ 1 & \lambda & 0 \\ 0 & 1 & \lambda \end{pmatrix}$$

- **Rectas invariantes ( única 1 ):** $R = \ker(f - \lambda \text{Id}) = L(v_3) \equiv {x_1 = 0, x_2 = 0}$.
- **Planos invariantes ( único 1 ):** $H = L(v_2, v_3) \equiv {x_1 = 0}$ (es el subespacio $K^2(\lambda) = \ker(f - \lambda \text{Id})^2$).

---

## Materiales de apoyo

1. [**Presentación**](Presentaciones/Sesión11_Subespacios_invariantes.pptx): Debido a que la herramienta automática de generación de diapositivas alcanzó el límite de cuota temporal de la plataforma, he incluido arriba el **guión estructurado de diapositivas en Markdown** listo para su lectura o exportación directa.
2. [**Resumen de audio**](Audios/Sesión11_Subespacios_invariantes.m4a): 🎧 Se ha generado con éxito y ya está disponible en tu panel de Studio de Gemini Notebook. Es una conversación detallada entre dos profesores expertos repasando la caracterización de rectas e hiperplanos y la dualidad.
