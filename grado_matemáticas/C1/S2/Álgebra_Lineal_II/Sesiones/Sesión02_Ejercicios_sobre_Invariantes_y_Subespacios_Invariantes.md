Para esta **Sesión 2**, que es de carácter **práctico (P)**, nos enfocaremos en aplicar los conceptos de la sesión anterior: **invariantes lineales** (rango, traza, determinante) y **subespacios invariantes**. El objetivo es que desarrolles la habilidad de identificar cuándo dos matrices pueden representar el mismo endomorfismo y cómo se comportan los subespacios bajo dicha aplicación.

---

# Sesión 2 (P): Ejercicios sobre Invariantes y Subespacios Invariantes

Esta sesión está diseñada para una duración de **45 minutos**. Te recomiendo tener a mano **wxMaxima** o **WolframAlpha** para agilizar los cálculos matriciales.

### 1. Invariantes Clásicos y Semejanza (15 min)

Recuerda que dos matrices $A$ y $B$ son **semejantes** (representan al mismo endomorfismo) si existe una matriz invertible $P$ tal que $B = P^{-1}AP$. Una condición necesaria es que compartan rango, traza y determinante.

**Ejercicio 1.1:** Dadas las matrices: $$A = \begin{pmatrix} 1 & -6 \ -2 & 12 \end{pmatrix}, \quad B = \begin{pmatrix} 2 & 3 \ -2 & -2 \end{pmatrix}$$

1. Calcula la traza y el determinante de ambas.
2. ¿Son estas matrices semejantes? Justifica tu respuesta basándote en los invariantes calculados.

**Ejercicio 1.2:** Si sabes que un endomorfismo en $\mathbb{R}^2$ tiene traza 5 y determinante 4, ¿es diagonalizable? (Pista: construye el polinomio característico $P(\lambda) = \lambda^2 - \text{tr}(f)\lambda + \text{det}(f)$ y comprueba si tiene raíces reales distintas).

### 2. Identificación de Subespacios Invariantes (15 min)

Un subespacio $W$ es **f-invariante** si para todo vector $w \in W$, su imagen $f(w)$ también pertenece a $W$.

**Ejercicio 2.1:** Sea $f: \mathbb{R}^3 \to \mathbb{R}^3$ un endomorfismo cuya matriz en la base canónica es: $$M = \begin{pmatrix} 2 & 0 & -1 \ 0 & 2 & 2 \ 0 & 0 & 2 \end{pmatrix}$$ Comprueba si el subespacio $W$ generado por el vector $u = (1, 0, 0)$ es invariante. _Instrucción:_ Calcula $M \cdot u^t$ y verifica si el resultado es proporcional a $u$.

**Ejercicio 2.2:** Demuestra teóricamente que para cualquier endomorfismo $f$, los subespacios $\text{ker}(f)$ (núcleo) e $\text{im}(f)$ (imagen) son siempre invariantes.

### 3. Uso de Herramientas Analíticas (15 min)

**Actividad:** Utiliza **WolframAlpha** para verificar los resultados del Ejercicio 1.1.

- Introduce: `trace {{1, -6}, {-2, 12}}` y `det {{1, -6}, {-2, 12}}`.
- Compara con los valores de la matriz $B$.

---

### Test de Seguimiento (Autoevaluación)

1. Si dos matrices tienen el mismo determinante y traza, ¿son obligatoriamente semejantes?
2. ¿Qué ocurre con la imagen de un subespacio invariante bajo el endomorfismo?
3. ¿Es el espacio total $V$ siempre un subespacio invariante?.

---

He solicitado la creación de los materiales complementarios (podcast y presentación) que se están generando en este momento.

- **Podcast:** Una conversación detallada sobre cómo usar los invariantes para descartar la semejanza de matrices y la importancia visual de los subespacios que "no se mueven" de su sitio.
- **Presentación:** Un resumen visual de los pasos para resolver ejercicios de invarianza y una guía rápida de comandos para WolframAlpha/wxMaxima aplicados a esta sesión.

Aquí tienes el material para la **Sesión 2**. En esta ocasión, pasamos de la teoría a la acción con ejercicios prácticos sobre invariantes y subespacios.

Como parte de tu formación personalizada, he generado dos recursos adicionales que te ayudarán a consolidar lo aprendido hoy:

1. **Podcast (Resumen de audio):** Una conversación entre dos expertos que profundiza en la aplicación práctica de la traza, el determinante y el rango para clasificar matrices, además de discutir la "geometría" detrás de los subespacios que permanecen en su sitio.![[Sesión02_Ejercicios_sobre_Invariantes_y_Subespacios_Invariantes.m4a]]
2. **Presentación (PowerPoint):** Un soporte visual que resume los criterios de semejanza y los pasos algorítmicos para verificar la invarianza de un subespacio, ideal para repasar antes de enfrentarte a los problemas.
![[Sesión02_Ejercicios_sobre_Invariantes_y_Subespacios_Invariantes.pptx]]

Recuerda que para los ejercicios de cálculo de matrices de gran tamaño, el uso de **WolframAlpha** o **wxMaxima** es muy recomendable para evitar errores aritméticos y centrarte en la comprensión conceptual.

¡Mucho ánimo con la práctica! Si tienes cualquier duda con los ejercicios de proporcionalidad de vectores o los cálculos de invariantes, no dudes en preguntarme.