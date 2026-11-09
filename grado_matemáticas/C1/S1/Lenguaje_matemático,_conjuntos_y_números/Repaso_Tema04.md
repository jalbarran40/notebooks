# Definiciones

## Operación interna
- **Operación interna**: Dado un conjunto no vacío $E$, una **operación interna** (o **ley de composición interna**) en $E$ es una aplicación definida del producto cartesiano $E \times E$ en el propio conjunto $E$: $\begin{aligned} *: E \times E &\longrightarrow E \ (a, b) &\longmapsto a * b \end{aligned}$
- **Propiedades operación interna**
	- **Asociativa**: $\forall a, b, c \in E, \quad (a * b) * c = a * (b * c)$
	- **Conmutativa**: $\forall a, b \in E, \quad a * b = b * a$
- **Elementos de operación interna**
	- **Neutro** ($e$): $\exists e \in E \text{ tal que } \forall a \in E, \quad a * e = e * a = a$. El elemento neutro es único y se demuestra por reducción al absurdo
	- **Simétrico**: Para un elemento $a \in E$, se dice que $a' \in E$ es un **elemento simétrico** de $a$ si cumple $a * a' = a' * a = e$. Si la operación es **asociativa**, es único para cada $a$. Se demuestra por reducción al absurdo

## Grupo, Anillo y Cuerpo
### Grupo
- **Grupo**: Par de conjunto no vacío y una operación interna $(G, *)$ que cumple las siguientes propiedades. Nomenclatura alternativa: La operación interna $*: G \times G \to G$  tiene **estructura de grupo**.
	- **Asociativa**: $\forall a, b, c \in E, \quad (a * b) * c = a * (b * c)$
	- **Neutro**: $\exists e \in G \text{ tal que } \forall a \in G, \quad a * e = e * a = a$
	- **Simétrico**: Para todos los elementos del conjunto $\forall a \in G, \quad \exists a' \in G \text{ tal que } a * a' = a' * a = e$
- **Grupo conmutativo** (O abeliano): Grupo que además cumple la propiedad **conmutativa**: $\forall a, b \in G, \quad a * b = b * a$
- **Subgrupo**: Subconjunto del grupo que es a la vez grupo para la misma operación y **para los elementos del subconjunto**. Dado un grupo $(G, *)$ y un subconjunto no vacío $H \subseteq G$, se dice que **$H$ es un subgrupo de $G$** (y se denota por **$H \le G$**) si el par $(H, *)$ es a su vez un grupo con la misma operación $*$ restringida a los elementos de $H$.
	- **Subgrupo trivial**: $H=\{e\}$ y $H=G$
	- **Subgrupo propio**: Cualquier subgrupo no trivial
- **Relación de congruencia**: Sea $(G, *)$ un grupo y $H \le G$ un subgrupo. Se define en $G$ la **relación de congruencia por la izquierda módulo $H$** mediante:
	$$\text{Dados } a,b \in G, a \mathcal{R}_H b \iff a * b^{-1} \in H \quad (\text{en notación aditiva: } a - b \in H)$$
	- **Proposición**: Las relaciones de congruencia son de equivalencia en G, y dan lugar a clases de equivalencia. La del elemento neutro es el propio conjunto H.
### Anillo
- **Anillo**: Conjunto no vacío dotado de dos operaciones internas, de forma que con la primera conforma un **grupo abeliano**, la segunda es asociativa y se cumple la propiedad distributiva de la segunda frente a la primera tanto por la derecha como por la izquierda (definición axiomática)
	- **Conmutativo**: La segunda operación es conmutativa
	- **Unitario**: La segunda operación tiene elemento neutro (distinto del neutro de la primera operación)
		- **Elemento invertible**: Elemento de un anillo unitario que tiene simétrico con respecto a la segunda operación.
- **Divisor de cero** Un elemento del conjunto es divisor de cero si, siendo distinto de cero (=elemento neutro de la primera operación), existe otro elemento del conjunto tal que operados por la segunda operación *por la derecha o por la izquierda*, su resultado es cero. En un anillo $(A, +, \cdot)$, se dice que un elemento no nulo $a \in A$ ($a \neq 0$) es un **divisor de cero** si existe otro elemento no nulo $b \in A$ ($b \neq 0$) tal que su producto es el elemento nulo: $a \cdot b = 0 \quad \lor \quad b \cdot a = 0$ (por la derecha o por la izquierda)
- **Anillo integro**: Aquel que no posee divisores de cero
- **Subanillo**: Subconjunto del anillo que es subgrupo con respecto a la primera operación $a - b \in H$ y mantiene clausura respecto a la segunda $a \cdot b \in H$.
- **Ideal**: Subanillo $I \subseteq A$ que cumple la propiedad de absorción (al operar con el conjunto original, los resultados siempre caen en el subconjunto). $\forall a \in I, \quad \forall c \in A, \quad a \cdot c \in I$
- **Ideal principal**: Ideal generado a partir de los múltiplos de un elemento $a \in A$ $: (a) = aA = \{a \cdot k \mid k \in A\}$
- **Elemento absorbente** (o elemento cero): Elemento que al operarlo con cualquier otro da como resultado el propio elemento. Dada una estructura algebraica formada por un conjunto $E$ y una ley de composición interna $*: E \times E \to E$, un elemento $z \in E$ se denomina **elemento absorbente** (o **elemento cero**) respecto de la operación $*$ si, al operarlo con cualquier elemento del conjunto, el resultado es el propio elemento $z$.

### Cuerpo
- **Cuerpo**:  Anillo conmutativo unitario (con elemento simétrico) integro (sin divisores de cero) en el que todo elemento no nulo es invertible respecto del producto: $(\mathbb{K}, +, \cdot) \text{ es un cuerpo} \iff (\mathbb{K}, +, \cdot) \text{ es anillo conmutativo unitario} \quad \land \quad (\forall a \in \mathbb{K} \setminus \{0\}, \exists a^{-1} \in \mathbb{K})$
	- Caracterización
		- **$(\mathbb{K}, +)$ es un grupo abeliano** (con neutro $0$).
		1. $(\mathbb{K}^*, \cdot)$ **es un grupo abeliano** (donde $\mathbb{K}^* = \mathbb{K} \setminus \{0\}$, con neutro $1$).
		2. **El producto $\cdot$ es distributivo respecto de la suma $+$**.
## Homomorfismos

- **Homomorfismo (general)**: Aplicación entre dos conjuntos dotados de operación interna $f: (E, *) \to (E', \circ)$ que satisface $f(a * b) = f(a) \circ f(b)$.
	- **Homomorfismo de grupo**: Es el caso **particular** en el que $(G, *)$ y $(G', \circ)$ **además son grupos**. Al ser grupos, se deducen automáticamente dos propiedades adicionales:
		- Conserva el neutro: $f(e_G) = e_{G'}$.
		- Conserva los elementos simétricos/opuestos: $f(a^{-1}) = (f(a))^{-1}$
	- **Homomorfismo de anillo**: - Cuando las estructuras poseen dos operaciones internas $(A, +, \cdot)$ y $(A', +, \cdot)$ y forman anillo, un homomorfismo exige conservar **ambas operaciones**4:
	    - $f(a + b) = f(a) + f(b)$
	    - $f(a \cdot b) = f(a) \cdot f(b)$
	- **Homomorfismo de cuerpos:** Es un homomorfismo de anillos donde ambas estructuras son cuerpos5.
	- **Homomorfismo de Estructuras de Orden (pág. 150):** Conserva la relación de orden: $u \le u' \implies f(u) \le f(u')$.
- **Endomorfismo:** Es un homomorfismo donde el conjunto de partida y el de llegada coinciden ($G = G'$).
- **Monomorfismo:** Es un homomorfismo **inyectivo** (elementos distintos tienen imágenes distintas).
- **Epimorfismo:** Es un homomorfismo **sobreyectivo** ($\text{Im}(f) = G'$).
- **Isomorfismo:** Es un homomorfismo **biyectivo** (inyectivo y sobreyectivo). 
- **Grupos isomorfos**: Dos grupos $G$ y $G'$ son **isomorfos** (denotado $G \cong G'$) si existe al menos un isomorfismo entre ellos.
- **Automorfismo:** Es un endomorfismo **biyectivo** (un isomorfismo de un grupo en sí mismo, $f: G \to G$).
- **Imagen**: Subconjunto de $G'$ formado por los elementos que son imagen de al menos un elemento de $G$: $\text{Im}(f) = f(G) = \{y \in G' \mid \exists x \in G, f(x) = y\} \le G'$
- **Núcleo**: Subconjunto de $G$ formado por todos los elementos cuya imagen mediante $f$ es el elemento neutro $e_{G'}$ de $G'$: $\text{Ker}(f) = \{x \in G \mid f(x) = e_{G'}\} = f^{-1}(\{e_{G'}\}) \le G$
- **Subgrupo Normal:** $\text{Ker}(f)$ no solo es un subgrupo de $G$, sino que es un **subgrupo normal** (o invariante) de $G$ (es decir, $\forall g \in G, g * \text{Ker}(f) * g^{-1} \subseteq \text{Ker}(f)$).
# Axiomas y teoremas

## Grupos, anillos y cuerpos

### **Teorema de Lagrange (para grupos finitos):**  

Si $G$ es un grupo finito y $H \le G$ es un subgrupo, el orden (número de elementos) de $H$ **divide exactamente al orden de $G$**: $$\text{card}(H) \mid \text{card}(G)$$
### **Teorema de Caracterización de Inyectividad**

> **Teorema 4.40.3 (Caracterización de Monomorfismos):**  
> _Un homomorfismo de grupos $f: G \to G'$ es **inyectivo** (monomorfismo) si y solo si su núcleo consta únicamente del elemento neutro de $G$:_ 

### **Proposición (Ejercicio 4.23 del Texto Base - Incompatibilidad entre Invertible y Divisor de Cero):**

_En un anillo unitario $(A, +, \cdot)$, si un elemento $a \in A$ es un divisor de cero, entonces **$a$ no puede ser invertible**. En consecuencia, ningún elemento invertible de un anillo puede ser divisor de cero._

- **Demostración Analítica Paso a Paso (Examen de Desarrollo UNED):**
    
    1. Procedemos por **reducción al absurdo**. Supongamos que $a \in A$ es un divisor de cero que además es **invertible**.
    2. Como $a$ es divisor de cero, por definición existe un elemento $b \in A$ con **$b \neq 0$** tal que: $$a \cdot b = 0$$
    3. Como $a$ es invertible por hipótesis, existe su inverso multiplicativo $a^{-1} \in A$. Multiplicamos la igualdad anterior por $a^{-1}$ a la izquierda: $$a^{-1} \cdot (a \cdot b) = a^{-1} \cdot 0$$
    4. Aplicando la propiedad **asociativa del producto** a la izquierda y sabiendo que $a^{-1} \cdot 0 = 0$ (propiedad absorbente del cero): $$(a^{-1} \cdot a) \cdot b = 0$$
    5. Como $a^{-1} \cdot a = 1$ (elemento unidad): $$1 \cdot b = 0 \implies b = 0$$
    6. Llegamos a la **contradicción de que $b = 0$**, en contra de la elección inicial de $b \neq 0$.
    7. **Conclusión:** Ningún divisor de cero es invertible. $\blacksquare$

# Tablas

## Propiedades de las operaciones / ejemplos

| Conjunto $E$                                     | Operación $*$                 |         ¿Asociativa?          | ¿Conmutativa? |   Elemento Neutro $e$    |                           Elementos con Simétrico $a'$                            |
| :----------------------------------------------- | :---------------------------- | :---------------------------: | :-----------: | :----------------------: | :-------------------------------------------------------------------------------: |
| $\mathbb{N}, \mathbb{Z}, \mathbb{Q}, \mathbb{R}$ | Suma usual $+$                |              Sí               |      Sí       |           $0$            | En $\mathbb{N}$: solo $0$. En $\mathbb{Z}, \mathbb{Q}, \mathbb{R}$: todos ($-a$). |
| $\mathbb{N}, \mathbb{Z}, \mathbb{Q}, \mathbb{R}$ | Producto usual $\cdot$        |              Sí               |      Sí       |           $1$            | En $\mathbb{Z}$: solo $1$ y $-1$. En $\mathbb{Q}^*, \mathbb{R}^*$: todos ($1/a$). |
| $\mathbb{Z}, \mathbb{R}$                         | Resta $-$                     | **No** $(9-5)-1 \neq 9-(5-1)$ |    **No**     |      **No existe**       |                                    No aplica.                                     |
| $\mathcal{P}(\Omega)$                            | Intersección $\cap$           |              Sí               |      Sí       |   $\Omega$ (Universo)    |                     Solo $\Omega$ (su simétrico es $\Omega$).                     |
| $\mathcal{P}(\Omega)$                            | Unión $\cup$                  |              Sí               |      Sí       |  $\varnothing$ (Vacío)   |                Solo $\varnothing$ (su simétrico es $\varnothing$).                |
| $\mathcal{P}(\Omega)$                            | Diferencia simétrica $\Delta$ |              Sí               |      Sí       |      $\varnothing$       |   **Todos** (cada conjunto es su propio simétrico: $A \Delta A = \varnothing$).   |
| $\mathcal{F}(\Omega)$                            | Composición $\circ$           |              Sí               |    **No**     |  $I_\Omega$ (Identidad)  |              Únicamente las **aplicaciones biyectivas** ($f^{-1}$).               |
| $M_n(\mathbb{R})$                                | Producto matricial            |              Sí               |    **No**     | $I_n$ (Matriz Identidad) |            Únicamente las **matrices invertibles** ($\det(A) \neq 0$).            |
## Ejemplos de subgrupos

- **Enteros múltiplos de $n$ $(n\mathbb{Z}, +)$**: Dado $n \in \mathbb{N}^*$, consideramos el conjunto de los múltiplos enteros de $n$: $n\mathbb{Z} = \{kn \mid k \in \mathbb{Z}\} = \{\dots, -2n, -n, 0, n, 2n, \dots\}$
- **Números Irracionales Quadraticos $\mathbb{Z}[\sqrt{2}]$**: Consideramos el conjunto $\mathbb{Z}[\sqrt{2}] = \{a + b\sqrt{2} \mid a, b \in \mathbb{Z}\}$ con la suma de números reales.

## Demostraciones habituales

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
    - Calcular $\text{Ker}(f) = \{x \in G \mid f(x) = e_{G'}\}$.
    - Probar que la única solución de la ecuación $f(x) = e_{G'}$ es $x = e_G$, concluyendo que $\text{Ker}(f) = {e_G}$.
4. **Incompatibilidad en Anillos:**
    - Recordar que en un anillo unitario, si $a \in A$ es un **divisor de cero** ($a \cdot b = 0$ con $a \neq 0, b \neq 0$), **jamás puede ser invertible** (pues $a^{-1}(ab) = a^{-1}0 \implies 1 \cdot b = 0 \implies b = 0$, lo cual es absurdo).

# Referencias
