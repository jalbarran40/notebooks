# **SESIÓN 58 (PRÁCTICA): PREPARACIÓN DE LA PEC (PRUEBA DE EVALUACIÓN CONTINUA TELEMÁTICA - CAPÍTULOS 1 AL 6)**

**Duración:** 45 minutos  
**Bloque:** REPASO FINAL Y EVALUACIÓN  
**Objetivo:** Dominar la estructura, normativa y criterios de corrección de la Prueba de Evaluación Continua (PEC) en línea, repasar los conceptos analíticos "trampa" más habituales de los Capítulos 1 al 6 del texto base (_Delgado Pineda & Muñoz Bouzo_), resolver un cuestionario simulado representativo de 5 preguntas tipo test de 3 opciones y establecer una estrategia óptima de gestión del tiempo y del riesgo frente al sistema de penalización de errores.

---

### **1. Normativa y Estructura Oficial de la PEC (Curso 2026/2027)**

#### **A) Datos Clave de la Convocatoria:**

- **Fecha y Horario:** Miércoles **15 de diciembre**, de 20:00h a 21:00h (hora peninsular española).
- **Duración:** **60 minutos**.
- **Plataforma:** Cuestionario telemático a través del Aula Virtual de la UNED.
- **Materia Evaluada:** Capítulos 1 al 6 del texto base (Lógica, Conjuntos, Relaciones y Aplicaciones, Estructuras Algebraicas, Naturales y Enteros, Racionales y Reales).

#### **B) Sistema de Puntuación y Penalización:**

El cuestionario consta de **5 preguntas de opción múltiple** con 3 alternativas cada una (A, B y la opción C, que es **siempre** _"Ninguna de las anteriores"_).

- **Acierto:** \(+2\) puntos.
- **Fallo:** \(-1\) punto.
- **Respuesta en blanco / no contestada:** \(0\) puntos.
- Puntuación máxima del cuestionario: \(10\) puntos (\(5 \times 2 = 10\)).

#### **C) Regla de Ponderación y la "Garantía de No Perjuicio":**

1. La PEC es **completamente optativa**.
2. Para que la nota de la PEC sume a la calificación final de febrero, es **requisito imprescindible obtener al menos un \(4,5\) en el Examen Presencial de Desarrollo (\(PP\))**.
3. La nota final (\(NF\)) de la asignatura se calcula mediante la fórmula oficial: \[NF = \max(PP, \quad 0,9 \cdot PP + 0,1 \cdot PEC)\]
    
    > **Conclusión Práctica:** La PEC **NUNCA perjudica**. Si la nota ponderada con la PEC empeorase tu nota del examen presencial, la plataforma mantiene automáticamente la calificación de la prueba presencial (\(PP\)). Si la PEC beneficia, puede añadir hasta **1 punto entero** a tu nota final.
    

---

### **2. Repaso Estratégico de "Conceptos Trampa" por Bloques (Capítulos 1 al 6)**

A la hora de redactar preguntas tipo test, la UNED suele evaluar el rigor en los detalles notacionales y sintácticos. Repasamos los puntos críticos donde se cometen más errores:

|Bloque Temático|Concepto Frecuente en Preguntas Test|Matiz de Rigor Formal (Texto Base)|
|:--|:--|:--|
|**Bloque 1: Lógica**|Condicional vs Implicación|\(p \to q\) es una proposición (tabla de verdad). \(P \Rightarrow Q\) es una relación de implicación (significa que \(P \to Q\) es una **tautología**).|
|**Bloque 1: Lógica**|Contrarrecíproco|El contrarrecíproco de \(p \to q\) es \(\neg q \to \neg p\) (son equivalentes). **No confundir** con el recíproco (\(q \to p\)) ni con el opuesto (\(\neg p \to \neg q\)).|
|**Bloque 2: Conjuntos**|Pertenencia vs Inclusión|\(x \in A\) relaciona elemento con conjunto. \(B \subseteq A\) relaciona conjunto con conjunto. ¡Ojo!: \(\varnothing \subseteq A\) es **siempre verdadero** por verdad vacua, pero \(\varnothing \in A\) solo es cierto si el conjunto vacío es explícitamente un elemento de \(A\).|
|**Bloque 2: Conjuntos**|Negación de Cuantificadores|\(\neg(\forall x \in C, P(x)) \iff \exists x \in C, \neg P(x)\). Al negar, el cuantificador cambia y se niega únicamente el predicado interior (nunca la pertenencia al universo \(C\)).|
|**Bloque 3: Aplicaciones**|Inyectividad y Sobreyectividad|\(f: A \to B\) es inyectiva si \(f(x) = f(x') \implies x = x'\). Es sobreyectiva si \(\text{Im}(f) = B\). Si \(g \circ f\) es inyectiva \(\implies f\) es inyectiva. Si \(g \circ f\) es sobreyectiva \(\implies g\) es sobreyectiva.|
|**Bloque 4: Estructuras**|Subgrupos e Invertibles|\(H \le G \iff \forall a, b \in H, a * b^{-1} \in H\). En todo anillo unitario, **un divisor de cero NUNCA puede ser un elemento invertible** (demostrable por reducción al absurdo).|
|**Bloque 4: Estructuras**|Núcleo de Homomorfismo|\(f: G \to G'\) es monomorfismo (inyectivo) \(\iff \text{Ker}(f) = {e_G}\).|
|**Bloque 5: Enteros**|Algoritmo de la División|En \(a = qb + r\), el resto debe cumplir estrictamente **\(0 \le r <|
|**Bloque 6: Reales**|Supremo e Ínfimo|\(s = \sup(A) \iff (\forall a \in A, a \le s) \land (\forall \varepsilon > 0, \exists a_0 \in A \text{ tal que } s - \varepsilon < a_0)\). El supremo pertenece a \(A \iff \max(A) = \sup(A)\).|

---

### **3. Simulacro Cuestionario PEC (5 Preguntas de Examen)**

A continuación, resolvemos un cuestionario simulado con la estructura exacta de la PEC:

#### **Pregunta 1 (Bloque 1 - Lógica de Predicados):**

Dada la proposición \(P: \forall x \in \mathbb{R}, \exists y \in \mathbb{R} \text{ tal que } x + y = 0\), ¿cuál es la expresión correcta de su **negación formal \(\neg P\)** y su **valor semántico**?

- **A)** \(\neg P: \exists x \in \mathbb{R}, \forall y \in \mathbb{R}, x + y \neq 0\), y es una proposición Falsa.
- **B)** \(\neg P: \exists x \in \mathbb{R}, \forall y \in \mathbb{R}, x + y \neq 0\), y es una proposición Verdadera.
- **C)** Ninguna de las anteriores.

> **Solución Razonada:**
> 
> 1. Aplicamos la regla de negación de múltiples cuantificadores: \[\neg(\forall x \in \mathbb{R}, \exists y \in \mathbb{R}, x + y = 0) \iff \exists x \in \mathbb{R}, \forall y \in \mathbb{R}, \neg(x + y = 0) \iff \exists x \in \mathbb{R}, \forall y \in \mathbb{R}, x + y \neq 0\]
> 2. Analizamos el valor de verdad de \(P\): Para todo real \(x\), tomando \(y = -x \in \mathbb{R}\) se cumple \(x + (-x) = 0\). Por tanto, **\(P\) es Verdadera (1)**.
> 3. En consecuencia, la negación **\(\neg P\) es Falsa (0)**.
> 4. Por tanto, la opción **A** es la **correcta**.

---

#### **Pregunta 2 (Bloque 2 - Teoría de Conjuntos y Partes):**

Dado el conjunto \(A = {1, {2}}\), consideremos el conjunto de sus partes \(\mathcal{P}(A)\). ¿Cuál de las siguientes afirmaciones es la única **correcta**?

- **A)** \({2} \in \mathcal{P}(A)\).
- **B)** \({{2}} \in \mathcal{P}(A)\) y el cardinal de las partes es \(\text{card}(\mathcal{P}(A)) = 4\).
- **C)** Ninguna de las anteriores.

> **Solución Razonada:**
> 
> 1. Los elementos del conjunto \(A\) son \(x_1 = 1\) y \(x_2 = {2}\). Por tanto, \(\text{card}(A) = 2\).
> 2. El conjunto potencia \(\mathcal{P}(A)\) tiene \(\text{card}(\mathcal{P}(A)) = 2^2 = 4\) elementos, que son explicitados enumerando todos los subconjuntos de \(A\): \[\mathcal{P}(A) = {\varnothing, ; {1}, ; {{2}}, ; {1, {2}}}\]
> 3. Comprobamos la opción A: ¿\({2} \in \mathcal{P}(A)\)? No, \({2}\) no es subconjunto de \(A\) (el número \(2\) no pertenece a \(A\)), luego la opción A es falsa.
> 4. Comprobamos la opción B: Puesto que el elemento \(x_2 = {2}\) pertenece a \(A\), el conjunto unitario que lo contiene, \({{2}}\), es un subconjunto de \(A\), de donde **\({{2}} \in \mathcal{P}(A)\)**. Además, el cardinal es \(4\).
> 5. Por tanto, la opción **B** es la **correcta**.

---

#### **Pregunta 3 (Bloque 3 - Aplicaciones Biyectivas e Inversas):**

Sea la aplicación \(f: \mathbb{R} \setminus {1} \to \mathbb{R} \setminus {2}\) dada por \(f(x) = \frac{2x + 1}{x - 1}\). ¿Cuál es la expresión de su **aplicación inversa \(f^{-1}(y)\)**?

- **A)** \(f^{-1}(y) = \frac{y + 1}{y - 2}\).
- **B)** \(f^{-1}(y) = \frac{x - 1}{2x + 1}\).
- **C)** Ninguna de las anteriores.

> **Solución Razonada:**
> 
> 1. Para hallar la aplicación inversa \(f^{-1}: \mathbb{R} \setminus {2} \to \mathbb{R} \setminus {1}\), igualamos \(y = f(x)\) y despejamos la variable \(x\) en función de \(y\): \[y = \frac{2x + 1}{x - 1} \iff y(x - 1) = 2x + 1 \iff yx - y = 2x + 1\]
> 2. Agrupamos los términos con \(x\) en el miembro izquierdo: \[yx - 2x = y + 1 \iff x(y - 2) = y + 1 \implies x = \frac{y + 1}{y - 2}\]
> 3. Por lo tanto, \(f^{-1}(y) = \frac{y + 1}{y - 2}\), cuyo dominio de definición es efectivamente \(\mathbb{R} \setminus {2}\).
> 4. Por tanto, la opción **A** es la **correcta**.

---

#### **Pregunta 4 (Bloque 4 - Homomorfismos de Grupos y Núcleo):**

Sea \(f: (\mathbb{Z}, +) \to (\mathbb{Z}, +)\) un homomorfismo del grupo aditivo de los enteros en sí mismo tal que \(f(1) = -3\). ¿Cuál es el **núcleo de \(f\) (\(\text{Ker}(f)\))** y el carácter de la aplicación?

- **A)** \(\text{Ker}(f) = {0}\) y \(f\) es un monomorfismo (inyectiva) pero no epimorfismo (no sobreyectiva).
- **B)** \(\text{Ker}(f) = 3\mathbb{Z}\) y \(f\) es una aplicación biyectiva.
- **C)** Ninguna de las anteriores.

> **Solución Razonada:**
> 
> 1. Todo homomorfismo de \((\mathbb{Z}, +)\) en \((\mathbb{Z}, +)\) viene determinado por la imagen de \(1\). Para cualquier \(n \in \mathbb{Z}\): \[f(n) = f(n \cdot 1) = n \cdot f(1) = n(-3) = -3n\]
> 2. Calculamos el núcleo por definición: \[\text{Ker}(f) = {n \in \mathbb{Z} \mid f(n) = 0_{\mathbb{Z}}} = {n \in \mathbb{Z} \mid -3n = 0} = {0}\]
> 3. Como \(\text{Ker}(f) = {0}\), el homomorfismo \(f\) es **inyectivo (monomorfismo)**.
> 4. Analizamos la sobreyectividad: La imagen es \(\text{Im}(f) = f(\mathbb{Z}) = 3\mathbb{Z} = {\dots, -6, -3, 0, 3, 6, \dots} \neq \mathbb{Z}\). Por ejemplo, no existe ningún entero \(n\) tal que \(f(n) = 1\). Por lo tanto, \(f\) **no es sobreyectiva**.
> 5. Por tanto, la opción **A** es la **correcta**.

---

#### **Pregunta 5 (Bloque 5 - Algoritmo de la División Entera):**

Al aplicar el Teorema de la División Entera en \(\mathbb{Z}\) para dividir el dividendo \(a = -23\) entre el divisor \(b = 5\), ¿cuáles son el **cociente \(q\)** y el **resto \(r\)** únicos que satisfacen \(a = qb + r\) con \(0 \le r < |b|\)?

- **A)** Cociente \(q = -4\) y resto \(r = -3\).
- **B)** Cociente \(q = -5\) y resto \(r = 2\).
- **C)** Ninguna de las anteriores.

> **Solución Razonada:**
> 
> 1. El Teorema de la División Entera en \(\mathbb{Z}\) exige **de forma estricta** que el resto sea no negativo: \(0 \le r < 5\).
> 2. Probemos la opción A: Si \(q = -4\) y \(r = -3 \implies (-4)(5) + (-3) = -20 - 3 = -23\). Aunque la suma da \(-23\), el resto \(r = -3\) es negativo (\(r < 0\)), violando el axioma de la división.
> 3. Probemos la opción B: Si \(q = -5\) y \(r = 2 \implies (-5)(5) + 2 = -25 + 2 = -23\).
> 4. Verificamos la condición del resto: \(0 \le 2 < 5\), que cumple de forma impecable el rango \(0 \le r < |b|\).
> 5. Por tanto, la opción **B** es la **correcta**.

---

### **4. Estrategia Táctica de Examen y Gestión de Riesgo**

#### **Esperanza Matemática y la Decisión de Responder o Dejar en Blanco:**

Dado el sistema de corrección (\(+2\) acierto, \(-1\) fallo, \(0\) en blanco sobre 3 opciones):

1. **Si no tienes la menor idea (responder totalmente al azar entre 3 opciones):** \[E(\text{Azar}) = \frac{1}{3}(+2) + \frac{2}{3}(-1) = \frac{2}{3} - \frac{2}{3} = 0 \text{ puntos}\]
    
    > _Conclusión:_ Responder a ciegas entre 3 opciones tiene esperanza matemática **nula (\(0\))**. No ganas ni pierdes estadísticamente, pero incrementas la volatilidad.
    
2. **Si logras descartar con total certeza 1 opción (duda razonable entre 2 opciones):** \[E(\text{Duda entre 2}) = \frac{1}{2}(+2) + \frac{1}{2}(-1) = +1 - 0,5 = \mathbf{+0,5 \text{ puntos}}\]
    
    > **REGLA DE ORO DE LA UNED:** Si eres capaz de eliminar razonadamente **una** de las tres opciones (por ejemplo, descartando la opción C o una opción absurda), **SIEMPRE conviene arriesgarse y responder**. A lo largo de las 5 preguntas, aplicar esta norma arrojaremos una ganancia neta positiva estimada.
    
3. **Gestión del Tiempo recomendada (60 min / 5 preguntas):**
    
    - **Minutos 0 a 10:** Lectura global rápida y resolución inmediata de las 2-3 preguntas que veas claras de un vistazo.
    - **Minutos 10 a 40:** Trabajo analítico con lápiz y papel para comprobar en borrador las demostraciones o cálculos de las preguntas con trampa.
    - **Minutos 40 a 50:** Revisión de las opciones C (_"Ninguna de las anteriores"_). No abuses de la opción C: solo es correcta si las opciones A y B son demostrablemente falsas.
    - **Minutos 50 a 60:** Transcripción de respuestas a la plataforma y verificación final de no haber cometido errores tipográficos.

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión58_Preparación_PEC.pptx): Maquetada en estricta conformidad con el _AAA_Manual_de_Estilo_Presentaciones_ y con notación LaTeX (`$` para expresiones en línea y `$$` para bloques), estructurando la normativa de la PEC, la regla de ponderación, el repaso por bloques de conceptos trampa, una batería simulada de 5 preguntas tipo test de 3 opciones y estrategias tácticas de respuesta.
- [**Resumen de audio**](Audios/Sesión58_Preparación_PEC.m4a): Enfocado en la estrategia global para afrontar la prueba telemática del 15 de diciembre, el desglose de la fórmula de nota final \(NF = \max(PP, 0,9 \cdot PP + 0,1 \cdot PEC)\), el análisis de la esperanza matemática del sistema de penalización y la revisión rápida de los errores más comunes en los Capítulos 1 al 6.

---
