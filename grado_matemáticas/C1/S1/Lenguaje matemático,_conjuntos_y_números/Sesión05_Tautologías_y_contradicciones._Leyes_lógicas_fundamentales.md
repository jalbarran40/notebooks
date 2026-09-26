# Sesión 05: Tautologías y contradicciones. Leyes lógicas fundamentales

#### **1. Definiciones Fundamentales**

- **Tautología:** Es una proposición compuesta que resulta ser **verdadera para cualquier combinación** de valores de verdad de las proposiciones simples que la componen. Se suele denotar con el símbolo **1**.
- **Contradicción:** Es una proposición que es **falsa para todos los casos** posibles. Se denota con el símbolo **0**.
- **Contingencia:** Es aquella proposición que puede ser verdadera o falsa dependiendo de los valores de sus componentes (no es ni tautología ni contradicción).

#### **2. Leyes Lógicas de una Proposición**

Existen equivalencias lógicas fundamentales que involucran una sola proposición atómica:

- **Ley de la doble negación:** Negar dos veces una proposición equivale a la proposición original ($\neg(\neg p) \iff p$).
- **Leyes de identidad:** 
	- $p \lor 0 \iff p$
	- $p \land 1 \iff p$
	- $p \rightarrow p \iff 1$ 
	- $p \leftrightarrow p \iff 1$
- **Ley del tercio excluso:** Una proposición o su negación deben ser verdaderas ($p \lor \neg p \iff 1$).
- **Ley de contradicción:** Una proposición y su negación no pueden ser verdaderas al mismo tiempo ($p \land \neg p \iff 0$).

#### **3. Leyes lógicas de 2 proposiciones**

Estas leyes permiten manipular y simplificar expresiones complejas:
- **Leyes de simplificación:** 
	- $p \lor 0 \iff p$
	- $p \land 1 \iff p$
	- $1 \rightarrow p \iff p$
- **Leyes Conmutativas:** El orden no altera el valor en
	- Disyunción: ($p \lor q \iff q \lor p$)
	- Conjunción: ($p \land q \iff q \land p$)
	- Bicondicional: ($p \leftrightarrow q \iff q \leftrightarrow p$)
- **Leyes de Morgan:** Son cruciales para negar conjunciones y disyunciones:
    -  $\neg(p \lor q) \leftrightarrow \neg p \land \neg q$
    - $\neg(p \land q) \leftrightarrow \neg p \lor \neg q$
- **Leyes del condicional:**
	- $p \rightarrow q \iff \neg p \lor q$
	- $p \rightarrow q \iff \neg ( p \land \neg q )$ JMA: Basta aplicar Morgan a la expresión anterior
	- $p \rightarrow q \iff p \leftrightarrow (p \land q)$
	- $p \rightarrow q \iff q \leftrightarrow (p \lor q)$
- **Reducción al absurdo:** $\neg p \rightarrow (q \land \neg q) \iff p$
- **Transposición:
	- $p \rightarrow q \iff \neg q \rightarrow \neg p$
	- $p \leftrightarrow q \iff \neg p \leftrightarrow \neg q$
 
#### **4. Leyes lógicas de 3 proposiciones

- **Leyes Asociativas:** Permiten agrupar de distinta forma tres o más proposiciones conectadas por el mismo operador conjunción, disyunción o bicondicional. **NOTA**: El operador condicional no cumple la propiedad asociativa
	- $( p \lor q ) \lor r \iff p \lor ( q \lor r )$
	- $( p \land q ) \land r \iff p \land ( q \land r)$
	- $( p \leftrightarrow q ) \leftrightarrow r \iff p \leftrightarrow ( q \leftrightarrow r)$
- **Leyes Distributivas:** La conjunción es distributiva respecto a la disyunción y viceversa. El condicional es distributivo respecto a conjunción y disyunción
	- $p \land ( q \lor r ) \iff ( p \land q ) \lor ( p \land r)$
	- $p \lor ( q \land r ) \iff ( p \lor q ) \land ( p \lor r )$
	- $p \rightarrow ( q \lor r ) \iff ( p \rightarrow q ) \lor (p \rightarrow r )$
	- $p \rightarrow ( q \land r ) \iff ( p \rightarrow q ) \land (p \rightarrow r )$

#### **5. Leyes lógicas condicionales (tautologías)**
Usamos símbolo de condicional doble porque asumimos la parte izquierda verdadera
- **Leyes de simplificación condicional:**
	- $p \land q \Longrightarrow p$
	- $p \Longrightarrow (p \lor q)$
- **Leyes de inferencia (silogismos disyuntivos)**
	- $\neg p \land ( p \lor q) \Longrightarrow q$
	- $p \land ( \neg p \lor  \neg q) \Longrightarrow \neg q$
- **Modus ponendo ponens:** $( p \rightarrow q ) \land p \Longrightarrow q$
- **Modus tollendo tollens:** $( p \rightarrow q ) \land \neg q \Longrightarrow \neg p$ 

---
## Materiales de apoyo

- [**Presentación de referencia**]([[Sesión05_Tautologías_y_contradicciones._Leyes_lógicas_fundamentales.pptx]]): Incluye una tabla resumen con todas las leyes lógicas fundamentales y ejemplos visuales de cómo una tabla de verdad identifica una tautología.
- [**Resumen de audio**](Sesión05_Tautologías_y_contradicciones._Leyes_lógicas_fundamentales.m4a): Explica la importancia de estas leyes como "reglas del juego" en matemáticas y cómo las Leyes de Morgan se aplican constantemente en la negación de enunciados científicos.
	