# **SESIÓN 31 (TEORÍA): APLICACIONES ENTRE CONJUNTOS: DOMINIO, IMAGEN E IMAGEN INVERSA**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 3: RELACIONES Y APLICACIONES (Capítulo 3)  
**Objetivo:** Definir formalmente el concepto de **aplicación (o función) $f: A \to B$** entre dos conjuntos como un caso especial de relación binaria $f \subseteq A \times B$ caracterizada por la condición de **existencia y unicidad de imagen**, identificar de forma rigurosa el **dominio $\text{Dom}(f)$**, el **codominio $B$**, el **conjunto imagen $\text{Im}(f)$** y el **conjunto imagen inversa (antiimagen) $f^{-1}(Y)$**, analizar los casos límite con el conjunto vacío $\varnothing$ y ejercitar los ejemplos fundamentales del texto base de la UNED (Delgado Pineda & Muñoz Bouzo).

---

### **1. Marco Teórico: Concepto Formal de Aplicación**

#### **A. Definición de Aplicación (o Función)**

Dados dos conjuntos $A$ y $B$, una **aplicación (o función) $f$ de $A$ en $B$**, denotada por **$f: A \to B$**, es una relación binaria $f \subseteq A \times B$ que satisface la condición de que **todo elemento del conjunto inicial $A$ está relacionado con un único elemento del conjunto final $B$**:

$$\forall x \in A, \quad \exists! y \in B \text{ tal que } (x, y) \in f$$

- **Notación de Elementos:** Si $(x, y) \in f$, escribimos $y = f(x)$ o bien $f: x \mapsto f(x)$, y decimos que **$y$ es la imagen de $x$ mediante $f$**.
- **Notación del Conjunto de Aplicaciones:** El conjunto de todas las aplicaciones de $A$ en $B$ se denota por **$\mathcal{F}(A, B)$** o por la notación exponencial **$B^A$**.

---

#### **B. Distinción entre Relación General y Aplicación**

Toda aplicación es una relación binaria, pero **no toda relación es una aplicación**. Para que una relación $R \subseteq A \times B$ sea aplicación, debe cumplir dos restricciones fundamentales:

1. **Condición de Existencia (Totales en $A$):** Todo elemento $x \in A$ debe tener al menos una imagen en $B$ (ningún elemento de $A$ puede quedarse "sin asignar").
2. **Condición de Unicidad:** Ningún elemento $x \in A$ puede tener más de una imagen distinta en $B$ (es decir, si $y_1 = f(x)$ e $y_2 = f(x)$, obligatoriamente $y_1 = y_2$).

---

#### **C. Casos Limite con el Conjunto Vacío ($\varnothing$)**

En el marco del producto cartesiano, el texto base analiza dos situaciones de frontera:

1. **Aplicaciones con Dominio Vacío ($f: \varnothing \to B$):**  
    Como $\varnothing \times B = \varnothing$, el único subconjunto posible es $\varnothing$. Este subconjunto cumple de forma **vacuamente verdadera** la condición de aplicación (no existe ningún elemento en $\varnothing$ que carezca de imagen o tenga múltiples imágenes). Se denomina **aplicación vacía** y se cumple que $\mathcal{F}(\varnothing, B) = { \text{aplicación vacía} }$.
2. **Aplicaciones con Codominio Vacío y Dominio No Vacío ($f: A \to \varnothing$ con $A \neq \varnothing$):**  
    Si $A \neq \varnothing$ y $B = \varnothing$, entonces $A \times B = \varnothing$. La única relación existente es $\varnothing$, pero esta **NO es una aplicación** pues para cualquier $a \in A$ no existe ningún $b \in \varnothing$ con el que relacionarlo. Por lo tanto, $\mathcal{F}(A, \varnothing) = \varnothing$.

---

### **2. Dominio, Codominio, Conjunto Imagen e Imagen Inversa**

Dada una aplicación $f: A \to B$:

#### **1. Dominio (o Conjunto Inicial / Original)**

Es el conjunto de partida $A$. Se denota por **$\text{Dom}(f)$**, $\text{Orig}(f)$ o $\text{Dom } f$. Como $f$ es una aplicación, todo el conjunto $A$ es el dominio de definición: $$\text{Dom}(f) = A$$

#### **2. Codominio (o Conjunto Final)**

Es el conjunto de llegada $B$.

#### **3. Conjunto Imagen (o Recorrido / Rango)**

Es el subconjunto de $B$ formado por aquellos elementos que son imagen de al menos un elemento de $A$. Se denota por **$\text{Im}(f)$**, $\text{Im } f$ o **$f(A)$**: $$\text{Im}(f) = f(A) = \{y \in B \mid \exists x \in A, f(x) = y\} = \{f(x) \mid x \in A\} \subseteq B$$

> **Diferencia Fundamental para Examen:**  
> El **codominio $B$** y el **conjunto imagen $\text{Im}(f)$** NO son necesariamente iguales. Siempre se cumple que $\text{Im}(f) \subseteq B$, pero pueden sobrar elementos en $B$ que no sean imagen de nadie.

#### **4. Imagen de un Subconjunto $X \subseteq A$**

Si $X \subseteq A$, la imagen del subconjunto $X$ mediante $f$ es: $$f(X) = \{y \in B \mid \exists x \in X, f(x) = y\} = \{f(x) \mid x \in X\} \subseteq B$$

#### **5. Imagen Inversa (o Antiimagen) de un Subconjunto $Y \subseteq B$**

Si $Y \subseteq B$, la **imagen inversa de $Y$ por $f$**, denotada por **$f^{-1}(Y)$**, es el subconjunto de $A$ formado por todos los elementos cuya imagen pertenece a $Y$: $$f^{-1}(Y) = \{x \in A \mid f(x) \in Y\} \subseteq A$$

- **Imagen Inversa de un Elemento $y \in B$:**  
    Para un elemento individual $y \in B$, se define $f^{-1}(y) = f^{-1}({y}) = {x \in A \mid f(x) = y}$.
    - Si $y \notin \text{Im}(f)$, entonces $f^{-1}(y) = \varnothing$.
    - Si $y \in \text{Im}(f)$, el conjunto $f^{-1}(y)$ puede tener uno o múltiples elementos de $A$.

---

### **3. Ejemplos Emblemáticos del Texto Base (Delgado Pineda & Muñoz Bouzo)**

#### **Ejemplo 1: Función Real Parábola $f: \mathbb{R} \to \mathbb{R}$, $f(x) = x^2$**

Sea la función real dada por $f(x) = x^2$.

- **Dominio:** $\text{Dom}(f) = \mathbb{R}$.
- **Codominio:** $B = \mathbb{R}$.
- **Conjunto Imagen:** Como todo cuadrado de un número real es no negativo ($x^2 \ge 0$), se tiene que $\text{Im}(f) = f(\mathbb{R}) = [0, +\infty)$.
- **Imágenes Inversas de Puntos:**
    - $f^{-1}(4) = \{x \in \mathbb{R} \mid x^2 = 4\} = \{-2, 2\}$.
    - $f^{-1}(0) = \{x \in \mathbb{R} \mid x^2 = 0\} = {0}$.
    - $f^{-1}(-3) = \{x \in \mathbb{R} \mid x^2 = -3\} = \varnothing$ (pués no existen cuadrados negativos en $\mathbb{R}$).
- **Imagen Inversa de un Intervalo:**
    - $f^{-1}([1,4]) = \{x \in \mathbb{R} \mid 1 \le x^2 \le 4\} = [-2, -1] \cup [1, 2]$.

---

#### **Ejemplo 2: Proyección Canónica sobre el Conjunto Cociente**

Dada una relación de equivalencia $\mathcal{E}$ sobre un conjunto $A$, la relación que asigna a cada elemento de $A$ su correspondiente clase de equivalencia define la **proyección canónica**: $$p: A \to A/\mathcal{E}, \quad p(x) = [x]$$

- **Dominio:** $\text{Dom}(p) = A$.
- **Codominio:** $A/\mathcal{E}$ (el conjunto cociente).
- **Conjunto Imagen:** Dado que por la propiedad reflexiva toda clase de equivalencia $[x]$ posee al menos un representante $x \in A$ tal que $p(x) = [x]$, el conjunto imagen coincide plenamente con el codominio: $\text{Im}(p) = A/\mathcal{E}$.
- **Imagen Inversa de una Clase $[x]$:** $p^{-1}({[x]}) = \{y \in A \mid p(y) = [x]\} = \{y \in A \mid [y] = [x]\} = [x]$. La antiimagen de una clase de equivalencia es la propia clase como subconjunto de $A$.

---

#### **Ejemplo 3: Campo de Existencia (Dominio de Definición)**

Cuando una función real se especifica únicamente por su expresión algebraica $f(x)$, se considera que el dominio de definición es el subconjunto más grande de $\mathbb{R}$ en el que la expresión tiene sentido analítico.

**Problema:** Hallar el dominio de definición de la función $h(x) = \frac{\sqrt{x^2 - 4}}{x - 1}$.

- **Condiciones de Existencia:**
    1. El radicando de la raíz cuadrada debe ser no negativo: $x^2 - 4 \ge 0 \iff (x - 2)(x + 2) \ge 0 \iff x \in (-\infty, -2] \cup [2, +\infty)$.
    2. El denominador no puede anularse: $x - 1 \neq 0 \iff x \neq 1$.
- **Intersección de Condiciones:** $$\text{Dom}(h) = ((-\infty, -2] \cup [2, +\infty)) \cap (\mathbb{R} \setminus {1}) = (-\infty, -2] \cup [2, +\infty)$$ _(Nótese que $x = 1$ ya estaba fuera del conjunto $(-\infty, -2] \cup [2, +\infty)$)_.

---

### **4. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Dada la aplicación $f: \mathbb{R} \to \mathbb{R}$ definida por $f(x) = x^2 - 3x + 2$.  
    a) Determinar el conjunto imagen $\text{Im}(f)$.  
    b) Calcular las antiimágenes $f^{-1}(0)$ y $f^{-1}({-1})$.  
    c) Calcular la imagen del subconjunto $X = [1,4]$.
2. **Ejercicio 2 (Ejercicio 15 del Capítulo 3 del texto base):** Determinar el dominio de definición de las siguientes funciones reales:  
    a) $f(x) = \frac{x - 1}{x + 2} + \frac{1}{x^2 - 1}$  
    b) $g(x) = \sqrt{1 - x^3}$  
    c) $k(x) = \ln(x^3 - x)$

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea la función real dada por $f(x) = |x - 2|$ con dominio $A = \mathbb{R}$ y codominio $B = \mathbb{R}$. ¿Cuál de las siguientes afirmaciones sobre sus conjuntos imagen e imagen inversa es **verdadera**?

- **A)** $\text{Im}(f) = [0, +\infty)$ y la imagen inversa del intervalo $[]$ es el intervalo $f^{-1}([0,1]) =[1,3]$.
- **B)** $\text{Im}(f) = \mathbb{R}$ y la imagen inversa del punto $0$ es el conjunto vacío $f^{-1}(0) = \varnothing$.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Como el valor absoluto de cualquier número real es no negativo, $|x - 2| \ge 0$ para todo $x \in \mathbb{R}$, y para cada $y \ge 0$ los puntos $x = 2 + y$ y $x = 2 - y$ satisfacen $f(x) = y$. Por consiguiente, **$\text{Im}(f) = [0, +\infty)$**.
> - Calculamos la imagen inversa del intervalo $[0,1]$: $$f^{-1}([0,1]) = {x \in \mathbb{R} \mid 0 \le |x - 2| \le 1} \iff |x - 2| \le 1 \iff -1 \le x - 2 \le 1 \iff 1 \le x \le 3$$
> - Luego $f^{-1}([0,1]) =[1,3]$.
> - Por lo tanto, la opción **A** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión31_Aplicaciones_y_conjuntos.pptx) Maquetada respetando el _AAA_Manual_de_Estilo_Presentaciones_, con el encabezado del Bloque 3, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la distinción entre relación y aplicación, y la pregunta de autoevaluación.
	**NOTA**: La infografía de la diapositiva 4 se errónea
- [**Resumen de audio**](Audios/Sesión31_Aplicaciones_y_conjuntos.m4a): Enfocado en la transición de relaciones binarias generales a la noción de aplicación (existencia y unicidad de imagen), la diferencia crítica entre codominio $B$ e imagen $\text{Im}(f)$, el concepto de imagen inversa $f^{-1}(Y)$ de un subconjunto, los casos límite con el conjunto vacío y los criterios sintácticos para el examen de desarrollo de la UNED.

---
