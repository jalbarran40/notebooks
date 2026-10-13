
# **SESIÓN 44 (PRÁCTICA): RESOLUCIÓN DE EJERCICIOS SOBRE OPERACIONES INTERNAS Y ESTRUCTURAS ALGEBRAICAS**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 4: OPERACIONES INTERNAS Y ESTRUCTURAS ALGEBRAICAS (Capítulo 4)  
**Objetivo:** Aplicar de forma práctica y rigurosa las propiedades de las **operaciones internas** (asociatividad, conmutatividad, neutro e inversos), demostrar estructuras de **grupo abeliano**, verificar **subgrupos** mediante el criterio unificado $a * b^{-1} \in H$, calcular el **núcleo $\text{Ker}(f)$** y la **imagen $\text{Im}(f)$** de homomorfismos para probar inyectividad, y analizar los **divisores de cero** y **elementos invertibles** en anillos, resolviendo los ejercicios prioritarios seleccionados por la Guía Completa de la asignatura.

---

### **1. Resumen Metodológico: Esquema General de Resolución para el Examen de Desarrollo (UNED)**

En las pruebas presenciales de desarrollo de la UNED, los problemas del Capítulo 4 requieren seguir esquemas de prueba estandarizados:

1. **Demostración de Grupo Abeliano $(G, *)$:**
    
    - **Clausura interna:** Probar que $\forall a, b \in G \implies a * b \in G$.
    - **Asociatividad:** Probar que $(a * b) * c = a * (b * c)$.
    - **Elemento Neutro:** Hallar $e \in G$ tal que $a * e = e * a = a$ y verificar que $e \in G$.
    - **Elemento Simétrico:** Dado $a \in G$, hallar $a' \in G$ tal que $a * a' = a' * a = e$ y verificar que $a' \in G$.
    - **Conmutatividad:** Probar que $a * b = b * a$.
2. **Verificación de Subgrupo $H \le G$ (Proposición 4.14):**
    
    - Probar que $H \neq \varnothing$ (habitualmente comprobando que $e_G \in H$).
    - Demostrar que para todo $a, b \in H \implies a * b^{-1} \in H$ (en notación multiplicativa) o $a - b \in H$ (en notación aditiva).
3. **Demostración de Monomorfismo (Inyectividad) de Homomorfismos:**
    
    - Calcular $\text{Ker}(f) = {x \in G \mid f(x) = e_{G'}}$.
    - Probar que la única solución de la ecuación $f(x) = e_{G'}$ es $x = e_G$, concluyendo que $\text{Ker}(f) = {e_G}$.
4. **Incompatibilidad en Anillos:**
    
    - Recordar que en un anillo unitario, si $a \in A$ es un **divisor de cero** ($a \cdot b = 0$ con $a \neq 0, b \neq 0$), **jamás puede ser invertible** (pues $a^{-1}(ab) = a^{-1}0 \implies 1 \cdot b = 0 \implies b = 0$, lo cual es absurdo).

---

### **2. Batería de Ejercicios Resueltos de Examen (Texto Base)**

#### **Ejercicio 1: Estructura de Grupo Abeliano sobre un Subconjunto de $\mathbb{R}$**

**Enunciado:** En el conjunto de los números reales excluido el menos uno, $G = \mathbb{R} \setminus {-1}$, se define la operación interna: $$a * b = a + b + ab$$

1. Demostrar analíticamente que $*$ es una ley de composición interna en $G$.
2. Demostrar que $(G, *)$ es un grupo abeliano, determinando explícitamente su elemento neutro y el simétrico de un elemento genérico $a \in G$.

- **Resolución Paso a Paso (Estándar UNED):**
    
    1. **Clausura (Operación Interna):**  
        Sean $a, b \in G = \mathbb{R} \setminus {-1}$. Debemos probar que $a * b \neq -1$.  
        Procedemos por reducción al absurdo: supongamos que $a * b = -1$: $$a + b + ab = -1 \iff a + b + ab + 1 = 0 \iff (a + 1) + b(a + 1) = 0 \iff (a + 1)(b + 1) = 0$$ Dado que $\mathbb{R}$ es un cuerpo sin divisores de cero, esto exige que $a + 1 = 0$ o $b + 1 = 0$, lo que implica $a = -1$ o $b = -1$.  
        Pero esto contradice que $a, b \in \mathbb{R} \setminus {-1}$. Por lo tanto, $a * b \neq -1$, lo que prueba que **$*$ es interna en $G$**.
        
    2. **Asociatividad:**  
        Sean $a, b, c \in G$: $$(a * b) * c = (a + b + ab) * c = (a + b + ab) + c + (a + b + ab)c = a + b + c + ab + ac + bc + abc$$ $$a * (b * c) = a * (b + c + bc) = a + (b + c + bc) + a(b + c + bc) = a + b + c + bc + ab + ac + abc$$ Las dos expresiones coinciden para todo $a, b, c \in G$, por lo que **$*$ es asociativa**.
        
    3. **Conmutatividad:**  
        $a * b = a + b + ab = b + a + ba = b * a$. La operación es **conmutativa**.
        
    4. **Elemento Neutro:**  
        Buscamos $e \in G$ tal que $a * e = a$ para todo $a \in G$: $$a + e + ae = a \iff e(1 + a) = 0$$ Como $a \in \mathbb{R} \setminus {-1} \implies 1 + a \neq 0$, dividiendo entre $1 + a$ obtenemos unívocamente **$e = 0$**.  
        Como $0 \in \mathbb{R} \setminus {-1}$, **$e = 0$ es el elemento neutro de $(G, *)$**.
        
    5. **Elemento Simétrico:**  
        Dado $a \in G$, buscamos $a' \in G$ tal que $a * a' = e = 0$: $$a + a' + aa' = 0 \iff a'(1 + a) = -a \iff a' = \frac{-a}{1 + a}$$ Como $a \neq -1$, el denominador no se anula. Comprobamos si $a' = -1$: $$\frac{-a}{1 + a} = -1 \iff -a = -1 - a \iff 0 = -1 \quad (\text{imposible})$$ Luego $a' \in \mathbb{R} \setminus {-1}$. El simétrico existe para todo elemento y es **$a^{-1} = \frac{-a}{1 + a}$**.
        
        **Conclusión:** $(G, *)$ es un **grupo abeliano**. $\blacksquare$
        

---

#### **Ejercicio 2: Verificación de Subgrupo mediante la Proposición 4.14**

**Enunciado:** En el grupo aditivo de los números reales $(\mathbb{R}, +)$, consideramos el subconjunto de los irracionales cuadráticos enteros: $$H = \mathbb{Z}[\sqrt{2}] = {a + b\sqrt{2} \mid a, b \in \mathbb{Z}}$$ Demostrar analíticamente que $H$ es un subgrupo de $(\mathbb{R}, +)$.

- **Resolución Paso a Paso:**
    
    1. **No Vacío:**  
        Para $a = 0, b = 0 \in \mathbb{Z}$, tenemos $0 + 0\sqrt{2} = 0 \in H$. Luego $H \neq \varnothing$ (el elemento neutro de $\mathbb{R}$ pertenece a $H$).
        
    2. **Aplicar la Proposición 4.14 (en notación aditiva: $z_1 - z_2 \in H$):**  
        Sean $z_1, z_2 \in H$. Por definición de $H$, existen enteros $a_1, b_1, a_2, b_2 \in \mathbb{Z}$ tales que: $$z_1 = a_1 + b_1\sqrt{2}, \quad z_2 = a_2 + b_2\sqrt{2}$$ Evaluamos la diferencia de ambos elementos en el grupo $(\mathbb{R}, +)$: $$z_1 - z_2 = (a_1 + b_1\sqrt{2}) - (a_2 + b_2\sqrt{2}) = (a_1 - a_2) + (b_1 - b_2)\sqrt{2}$$ Dado que los números enteros $\mathbb{Z}$ forman un grupo con la suma, la resta de enteros es un entero: $$a_1 - a_2 \in \mathbb{Z} \quad \land \quad b_1 - b_2 \in \mathbb{Z}$$ Por consiguiente, el resultado $z_1 - z_2$ satisface la condición de pertenencia a $\mathbb{Z}[\sqrt{2}]$.
        
    3. **Conclusión:**  
        Por el criterio de la Proposición 4.14, queda demostrado que **$\mathbb{Z}[\sqrt{2}]$ es un subgrupo de $(\mathbb{R}, +)$** ($\mathbb{Z}[\sqrt{2}] \le \mathbb{R}$). $\blacksquare$
        

---

#### **Ejercicio 3: Homomorfismo de Grupos, Núcleo e Inyectividad**

**Enunciado:** Consideremos la aplicación $f: (\mathbb{R}^2, +) \to (\mathbb{R}^2, +)$ definida por: $$f(x, y) = (x + y, 3x + 5y)$$

1. Demostrar que $f$ es un homomorfismo de grupos.
2. Calcular su núcleo $\text{Ker}(f)$ e imagen $\text{Im}(f)$.
3. Determinar si $f$ es un monomorfismo (inyectivo).

- **Resolución Paso a Paso:**
    
    1. **Prueba de Homomorfismo:**  
        Sean $u = (x_1, y_1)$ y $v = (x_2, y_2)$ dos elementos genéricos de $\mathbb{R}^2$.  
        Su suma es $u + v = (x_1 + x_2, y_1 + y_2)$. Evaluamos $f(u + v)$: $$f(u + v) = ((x_1 + x_2) + (y_1 + y_2), 3(x_1 + x_2) + 5(y_1 + y_2))$$ $$= (x_1 + y_1 + x_2 + y_2, 3x_1 + 5y_1 + 3x_2 + 5y_2)$$ $$= (x_1 + y_1, 3x_1 + 5y_1) + (x_2 + y_2, 3x_2 + 5y_2) = f(u) + f(v)$$ Por tanto, **$f$ es un homomorfismo de grupos**.
        
    2. **Cálculo del Núcleo $\text{Ker}(f)$:**  
        Por definición, $\text{Ker}(f) = {(x, y) \in \mathbb{R}^2 \mid f(x, y) = (0, 0)}$. $$\begin{cases} x + y = 0 \ 3x + 5y = 0 \end{cases}$$ De la primera ecuación, $y = -x$. Sustituyendo en la segunda: $$3x + 5(-x) = 0 \iff -2x = 0 \iff x = 0 \implies y = 0$$ Por lo tanto, el núcleo contiene únicamente al elemento neutro del origen: $$\text{Ker}(f) = {(0, 0)}$$
        
    3. **Prueba de Inyectividad:**  
        Por el Teorema 4.40.3, al ser $\text{Ker}(f) = {(0, 0)}$, la aplicación **$f$ es inyectiva (monomorfismo)**.
        
    4. **Cálculo de la Imagen $\text{Im}(f)$:**  
        Dado un par $(a, b) \in \mathbb{R}^2$, resolvemos $f(x, y) = (a, b)$: $$\begin{cases} x + y = a \ 3x + 5y = b \end{cases} \implies x = \frac{5a - b}{2}, \quad y = \frac{b - 3a}{2}$$ Como el sistema tiene solución única para todo $(a, b) \in \mathbb{R}^2$, se deduce que **$\text{Im}(f) = \mathbb{R}^2$**, por lo que $f$ es un **isomorfismo de grupos**.
        

---

#### **Ejercicio 4: Anillos, Divisores de Cero y Elementos Invertibles en $\mathbb{Z}_n$**

**Enunciado:** En el anillo de restos $(\mathbb{Z}_6, +, \cdot) = ({,,,,,}, +, \cdot)$:

1. Determinar los elementos invertibles (unidades) de $\mathbb{Z}_6$.
2. Determinar los divisores de cero de $\mathbb{Z}_6$.
3. Verificar la incompatibilidad entre ser divisor de cero e invertible.

- **Resolución Paso a Paso:**
    
    1. **Elementos Invertibles de $\mathbb{Z}_6$:**  
        Un elemento $[a] \in \mathbb{Z}_n$ es invertible si y solo si $\text{m.c.d.}(a, n) = 1$.  
        Para $n = 6$, los números coprimosis con 6 son 1 y 5:
        
        - $ \cdot = $ (inverso de $$ es $$).
        - $ \cdot = = $ (inverso de $$ es $$).
        - **Unidades de $\mathbb{Z}_6$:** $\mathcal{U}(\mathbb{Z}_6) = {,}$.
    2. **Divisores de Cero de $\mathbb{Z}_6$:**  
        Buscamos elementos no nulos $[a] \neq $ que multiplicados por otro no nulo den $$:
        
        - $ \cdot = $ ($$ y $$ son divisores de cero).
        - $ \cdot = $ ($$ es divisor de cero).
        - $ \cdot = $ ($$ y $$ son divisores de cero).
        - **Divisores de Cero:** ${,,,}$.
    3. **Verificación:**  
        Observamos que ${,} \cap {,,,} = \varnothing$. Ningún divisor de cero es invertible, en perfecta concordancia con el Ejercicio 4.23 del texto base.
        

---

### **3. Ejercicios Seleccionados de la Guía Completa para Trabajo Personal (45 min)**

A partir de la lista de ejercicios recomendados por la **Guía Completa (Curso 2026/2027)** para el **Tema 4**, se aconseja resolver los siguientes problemas del Capítulo 4 del libro base:

1. **Ejercicio 1 del Capítulo 4:** En el conjunto $\mathbb{N}$, se define la operación $a * b = a + b + ab$. Estudiar asociatividad, conmutatividad, elemento neutro y elementos simétricos. _(Atención a las diferencias con el Ejercicio 1 resuelto en $\mathbb{R} \setminus {-1}$)_.
2. **Ejercicio 3 del Capítulo 4:** Demostrar que la intersección de dos subgrupos $H_1, H_2 \le G$ es siempre un subgrupo de $G$.
3. **Ejercicio 6 del Capítulo 4:** Demostrar que el conjunto de las matrices de la forma $\begin{pmatrix} 1 & a \ 0 & 1 \end{pmatrix}$ con $a \in \mathbb{R}$ forma un subgrupo del grupo multiplicativo $GL_2(\mathbb{R})$.

---

### **4. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sea $f: (G, *) \to (G', \circ)$ un homomorfismo entre dos grupos. Al calcular el núcleo de $f$, obtenemos que $\text{Ker}(f) = {e_G}$. ¿Qué conclusión rigurosa se extrae sobre el homomorfismo $f$?

- **A)** Que $f$ es un monomorfismo (aplicación inyectiva).
- **B)** Que $f$ es un epimorfismo (aplicación sobreyectiva).
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Por el Teorema 4.40.3 del texto base de Delgado Pineda y Muñoz Bouzo, un homomorfismo de grupos $f$ es **inyectivo (monomorfismo)** si y solo si su núcleo consta exclusivamente del elemento neutro del grupo origen: $\text{Ker}(f) = {e_G}$.
> - La sobreyectividad no depende del núcleo sino de que la imagen coincida con el codominio ($\text{Im}(f) = G'$).
> - Por lo tanto, la opción **A** es la **correcta**.

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión44_Ejercicios_estructuras_algebraicas.pptx): Maquetada respetando el _AAA_Manual_de_Estilo_Presentaciones_, con el encabezado del Bloque 4, recuadros normativos para los criterios de prueba, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la resolución detallada paso a paso y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión44_Ejercicios_estructuras_algebraicas.m4a): Enfocado en la metodología de resolución de problemas sobre estructuras algebraicas para el examen de desarrollo, las estrategias para probar grupos abelianos, la aplicación fluida de la condición de subgrupo $a * b^{-1} \in H$, la prueba de inyectividad de homomorfismos mediante el núcleo $\text{Ker}(f) = {e_G}$, el análisis de divisores de cero e invertibles en anillos, y las pautas para obtener la máxima puntuación en la redacción formal.