# **SESIÓN 42 (TEORÍA): HOMOMORFISMOS DE GRUPOS: NÚCLEO E IMAGEN**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 4: OPERACIONES INTERNAS Y ESTRUCTURAS ALGEBRAICAS (Capítulo 4)  
**Objetivo:** Definir formalmente la noción de *_homomorfismo entre grupos $f: (G, _) \to (G', \circ)$__ como una aplicación que conserva la operación estructural, clasificar los homomorfismos (**endomorfismo, monomorfismo, epimorfismo, isomorfismo y automorfismo**), demostrar las propiedades de **conservación del elemento neutro y de los simétricos**, definir el **núcleo $\text{Ker}(f)$** y la **imagen $\text{Im}(f)$** demostrando que son subgrupos, y probar el teorema fundamental de **caracterización de inyectividad via $\text{Ker}(f) = {e_G}$**.

---

### **1. Marco Teórico: Concepto Formal de Homomorfismo de Grupos**

#### **A. Definición de Homomorfismo**

Sean $(G, *)$ y $(G', \circ)$ dos grupos con elementos neutros $e_G \in G$ y $e_{G'} \in G'$ respectivamente. Una aplicación $f: G \to G'$ es un **homomorfismo de grupos** si y solo si la imagen del producto de dos elementos de $G$ es igual al producto de sus imágenes en $G'$:

$$\forall a, b \in G, \quad f(a * b) = f(a) \circ f(b)$$

- **Interpretación Algebraica:** Un homomorfismo es una aplicación que _"respeta"_ o _"traslada"_ la estructura algebraica del grupo origen al grupo destino. Permite operar antes de aplicar la función o aplicar la función antes de operar obteniendo idéntico resultado.
- **Notación Aditiva:** Cuando ambos grupos se expresan en notación aditiva ($+$), la condición se escribe: $$f(a + b) = f(a) + f(b)$$

---

#### **B. Clasificación de los Homomorfismos**

Dada una aplicación $f: G \to G'$ que es un homomorfismo de grupos:

1. **Endomorfismo:** Es un homomorfismo donde el conjunto de partida y el de llegada coinciden ($G = G'$).
2. **Monomorfismo:** Es un homomorfismo **inyectivo** (elementos distintos tienen imágenes distintas).
3. **Epimorfismo:** Es un homomorfismo **sobreyectivo** ($\text{Im}(f) = G'$).
4. **Isomorfismo:** Es un homomorfismo **biyectivo** (inyectivo y sobreyectivo). Dos grupos $G$ y $G'$ son **isomorfos** (denotado $G \cong G'$) si existe al menos un isomorfismo entre ellos.
5. **Automorfismo:** Es un endomorfismo **biyectivo** (un isomorfismo de un grupo en sí mismo, $f: G \to G$).

---

### **2. Propiedades Estructurales de los Homomorfismos**

#### **Proposición 4.39 / Teorema 4.40 (Propiedades de Consolidación):**

*Sea $f: (G, _) \to (G', \circ)$ un homomorfismo de grupos. Se verifican las siguientes propiedades:_

1. **Conservación del Elemento Neutro:**  
    La imagen del elemento neutro de $G$ es el elemento neutro de $G'$: $$f(e_G) = e_{G'}$$
    
    - **Demostración Analítica Paso a Paso:**
        1. Evaluamos $f(e_G)$ en el grupo $G'$. Como $e_G * e_G = e_G$ en $G$, aplicando $f$: $$f(e_G) = f(e_G * e_G) = f(e_G) \circ f(e_G)$$
        2. Por otro lado, en $G'$ se cumple por la propiedad del neutro que: $$f(e_G) = f(e_G) \circ e_{G'}$$
        3. Igualando ambas expresiones: $$f(e_G) \circ f(e_G) = f(e_G) \circ e_{G'}$$
        4. Por la propiedad cancelativa por la izquierda en el grupo $G'$, se deduce que **$f(e_G) = e_{G'}$**. $\blacksquare$

---

2. **Conservación de Elementos Simétricos:**  
    La imagen del elemento simétrico de $a$ es el simétrico de su imagen: $$\forall a \in G, \quad f(a^{-1}) = (f(a))^{-1}$$
    
    - **Demostración Analítica:**
        1. Operamos $f(a)$ con $f(a^{-1})$ en $G'$: $$f(a) \circ f(a^{-1}) = f(a * a^{-1}) = f(e_G) = e_{G'}$$
        2. De igual forma por la izquierda: $$f(a^{-1}) \circ f(a) = f(a^{-1} * a) = f(e_G) = e_{G'}$$
        3. Por la unicidad del elemento simétrico en el grupo $G'$, se concluye que **$f(a^{-1}) = (f(a))^{-1}$**. $\blacksquare$

---

3. **Conservación de Subgrupos (Imagen y Antiimagen):**
    - Si $H \le G$ es un subgrupo de $G$, su imagen $f(H) = {f(h) \mid h \in H}$ es un **subgrupo de $G'$** ($f(H) \le G'$).
    - Si $H' \le G'$ es un subgrupo de $G'$, su imagen inversa $f^{-1}(H') = {x \in G \mid f(x) \in H'}$ es un **subgrupo de $G$** ($f^{-1}(H') \le G$).

---

### **3. El Núcleo (Ker) y la Imagen (Im) de un Homomorfismo**

Dado un homomorfismo de grupos $f: G \to G'$:

#### **A. Conjunto Imagen ($\text{Im}(f)$)**

Es el subconjunto de $G'$ formado por los elementos que son imagen de al menos un elemento de $G$: $$\text{Im}(f) = f(G) = {y \in G' \mid \exists x \in G, f(x) = y} \le G'$$

- **Criterio de Sobreyectividad:** $f$ es un **epimorfismo** (sobreyectivo) si y solo si **$\text{Im}(f) = G'$**.

#### **B. Núcleo de un Homomorfismo ($\text{Ker}(f)$)**

Es el subconjunto de $G$ formado por todos los elementos cuya imagen mediante $f$ es el elemento neutro $e_{G'}$ de $G'$:

$$\text{Ker}(f) = {x \in G \mid f(x) = e_{G'}} = f^{-1}({e_{G'}}) \le G$$

- **Propiedad de Subgrupo Normal:** $\text{Ker}(f)$ no solo es un subgrupo de $G$, sino que es un **subgrupo normal** (o invariante) de $G$ (es decir, $\forall g \in G, g * \text{Ker}(f) * g^{-1} \subseteq \text{Ker}(f)$).

---

### **4. Teorema de Caracterización de Inyectividad**

> **Teorema 4.40.3 (Caracterización de Monomorfismos):**  
> _Un homomorfismo de grupos $f: G \to G'$ es **inyectivo** (monomorfismo) si y solo si su núcleo consta únicamente del elemento neutro de $G$:_ $$f \text{ es inyectivo} \iff \text{Ker}(f) = {e_G}$$

- **Demostración Analítica Paso a Paso (Examen de Desarrollo UNED):**
    
    1. **Implicación Directa ($\implies$):**  
        Supongamos que $f$ es inyectivo.  
        Sea $x \in \text{Ker}(f)$. Por definición de núcleo, $f(x) = e_{G'}$.  
        Sabemos que siempre $f(e_G) = e_{G'}$.  
        Por tanto, $f(x) = f(e_G)$.  
        Al ser $f$ inyectivo, se deduce inmediatamente que **$x = e_G$**.  
        Luego **$\text{Ker}(f) = {e_G}$**.
        
    2. **Implicación Recíproca ($\impliedby$):**  
        Supongamos que $\text{Ker}(f) = {e_G}$.  
        Sean $a, b \in G$ tales que $f(a) = f(b)$.  
        Operando en $G'$ con el simétrico $(f(b))^{-1} = f(b^{-1})$: $$f(a) \circ (f(b))^{-1} = e_{G'} \implies f(a) \circ f(b^{-1}) = e_{G'}$$ Como $f$ es un homomorfismo de grupos: $$f(a * b^{-1}) = e_{G'}$$ Esto significa por definición que $a * b^{-1} \in \text{Ker}(f)$.  
        Como por hipótesis $\text{Ker}(f) = {e_G}$, se concluye que: $$a * b^{-1} = e_G \implies a = b$$ Por consiguiente, **$f$ es inyectivo**. $\blacksquare$
        

> **Utilidad Práctica para Examen:** Para probar la inyectividad de un homomorfismo entre grupos, **NO hace falta trabajar con la definición general $f(a)=f(b) \implies a=b$**; basta con resolver la ecuación $f(x) = e_{G'}$ y comprobar que la única solución es $x = e_G$.

---

### **5. Ejemplos Emblemáticos del Texto Base (Delgado Pineda & Muñoz Bouzo)**

#### __Ejemplo 1: La Función Exponencial $f: (\mathbb{R}, +) \to (\mathbb{R}^*, \cdot)$

Consideramos la función exponencial $f(x) = e^x$ entre el grupo aditivo $(\mathbb{R}, +)$ y el grupo multiplicativo $(\mathbb{R}^*, \cdot)$.

- **Homomorfismo:** $f(x + y) = e^{x+y} = e^x \cdot e^y = f(x) \cdot f(y)$. Es un homomorfismo de grupos.
- **Cálculo del Núcleo:** $$\text{Ker}(f) = {x \in \mathbb{R} \mid f(x) = 1} = {x \in \mathbb{R} \mid e^x = 1} = {0}$$ Como $\text{Ker}(f) = {0}$, la función exponencial es **inyectiva (monomorfismo)**.
- **Imagen e Isomorfismo:** $\text{Im}(f) = (0, +\infty) = \mathbb{R}^+$. Al restringir el codominio a $\mathbb{R}^+$, $f: (\mathbb{R}, +) \to (\mathbb{R}^+, \cdot)$ es un **isomorfismo de grupos**, cuya inversa es el logaritmo neperiano $f^{-1}(y) = \ln(y)$.

---

#### __Ejemplo 2: Homomorfismo Determinante $\det: (GL_n(\mathbb{R}), \cdot) \to (\mathbb{R}^*, \cdot)$

Consideramos la aplicación determinante sobre el grupo general lineal de matrices invertibles.

- **Homomorfismo:** Por el Teorema de Binet, $\det(A \cdot B) = \det(A) \cdot \det(B)$.
- **Cálculo del Núcleo:** $$\text{Ker}(\det) = {A \in GL_n(\mathbb{R}) \mid \det(A) = 1} = SL_n(\mathbb{R})$$ El núcleo es el **Grupo Especial Lineal $SL_n(\mathbb{R})$** (matrices cuadradas de determinante igual a 1). No es inyectivo pues existen infinitas matrices con determinante 1 distintas de la identidad.

---

#### **Ejemplo 3: Transformación Lineal en $\mathbb{R}^2$**

Sea la aplicación $f: (\mathbb{R}^2, +) \to (\mathbb{R}^2, +)$ definida por $f(x, y) = (x + y, 3x + 5y)$.

- **Demostración de Inyectividad mediante el Núcleo:**  
    Buscamos el conjunto de elementos $(x, y) \in \mathbb{R}^2$ tales que $f(x, y) = (0, 0)$: $$\begin{cases} x + y = 0 \ 3x + 5y = 0 \end{cases}$$ De la primera ecuación, $y = -x$. Sustituyendo en la segunda: $$3x + 5(-x) = 0 \implies -2x = 0 \implies x = 0 \implies y = 0$$ Por consiguiente, **$\text{Ker}(f) = {(0, 0)}$**.  
    Por el Teorema 4.40.3, la aplicación **$f$ es inyectiva (monomorfismo)**.

---

### **6. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1 (Ejercicio 4.41.3 del texto base):** Sea $(G, +)$ un grupo aditivo y $a \in G$ un elemento fijo. Demostrar que la aplicación $f: (\mathbb{Z}, +) \to (G, +)$ dada por $f(n) = na$ es un homomorfismo de grupos. Determinar su conjunto imagen $\text{Im}(f)$ y su núcleo $\text{Ker}(f)$.
2. **Ejercicio 2 (Ejercicio 5 del Capítulo 4 del texto base):** Sea $(G, +)$ un grupo aditivo y $f: G \to G$ la aplicación dada por $f(a) = 2a = a + a$. Demostrar que $f$ es un homomorfismo de grupos si y solo si $(G, +)$ es un **grupo abeliano**.

---

### **7. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea $f: (G, *) \to (G', \circ)$ un homomorfismo de grupos entre dos grupos de elementos neutros $e_G$ y $e_{G'}$ respectivamente. ¿Cuál de las siguientes afirmaciones sobre el núcleo $\text{Ker}(f)$ es **verdadera**?

- **A)** $\text{Ker}(f)$ es siempre un subgrupo de $G$, y el homomorfismo $f$ es inyectivo si y solo si $\text{Ker}(f) = {e_G}$.
- **B)** $\text{Ker}(f)$ es un subgrupo de $G'$, y el homomorfismo $f$ es sobreyectivo si y solo si $\text{Ker}(f) = G'$.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Por el Teorema 4.40 del libro de texto base, el núcleo $\text{Ker}(f) = {x \in G \mid f(x) = e_{G'}}$ es un subgrupo del conjunto **origen** $G$.
> - Además, el punto 3 de dicho teorema demuestra analíticamente que la inyectividad de $f$ equivale exactamente a que el núcleo sea el conjunto unitario formado únicamente por el elemento neutro del origen: $\text{Ker}(f) = {e_G}$.
> - La opción B es falsa porque confunde el dominio de definición del núcleo y atribuye la propiedad de sobreyectividad al núcleo en lugar de a la imagen $\text{Im}(f)$.
> - Por lo tanto, la opción **A** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión42_Homomorfismos_de_grupos.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con el encabezado del Bloque 4, recuadros normativos para las definiciones de homomorfismo, núcleo e imagen, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la demostración completa del teorema de inyectividad y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión42_Homomorfismos_de_grupos.m4a): Enfocado en la noción de homomorfismo como aplicación que preserva la estructura algebraica entre dos grupos $(G, *)$ y $(G', \circ)$, la conservación de elementos neutros e inversos, la clasificación de homomorfismos (isomorfismos, monomorfismos, epimorfismos), la definición del núcleo $\text{Ker}(f)$ e imagen $\text{Im}(f)$, la elegante prueba de que la inyectividad equivale a $\text{Ker}(f) = {e_G}$ y los ejemplos clásicos del texto base (exponencial, determinante de matrices e transformaciones lineales).

---
