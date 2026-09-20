Para dos proposiciones atómicas $p$ y $q$, existen exactamente **16 conectores o funciones de verdad posibles** ($2^{2^2} = 2^4 = 16$). Esto se debe a que, con dos variables que toman valores en ${1, 0}$ (o ${V, F}$), se generan $4$ combinaciones posibles de entrada ($2^2 = 4$ filas), y cada una de las 16 funciones asigna una combinación única de resultados de 4 bits (desde `0000` hasta `1111`).

A continuación presento la **tabla de verdad completa con los 16 casos** ($C_0$ a $C_{15}$), incluyendo en cada cabecera la notación del conector formal o la expresión lógica correspondiente.

---

### **Tabla de Verdad Completa de las 16 Funciones Bivalentes**

|     |      | $C_0$ | $C_1$ | $C_2$ | $C_3$ | $C_4$ | $C_5$ | $C_6$ | $C_7$ | $C_8$ | $C_9$ | $C_{10}$ | $C_{11}$ | $C_{12}$ | $C_{13}$ | $C_{14}$ | $C_{15}$ |
| :---: | :---: | :--------: | :----------------: | :---------------------: | :--------: | :---------------------: | :--------: | :------------------: | :---------------: | :---------------------: | :--------------------------: | :----------------: | :-----------------: | :----------------: | :-----------------: | :------------------: | :-----------: |
|  $p$  |  $q$  | $0$ | $p \land q$ | $p \land \neg q$ | $p$ | $\neg p \land q$ | $q$ | $p \otimes q$ | $p \lor q$ | $p \downarrow q$ | $p \leftrightarrow q$ | $\neg q$ | $q \to p$ | $\neg p$ | $p \to q$ | $p \mid q$ | $1$ |
| **0** | **0** |     0      |         0          |            0            |     0      |            0            |     0      |          0           |         0         |            1            |              1               |         1          |          1          |         1          |          1          |          1           |       1       |
| **0** | **1** |     0      |         0          |            0            |     0      |            1            |     1      |          1           |         1         |            0            |              0               |         0          |          0          |         1          |          1          |          1           |       1       |
| **1** | **0** |     0      |         0          |            1            |     1      |            0            |     0      |          1           |         1         |            0            |              0               |         1          |          1          |         0          |          0          |          1           |       1       |
| **1** | **1** |     0      |         1          |            0            |     1      |            0            |     1      |          0           |         1         |            0            |              1               |         0          |          1          |         0          |          1          |          0           |       1       |

---

### **Leyenda y Descripción de cada Conector ($C_0$ a $C_{15}$)**

1. **$C_0$ — Contradicción constante ($0$):** Asigna el valor $0$ para cualquier combinación de las variables.
2. **$C_1$ — Conjunción ($p \land q$):** Cierta únicamente si ambas proposiciones son verdaderas ($1$).
3. **$C_2$ — Negación del condicional ($p \land \neg q$):** Cierta solo cuando $p=1$ y $q=0$.
4. **$C_3$ — Afirmación de $p$ (Proyección $p$):** Su valor coincide idénticamente con el de la proposición $p$.
5. **$C_4$ — Negación del condicional inverso ($\neg p \land q$):** Cierta solo cuando $p=0$ y $q=1$.
6. **$C_5$ — Afirmación de $q$ (Proyección $q$):** Su valor coincide idénticamente con el de la proposición $q$.
7. **$C_6$ — Disyunción excluyente / XOR ($p \otimes q$):** Cierta cuando exactamente una de las dos proposiciones es verdadera, pero no ambas.
8. **$C_7$ — Disyunción inclusiva ($p \lor q$):** Cierta si al menos una de las dos proposiciones es verdadera ($1$).
9. **$C_8$ — Negación de la disyunción / NOR / Flecha de Peirce ($p \downarrow q$ o $\neg(p \lor q)$):** Cierta únicamente cuando ambas proposiciones son falsas ($0$).
10. **$C_9$ — Bicondicional / Equivalencia ($p \leftrightarrow q$):** Cierta si ambas proposiciones poseen el mismo valor semántico ($1$ y $1$, o $0$ y $0$).
11. **$C_{10}$ — Negación de $q$ ($\neg q$):** Invierte el valor semántico de la proposición $q$.
12. **$C_{11}$ — Condicional Recíproco ($q \to p$):** Falso únicamente si $q=1$ y $p=0$.
13. **$C_{12}$ — Negación de $p$ ($\neg p$):** Invierte el valor semántico de la proposición $p$.
14. **$C_{13}$ — Condicional / Implicación material ($p \to q$):** Falso únicamente si el antecedente $p$ es verdadero ($1$) y el consecuente $q$ es falso ($0$).
15. **$C_{14}$ — Negación de la conjunción / NAND / Barra de Sheffer ($p \mid q$ o $\neg(p \land q)$):** Falso únicamente si ambas proposiciones son verdaderas ($1$).
16. **$C_{15}$ — Tautología constante ($1$):** Asigna el valor $1$ para cualquier combinación de las variables.

**NOTA IMPORTANTE**: Los conectores **NOR Flecha de Peirce** y **NAND Barra de Sheffer** no están en la bibliografía de la asignatura