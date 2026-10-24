# **SESIÓN 60 (SÍNTESIS): REPASO FINAL, CATÁLOGO DE ERRORES DE REDACCIÓN Y ESTRATEGIA DE EXAMEN**

**Duración recomendada:** 45 minutos  
**Bloque:** REPASO FINAL Y EVALUACIÓN  
**Objetivo:** Integrar la visión panorámica de los 6 bloques temáticos del curso, dominar el catálogo de los 10 errores de rigor sintáctico y redacción lógica más frecuentes en los exámenes de desarrollo de la UNED, consolidar la estructura formal en 4 pasos para la redacción de demostraciones y fijar la estrategia táctica para la Prueba Presencial (120 min) y la PEC telemática.

---

### **1. Síntesis Panorámica de la Asignatura (Hilo Conductor por Bloques)**

El objetivo fundamental de esta asignatura es capacitarte para realizar la **transición del lenguaje natural e informal al lenguaje formal de la matemática pura**, caracterizado por la precisión sintáctica, la ausencia de ambigüedades y la deducción lógica rigurosa.

```
       [Bloque 1: Lógica Proposicional]  ──>  [Bloque 2: Teoría de Conjuntos]
                       │                                    │
                       ▼                                    ▼
       [Bloque 3: Relaciones y Aplicaciones] <── [Bloque 4: Estructuras Algebraicas]
                       │                                    │
                       ▼                                    ▼
       [Bloque 5: Sistemas Numéricos (N, Z)] ──> [Bloque 6: Reales (R) y Complejos (C)]
```

1. **Bloque 1 (Lógica):** Otorga las herramientas de deducción (tablas de verdad, tautologías, Leyes de De Morgan, Forma Clausulada/FNC, y métodos de demostración: directa, absurdo, contrarrecíproco y contraejemplo).
2. **Bloque 2 (Conjuntos e Inducción):** Define la pertenencia ($\in$), la inclusión ($\subseteq$), el álgebra de conjuntos, el conjunto de las partes $\mathcal{P}(A)$, el producto cartesiano $A \times B$ y el Principio de Inducción Matemática basado en los Axiomas de Peano.
3. **Bloque 3 (Relaciones, Aplicaciones y Cardinales):** Formaliza las relaciones binarias (equivalencia y orden), el conjunto cociente $U/\mathcal{R}$, los tipos de aplicaciones (inyectiva, sobreyectiva, biyectiva), la composición, las inversas y la jerarquía de cardinales infinitos ($\aleph_0$ y $\mathfrak{c}$) mediante el argumento diagonal de Cantor.
4. **Bloque 4 (Estructuras Algebraicas):** Estudia las leyes de composición interna y las estructuras con una o dos operaciones: Grupos $(G, *)$, Subgrupos ($a * b^{-1} \in H$), Homomorfismos ($\text{Ker}(f)$ e $\text{Im}(f)$), Anillos e Ideales, y Cuerpos conmutativos.
5. **Bloque 5 (Sistemas Numéricos $\mathbb{N}$ y $\mathbb{Z}$):** Construcción axiomática de $\mathbb{N}$ y de $\mathbb{Z}$ mediante clases de equivalencia de pares $[(a, b)]$, Teorema de la División Entera con restos no negativos ($0 \le r < |b|$), Algoritmo de Euclides, Identidad de Bézout, Ecuaciones Diofánticas y el Teorema Fundamental de la Aritmética.
6. **Bloque 6 (Reales y Complejos):** Definición axiomática de $\mathbb{R}$ mediante el Axioma del Supremo, caracterización $\varepsilon$, completitud y densidad, y el cuerpo de los números complejos $\mathbb{C}$ (forma binómica, polar, exponencial $r e^{i\theta}$, Fórmula de Euler, De Moivre, raíces $n$-ésimas y aplicaciones geométricas).

---

### **2. Catálogo de los 10 Errores de Rigor Sintáctico más Frecuentes en la UNED**

A partir de la revisión de exámenes presenciales de años anteriores, hemos elaborado el catálogo de los **10 errores formales más penalizados por los correctores**:

#### **ERROR 1: Confusión entre Pertenencia ($\in$) e Inclusión ($\subseteq$)**

- ❌ **Incorrecto:** Escribir ${2} \in \mathbb{R}$ o escribir $3 \subseteq \mathbb{Z}$.
- 💡 **Explicación:** El símbolo de pertenencia ($\in$) relaciona un **elemento con un conjunto**. El símbolo de inclusión ($\subseteq$) relaciona **dos conjuntos**.
- ✅ **Correcto (UNED):** $2 \in \mathbb{R}$, ${2} \subseteq \mathbb{R}$ y $\varnothing \subseteq A$ para todo conjunto $A$.

---

#### **ERROR 2: Olvido de Cuantificadores o Variables "Sueltas"**

- ❌ **Incorrecto:** Escribir $x^2 \ge 0 \implies x \in \mathbb{R}$ o definir un conjunto como $C = {x \in \mathbb{R} = \frac{1}{n}, n \in \mathbb{N}^*}$.
- 💡 **Explicación:** Toda variable en una demostración o definición debe estar explícitamente cuantificada mediante $\forall$ (para todo) o $\exists$ (existe).
- ✅ **Correcto (UNED):** $\forall x \in \mathbb{R}, x^2 \ge 0$, o definir por generador $C = {\frac{1}{n} \mid n \in \mathbb{N}^*}$.

---

#### **ERROR 3: Uso de la Coma (`,`) como Conector Lógico**

- ❌ **Incorrecto:** Escribir en una prueba: $f(x) = f(x'), x = x'$ o escribir $x \in A, x \in B$.
- 💡 **Explicación:** La coma no es un conector lógico. Deben usarse los conectores proposicionales oficiales: conjunción ($\land$), disyunción ($\lor$), condicional ($\implies$) o bicondicional ($\iff$).
- ✅ **Correcto (UNED):** $f(x) = f(x') \implies x = x'$, o bien $(x \in A) \land (x \in B)$.

---

#### **ERROR 4: Restos Negativos en el Algoritmo de la División Entera**

- ❌ **Incorrecto:** Decir que al dividir $a = -23$ entre $b = 5$, el cociente es $q = -4$ y el resto es $r = -3$.
- 💡 **Explicación:** El Teorema de la División Entera en $\mathbb{Z}$ exige de forma **estricta y obligatoria** que el resto sea no negativo: $0 \le r < |b|$.
- ✅ **Correcto (UNED):** $-23 = (-5)(5) + 2 \implies q = -5$ y $r = 2$ (cumple $0 \le 2 < 5$).

---

#### **ERROR 5: Asumir que la Parte Imaginaria de un Complejo Incluye a la $i$**

- ❌ **Incorrecto:** Decir que para $z = 3 - 4i$, la parte imaginaria es $\text{Im}(z) = -4i$.
- 💡 **Explicación:** Por definición, tanto la parte real $\text{Re}(z)$ como la parte imaginaria $\text{Im}(z)$ son **números reales puros** ($\text{Re}(z), \text{Im}(z) \in \mathbb{R}$).
- ✅ **Correcto (UNED):** Para $z = 3 - 4i \implies \text{Re}(z) = 3 \in \mathbb{R}$ y $\text{Im}(z) = -4 \in \mathbb{R}$.

---

#### **ERROR 6: Negar un Cuantificador Negando la Pertenencia al Universo**

- ❌ **Incorrecto:** $\neg(\forall x \in C, P(x)) \iff \exists x \notin C, \neg P(x)$.
- 💡 **Explicación:** Al negar un enunciado cuantificado, se cambia el cuantificador ($\forall \leftrightarrow \exists$) y se niega el predicado $P(x)$, pero **NUNCA se modifica el universo de discurso $C$**.
- ✅ **Correcto (UNED):** $\neg(\forall x \in C, P(x)) \iff \exists x \in C, \neg P(x)$.

---

#### **ERROR 7: Inversión de Múltiples Cuantificadores**

- ❌ **Incorrecto:** Tratar las expresiones $\forall x \in \mathbb{R}, \exists y \in \mathbb{R}, x + y = 0$ y $\exists y \in \mathbb{R}, \forall x \in \mathbb{R}, x + y = 0$ como si fuesen equivalentes.
- 💡 **Explicación:** El orden de cuantificadores de distinto tipo NO conmuta. En la primera $y$ depende de $x$ (es verdadera); en la segunda $y$ debe ser universal para toda $x$ (es falsa).
- ✅ **Correcto (UNED):** Distinguir siempre entre $\forall x \exists y$ (elección de $y$ en función de $x$) y $\exists y \forall x$ ($y$ constante universal).

---

#### **ERROR 8: Despejes Incorrectos con Factores de Signo en Funciones Homográficas**

- ❌ **Incorrecto:** Escribir $x(2 - y) = -(3y + 1) \implies x = \frac{3y + 1}{2 - y}$.
- 💡 **Explicación:** Si se simplifica el signo negativo del numerador, el signo debe distribuirse en el denominador cambiando $(2 - y)$ por $(y - 2)$.
- ✅ **Correcto (UNED):** $x = \frac{-(3y + 1)}{2 - y} = \frac{3y + 1}{-(2 - y)} = \frac{3y + 1}{y - 2}$.

---

#### **ERROR 9: Afirmar que en la Inversa por la Izquierda $g$ los Valores Fuera de $\text{Im}(f)$ Deben ser Únicos**

- ❌ **Incorrecto:** Pensar que la inversa por la izquierda de una aplicación inyectiva $f: A \to B$ es única cuando $f$ no es sobreyectiva.
- 💡 **Explicación:** Para los elementos $y \notin \text{Im}(f)$, la asignación $g(y) = x_0$ es arbitraria en $A$, por lo que existen **múltiples inversas por la izquierda**.
- ✅ **Correcto (UNED):** $g(y) = a_y$ si $y \in \text{Im}(f)$, y $g(y) = x_0$ si $y \notin \text{Im}(f)$ (con $x_0 \in A$ arbitrario).

---

#### **ERROR 10: Omitir la Prueba de Buena Definición en Conjuntos Cociente**

- ❌ **Incorrecto:** Definir una operación en un conjunto cociente $U/\mathcal{R}$ como $[x] * [y] = [x \cdot y]$ sin verificar que la imagen no depende de los representantes elegidos.
- 💡 **Explicación:** En clases de equivalencia, es obligatorio probar que si $[x] = [x']$ y $[y] = [y']$, entonces $[x \cdot y] = [x' \cdot y']$.
- ✅ **Correcto (UNED):** Demostrar formalmente la consistencia o buena definición antes de analizar las propiedades del grupo o anillo cociente.

---

### **3. Decálogo de Redacción de Demostraciones para el Examen Presencial**

Para obtener la máxima calificación ($2,5$ puntos por problema) en el examen de desarrollo, sigue esta plantilla estándar de redacción:

1. **Declaración del Método de Demostración:** Inicia el problema indicando la estrategia: _"Demostraremos la proposición mediante [Deducción Directa / Reducción al Absurdo / Contrarrecíproco / Inducción Matemática / Doble Inclusión]"_.
2. **Definición de Variables:** Declara explícitamente los elementos antes de usarlos: _"Sea $x \in A$ un elemento genérico y arbitrario..."_.
3. **Explicitación de Hipótesis y Tesis:** Escribe con claridad: _"Hipótesis ($H$): ... Tesis ($T$): ..."_.
4. **Justificación Paso a Paso:** Cada paso algebraico o deducción debe ir acompañado de su justificación lógica: _"por definición de la unión"_, _"aplicando la Hipótesis de Inducción"_, _"por el Teorema de Bézout"_.
5. **Uso Escrupuloso de Paréntesis y Llaves:** Escapa siempre las llaves de conjunto ${ }$ y no dejes conectores sueltos.
6. **Conclusión Explicita:** Cierra la demostración relacionando el resultado con la tesis inicial: _"Por lo tanto, queda probado que..."_ y añade el símbolo de cierre de demostración ($\blacksquare$ o Q.E.D.).

---

### **4. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Consideremos la función homográfica $f: \mathbb{R} \setminus {1} \to \mathbb{R} \setminus {3}$ dada por $f(x) = \frac{3x + 2}{x - 1}$. ¿Cuál es la expresión exacta de su **aplicación inversa $f^{-1}(y)$** y su dominio natural?

- **A)** $f^{-1}(y) = \frac{y + 2}{y - 3}$, con dominio $\text{Dom}(f^{-1}) = \mathbb{R} \setminus {3}$.
- **B)** $f^{-1}(y) = \frac{-y + 2}{y - 3}$, con dominio $\text{Dom}(f^{-1}) = \mathbb{R} \setminus {1}$.
- **C)** Ninguna de las anteriores.

> **Solución Razonada:**
> 
> 1. Para hallar $f^{-1}$, igualamos $y = \frac{3x + 2}{x - 1}$ y despejamos $x$: $$y(x - 1) = 3x + 2 \implies yx - y = 3x + 2 \implies yx - 3x = y + 2$$
> 2. Sacando factor común $x$: $$x(y - 3) = y + 2 \implies x = \frac{y + 2}{y - 3}$$
> 3. Como $y \in \mathbb{R} \setminus {3}$, el denominador no se anula. El dominio de la inversa es $\text{Dom}(f^{-1}) = \mathbb{R} \setminus {3}$.
> 4. Comprobamos con la regla mnemotécnica del texto base para $f(x) = \frac{ax + b}{cx + d}$: $$f^{-1}(y) = \frac{-dy + b}{cy - a} = \frac{-(-1)y + 2}{1y - 3} = \frac{y + 2}{y - 3}$$
> 5. Por lo tanto, la opción **A** es la **correcta**.

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión60_Repaso_final.pptx): Maquetada en estricta conformidad con el _AAA_Manual_de_Estilo_Presentaciones_ y la notación LaTeX requerida (`$` para expresiones en línea y `$$` para bloques), estructurando la visión panorámica de los 6 bloques, el catálogo de los 10 errores de rigor sintáctico más penalizados en el examen de desarrollo de la UNED, el decálogo de redacción formal y la pregunta final de autoevaluación.
- [**Resumen de audio**](Audios/Sesión60_Repaso_final.m4a): Enfocado en el repaso sintético del hilo conductor de la asignatura, el desglose ameno y detallado de los errores "trampa" típicos que restan puntuación en las pruebas presenciales, y los mejores consejos tácticos para afrontar con éxito tanto la PEC telemática como la prueba presencial de 120 minutos.

---
