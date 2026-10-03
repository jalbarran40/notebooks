# **Sesión 7: Validación de Proposiciones y Forma Clausulada**

Esta sesión teórica se centra en los métodos para demostrar la validez de una proposición y en una forma estándar de escritura lógica que facilita enormemente esta tarea.

#### **1. Validación mediante Refutación (Reducción al Absurdo)**

Aunque las tablas de verdad son útiles, cuando el número de variables crece, su tamaño se vuelve inmanejable (por ejemplo, 5 variables requieren 32 filas). El método de **refutación** consiste en:

1. **Suponer la falsedad:** Se parte de la base de que la proposición es falsa (valor 0).
2. **Deducir contradicciones:** Se analizan los componentes. Si al final del proceso llegamos a una contradicción (por ejemplo, que una variable debe ser 1 y 0 al mismo tiempo), entonces la suposición inicial era errónea y la proposición es, en realidad, verdadera.

#### **2. La Forma Clausulada (Forma Normal Conjuntiva)**

Es una forma de escribir cualquier proposición compleja de modo que sea una **conjunción de disyunciones**. Se dice que una proposición está en forma clausulada si aparece como: $(C_1 \land C_2 \land \dots \land C_n)$ Donde cada $C_i$ (cláusula) es una disyunción de letras proposicionales o sus negaciones.

#### **3. Algoritmo para extraer la Forma Clausulada**

Para transformar cualquier expresión, seguimos estos pasos de forma secuencial:

- **Paso 1:** Eliminar **bicondicionales** usando $(p \leftrightarrow q) \equiv (p \to q) \land (q \to p)$.
- **Paso 2:** Eliminar **condicionales** usando la equivalencia $(p \to q) \equiv \neg p \lor q$.
- **Paso 3:** Introducir las **negaciones** dentro de los paréntesis aplicando las **Leyes de Morgan** y la ley de la doble negación.
- **Paso 4:** Aplicar las **propiedades distributivas** para que las conjunciones ($\land$) queden fuera de los paréntesis y las disyunciones ($\lor$) dentro.

**Ejemplo rápido:** La forma clausulada de $p \to (q \land r)$ se obtiene así:

1. Quitamos el condicional: $\neg p \lor (q \land r)$.
2. Aplicamos distributividad: $(\neg p \lor q) \land (\neg p \lor r)$. Esta última expresión es la **forma clausulada**.

---

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión07_Validación_de_proposiciones_y_forma_clausulada.pptx): He incluido una diapositiva especial con el comando de **WolframAlpha** para este tema: `conjunctive normal form of (p implies (q and r))`. Te permitirá validar tus ejercicios de forma automática.
- [**Resumen de audio**](Audios/Sesión07_Validación_de_proposiciones_y_forma_clausulada.m4a): Profundiza en la importancia de la forma clausulada para el razonamiento automático y el diseño de algoritmos de validación.
	
