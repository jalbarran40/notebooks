# **SESIÓN 21 (TEORÍA): PRINCIPIO DE INDUCCIÓN MATEMÁTICA: BASE Y PASO INDUCTIVO**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 2: CONJUNTOS (Capítulo 2)  
**Objetivo:** Comprender el **Principio de Inducción Matemática** como una propiedad fundamental de la estructura de los números naturales \(\mathbb{N} = {0, 1, 2, 3, \dots}\) (Quinto Axioma de Peano), dominar la distinción rigurosa entre la **base inductiva** y el **paso inductivo** (incluyendo la formulación de la **hipótesis de inducción**), y ejercitar el esquema formal de redacción exigido en el examen de desarrollo de la UNED.

---

### **1. Marco Teórico: El Fundamento Axiomático de la Inducción**

#### **Los Números Naturales y el Quinto Axioma de Peano**

En la construcción axiomática de los números naturales \(\mathbb{N} = {0, 1, 2, 3, \dots}\) formulada por Giuseppe Peano, el quinto axioma garantiza que no existen números naturales "aislados" fuera de la cadena generada a partir del elemento inicial mediante la aplicación reiterada de la función sucesor \(s(n) = n + 1\).

- **Formulación conjuntista del Quinto Axioma de Peano:**  
    Si \(M\) es un subconjunto de \(\mathbb{N}\) (es decir, \(M \subseteq \mathbb{N}\)) tal que:
    
    1. \(0 \in M\) _(o \(1 \in M\) si se considera \(\mathbb{N}^_ = {1, 2, 3, \dots}\))*.
    2. Para todo \(n \in \mathbb{N}\), si \(n \in M \implies s(n) \in M\).
    
    Entonces \(M = \mathbb{N}\).
    

#### **Traducción a la Lógica de Predicados**

Dado un predicado o propiedad \(P(n)\) definida sobre el conjunto de los números naturales \(\mathbb{N}\), el **Principio de Inducción Matemática** establece que:

\[[P(0) \land (\forall n \in \mathbb{N}) (P(n) \implies P(n+1))] \implies (\forall n \in \mathbb{N}) P(n)\]

---

### **2. Estructura Formal de una Demostración por Inducción (Paso a Paso)**

Para que una demostración por inducción sea válida en el examen de desarrollo de la UNED, debe estructurarse obligatoriamente en **cuatro etapas claramente identificables**:

#### **Paso 1: Declaración Explícita del Predicado \(P(n)\)**

Se define con precisión la proposición o fórmula \(P(n)\) que se desea demostrar y se especifica el universo de índices sobre el que opera (habitualmente \(n \in \mathbb{N}\) o \(n \ge n_0\)).

#### **Paso 2: Base Inductiva (Caso Inicial)**

Se comprueba explícitamente que la propiedad se verifica para el primer elemento del conjunto de índices, generalmente \(n_0 = 0\) o \(n_0 = 1\): \[\text{Comprobar que } P(n_0) \text{ es verdadero (1)}\]

#### **Paso 3: Paso Inductivo (Demostración del Condicional \(P(n) \implies P(n+1)\))**

Se demuestra que el condicional universal \(P(n) \implies P(n+1)\) es una tautología para cualquier \(n \ge n_0\):

- **Hipótesis de Inducción (H.I.):** Se asume que la propiedad \(P(n)\) es cierta para un entero genérico pero fijo \(n\).
- **Tesis Inductiva:** Se demuestra, apoyándose **estrictamente en la Hipótesis de Inducción**, que la propiedad es cierta para el sucesor, es decir, que \(P(n+1)\) es verdadero (\(1\)).

#### **Paso 4: Conclusión**

Se apela explícitamente al **Principio de Inducción Matemática** para concluir que la propiedad \(P(n)\) es verdadera para todo \(n \ge n_0\).

---

### **3. Ejemplo Emblemático Resuelto con Redacción Formal (Texto Base UNED)**

**Enunciado:** Demostrar por inducción matemática que para todo número natural \(n \ge 1\) se verifica la fórmula de la suma de los primeros \(n\) números enteros positivos: \[\sum_{k=1}^n k = 1 + 2 + 3 + \dots + n = \frac{n(n+1)}{2}\]

- **Demostración Paso a Paso (Examen de Desarrollo UNED):**
    
    1. **Declaración del Predicado:**  
        Sea \(P(n)\) el predicado definido sobre \(\mathbb{N}^* = {1, 2, 3, \dots}\) dado por la igualdad: \[P(n) \equiv \sum_{k=1}^n k = \frac{n(n+1)}{2}\]
        
    2. **Base Inductiva (para \(n = 1\)):**  
        Evaluamos ambos miembros de la igualdad para \(n = 1\):
        
        - Miembro izquierdo: \(\sum_{k=1}^1 k = 1\).
        - Miembro derecho: \(\frac{1 \cdot (1 + 1)}{2} = \frac{2}{2} = 1\).
        
        Como \(1 = 1\), la base inductiva \(P(1)\) es **verdadera (1)**.
        
    3. **Paso Inductivo ( Demostrar \(P(n) \implies P(n+1)\) ):**
        
        - **Hipótesis de Inducción (H.I.):** Supongamos que \(P(n)\) es verdadero para un \(n \ge 1\) fijo, es decir, asumimos que: \[1 + 2 + \dots + n = \frac{n(n+1)}{2}\]
            
        - **Tesis Inductiva:** Queremos demostrar que \(P(n+1)\) es verdadero, es decir, que: \[1 + 2 + \dots + n + (n+1) = \frac{(n+1)((n+1)+1)}{2} = \frac{(n+1)(n+2)}{2}\]
            
        - **Desarrollo Algebraico:**  
            Partimos del miembro izquierdo de \(P(n+1)\) y asociamos los primeros \(n\) términos: \[\underbrace{1 + 2 + \dots + n}_{P(n) \text{ (H.I.)}} + (n+1)\] Sustituyendo la expresión dada por la **Hipótesis de Inducción**: \[= \frac{n(n+1)}{2} + (n+1)\] Sacamos factor común \((n+1)\): \[= (n+1) \left[ \frac{n}{2} + 1 \right] = (n+1) \left[ \frac{n+2}{2} \right] = \frac{(n+1)(n+2)}{2}\]
            
            Se ha obtenido exactamente el miembro derecho de \(P(n+1)\).
            
    4. **Conclusión:**  
        Habiéndose verificado la base inductiva \(P(1)\) y probado el paso inductivo \(P(n) \implies P(n+1)\), por el **Principio de Inducción Matemática** la igualdad es cierta para todo \(n \in \mathbb{N}^*\). \(\blacksquare\)
        

---

### **4. Variantes del Principio de Inducción**

#### **A. Inducción con Base Modificada (\(n \ge n_0\))**

Si una propiedad \(P(n)\) solo es válida a partir de un entero \(n_0 > 0\) (por ejemplo, para desigualdades que no se cumplen en los primeros casos), la base inductiva se prueba para \(n_0\) y el paso inductivo se demuestra para todo \(n \ge n_0\): \[[P(n_0) \land (\forall n \ge n_0) (P(n) \implies P(n+1))] \implies (\forall n \ge n_0) P(n)\]

#### **B. Inducción Completa o Fuerte**

En algunos problemas, suponer únicamente que \(P(n)\) es cierto no aporta información suficiente para deducir \(P(n+1)\). En ese caso, la **Hipótesis de Inducción Fuerte** asume la veracidad de la propiedad para **todos los casos anteriores** \(P(k)\) con \(n_0 \le k \le n\): \[[(\forall k \in {n_0, \dots, n}) P(k)] \implies P(n+1)\]

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Al realizar una demostración por inducción matemática para probar que una propiedad \(P(n)\) se verifica para todo \(n \in \mathbb{N}^*\), ¿cuál de los siguientes pasos describe con precisión la **Hipótesis de Inducción**?

- **A)** Demostrar que \(P(1)\) es verdadero mediante sustitución directa.
- **B)** Suponer que \(P(n)\) es verdadero para un entero arbitrario pero fijo \(n \in \mathbb{N}^*\) con el fin de deducir \(P(n+1)\).
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - La opción A describe la **Base Inductiva**, no la Hipótesis de Inducción.
> - La opción **B** es la **correcta**, pues la Hipótesis de Inducción consiste precisamente en asumir de forma condicional la veracidad de \(P(n)\) para un valor indeterminado \(n\) para poder demostrar la tesis inductiva \(P(n+1)\).

## Materiales de apoyo
- [**Presentación**](Presentaciones/Sesión21_Principio_de_inducción_matemática.pptx)
- [**Resumen de audio**](Audios/Sesión21_Principio_de_inducción_matemática.m4a)
