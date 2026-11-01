# Definiciones

## Operación interna
- **Operación interna**: Dado un conjunto no vacío $E$, una **operación interna** (o **ley de composición interna**) en $E$ es una aplicación definida del producto cartesiano $E \times E$ en el propio conjunto $E$: $\begin{aligned} *: E \times E &\longrightarrow E \ (a, b) &\longmapsto a * b \end{aligned}$
- **Propiedades operación interna**
	- **Asociativa**: $\forall a, b, c \in E, \quad (a * b) * c = a * (b * c)$
	- **Conmutativa**: $\forall a, b \in E, \quad a * b = b * a$
- **Elementos de operación interna**
	- **Neutro** ($e$): $\exists e \in E \text{ tal que } \forall a \in E, \quad a * e = e * a = a$. El elemento neutro es único y se demuestra por reducción al absurdo
	- **Simétrico**: Para un elemento $a \in E$, se dice que $a' \in E$ es un **elemento simétrico** de $a$ si cumple $a * a' = a' * a = e$. Si la operación es **asociativa**, es único para cada $a$. Se demuestra por reducción al absurdo

## Grupo
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

# Axiomas y teoremas

## Grupos y subgrupos

### **Teorema de Lagrange (para grupos finitos):**  

Si $G$ es un grupo finito y $H \le G$ es un subgrupo, el orden (número de elementos) de $H$ **divide exactamente al orden de $G$**: $$\text{card}(H) \mid \text{card}(G)$$

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

# Referencias
