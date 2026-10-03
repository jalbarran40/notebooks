
---

# **SESIÓN 22 (PRÁCTICA): DEMOSTRACIONES POR INDUCCIÓN DE SUMATORIOS Y DESIGUALDADES**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 2: CONJUNTOS (Capítulo 2)  
**Objetivo:** Dominar la aplicación práctica del **Principio de Inducción Matemática** en la resolución de problemas de examen de desarrollo de la UNED, ejercitando el manejo algebraico de la **Hipótesis de Inducción (H.I.)** en identidades con sumatorios y en desigualdades con base modificada (\(n_0 > 1\)).

---

### **1. Recordatorio del Esquema Formal de Redacción (Estándar UNED)**

Para obtener la máxima puntuación en las preguntas de desarrollo del examen de la UNED, toda prueba por inducción debe estructurarse obligatoriamente en las **cuatro etapas formales**:

1. **Declaración del Predicado \(P(n)\):** Definir con precisión la igualdad o desigualdad lógica sobre el dominio de índices (p. ej., \(n \in \mathbb{N}^* = {1, 2, 3, \dots}\) o \(n \ge n_0\)).
2. **Base Inductiva:** Comprobar numéricamente la veracidad de \(P(n_0)\) para el primer elemento del conjunto de índices.
3. **Paso Inductivo (\(P(n) \implies P(n+1)\)):**
    - **Hipótesis de Inducción (H.I.):** Asumir explícitamente que \(P(n)\) es cierto para un entero fijo \(n \ge n_0\).
    - **Tesis Inductiva:** Demostrar que \(P(n+1)\) es verdadero utilizando **necesaria y explícitamente** la Hipótesis de Inducción.
4. **Conclusión:** Invocar el **Principio de Inducción Matemática** para afirmar la validez universal de la propiedad.

---

### **2. Batería de Ejercicios Resueltos con Redacción Formal**

#### **Ejercicio 1: Sumatorio (Suma de los Cuadrados de los Primeros \(n\) Naturales)**

**Enunciado:** Demostrar por inducción matemática que para todo entero \(n \ge 1\) se satisface la igualdad: \[\sum_{k=1}^n k^2 = 1^2 + 2^2 + 3^2 + \dots + n^2 = \frac{n(n+1)(2n+1)}{6}\]

- **Demostración Paso a Paso (Examen de Desarrollo UNED):**
    
    1. **Declaración del Predicado:**  
        Sea \(P(n)\) el predicado definido para \(n \in \mathbb{N}^*\) dado por: \[P(n) \equiv \sum_{k=1}^n k^2 = \frac{n(n+1)(2n+1)}{6}\]
        
    2. **Base Inductiva (para \(n = 1\)):**  
        Evaluamos ambos miembros para \(n = 1\):
        
        - Miembro izquierdo: \(\sum_{k=1}^1 k^2 = 1^2 = 1\).
        - Miembro derecho: \(\frac{1 \cdot (1+1) \cdot (2(1)+1)}{6} = \frac{1 \cdot 2 \cdot 3}{6} = \frac{6}{6} = 1\).
        
        Como \(1 = 1\), el caso inicial \(P(1)\) es **verdadero (\(1\))**.
        
    3. **Paso Inductivo (Demostración de \(P(n) \implies P(n+1)\)):**
        
        - **Hipótesis de Inducción (H.I.):** Supongamos cierto \(P(n)\) para un \(n \ge 1\) fijo: \[1^2 + 2^2 + \dots + n^2 = \frac{n(n+1)(2n+1)}{6}\]
            
        - **Tesis Inductiva:** Queremos probar que \(P(n+1)\) es verdadero, es decir: \[1^2 + 2^2 + \dots + n^2 + (n+1)^2 = \frac{(n+1)((n+1)+1)(2(n+1)+1)}{6} = \frac{(n+1)(n+2)(2n+3)}{6}\]
            
        - **Desarrollo Algebraico:**  
            Partimos del miembro izquierdo de \(P(n+1)\) y asociamos la suma de los \(n\) primeros términos: \[\underbrace{1^2 + 2^2 + \dots + n^2}_{P(n) \text{ (H.I.)}} + (n+1)^2\] Sustituyendo el valor dado por la **Hipótesis de Inducción (H.I.)**: \[= \frac{n(n+1)(2n+1)}{6} + (n+1)^2\] Sacamos el factor común \((n+1)\): \[= (n+1) \left[ \frac{n(2n+1)}{6} + (n+1) \right] = (n+1) \left[ \frac{2n^2 + n + 6n + 6}{6} \right]\] \[= (n+1) \left[ \frac{2n^2 + 7n + 6}{6} \right]\] Factorizando el trinomio de segundo grado \(2n^2 + 7n + 6 = (n+2)(2n+3)\): \[= \frac{(n+1)(n+2)(2n+3)}{6}\] Llegamos exactamente al miembro derecho de \(P(n+1)\).
            
    4. **Conclusión:**  
        Verificada la base \(P(1)\) y probado el paso inductivo, por el **Principio de Inducción Matemática** la propiedad \(P(n)\) se cumple para todo \(n \in \mathbb{N}^*\). \(\blacksquare\)
        

---

#### **Ejercicio 2: Desigualdad con Base Modificada (\(n_0 = 5\))**

**Enunciado:** Demostrar por inducción matemática que para todo número entero \(n \ge 5\) se verifica la desigualdad estricta: \[2^n > n^2\]

- **Demostración Paso a Paso (Examen de Desarrollo UNED):**
    
    1. **Declaración del Predicado:**  
        Sea \(P(n) \equiv 2^n > n^2\) definido sobre el conjunto de índices \(n \in {n \in \mathbb{N} \mid n \ge 5}\).
        
    2. **Base Inductiva (para \(n_0 = 5\)):**
        
        - Miembro izquierdo: \(2^5 = 32\).
        - Miembro derecho: \(5^2 = 25\).
        
        Como \(32 > 25\), la desigualdad \(P(5)\) es **verdadera (\(1\))**.
        
    3. **Paso Inductivo (Demostración de \(P(n) \implies P(n+1)\) para \(n \ge 5\)):**
        
        - **Hipótesis de Inducción (H.I.):** Supongamos que \(2^n > n^2\) es cierto para un \(n \ge 5\) fijo.
            
        - **Tesis Inductiva:** Queremos demostrar que \(2^{n+1} > (n+1)^2 = n^2 + 2n + 1\).
            
        - **Desarrollo Algebraico y Acotación:**  
            Multiplicamos ambos miembros de la desigualdad de la **H.I.** por \(2\): \[2 \cdot 2^n > 2 \cdot n^2 \implies 2^{n+1} > 2n^2 = n^2 + n^2\] Para completar la prueba, basta demostrar que para todo \(n \ge 5\) se cumple \(n^2 > 2n + 1\):
            
            - Para \(n \ge 5\), es evidente que \(n > 2 \implies n \cdot n > 2 \cdot n \implies n^2 > 2n\).
            - Además, para \(n \ge 5\), se tiene \(2n > 2(5) = 10 > 1\), luego \(n^2 \ge 5n = 2n + 3n > 2n + 1\).
            
            Por lo tanto, encadenando las desigualdades: \[2^{n+1} > n^2 + n^2 > n^2 + (2n + 1) = (n+1)^2\] Se concluye que \(2^{n+1} > (n+1)^2\).
            
    4. **Conclusión:**  
        Por el **Principio de Inducción Matemática**, la desigualdad \(2^n > n^2\) es válida para todo entero \(n \ge 5\). \(\blacksquare\)
        

---

### **3. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio de Sumatorio:** Demostrar por inducción que para todo \(n \in \mathbb{N}^*\): \[\sum_{k=1}^n (2k - 1) = 1 + 3 + 5 + \dots + (2n - 1) = n^2\]
2. **Ejercicio de Desigualdad (Bernoulli):** Demostrar por inducción que para todo real \(h > -1\) y todo \(n \in \mathbb{N}\): \[(1 + h)^n \ge 1 + nh\]

---

### **4. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Al demostrar por inducción la desigualdad \(2^n > n^2\) para \(n \ge 5\), en el paso inductivo multiplicamos la Hipótesis de Inducción \(2^n > n^2\) por \(2\) obteniendo \(2^{n+1} > 2n^2\). ¿Qué condición auxiliar sobre los polinomios se necesita verificar para concluir que \(2^{n+1} > (n+1)^2\)?

- **A)** Demostrar que \(2n^2 \le n^2 + 2n + 1\) para todo \(n \ge 5\).
- **B)** Demostrar que \(n^2 > 2n + 1\) (o equivalentemente \(n^2 - 2n - 1 > 0\)) para todo \(n \ge 5\).
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Como \(2^{n+1} > 2n^2 = n^2 + n^2\), para acotar por abajo y llegar a \((n+1)^2 = n^2 + 2n + 1\), necesitamos probar que el segundo sumando satisface \(n^2 > 2n + 1\) para \(n \ge 5\).
> - La opción A propone la desigualdad en sentido inverso, lo cual es falso.
> - Por tanto, la opción **B** es la **correcta**.

## Material adicional

- [**Presentación**](Presentaciones/Sesión22_Demostraciones_por_inducción.pptx): Estructurada según el _Manual_de_Estilo_Presentaciones_, con el encabezado oficial del Bloque 2, los 4 pasos formales de redacción exigidos en la UNED, los ejercicios resueltos paso a paso y la pregunta de autoevaluación.
- [**Resumen de Audio**](Audios/Sesión22_Demostraciones_por_inducción.m4a): Enfocado en las técnicas algebraicas para encadenar la Hipótesis de Inducción en sumatorios, la acotación de términos en desigualdades con base modificada (\(n \ge n_0\)) y los errores de rigor más comunes en los exámenes de desarrollo.
