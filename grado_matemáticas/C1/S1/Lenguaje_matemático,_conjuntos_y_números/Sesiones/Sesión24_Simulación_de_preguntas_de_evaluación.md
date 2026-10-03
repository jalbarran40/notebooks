# **SESIÓN 24 (SEGUIMIENTO): SIMULACIÓN DE PREGUNTAS DE EVALUACIÓN SOBRE LOS BLOQUES 1 Y 2**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 2: CONJUNTOS (Capítulo 2) / Cierre de Bloques 1 y 2  
**Objetivo:** Consolidar todos los conocimientos teórico-prácticos adquiridos en las primeras 23 sesiones, familiarizarse con la estructura real del **Examen Presencial de Desarrollo (4 problemas en 120 minutos)** y del **Cuestionario en Línea (PEC)**, identificar y corregir errores de rigor sintáctico habituales, y ejercitar la resolución de ejercicios combinados de Lógica Proposicional y Teoría de Conjuntos.

---

### **1. Estructura y Criterios Oficiales de Evaluación (UNED)**

#### **A. Examen Presencial Final (90% o 100% de la nota final)**

- **Formato:** 4 ejercicios de carácter teórico y/o práctico a desarrollar en **120 minutos**.
- **Criterios de Calificación:**
    1. **Uso correcto del lenguaje matemático:** Claridad y precisión en la simbología oficial del texto base (Delgado Pineda & Muñoz Bouzo).
    2. **Estructura lógica:** Identificación explícita de hipótesis, premisas, pasos intermedios y conclusión.
    3. **Demostración de habilidades:** Dominio de deducción directa, reducción al absurdo, contrarrecíproco, contraejemplos, inducción y doble inclusión.

#### **B. Prueba de Evaluación Continua - PEC (10% de la nota final)**

- **Formato:** Cuestionario en línea de **5 preguntas tipo test** (15 de diciembre).
- **Opciones:** 3 opciones por pregunta (Opción A, Opción B, Opción C: _"Ninguna de las anteriores"_).
- **Fórmula de Calificación:**
    - Acierto: **+2 puntos** | Fallo: **-1 punto** (si no se superan 2 fallos; a partir de 3 fallos restan -2) | Blanco: **0 puntos**.
- **Condición de Aplicación:** Se requiere una nota mínima de **4,5 en el examen presencial** para ponderar la PEC mediante la fórmula \(\text{NF} = \max(\text{PP}, 0{,}9 \cdot \text{PP} + 0{,}1 \cdot \text{PEC})\).

---

### **2. Simulación de Examen Presencial: Problemas de Desarrollo**

#### **Problema 1 (Lógica y Métodos de Demostración): Reducción al Absurdo**

**Enunciado:** Demostrar formalmente mediante el método de reducción al absurdo que para todo número entero \(n \in \mathbb{Z}\), si \(n^2 + 3\) es un número par, entonces \(n\) es un número impar.

- **Resolución Paso a Paso (Examen de Desarrollo UNED):**
    
    1. **Identificación de la Estructura Lógica:**  
        Queremos probar el condicional \(P \implies Q\), donde:
        
        - Hipótesis \(P \equiv n^2 + 3 \text{ es par} \iff \exists k \in \mathbb{Z}, n^2 + 3 = 2k\).
        - Tesis \(Q \equiv n \text{ es impar} \iff \exists m \in \mathbb{Z}, n = 2m + 1\).
    2. **Supuesto de Reducción al Absurdo (Negación de la Tesis):**  
        Suponemos que el condicional es falso, lo que equivale a asumir la veracidad de la hipótesis \(P\) y la falsedad de la tesis (\(\neg Q\)):
        
        - Asumimos \(P\): \(n^2 + 3 = 2k\) para algún \(k \in \mathbb{Z}\).
        - Asumimos \(\neg Q\): \(n\) es un número **par**, es decir, \(\exists m \in \mathbb{Z}\) tal que \(n = 2m\).
    3. **Deducción de la Contradicción:**  
        Sustituimos \(n = 2m\) en la expresión de la hipótesis \(P\): \[(2m)^2 + 3 = 2k \implies 4m^2 + 3 = 2k\] Reescribimos la igualdad aislando las constantes: \[4m^2 + 2 + 1 = 2k \implies 4m^2 + 2 - 2k = -1 \implies 2(2m^2 + 1 - k) = -1\] Como \(m, k \in \mathbb{Z}\), la expresión \(r = 2m^2 + 1 - k\) es un número entero. Por tanto: \[2r = -1\] Esto afirma que \(-1\) es un número par (múltiplo de 2), lo cual es una **contradicción pura (\(0\))** en el sistema de los números enteros.
        
    4. **Conclusión:**  
        Al haber deducido una contradicción a partir de la negación de la tesis, por el **Método de Reducción al Absurdo** el condicional es **Verdadero (\(1\))**. \(\blacksquare\)
        

---

#### **Problema 2 (Teoría de Conjuntos e Inducción): Igualdad y Álgebra de Conjuntos**

**Enunciado:** Dadas las familias de subconjuntos de \(\mathbb{R}\) definidas para cada \(n \in \mathbb{N}^* = {1, 2, 3, \dots}\) por el intervalo \(A_n = \left[0, \frac{1}{n}\right]\):

1. Calcular la intersección infinita \(\bigcap_{n \in \mathbb{N}^*} A_n\).
2. Demostrar la igualdad por el método de la doble inclusión.

- **Resolución Paso a Paso (Examen de Desarrollo UNED):**
    
    1. **Determinación del Conjunto Candidato:**  
        Evaluando los primeros términos: \(A_1 =\), \(A_2 = [0, 1/2]\), \(A_3 = [0, 1/3]\), \dots  
        Observamos que \(0 \in A_n\) para todo \(n\). Afirmamos que \(\bigcap_{n \in \mathbb{N}^*} A_n = {0}\).
        
    2. __Inclusión Directa (\({0} \subseteq \bigcap_{n \in \mathbb{N}^_} A_n\)):_*
        
        - Para todo \(n \in \mathbb{N}^*\), se tiene \(0 \le 0 \le 1/n\), luego \(0 \in A_n\).
        - Por definición de intersección generalizada, si \(0 \in A_n\) para todo \(n \in \mathbb{N}^*\), entonces __\(0 \in \bigcap_{n \in \mathbb{N}^_} A_n\)__, lo que prueba que __\({0} \subseteq \bigcap_{n \in \mathbb{N}^_} A_n\)__.
    3. __Inclusión Recíproca (\(\bigcap_{n \in \mathbb{N}^_} A_n \subseteq {0}\)):_*
        
        - Sea \(x \in \bigcap_{n \in \mathbb{N}^*} A_n\) genérico. Por definición, \(x \in A_n\) para todo \(n \in \mathbb{N}^*\), es decir: \[\forall n \in \mathbb{N}^*, \quad 0 \le x \le \frac{1}{n}\]
        - Supongamos por reducción al absurdo que \(x > 0\).
        - Por la **Propiedad Arquimediana** de los números reales, para cualquier \(x > 0\) existe un entero \(n_0 \in \mathbb{N}^*\) tal que \(1/n_0 < x\).
        - Esto contradice la condición de que \(x \le 1/n_0\).
        - Por lo tanto, no puede ser \(x > 0\), con lo que obligatoriamente \(x = 0 \implies x \in {0}\).
        - Queda probada la inclusión recíproca: __\(\bigcap_{n \in \mathbb{N}^_} A_n \subseteq {0}\)_*.
    4. **Conclusión:** Por el **Axioma de Extensionalidad**, __\(\bigcap_{n \in \mathbb{N}^_} A_n = {0}\)_*. \(\blacksquare\)
        

---

### **3. Simulación de PEC: Cuestionario Tipo Test**

#### **Pregunta 1 (Pertenencia vs. Inclusión)**

Sea el conjunto \(A = {3, \varnothing, {3}}\). Analiza las proposiciones:

1. \({3} \in A\)
2. \({3} \subseteq A\)

- **A)** Únicamente la opción 1 es verdadera.
- **B)** Ambas opciones (1 y 2) son verdaderas.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - La proposición 1 (\({3} \in A\)) es **Verdadera (1)** porque el objeto \({3}\) figura explícitamente como el tercer elemento de la lista de \(A\).
> - La proposición 2 (\({3} \subseteq A\)) es **Verdadera (1)** porque el único elemento de \({3}\) es el \(3\), y el \(3\) pertenece a \(A\) (es el primer elemento).
> - Al ser ambas verdaderas, la opción **B** es la **correcta**.

---

#### **Pregunta 2 (Múltiples Cuantificadores)**

¿Cuál de las siguientes proposiciones es **falsa** en el universo de los números reales \(\mathbb{R}\)?

- **A)** \(\forall x \in \mathbb{R}, \exists y \in \mathbb{R}, (x + y = 5)\)
- **B)** \(\exists y \in \mathbb{R}, \forall x \in \mathbb{R}, (x \cdot y = 0)\)
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Opción A: Dada cualquier \(x\), elegimos \(y = 5 - x \in \mathbb{R}\), luego es verdadera.
> - Opción B: Existe un \(y_0 = 0 \in \mathbb{R}\) fijo tal que para todo \(x \in \mathbb{R}\), \(x \cdot 0 = 0\). Es la existencia del elemento absorbente, luego es verdadera.
> - Como ninguna de las dos es falsa (ambas son verdaderas), la opción correcta es la **C** (_"Ninguna de las anteriores"_).

---

### **4. Resumen de Errores de Rigor a Evitar en el Examen**

1. **Confundir la barra de escape de llaves en LaTeX:** Escribir `$A = {1, 2}$` en lugar de `$A = \{1, 2\}$`.
2. **Utilizar `\emptyset` en lugar de `\varnothing`:** El símbolo oficial del texto base de la UNED es **`\varnothing`** (\(\varnothing\)).
3. **Intercambiar cuantificadores alternados:** Asumir que \(\forall x \exists y P(x, y)\) es equivalente a \(\exists y \forall x P(x, y)\).
4. **Omisión de la Hipótesis de Inducción:** No declarar explícitamente la **H.I.** en el paso 3 de una demostración por inducción.

## Material de apoyo
- [**Presentación**](Presentaciones/Sesión24_Simulación_de_preguntas_de_evaluación.pptx): Elaborada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con la estructura por bloques, los criterios de corrección de la UNED, el escape riguroso de llaves `\{` y `\}`, el símbolo `\varnothing` para el conjunto vacío y las preguntas de simulación.
- [**Resumen de Audio**](Audios/Sesión24_Simulación_de_preguntas_de_evaluación.m4a) Enfocado en las claves estratégicas para superar la PEC de diciembre y el examen presencial de desarrollo, repasando la distinción entre pertenencia e inclusión, la prueba de inducción en 4 pasos, la falacia del orden de cuantificadores y la redacción deductiva.