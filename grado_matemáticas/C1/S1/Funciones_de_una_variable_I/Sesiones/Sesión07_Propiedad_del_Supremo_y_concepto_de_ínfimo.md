He preparado el desarrollo de la **Sesión 7: Propiedad del Supremo y concepto de ínfimo**. Esta sesión es el eje central que permite diferenciar a los números reales ($\mathbb{R}$) de los racionales ($\mathbb{Q}$), garantizando que en la recta real "no existan huecos".

He activado la creación de la **presentación de apoyo** y el **resumen de audio** (diálogo entre dos expertos) para profundizar en este concepto fundamental del análisis matemático.

---

### Sesión 7: Propiedad del Supremo e Ínfimo (45 minutos)

#### 1. Motivación: El problema de los "huecos" en $\mathbb{Q}$ (5 minutos)

En los números racionales, existen conjuntos acotados que no tienen un extremo dentro de $\mathbb{Q}$. Por ejemplo, el conjunto $A = {x \in \mathbb{Q} : x^2 < 2}$ está acotado superiormente (por el 2, por ejemplo), pero no existe ningún número racional que sea su "menor cota superior", ya que $\sqrt{2}$ no es racional. Los números reales se definen precisamente para solucionar esto mediante el **Axioma del Supremo**.

#### 2. Definiciones Fundamentales (15 minutos)

- **Cota Superior e Inferior:** Un número $z$ es cota superior de un conjunto $E$ si todos los elementos de $E$ son menores o iguales a $z$ ($x \leq z, \forall x \in E$). Análogamente se define la cota inferior.
- **Supremo ($\sup E$):** Es la **menor de las cotas superiores**. Para que un número $a$ sea el supremo, debe cumplir:
    1. Ser cota superior ($x \leq a$ para todo $x \in E$).
    2. Caracterización por $\epsilon$: Para cualquier $\epsilon > 0$, existe al menos un elemento $x \in E$ tal que $x > a - \epsilon$.
- **Ínfimo ($\inf E$):** Es la **mayor de las cotas inferiores**. Cumple que para cualquier $\epsilon > 0$, existe un $x \in E$ tal que $x < \inf E + \epsilon$.

#### 3. El Axioma del Supremo en $\mathbb{R}$ (5 minutos)

Este axioma establece que **todo subconjunto de $\mathbb{R}$ no vacío y acotado superiormente tiene supremo en $\mathbb{R}$**. Esta propiedad es la que otorga **completitud** al cuerpo de los números reales.

#### 4. Práctica: Determinación de Extremos (15 minutos)

**Ejercicio 1:** Considera el conjunto $B = {1/n : n \in \mathbb{N}} = {1, 1/2, 1/3, \dots}$.

- Como $n \geq 1$, entonces $1/n \leq 1$. El 1 es cota superior y, al pertenecer al conjunto, es el **máximo** y, por tanto, el **supremo**.
- A medida que $n$ crece, $1/n$ se acerca a 0 sin tocarlo nunca. El 0 es cota inferior. Usando la propiedad arquimediana, podemos probar que es la mayor cota inferior, luego **$\inf B = 0$**, pero no tiene mínimo porque $0 \notin B$.

**Ejercicio 2:** Sea $A = {x \in \mathbb{R} : x^2 - 5x + 6 < 0}$.

- Factorizamos la inecuación: $(x-2)(x-3) < 0$. Esto ocurre en el intervalo abierto $(2, 3)$.
- Por inspección: **$\inf A = 2$** y **$\sup A = 3$**. Al ser un intervalo abierto, no posee máximo ni mínimo.

#### 5. Conclusión y Herramientas (5 minutos)

Diferenciar entre supremo y máximo es vital: el supremo siempre existe para conjuntos acotados, pero el máximo solo si el supremo pertenece al conjunto. Te sugiero usar **WolframAlpha** con el comando `supremum of {set}` para verificar tus resultados en ejercicios de autocomprobación.

---

**Recursos multimedia generados:**

- **Presentación de Soporte:** Contiene esquemas visuales de cotas superiores e inferiores, la definición analítica con $\epsilon$ y el contraste entre $\mathbb{Q}$ y $\mathbb{R}$.
	![[Sesión07_Propiedad_del_Supremo_y_concepto_de_ínfimo.pptx]]
- **Audio Overview (Diálogo):** Una conversación detallada sobre por qué el supremo es el "pegamento" que une la recta real y cómo evitar confusiones comunes entre supremo, ínfimo, máximo y mínimo.
	![[Sesión07_Propiedad_del_Supremo_y_concepto_de_ínfimo.m4a]]
