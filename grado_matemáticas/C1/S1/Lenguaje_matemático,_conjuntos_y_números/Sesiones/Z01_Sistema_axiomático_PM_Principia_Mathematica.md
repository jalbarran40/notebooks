

Es una forma formalizada de introducir la lógica proposicional dotando a las expresiones de valores semánticos $\{1, 0\}$ a partir de un alfabeto mínimo, axiomas y reglas de inferencia1:

- **Conectores primitivos:** Solo utiliza la negación ($\neg$) y la disyunción ($\lor$). Los demás conectores se definen como abreviaturas sintácticas2:
    - $p \land q \iff \neg(\neg p \lor \neg q)$ 2
    - $p \to q \iff \neg p \lor q$ 2
    - $p \leftrightarrow q \iff (p \to q) \land (q \to p)$ 2
- **Los 4 Axiomas de PM (tautologías primarias no deducibles)** 
    1. $(p \lor p) \to p$
    2. $p \to (p \lor q)$
    3. $(p \lor q) \to (q \lor p)$
    4. $(p \to q) \to [(r \lor p) \to (r \lor q)]$
- **Dos Reglas de Inferencia**
    1. **Regla de sustitución:** Reemplazar una letra por una fórmula bien formada2.
    2. **Regla de separación (Modus Ponens):** Si $S$ y $S \to R$ son teoremas, entonces $R$ es un teorema.