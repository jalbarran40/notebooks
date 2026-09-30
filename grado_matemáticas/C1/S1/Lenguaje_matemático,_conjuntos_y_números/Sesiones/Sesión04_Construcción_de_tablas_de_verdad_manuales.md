# Sesión 04: Construcción de tablas de verdad manuales

### **1. Metodología para la construcción manual**

Para analizar una proposición compuesta (por compleja que sea), seguiremos siempre estos pasos:

1. **Contar las variables proposicionales ($n$):** La tabla tendrá $2^n$ filas de valores de verdad.
2. **Identificar la jerarquía:** Primero resolvemos las negaciones individuales, luego los paréntesis internos, después los corchetes y, finalmente, el conector principal.
3. **Completar columnas intermedias:** Es vital crear una columna para cada paso del cálculo para evitar errores.

### **2. Ejercicio Propuesto 1: Validación de una equivalencia**

Vamos a demostrar manualmente que el condicional es equivalente a una disyunción ($p \to q \equiv \neg p \lor q$).

- **Paso A:** Crea una tabla con 4 filas para $p$ y $q$.
- **Paso B:** Calcula la columna para $\neg p$.
- **Paso C:** Calcula la columna para $p \to q$.
- **Paso D:** Calcula la columna para $\neg p \lor q$.
- **Conclusión:** Si las columnas de los pasos C y D son idénticas, las expresiones son equivalentes.

### **3. Ejercicio Propuesto 2: Proposición compleja**

Construye la tabla de verdad para: $[(p \lor q) \land \neg p] \to q$.

- _Pista:_ Este ejercicio te permitirá descubrir si la expresión es una **tautología** (siempre 1), una **contradicción** (siempre 0) o una contingencia.

### **4. Verificación con WolframAlpha**

Como indica tu guía de estudio, usaremos esta herramienta para la parte analítica.

- Para verificar tus resultados, entra en WolframAlpha y escribe la expresión. Por ejemplo: `truth table ((p or q) and (not p)) implies q`.
- La herramienta generará la tabla completa y te indicará si la forma lógica es válida.

- Nomenclatura WolframAlphe
	- NOT: $\neg$
	- AND: $\land$
	- OR: $\lor$
	- IMPLIES: $\to$
	- EQUIVALENT: $\leftrightarrow$
---

He procedido a crear los siguientes artefactos de apoyo:

- [**Presentación**](Presentaciones/Sesión04_Construcción_de_tablas_de_verdad_manuales.pptx): Contiene una guía visual paso a paso para organizar las columnas de una tabla y los comandos básicos para WolframAlpha.
- [**Resumen de audio**](Audios/Sesión04_Construcción_de_tablas_de_verdad_manuales.m4a): Una explicación sobre los errores más comunes al asignar valores de verdad y cómo leer correctamente los resultados de WolframAlpha. En el audio, me enfoco en la **jerarquía de las operaciones lógicas** para que sepas qué conector resolver primero, mientras que la presentación te servirá de plantilla para estructurar tus propias tablas de verdad en papel antes de validarlas con el software.

