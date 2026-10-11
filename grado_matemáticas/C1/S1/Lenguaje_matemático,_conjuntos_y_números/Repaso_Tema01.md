# Conceptos y nomenclatura
## Proposiciones y predicados
- **Proposición**: Describe un valor o propiedad, sintácticamente correcta, y se puede determinar su veracidad o falseda. Sólo puede ser V ó F
- **Predicado**: Describe un valor o propiedad, pero depende de elementos externos
## Conectores
- **Conjunción**: $\land$ Valor "AND": Ambas proposiciones deben ser verdaderas
- **Disyunción inclusiva**: $\lor$ Valor "OR": Una o ambas proposiciones deben ser verdaderas
- **Disyunción exclusiva (no la usamos aquí)**: $\oplus$ Valor "XOR": Una de proposición debe ser verdadera y la otra falsa.
- **Implicación**: $\to$ "IMPLIES": Verdadera cuando el antecedentes es falso (vacuo) o bien, si el antecedente es verdadero y el consecuente también.
- **Equivalencia**: $\leftrightarrow$ "EQUIV": Verdadera cuando antecedente y consecuente tienen el mismo valor
- Implicación verdadera: $\Longrightarrow$: Es una implicación, donde ya asumimos el antecedente verdadero
- Equivalencia verdadera: $\Longleftrightarrow$ Equivalencia cuando asumimos que ambos extremos son verdaderos
## Condicional: $p \to q$
- **Recíproco**: $q \to p$
- **Contrario**: $\neg p \to \neg q$
- **Contrarreciproco** (el usado en demostraciones): $\neg q \to \neg p$
## Métodos de demostración
1. **Deducción directa / Transitividad lógica** $(p \to q) \to (q \to r) \Rightarrow (p \to r)$
2. **Reducción al absurdo**: $\neg p \to ( q \land \neg q) \Rightarrow p$
3. **Contrarecíproco/Transposición**: $(p \to q) \Longleftrightarrow (\neg q \to \neg p)$
4. **Refutación por contraejemplo**: $\neg (\forall x \in C, P_x) \Longleftrightarrow \exists x \in C, \neg P_x$
5. **Formal normal clausulada**: Previo en expresiones o demostraciones complejs

| Método            | ¿Cuándo?                                                           | Se asume                         | Se busca                                     |
| ----------------- | ------------------------------------------------------------------ | -------------------------------- | -------------------------------------------- |
| Deducción directa | Implicaciones limpias, axiomas y fórmulas conocidas                | Premisas verdaderas ($\equiv 1$) | Consecuente verdadero ($\equiv 1$)           |
| Contrarrecíproco) | Consecuente negativo o complejo ("no es...", "es irracional")      | Negación del consecuente         | Negación del antecedente                     |
| Absurdo           | Igualdades absolutas, unicidad, infinitud                          | Enunciado total es falso         | Colisión semántica $\equiv (p \land \neg p)$ |
| Contraejemplo     | Enunciados que empiezan por $\forall$ y sospechamos que son falsos | Se busca al "infractor"          | Generar valor semántico $\equiv 0$           |


