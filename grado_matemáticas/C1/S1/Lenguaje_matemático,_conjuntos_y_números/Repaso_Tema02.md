# Definiciones

- **Universo del predicado ($C$):** Es el conjunto no vacío de objetos sobre el cual opera la variable de un predicado.
- **Predicado ($P_x$ o $P(x)$):** Es una propiedad o condición referida a una variable genérica $x \in C$. Se convierte en una proposición lógica (con valor semántico $1$ o $0$) al sustituir $x$ por un elemento particular de $C$.
- **Extensión del predicado ($C_p$)**: Dado un predicado $P$ sobre un universo $C$, el subconjunto formado por todos los elementos de $C$ que satisfacen la propiedad $P$ $C_P = {x \in C \mid P_x}$
- **Cuantificador universal ($\forall$)**: La expresión $(\forall x \in C) P_x$ es una proposición que es verdadera ($1$) si **todos** los elementos del universo $C$ satisfacen el predicado $P_x$. $(\forall x \in C) P_x \iff C_P = C$
- **Cuantificador Existencial ($\exists$)**: La expresión $(\exists x \in C) P_x$ es una proposición que es verdadera ($1$) si existe **al menos un elemento** en $C$ que satisface el predicado $P_x$. $(\exists x \in C) P_x \iff C_P \neq \varnothing$
- **Conjuntos disjuntos**: $A \cap B = \varnothing$

# Operaciones de conjuntos
- **Unión**: 
	- $A \cup B = \{x \in U \mid x \in A \lor x \in B\}$ 
	- $x \in (A \cup B) \iff (x \in A \lor x \in B)$
- **Intersección**: 
	- $A \cap B = \{x \in U \mid x \in A \land x \in B\}$
	- $x \in (A \cap B) \iff (x \in A \land x \in B)$
- **Diferencia**:
	- $A \setminus B = \{x \in U \mid x \in A \land x \notin B\}$
	- $x \in (A \setminus B) \iff (x \in A \land \neg(x \in B))$
- **Complementario**
	- $\overline{A} = A^C = \{x \in U \mid x \notin A \}$ 
	- $x \in \overline{A} \iff ( x \in U \land \neg (x \in A ))$ 

# Método de inducción


1. **Declaración del Predicado $P(n)$:** Definir con precisión la igualdad o desigualdad lógica sobre el **dominio de índices** (p. ej., $n \in \mathbb{N}^* = {1, 2, 3, \dots}$ o $n \ge n_0$).
2. **Base Inductiva:** Comprobar numéricamente la veracidad de $P(n_0)$ para el primer elemento del conjunto de índices.
3. **Paso Inductivo ($P(n) \implies P(n+1)$):**
    - **Hipótesis de Inducción (H.I.):** Asumir explícitamente que $P(n)$ es cierto para un entero fijo $n \ge n_0$.
    - **Tesis Inductiva:** Demostrar que $P(n+1)$ es verdadero utilizando **necesaria y explícitamente** la Hipótesis de Inducción.
4. **Conclusión:** Invocar el **Principio de Inducción Matemática** para afirmar la validez universal de la propiedad.
# Tablas
## Lógica Proposicional vs. Teoría de conjuntos

| Lógica proposicional          | Teorías de conjuntos                                               |
| ----------------------------- | ------------------------------------------------------------------ |
| Disyunción inclusiva ($\lor$) | Unión ($\cup$)                                                     |
| Conjunción ($\land$)          | Intersección ($\cap$)                                              |
| Negación ($\neg$)             | Diferencia ($\setminus$) o Complementario ($A^C$ o $\overline{A}$) |
| Implicación ($\to$)           | Inclusión ($\subseteq$)                                            |
| Contradicción (F ó 0)         | Conjunto vacío ($\varnothing$)                                     |
| Tautología (T ó 1)            | Universo ($U$)                                                     |
