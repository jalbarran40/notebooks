# **SESIÓN 30 (PRÁCTICA): EJERCICIOS DE DETERMINACIÓN DE SUPREMO E ÍNFIMO EN $\mathbb{R}$**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 3: RELACIONES Y APLICACIONES (Capítulo 3)  
**Objetivo:** Dominar la resolución analítica de ejercicios sobre **acotación, supremo, ínfimo, máximo y mínimo** en subconjuntos de la recta real $\mathbb{R}$, ejercitando la caracterización equivalente mediante $\varepsilon > 0$ y aplicando las pautas formales de redacción exigidas en los exámenes de desarrollo de la UNED.

---

### **1. Herramienta Analítica: Caracterización $\varepsilon$ de Supremo e Ínfimo**

Para demostrar rigurosamente en un examen de desarrollo que un número real $s \in \mathbb{R}$ es el **supremo** de un subconjunto no vacío $A \subseteq \mathbb{R}$ ($s = \sup(A)$), se debe probar que satisface las siguientes dos condiciones equivalentes:

1. **Condición de Cota Superior:**  
    $\forall x \in A, \quad x \le s$
2. **Condición de Menor Cota Superior (Caracterización $\varepsilon$):**  
    Dado cualquier $\varepsilon > 0$, el valor $s - \varepsilon$ **ya no es cota superior** de $A$. Es decir, existe al menos un elemento del conjunto que lo supera: $\forall \varepsilon > 0, \quad \exists x_\varepsilon \in A \text{ tal que } x_\varepsilon > s - \varepsilon$

#### **Caracterización Análoga para el Ínfimo ($i = \inf(A)$):**

1. **Condición de Cota Inferior:** $\forall x \in A, \quad i \le x$.
2. **Condición de Mayor Cota Inferior:** $\forall \varepsilon > 0, \quad \exists x_\varepsilon \in A \text{ tal que } x_\varepsilon < i + \varepsilon$.

---

### **2. Batería de Ejercicios Resueltos de Examen (Texto Base)**

#### **Ejercicio 1: Conjunto Definido por una Sucesión Numérica**

**Enunciado:** Sea el conjunto de números reales definido por: 
$$A = \left\{ \frac{n}{n+1} ;\middle|; n \in \mathbb{N}^* \right\} = \left\{ \frac{1}{2}, \frac{2}{3}, \frac{3}{4}, \frac{4}{5}, \dots \right\}$$ Determinar de forma analítica y justificada si $A$ posee cota inferior, cota superior, ínfimo, supremo, mínimo y máximo en $\mathbb{R}$.

- **Resolución Paso a Paso (Estándar UNED):**
    
    1. **Análisis de la Cota Inferior, Ínfimo y Mínimo:**
        
        - Para todo $n \in \mathbb{N}^* = {1, 2, 3, \dots}$, se cumple que $n \ge 1$.
        - Por lo tanto, $\frac{n}{n+1} \ge \frac{1}{1+1} = \frac{1}{2}$.
        - Como $\frac{1}{2} \le x$ para todo $x \in A$, el número $\frac{1}{2}$ es una **cota inferior** de $A$.
        - Además, como para $n = 1$ tenemos $x_1 = \frac{1}{2} \in A$, la cota inferior pertenece al conjunto.
        - **Conclusión:** Existe mínimo y se cumple **$\min(A) = \inf(A) = \frac{1}{2}$**.
    2. **Análisis del Supremo mediante Caracterización $\varepsilon$:**
        
        - **Cota superior:** Para todo $n \in \mathbb{N}^*$, $n < n + 1 \implies \frac{n}{n+1} < 1$. Luego $1$ es cota superior de $A$.
        - **Probar que $\sup(A) = 1$:** Dado un $\varepsilon > 0$ arbitrario, buscamos un $n \in \mathbb{N}^*$ tal que: $\frac{n}{n+1} > 1 - \varepsilon \iff 1 - \frac{1}{n+1} > 1 - \varepsilon \iff \frac{1}{n+1} < \varepsilon \iff n + 1 > \frac{1}{\varepsilon} \iff n > \frac{1}{\varepsilon} - 1$
        - Por la **Propiedad Arquimediana** de los números reales, para cualquier real positivo $\frac{1}{\varepsilon} - 1$, existe un entero $n_0 \in \mathbb{N}^*$ estrictamente mayor.
        - Por lo tanto, para ese $n_0$, el elemento $x_{n_0} = \frac{n_0}{n_0+1} \in A$ satisface $x_{n_0} > 1 - \varepsilon$.
        - Queda probado que **$\sup(A) = 1$**.
    3. **Análisis del Máximo:**
        
        - Para que existiera máximo, se requeriría que $\sup(A) \in A$.
        - Si $1 \in A$, existiría $n \in \mathbb{N}^*$ tal que $\frac{n}{n+1} = 1 \implies n = n + 1 \implies 0 = 1$, lo cual es absurdo.
        - **Conclusión:** El conjunto $A$ **no posee máximo**.

---

#### **Ejercicio 2: Subconjunto Racional Acotado en $\mathbb{Q}$ vs. $\mathbb{R}$**

**Enunciado:** Sea $B = {x \in \mathbb{Q} \mid x > 0 \land x^2 < 2}$.

1. Estudiar la existencia de supremo e ínfimo de $B$ en el cuerpo de los números racionales $\mathbb{Q}$.
2. Estudiar la existencia de supremo e ínfimo de $B$ en el cuerpo de los números reales $\mathbb{R}$.

- **Resolución Paso a Paso:**
    
    1. **Análisis en $\mathbb{Q}$:**
        
        - El conjunto $B$ está acotado superiormente en $\mathbb{Q}$ (por ejemplo, por $2 \in \mathbb{Q}$, ya que $2^2 = 4 > 2$).
        - Sin embargo, la menor de las cotas superiores en $\mathbb{R}$ es $\sqrt{2}$.
        - Como se demuestra analíticamente que $\sqrt{2} \notin \mathbb{Q}$ (demostración por reducción al absurdo de la Sesión 9), el conjunto $B$ **no posee supremo en el cuerpo de los números racionales $\mathbb{Q}$** (falta la propiedad de completitud o del supremo).
    2. **Análisis en $\mathbb{R}$:**
        
        - Por el **Axioma del Supremo** en $\mathbb{R}$, todo conjunto no vacío y acotado superiormente posee supremo real.
        - Se deduce que **$\sup_{\mathbb{R}}(B) = \sqrt{2}$** y **$\inf_{\mathbb{R}}(B) = 0$**.
        - Como $\sqrt{2} \notin B$ y $0 \notin B$ (por la condición $x > 0$), **no existen ni máximo ni mínimo**.

---

#### **Ejercicio 3: Propiedades Algebraicas del Supremo (Unión de Conjuntos)**

**Enunciado:** Sean $A, B \subseteq \mathbb{R}$ dos subconjuntos no vacíos y acotados superiormente. Demostrar que el conjunto unión $A \cup B$ está acotado superiormente y que: $\sup(A \cup B) = \max({\sup(A), \sup(B)})$

- **Demostración Paso a Paso (Examen de Desarrollo UNED):**
    
    1. **Sean $s_A = \sup(A)$ y $s_B = \sup(B)$. Sea $M = \max({s_A, s_B})$.**
        
    2. **Probar que $M$ es cota superior de $A \cup B$:**
        
        - Sea $x \in A \cup B$ genérico.
        - Si $x \in A \implies x \le s_A \le \max({s_A, s_B}) = M$.
        - Si $x \in B \implies x \le s_B \le \max({s_A, s_B}) = M$.
        - En ambos casos, $x \le M$, de modo que $M$ es **cota superior** de $A \cup B$.
    3. **Probar que $M$ es la menor cota superior:**
        
        - Sea $u$ una cota superior cualquiera de $A \cup B$.
        - Como $A \subseteq A \cup B$, todo $a \in A$ satisface $a \le u$, por lo que $u$ es cota superior de $A \implies s_A \le u$.
        - Como $B \subseteq A \cup B$, todo $b \in B$ satisface $b \le u$, por lo que $u$ es cota superior de $B \implies s_B \le u$.
        - Al ser $u$ mayor o igual que $s_A$ y $s_B$, se deduce que $\max({s_A, s_B}) \le u \implies M \le u$.
    4. **Conclusión:** Queda demostrado que **$\sup(A \cup B) = \max({\sup(A), \sup(B)})$**. $\blacksquare$
        

---

### **3. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Dado el conjunto 
$$C = \left\{ \frac{(-1)^n}{n} + \frac{1}{n} ;\middle|; n \in \mathbb{N}^* \right\}$$, calcular explícitamente sus primeros términos, determinar si está acotado y hallar $\sup(C)$, $\inf(C)$, $\max(C)$ y $\min(C)$.

2. **Ejercicio 2:** Sean $A, B \subseteq \mathbb{R}$ acotados. Se define el conjunto suma $A + B = {a + b \mid a \in A \land b \in B}$. Demostrar analíticamente que $\sup(A + B) = \sup(A) + \sup(B)$.

---

### **4. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea el subconjunto de números reales $$A = \left\{ \frac{2n + 1}{n + 2} ;\middle|; n \in \mathbb{N}^* \right\} = \left\{ 1, \frac{5}{4}, \frac{7}{5}, \frac{9}{6}, \dots \right\}$$. ¿Cuál de las siguientes afirmaciones es **verdadera**?

- **A)** $\inf(A) = 1$ (que es mínimo) y $\sup(A) = 2$ (pero no existe máximo).
- **B)** $\min(A) = 1$ y $\max(A) = 2$.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Para $n = 1$, $x_1 = \frac{2(1)+1}{1+2} = \frac{3}{3} = 1$.
> - Reorganizaremos la expresión: $\frac{2n+1}{n+2} = \frac{2(n+2) - 3}{n+2} = 2 - \frac{3}{n+2}$.
> - Como $n \ge 1$, el término $\frac{3}{n+2}$ es estrictamente decreciente con $n$ y tiende a $0$ cuando $n \to \infty$.
> - Por tanto, la sucesión es **estrictamente creciente**: su valor mínimo se alcanza en $n = 1$ ($x_1 = 1 \in A$), luego $\min(A) = \inf(A) = 1$.
> - Las cotas superiores se aproximan a $2$ cuando $n \to \infty$, luego $\sup(A) = 2$. Sin embargo, $2 \notin A$ porque $2 - \frac{3}{n+2} = 2 \implies \frac{3}{n+2} = 0$, que no tiene solución en $\mathbb{N}^*$. No existe máximo.
> - La opción **A** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión30_Supremo_e_ínfimo.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con la jerarquía del Bloque 3, el escape de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la caracterización $\varepsilon$ del supremo y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión30_Supremo_e_ínfimo.m4a): Enfocado en las técnicas de demostración analítica mediante la condición $\varepsilon$ para refutar cotas superiores menores, la diferencia entre supremo y máximo en conjuntos sin extremo superior, la resolución de ejercicios sobre sucesiones y operaciones con supremos, y las pautas de redacción para el examen de desarrollo.

---
