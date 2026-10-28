# Definiciones
## Relaciones
- **Relación** o **Correspondencia**: Subconjunto del producto cartesiano: $A \times B$: $R \subseteq A \times B$
- **Relación binaria** u **Homogénea**. Cuando el producto cartesiano es el mismo conjunto: $A \times A$: $R \subseteq A \times A$
- **Conjunto diagonal**: $I_A \text{ o }\Delta_A = {(x, x) \in A \times A \mid x \in A}$
- **Relación recíproca** ó **inversa**: $R^{-1} = {(y, x) \in A \times A \mid (x, y) \in R}$ o bien $y R^{-1} x \iff xRy$
- **Propiedades de las relaciones**
	- **Reflexiva**: $\forall x \in A, \quad xRx$ (**MUY IMPORTANTE**: Para todo!!!). Conjuntista: $\Delta_A \subseteq R$. Negación: $\exists x \in A$ $(x, x) \notin R$ o bien ($x \cancel{R} x$). 
	- **Simétrica**: $\forall x,y \in A, \quad (xRy \implies yRx)$. Conjuntista: $R^{-1} \subseteq R \iff R = R^{-1}$.  Negación: $\exists x, y \in A$ tales que $xRy \land y \cancel{R} x$.
	- **Antisimétrica**: $\forall x, y \in A, \quad ((xRy \land yRx) \implies x = y)$. Contrarrecíproca: $\forall x, y \in A, \quad (x \neq y \implies \neg(xRy \land yRx))$. Conjuntista: $R \cap R^{-1} \subseteq \Delta_A$. Negación: $\exists x, y \in A$ , $(x \neq y \land xRy \land yRx)$
	- **Transitiva:** $\forall x, y, z \in A, \quad ((xRy \land yRz) \implies xRz)$. Conjustista: $R \circ R \subseteq R$. Negación: $\exists x, y, z \in A$ tales que $xRy \land yRz \land x \cancel{R} z$.
	- NOTA: Una relación puede ser Simétrica y Antisimétrica a la vez (sólo hay relaciones de un elemento consigo mismo)
	- **Irreflexiva**: $\forall x \in A, \quad x\cancel{R}x$
	- **Asimétrica**: $\forall x, y \in A, \quad (xRy \implies y \neq x)$
### Relación de equivalencia
- **Relación de equivalencia**: Relación **binaria** en conjunto **no vacío** que cumple las propiedades **Reflexiva, simétrica y transitiva**
- **Clase de equivalencia**: $[x] \text{ o } \mathcal{R}[x] \text{ o }  \bar{x} = \{ y \in U \mid x \mathcal{R} y \}$
- **Representante de la clase de equivalencia**: Cualquier elemento $y$ de la clase de equivalencia
- **Conjunto cociente**: Conjunto de todas las clases de equivalencia generadas por una relación $\mathcal{R}$ en un conjunto $U$: $U/\mathcal{R} =\{[x] \mid x \in U\}$
- **Partición**: Familia de subconjuntos de conjunto A, no vacíos, disjuntos $\forall A, B \in P, \quad (A = B \lor A \cap B = \varnothing)$ y cuya unión completa el conjunto $\bigcup_{A \in P} A = U$.
### Relación de orden
- **Relación de orden**: Relación **binaria** en conjunto **no vacío** que cumple las propiedades **Reflexiva, antisimétrica y transitiva**
- **Conjunto ordenado**: Par conjunto + relación de orden $(A,\leq)$. "*poset*" en Inglés
- **Elementos comparables** $x,y \in A \text{ son comparables } \iff x \leq y \lor y \leq x$ 
- **Orden total**: Todos los elementos son comparables: $\forall x,y \in A \iff x \leq y \lor y \leq x$ 
- **Orden parcial**: Existen elementos no comparables: $\exists x,y \in A, x \not \leq y \land y \not \leq x$
### Relación de orden estricto
- Asociada a relación de orden. Cumple las propiedades **irreflexiva** ($\forall x \in A, \quad x \nless x$), **asimétrica** ($\forall x, y \in A, \quad (x < y \implies y \nless x)$) y **transitiva**

## Cotas
En conjuntos ordenados total o parcialmente. RECORDATORIO: Los conjuntos ordenados son no vacíos y perteneder a un universo U.

- **Cota superior (o inferior)**: Dado conjunto $A \subset U$ Cualquier elemento de U (sea o no sea de A) de forma que todos los elementos de A sean inferiores (o superiores). 
	- Superior:=$u \in U, \forall x \in A, \quad x \le u$ 
	- Inferior:=$u \in U, \forall x \in A, \quad x \ge u$
- **Conjunto acotado**: Superiormente existe al menos una cota superior, inferiormente existe una cota inferior. Acotado existen ambas cotas
- **Máximo (o mínimo)**: Elemento de A que es cota superior (o inferior)
	- **Máximo ($\max(A)$):**=$M \in A \quad \land \quad (\forall x \in A, x \le M)$
	- **Mínimo ($\min(A)$):**=$m \in A \quad \land \quad (\forall x \in A, x \le m)$
- **Supremo (o ínfimos)**: Elemento de U (esté o no en A) que es la menor de las cotas superiores (o la mayor de las inferiores)
	- **Supremo ($\sup(A)$):**=$\min({u \in U \mid u \text{ es cota superior de } A})$
	- **Ínfimo ($\inf(A)$):**=$\max({u \in U \mid u \text{ es cota inferior de } A})$
- **Maximal (o minimal)**: Utilizado en orden parcial. Aquel elemento que no tiene uno mayor (o menor respectivamente) en A.
	- **Maximal**:=$M \in A, \nexists x \in A, \quad (x \neq M \land M \le x)$. En conjunto totalmente ordenado coincidirá con el máximo (si existe). En conjunto parcialmente ordenado, podrá haber múltiples
	- **Minimal**:=$m \in A, \nexists x \in A, \quad (x \neq m \land m \ge x)$. En conjunto totalmente ordenado coincidirá con el máximo (si existe). En conjunto parcialmente ordenado, podrá haber múltiples
- **Cadena**: Subconjunto de un conjunto con orden parcial, donde para este subconjunto es orden total. Dado $(U, \le)$ un conjunto parcialmente ordenado no vacío, se define cadena como un subconjunto no vacío $C \subseteq U$ si la restricción de la relación de orden $\le$ a $C$ es un **orden total** (es decir, todos sus elementos son comparables entre sí): $\forall x, y \in C, \quad (x \le y \lor y \le x)$
	- **Cota superior de la cadena**: Un elemento $u \in U$ es una **cota superior** de la cadena $C$ si satisface $x \preceq u$ para todo $x \in C$.
- **Conjunto inductivo**: Un conjunto parcialmente ordenado $(U, \le)$ es **inductivo** si es no vacío y **toda cadena $C \subseteq U$ posee al menos una cota superior en $U$**.
### Propiedades de las cotas
- **Proposición**
	- Máximo, mínimo, supremo e ínfimo, si existen, son únicos
	- Si existe $\max(A)$ entonces existe $\sup(A)$ y son el mismo $\max(A)=\sup(A)$
	- Si existe $\sup(A)$ y $sup(A)\in A$, entonces existe $\max(A)$ y son el mismo $\sup(A)=\max(A)$
	- Y de forma equivalente para mínimo e ínfimo
- **Propiedad del buen orden**: Conjunto bien ordenado $(A, \preceq)$ o la relación es un buen orden cuando cuando cualquier subconjunto tiene un mínimo
- **Propiedad del supremo**: $\iff$ Conjunto ordenado $(A, \preceq)$ con cota superior tiene supremo (Axima del supremo  en $\mathbb{R}$ - Cualquier conjunto acotado en $\mathbb{R}$ tiene supremo)


## Aplicaciones

- **Aplicación**: Subconjunto del producto cartesiano $f \subseteq A \times B$ tal que $\forall x \in A, \quad \exists! y \in B \text{ tal que } (x, y) \in f$ .
	- IMPORTANTE: Tiene que existir $f(x)$
	- Frente a otras interpretaciones, en esta asignatura _aplicación_ y _función_ son equivalentes
- **Conjunto de aplicaciones**: Conjunto de todas las aplicaciones de $A$ en $B$ se denota por **$\mathcal{F}(A, B)$** o por la notación exponencial **$B^A$**.
- **Dominio**: (conjunto inicial o original). Primer conjunto del producto cartesiano $A=\text{Dom}(f)$
- **Codominino**: (conjunto final). Segundo conjunto del producto cartesiano B
- **Imagen**: Subconjunto de B con aquellos elementos que son imagen de algún elemento de A:  $\text{Im}(f) = f(A) = \{y \in B \mid \exists x \in A, f(x) = y\} = \{f(x) \mid x \in A\} \subseteq B$
	- **Imagen de un subconjunto de A** ($X \subset A$): $f(X) = \{y \in B \mid \exists x \in X, f(x) = y\} = \{f(x) \mid x \in X\} \subseteq B$
	- **Antiimagen/Imagen inversa de un subconjunto de B** ($Y \subset B$): Subconjunto de A cuyo elementos tiene su imagen en dicho subconjunto de B. $f^{-1}(Y) = \{x \in A \mid f(x) \in Y\} \subseteq A$ **IMPORTANTE**: $f^{-1}$ **NO ES UN APLICACIÓN**. Representa un subconjunto. No es aplicación porque $f^{-1}(y)$ puede relacionarse con ninguno, uno o múltiples x elementos de A
### Tipos
- **Inyectiva**: Imágenes distintas implican orígenes distintos. $\forall x, x' \in A, \quad (f(x) = f(x') \implies x = x')$
- **Sobreyectiva/Suprayectiva**: Todo elemento del conjunto final es imagen de algún elemento origen. Codominio coincide con imagen. $\text{Im}(f) = f(A) = B \iff \forall y \in B, \quad \exists x \in A \text{ tal que } f(x) = y$
- **Biyectiva**: Todo elemento del conjunto final es imagen de uno y sólo uno elemento origen. Simultánemante **inyectiva** y **sobreyectiva**. $\forall y \in B, \quad \exists! x \in A \text{ tal que } f(x) = y$
- **Inversa**: En una aplicación biyectiva únicamente. $f^{-1}(y) = x \iff f(x) = y \quad (\forall y \in B, \forall x \in A)$

## Cardinalidad. Conjunto finito e infinito

- **Equiponencia**: Dos conjuntos no vacíos son equipontentes (o coordinables) si existe aplicación biyectiva entre ellos: $A \approx B \iff \exists f: A \to B \text{ tal que } f \text{ es biyectiva}$
- **Cardinal** (o número cardinal):  Dado un conjunto $A$ es la clase de equivalencia abstracta de todos los conjuntos equipotentes a $A$:
$$\text{card}(A) = [A]_\approx = {X \mid X \approx A}$$
- **Conjunto** El conjunto $A$ es:
	- **Finito**: Si es equipotente con conjunto de los n primeros número naturales o vacío. $A \text{ es finito} \iff A = \varnothing \quad \lor \quad \exists n \in \mathbb{N}^*, A \approx \{1, 2, \dots, n\}$
	- **Infinito**: El que no es finito. Caracterización **Dedekind-Cantor**: Existe $B \subset A$ con $B \neq A$ tal que $A \approx B$
	- **Numerable**: Infinito donde existe aplicación biyectiva con $\mathbb{N}$ : $A \text{ es numerable} \iff A \approx \mathbb{N} \iff \exists f: \mathbb{N} \to A \text{ tal que } f \text{ es biyectiva}$
# Axiomas y Teoremas

## Aplicaciones

### **Teorema 3.61 (Existencia de Inversas por la Izquierda y por la Derecha)**

Dada una aplicación $f: A \to B$:

1. $f$ es **sobreyectiva** $\iff$ existe una aplicación $h: B \to A$ tal que $f \circ h = I_B$ _(utiliza el Axioma de Elección)_. NOTA: La inversa es inyectiva y no tiene por qué ser única.
2. $f$ es **inyectiva** $\iff$ existe una aplicación $g: B \to A$ tal que $g \circ f = I_A$. NOTA: La inversa es sobreyectiva y no tiene por qué ser única.

## Equipotencia / Cardinalidad
### **Teorema 3.65 (La Equipotencia como Relación de Equivalencia)**

La relación de equipotencia $\approx$ definida sobre la clase universal de todos los conjuntos es una **relación de equivalencia**, es decir, satisface las propiedades reflexiva, simétrica y transitiva:

1. **Reflexiva ($A \approx A$):**  
    Para todo conjunto $A$, la **aplicación identidad** $I_A: A \to A$ (definida por $I_A(x) = x$) es biyectiva, luego **$A \approx A$**.
2. **Simétrica ($A \approx B \implies B \approx A$):**  
    Si $A \approx B$, existe una biyección $f: A \to B$. Por el Teorema de Caracterización de Inversas, la aplicación inversa $f^{-1}: B \to A$ existe y es también **biyectiva**, lo que implica que **$B \approx A$**.
3. **Transitiva ($A \approx B \land B \approx C \implies A \approx C$):**  
    Si existen biyecciones $f: A \to B$ y $g: B \to C$, la aplicación compuesta $g \circ f: A \to C$ es **biyectiva** (por ser composición de biyecciones), luego **$A \approx C$**.
### **Teorema de Cantor-Bernstein-Schröder**

**Enunciado:** _Sean $A$ y $B$ dos conjuntos. Si existe una aplicación inyectiva de $A$ en $B$ y existe una aplicación inyectiva de $B$ en $A$, entonces existe una aplicación biyectiva entre $A$ y $B$._

$$(\text{card}(A) \le \text{card}(B) \quad \land \quad \text{card}(B) \le \text{card}(A)) \implies \text{card}(A) = \text{card}(B)$$

### **Teorema de Cantor sobre el Conjunto de las Partes**

**Enunciado:** _Para cualquier conjunto $A$, el cardinal del conjunto de sus partes $\mathcal{P}(A)$ es estrictamente mayor que el cardinal de $A$:_

$$\text{card}(A) < \text{card}(\mathcal{P}(A))$$

- **Demostración Analítica Paso a Paso (Método de la Diagonal de Cantor):**
    
    1. **Probar que $\text{card}(A) \le \text{card}(\mathcal{P}(A))$:**  
        Construimos la aplicación $g: A \to \mathcal{P}(A)$ dada por $g(x) = \{x\}$ (asigna a cada elemento su conjunto unitario).  
        Si $g(x) = g(x') \implies {x} = {x'} \implies x = x'$, luego $g$ es **inyectiva**. Por tanto, $\text{card}(A) \le \text{card}(\mathcal{P}(A))$.
        
    2. **Probar que $\text{card}(A) \neq \text{card}(\mathcal{P}(A))$ (Reducción al Absurdo):**  
        Supongamos por reducción al absurdo que existe una aplicación **sobreyectiva** $f: A \to \mathcal{P}(A)$.  
        Definimos el subconjunto "diagonal" de Cantor $D \subseteq A$ mediante: $$D = \{x \in A \mid x \notin f(x)\}$$ Como $D \in \mathcal{P}(A)$ y $f$ es sobreyectiva por hipótesis, debe existir al menos un elemento antecedente $a \in A$ tal que: $$f(a) = D$$ Analizamos la pertenencia del elemento $a$ al subconjunto $D$:
        
        - Si $a \in D \implies a \notin f(a) \implies a \notin D$ (contradicción).
        - Si $a \notin D \implies a \in f(a) \implies a \in D$ (contradicción).
        
        Llegamos a una **contradicción insalvable ($0$)** en ambos casos.
        
    1. **Conclusión:** La suposición de que $f$ es sobreyectiva es falsa, luego no existe ninguna biyección entre $A$ y $\mathcal{P}(A)$. Se concluye que **$\text{card}(A) < \text{card}(\mathcal{P}(A))$**. $\blacksquare$
        

### **Axioma de elección**
- **Enunciado mediante función de elección**: Dada cualquier familia de conjuntos no vacíos $\mathcal{F}$, existe una **función de elección** $f: \mathcal{F} \to \bigcup_{A \in \mathcal{F}} A$ tal que a cada conjunto $A \in \mathcal{F}$ le asigna un elemento perteneciente a dicho conjunto:

$$\forall A \in \mathcal{F}, \quad f(A) \in A$$

### **Lema de Zorn**

- Todo conjunto parcialmente ordenado no vacío e inductivo $(U, \le)$ posee al menos un elemento maximal.

$$(U, \le) \text{ no vacío e inductivo} \implies \exists M \in U \text{ tal que } M \text{ es maximal en } U$$

### **Teorema de la Buena Ordenación (Zermelo)**

Un conjunto $X$ está **bien ordenado** por una relación $\le$ si todo subconjunto no vacío de $X$ posee un **primer elemento (mínimo)**.

> **Teorema de la Buena Ordenación:**  
> _Todo conjunto $X$ se puede dotar de una relación de orden que lo convierte en un conjunto bien ordenado._

# Tablas
## Relaciones de orden
Principales **relaciones de orden** que se estudian en el **Capítulo 3 (Relaciones y Aplicaciones)** del libro de texto base (_Delgado Pineda & Muñoz Bouzo_), junto con sus expresiones formales en LaTeX y una breve explicación conceptual:

|Nombre de la relación|Tipo de orden|Expresión formal|Explicación somera y contexto|
|:--|:-:|:--|:--|
|**Orden Usual / Habitual**|**Total**|En $\mathbb{R}$ (o $\mathbb{N}, \mathbb{Z}, \mathbb{Q}$):$a \le b \iff b - a \ge 0$|Es la ordenación lineal estándar de los sistemas numéricos. Cualquier par de números reales es comparable entre sí.|
|**Inclusión de Subconjuntos**|**Parcial**|En $\mathcal{P}(U)$:$A \subseteq B \iff \forall x , (x \in A \implies x \in B)$|Un subconjunto $A$ precede a $B$ si todos los elementos de $A$ pertenecen a $B$. Es un orden parcial porque hay conjuntos disjuntos o solapados incomparables (ej. ${a}$ y ${b}$).|
|**Orden Lexicográfico**|**Total**|En $\mathbb{R}^2$ (o $\mathbb{R}^n$):$(a, b) \le_L (c, d) \iff (a < c) \lor (a = c \land b \le d)$|Conocido como "orden de diccionario". Compara primero la primera componente; en caso de empate, desempata con la segunda.|
|**Orden Producto (o de Pareto)**|**Parcial**|En $\mathbb{R}^2$ (o $\mathbb{R}^n$):$(a, b) \le_P (c, d) \iff a \le c \land b \le d$|Compara elementos componente a componente. En Economía se conoce como _orden de Pareto_. Si un punto gana en una coordenada pero pierde en otra (ej. $(1,2)$ y $(2,1)$), son incomparables.|
|**Relación "divide a" (Divisibilidad)**|**Parcial**|En $\mathbb{N}^*$:$n \mid m \iff \exists k \in \mathbb{N}^* \text{ tal que } m = k \cdot n$|Un entero $n$ precede a $m$ si $n$ es divisor exacto de $m$. Es parcial porque existen pares no relacionados donde ninguno divide al otro (ej. $2$ y $3$).|
|**Orden de Pseudo-grafo Dirigido**|**Parcial**|En el conjunto de vértices $V$:$x \le_G y \iff \text{existe un camino dirigido de } x \text{ a } y$|Modela la accesibilidad o precedencia de vértices en un grafo con bucles reflexivos. Es el fundamento directo para construir los **Diagramas de Hasse**.|
|**Orden de $n$-uplas / Bytes**|**Parcial**|En ${0, 1}^n$:$(a_1, \dots, a_n) \le (b_1, \dots, b_n) \iff a_i \le b_i \quad \forall i \in {1, \dots, n}$|Es la extensión del orden producto a secuencias de bits o vectores de dimensión $n$. Dos registros son comparables solo si la condición se cumple posición a posición.|
|**Orden Puntual en Funciones / Sucesiones**|**Parcial**|En $\mathcal{F}(A, \mathbb{R})$:$f \le g \iff \forall x \in A, , f(x) \le g(x)$|Una función $f$ precede a $g$ si la gráfica de $f$ se mantiene por debajo o igual a la de $g$ en todo el dominio.|
|**Orden entre Cardinales**|**Total**|Para conjuntos $A$ y $B$:$\text{card}(A) \le \text{card}(B) \iff \exists f: A \to B \text{ inyectiva}$|Mide el "tamaño" o cantidad de elementos entre conjuntos, indicando que $A$ se puede inyectar en $B$.|

---

💡 **Nota metodológica para el examen:** Recuerda que para demostrar si un orden en un conjunto $U$ es **total**, debes verificar que para todo par $x, y \in U$ se cumple $x \preceq y \lor y \preceq x$ (propiedad de comparabilidad o conexitud). Si encuentras al menos un par de elementos **incomparables** (como dos subconjuntos disjuntos o los números $2$ y $3$ en la divisibilidad), el orden se clasifica inmediatamente como **parcial**.


## Caracterización de aplicaciones
![[Repaso_Tema03_Caracterización_de_aplicaciones.png]]
# Referencias:

- [Propiedad arquimediana / Axioma de arquímedes](https://es.wikipedia.org/wiki/Axioma_de_Arqu%C3%ADmedes) Para usar en las demostraciones: Si $y$ es un número real arbitrario y $x>0$ entonces existe un entero positivo $n$  tal que $nx>y$.