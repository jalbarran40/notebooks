# Material de Estudio: Sesión 12 (P)

## Determinación Práctica de Rectas e Hiperplanos Invariantes

**Asignatura:** Álgebra Lineal II (Grado en Matemáticas, UNED)  
**Bloque I:** Clasificación de Endomorfismos y Formas de Jordan  
**Carácter:** Práctico (45 minutos)

---

### 1. Resumen Algorítmico

Para determinar de forma sistemática las rectas y los hiperplanos invariantes de un endomorfismo representado por una matriz $A \in \mathcal{M}_n(\mathbb{K})$:

- **Rectas Invariantes ($R = L(u)$):**  
    Son los subespacios de dimensión 1 generados por los autovectores no nulos $u$ de la matriz $A$. Se obtienen resolviendo el sistema homogéneo $(A - \lambda I)u = 0$ para cada autovalor $\lambda$.
- **Hiperplanos Invariantes ($H \equiv {v_1 x_1 + \dots + v_n x_n = 0}$):**  
    Son los subespacios de dimensión $n-1$ definidos por los autovectores no nulos $v = (v_1, \dots, v_n)^t$ de la **matriz traspuesta** $A^t$, resolviendo $(A^t - \lambda I)v = 0$.
- **Teorema de Dualidad:**  
    El número de rectas invariantes es siempre igual al número de hiperplanos invariantes.

---

### 2. Ejercicio Práctico 1: Dimensión 3

#### Enunciado

Dada la matriz $A \in \mathcal{M}_3(\mathbb{R})$ asociada a un endomorfismo $f$ en la base canónica: $$A = \begin{pmatrix} 2 & 1 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & 3 \end{pmatrix}$$ Calcule sus rectas e hiperplanos (planos) invariantes.

#### Resolución Paso a Paso

1. **Polinomio Característico y Autovalores:** $$P(\lambda) = \det(A - \lambda I) = (2 - \lambda)^2 (3 - \lambda) = 0$$
    
    - $\lambda_1 = 2$ (multiplicidad algebraica $m_a = 2$).
    - $\lambda_2 = 3$ (multiplicidad algebraica $m_a = 1$).
2. **Cálculo de Rectas Invariantes (Autovectores de $A$):**
    
    - **Para $\lambda_1 = 2$:**  
        Resolviendo $(A - 2I)u = 0$: $$\begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \implies x_2 = 0, , x_3 = 0$$ El autovector es $u_1 = (1, 0, 0)^t$.  
        **Primera recta invariante:** $R_1 = L((1, 0, 0)^t) \equiv {x_2 = 0, x_3 = 0}$.
        
    - **Para $\lambda_2 = 3$:**  
        Resolviendo $(A - 3I)u = 0$: $$\begin{pmatrix} -1 & 1 & 0 \\ 0 & -1 & 0 \\ 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \implies x_1 = 0, , x_2 = 0$$ El autovector es $u_2 = (0, 0, 1)^t$.  
        **Segunda recta invariante:** $R_2 = L((0, 0, 1)^t) \equiv {x_1 = 0, x_2 = 0}$.
        
1. **Cálculo de Planos Invariantes (Autovectores de $A^t$):** La matriz traspuesta es: $$A^t = \begin{pmatrix} 2 & 0 & 0 \\ 1 & 2 & 0 \\ 0 & 0 & 3 \end{pmatrix}$$
    
    - **Para $\lambda_1 = 2$:**  
        Resolviendo $(A^t - 2I)v = 0$: $$\begin{pmatrix} 0 & 0 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} v_1 \\ v_2 \\ v_3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \implies v_1 = 0, , v_3 = 0$$ El autovector es $v = (0, 1, 0)^t$.  
        **Primer plano invariante:** $H_1 \equiv {x_2 = 0}$.
        
    - **Para $\lambda_2 = 3$:**  
        Resolviendo $(A^t - 3I)v = 0$: $$\begin{pmatrix} -1 & 0 & 0 \\ 1 & -1 & 0 \\ 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} v_1 \\ v_2 \\ v_3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \implies v_1 = 0, , v_2 = 0$$ El autovector es $v = (0, 0, 1)^t$.  
        **Segundo plano invariante:** $H_2 \equiv {x_3 = 0}$.
        
    
    Existen **2 rectas e hiperplanos invariantes**, verificando la dualidad.
    

---

### 3. Ejercicio Práctico 2: Dimensión 4

#### Enunciado

Calcule las rectas e hiperplanos invariantes del endomorfismo $f$ de $\mathbb{R}^4$ con matriz: $$A = \begin{pmatrix} 1 & 1 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 2 & 1 \\ 0 & 0 & 0 & 2 \end{pmatrix}$$

#### Resolución Paso a Paso

1. **Autovalores:** $$P(\lambda) = (1 - \lambda)^2 (2 - \lambda)^2 = 0 \implies \lambda_1 = 1 , (m_a=2), \quad \lambda_2 = 2 , (m_a=2)$$
    
2. **Rectas Invariantes (Autovectores de $A$):**
    
    - **Para $\lambda_1 = 1$:**  
        $(A - I)u = 0 \implies x_2 = 0, , x_3 = 0, , x_4 = 0$.  
        **Recta $R_1$:** $L((1, 0, 0, 0)^t) \equiv {x_2 = 0, x_3 = 0, x_4 = 0}$.
    - **Para $\lambda_2 = 2$:**  
        $(A - 2I)u = 0 \implies x_1 = 0, , x_2 = 0, , x_4 = 0$.  
        **Recta $R_2$:** $L((0, 0, 1, 0)^t) \equiv {x_1 = 0, x_2 = 0, x_4 = 0}$.
1. **Hiperplanos Invariantes (Autovectores de $A^t$):** $$A^t = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 1 & 1 & 0 & 0 \\ 0 & 0 & 2 & 0 \\ 0 & 0 & 1 & 2 \end{pmatrix}$$
    
    - **Para $\lambda_1 = 1$:**  
        $(A^t - I)v = 0 \implies v_1 = 0, , v_3 = 0, , v_4 = 0$. Autovector $v = (0, 1, 0, 0)^t$.  
        **Hiperplano $H_1$:** ${x_2 = 0}$.
    - **Para $\lambda_2 = 2$:**  
        $(A^t - 2I)v = 0 \implies v_1 = 0, , v_2 = 0, , v_3 = 0$. Autovector $v = (0, 0, 0, 1)^t$.  
        **Hiperplano $H_2$:** ${x_4 = 0}$.

---

### Cuadro de Advertencia para el Examen

> **Atención en los Exámenes de la UNED:**  
> Un error muy extendido es intentar calcular las ecuaciones implícitas de los hiperplanos invariantes utilizando los autovectores directos de la matriz $A$. Salvo que $A$ sea simétrica, **debes usar obligatoriamente la matriz traspuesta $A^t$**.

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión12_Rectas_e_hiperplanos_invariantes.pptx)
- [**Resumen de audio**](Audios/Sesión12_Rectas_e_hiperplanos_invariantes.m4a)
