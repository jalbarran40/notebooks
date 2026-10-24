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
        
        - Para todo $n \in \mathbb{N}^* = \{1, 2, 3, \dots\}$, se cumple que $n \ge 1$.
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

**Enunciado:** Sea $B = \{x \in \mathbb{Q} \mid x > 0 \land x^2 < 2\}$.

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


##### Análisis alternativo en $\mathbb{Q}$

Recordemos el conjunto definido en el enunciado: $$B = {x \in \mathbb{Q} \mid x > 0 \land x^2 < 2}$$

Geométricamente, $B$ representa al conjunto de todos los números racionales positivos cuyo cuadrado es estrictamente menor que 2. En la recta real, esto equivale al intervalo $(0, \sqrt{2}) \cap \mathbb{Q}$.

---

###### **1. Estudio del Ínfimo y Mínimo en $\mathbb{Q}$**

- **Acotación inferior:**  
    El conjunto $B$ está acotado inferiormente en $\mathbb{Q}$. Por ejemplo, el número $0 \in \mathbb{Q}$ es una cota inferior, ya que por definición de $B$, para todo $x \in B$ se cumple $x > 0$.
    
- **Cálculo del Ínfimo ($\inf_{\mathbb{Q}}(B)$):**  
    El **ínfimo de $B$ en $\mathbb{Q}$ es $0$** ($\inf_{\mathbb{Q}}(B) = 0$).  
    _Demostración:_
    
    1. $0$ es cota inferior de $B$ (pues $\forall x \in B, x > 0 \ge 0$).
    2. $0$ es la **mayor cota inferior**: Si tomamos cualquier racional $k > 0$, por la propiedad de densidad de $\mathbb{Q}$, siempre podemos encontrar un número racional $q \in \mathbb{Q}$ tan pequeño que $0 < q < \min(k, 1)$.  
        Como $0 < q < 1$, su cuadrado cumple $q^2 < 1 < 2$, por lo que $q \in B$.  
        Al ser $q < k$, hemos encontrado un elemento de $B$ menor que $k$, lo que prueba que $k$ no puede ser cota inferior.  
        Por tanto, ninguna cota inferior puede ser estrictamente mayor que $0$.
- **Mínimo ($\min_{\mathbb{Q}}(B)$):**  
    Como el ínfimo $0$ **no pertenece al conjunto $B$** (la definición de $B$ exige estrictamente $x > 0$), el conjunto $B$ **no posee mínimo en $\mathbb{Q}$**.
    

---

###### **2. Estudio del Supremo y Máximo en $\mathbb{Q}$**

- **Acotación superior:**  
    El conjunto $B$ está acotado superiormente en $\mathbb{Q}$. Por ejemplo, $2 \in \mathbb{Q}$ es una cota superior, ya que si $x \in B$, al ser $x^2 < 2 < 4$, se deduce que $x < 2$.
    
- **Inexistencia de Supremo ($\sup_{\mathbb{Q}}(B)$):**  
    **El conjunto $B$ NO posee supremo en $\mathbb{Q}$.**
    
    _Demostración Analítica por Reducción al Absurdo:_  
    Supongamos por contradicción que **existe** un número racional $s \in \mathbb{Q}$ tal que $s = \sup_{\mathbb{Q}}(B)$.  
    Dado que $1 \in B$ (pues $1 \in \mathbb{Q}$, $1 > 0$ y $1^2 = 1 < 2$), la menor cota superior $s$ debe cumplir necesariamente $s \ge 1 > 0$.
    
    Por la **ley de tricotomía** en $\mathbb{Q}$, para el valor $s^2$ solo se pueden dar tres casos excluyentes:
    
    ---
    
    ####### **Caso 1: $s^2 = 2$**
    
    Si $s^2 = 2$, se tendría que $s = \sqrt{2} \in \mathbb{Q}$. Sin embargo, está demostrado que **$\sqrt{2}$ es un número irracional** ($\sqrt{2} \notin \mathbb{Q}$), por lo que es imposible que un número racional cumpla $s^2 = 2$. Contradicción.
    
    ---
    
    ####### **Caso 2: $s^2 < 2$**
    
    Si $s^2 < 2$, demostraremos que **$s$ no puede ser cota superior de $B$** (encontraremos un elemento de $B$ estrictamente mayor que $s$).
    
    Para ello, definimos un número auxiliar $s' \in \mathbb{Q}$ mediante la transformación analítica: $$s' = \frac{2s + 2}{s + 2}$$
    
    Comprobemos sus propiedades:
    
    1. **$s'$ es un número racional:** Como $s \in \mathbb{Q}$ y $s + 2 \neq 0$, $s' \in \mathbb{Q}$.
    2. **$s'$ es estrictamente mayor que $s$:** $$s' - s = \frac{2s + 2}{s + 2} - s = \frac{2s + 2 - s(s + 2)}{s + 2} = \frac{2 - s^2}{s + 2}$$ Como por hipótesis $s^2 < 2$, el numerador $2 - s^2$ es positivo ($> 0$), de donde $s' - s > 0 \implies s' > s$.
    3. **$s'$ pertenece al conjunto $B$ ($s'^2 < 2$):** $$s'^2 - 2 = \left(\frac{2s + 2}{s + 2}\right)^2 - 2 = \frac{4s^2 + 8s + 4 - 2(s^2 + 4s + 4)}{(s + 2)^2} = \frac{2s^2 - 4}{(s + 2)^2} = \frac{2(s^2 - 2)}{(s + 2)^2}$$ Como $s^2 < 2$, el numerador $2(s^2 - 2)$ es negativo ($< 0$), luego $s'^2 - 2 < 0 \implies s'^2 < 2$.
    
    Como $s' \in \mathbb{Q}$, $s' > 0$ y $s'^2 < 2$, se cumple que **$s' \in B$**.  
    Pero como $s' > s$, hemos encontrado un elemento de $B$ que supera a $s$, lo cual **contradice que $s$ sea cota superior de $B$**.
    
    ---
    
    ####### **Caso 3: $s^2 > 2$**
    
    Si $s^2 > 2$, demostraremos que **$s$ no es la menor de las cotas superiores** (encontraremos otra cota superior $s''$ estrictamente menor que $s$).
    
    Utilizamos la misma fórmula auxiliar $s'' = \frac{2s + 2}{s + 2}$:
    
    1. **$s''$ es estrictamente menor que $s$:** $$s - s'' = \frac{s^2 - 2}{s + 2}$$ Como por hipótesis $s^2 > 2$, el numerador $s^2 - 2$ es positivo ($> 0$), de donde $s - s'' > 0 \implies s'' < s$.
    2. **$s''$ sigue siendo cota superior de $B$ ($s''^2 > 2$):** De la misma expresión de antes: $$s''^2 - 2 = \frac{2(s^2 - 2)}{(s + 2)^2} > 0 \implies s''^2 > 2$$ Para todo $x \in B$ (que cumple $x^2 < 2$), tenemos $x^2 < 2 < s''^2 \implies x < s''$. Por tanto, $s''$ es cota superior de $B$.
    
    Como $s''$ es una cota superior de $B$ y $s'' < s$, esto **contradice que $s$ fuera el supremo (la _menor_ cota superior)**.
    
    ---
    
    ####### **Conclusión del Absurdo:**
    
    Al haber llegado a una contradicción en los tres casos posibles, concluimos que **no existe ningún número racional $s \in \mathbb{Q}$ que sea el supremo de $B$**.
    
- **Máximo ($\max_{\mathbb{Q}}(B)$):**  
    Dado que el máximo existe si y solo si existe el supremo y este pertenece al conjunto, al no haber supremo en $\mathbb{Q}$, el conjunto $B$ **tampoco tiene máximo en $\mathbb{Q}$**.
    

---

###### **Resumen del Apartado 1 (en $\mathbb{Q}$)**

- **Acotado inferiormente:** Sí (por $0$).
- **Ínfimo en $\mathbb{Q}$:** $\inf_{\mathbb{Q}}(B) = 0$.
- **Mínimo en $\mathbb{Q}$:** No existe (ya que $0 \notin B$).
- **Acotado superiormente:** Sí (por $2$).
- **Supremo en $\mathbb{Q}$:** **No existe** (debido al "agujero" que deja la irracionalidad de $\sqrt{2}$).
- **Máximo en $\mathbb{Q}$:** No existe.

Este resultado es precisamente el ejemplo clásico que muestra por qué el cuerpo de los racionales $\mathbb{Q}$ **carece de completitud**: existen conjuntos acotados superiormente en $\mathbb{Q}$ que no admiten supremo dentro de $\mathbb{Q}$.

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
$$C = \left\{ \frac{(-1)^n}{n} + \frac{1}{n} \;\middle|\; n \in \mathbb{N}^* \right\}$$, calcular explícitamente sus primeros términos, determinar si está acotado y hallar $\sup(C)$, $\inf(C)$, $\max(C)$ y $\min(C)$.

2. **Ejercicio 2:** Sean $A, B \subseteq \mathbb{R}$ acotados. Se define el conjunto suma $A + B = \{a + b \mid a \in A \land b \in B\}$. Demostrar analíticamente que $\sup(A + B) = \sup(A) + \sup(B)$.

---

### **4. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea el subconjunto de números reales $$A = \left\{ \frac{2n + 1}{n + 2} \;\middle|\; n \in \mathbb{N}^* \right\} = \left\{ 1, \frac{5}{4}, \frac{7}{5}, \frac{9}{6}, \dots \right\}$$. ¿Cuál de las siguientes afirmaciones es **verdadera**?

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
