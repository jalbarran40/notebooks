# **Sesión 6: Simplificación de expresiones lógicas usando leyes de Morgan y distributividad**
Esta sesión práctica de 45 minutos tiene como objetivo que aprendas a reducir la complejidad de las proposiciones sin necesidad de construir tablas de verdad completas, utilizando el "álgebra de proposiciones".

### **Contenido Práctico de la Sesión 6**

La simplificación consiste en transformar una proposición en otra equivalente más sencilla utilizando las leyes lógicas vistas en la sesión anterior.

#### **1. Aplicación de las Leyes de Morgan**

Estas leyes son la herramienta principal para "introducir" o "sacar" negaciones de los paréntesis. 

- **Caso A:** $\neg(p \lor \neg q) \equiv \neg p \land \neg(\neg q) \equiv \neg p \land q$.
- **Caso B:** $\neg(\neg p \land q) \equiv \neg(\neg p) \lor \neg q \equiv p \lor \neg q$.
#### **2. Eliminar las redundancias de la doble negación**
#### **3. Uso de la Propiedad Distributiva**

Permite expandir o factorizar expresiones, de forma análoga al álgebra numérica:

- **Expansión:** $p \land (q \lor r) \equiv (p \land q) \lor (p \land r)$.
- **Factorización (Sacar factor común):** $(\neg p \lor q) \land (\neg p \lor r) \equiv \neg p \lor (q \land r)$.

#### **4. Limpiar elementos sobrantes usando las leyes de identidad
- **Leyes de identidad:** 
	- $p \lor 0 \iff p$
	- $p \land 1 \iff p$
	- $p \rightarrow p \iff 1$ 
	- $p \leftrightarrow p \iff 1$

#### **ERRORES HABITUALES**
- Olvidar invertir el conector al aplicar De Morgan
- Aplicar distributiva a condicionales (hay que pasarlos a disyunción antes)

### **Ejercicios Propuestos para realizar en clase**

Intenta simplificar las siguientes expresiones paso a paso antes de consultar la presentación:

1. **Simplificar la negación:** $\neg(\neg p \land (q \lor \neg r))$.
2. **Reducir usando distributividad e identidad:** $(p \land q) \lor (p \land \neg q)$.
    - _Pista:_ Saca "factor común" $p$. El resultado final debería ser simplemente $p$.

### Resolución

![[Sesión06_Ejercicio1_Planteamiento.png]]

![[Sesión06_Ejercicio1_Solución.png]]
### **Verificación Estratégica**

Si tras simplificar una expresión quieres estar seguro del resultado, puedes usar **WolframAlpha** comparando las tablas de verdad de la expresión original y la simplificada. Si ambas columnas finales son idénticas, tu simplificación es correcta.

---
## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión06_Simplificación_de_expresiones_lógicas.pptx): Contiene una guía visual con los "movimientos permitidos" en la simplificación y los ejercicios resueltos paso a paso indicando qué ley se aplica en cada línea. Las diapositivas te servirán de guía técnica para realizar las transformaciones algebraicas necesarias en los ejercicios de autoevaluación del Capítulo 1.
- [**Resumen de audio**](Audios/Sesión06_Simplificación_de_expresiones_lógicas.m4a): Explica la estrategia mental para abordar la simplificación, como la búsqueda de "factores comunes" lógicos y cuándo es más conveniente aplicar Morgan antes que distributividad. En el audio, profundizo en el concepto de "equivalencia lógica" y cómo las leyes de Morgan actúan como un puente entre la conjunción y la disyunción
	