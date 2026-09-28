# **SESIÓN 8 (PRÁCTICA): TRANSFORMACIÓN A FORMA NORMAL CONJUNTIVA PASO A PASO**

**Duración:** 45 minutos  
**Objetivo:** Dominar el algoritmo de transformación de cualquier proposición lógica a su **Forma Normal Conjuntiva (FNC)** o **forma clausulada**, redactando de forma explícita las justificaciones y leyes aplicadas en cada paso.

---

### **1. Marco Teórico y Definición Formal**

- **Cláusula Lógica:** Una disyunción de letras proposicionales simples o sus negaciones (ej. $p \lor \neg q \lor r$).
- **Forma Normal Conjuntiva (FNC) o Forma Clausulada:** Una proposición escrita únicamente como una **conjunción ($\land$) de cláusulas**: $$(C_1 \land C_2 \land \dots \land C_n)$$ Donde cada $C_i$ es una disyunción de literales.

---

### **2. Algoritmo Sistemático de 4 Pasos**

Para transformar una proposición $f$ a FNC en un examen de desarrollo, debes aplicar y nombrar en cada renglón las siguientes reglas:

1. **Paso 1 (Eliminación de Bicondicionales):** Reemplazar $p \leftrightarrow q$ por $(p \to q) \land (q \to p)$.
2. **Paso 2 (Eliminación de Condicionales):** Reemplazar $p \to q$ por la disyunción equivalente $\neg p \lor q$.
3. **Paso 3 (Introducción de Negaciones):** Aplicar las **Leyes de Morgan** y la ley de doble negación para que los conectores $\neg$ afecten únicamente a proposiciones simples:
    - $\neg(p \land q) \equiv \neg p \lor \neg q$
    - $\neg(p \lor q) \equiv \neg p \land \neg q$
    - $\neg(\neg p) \equiv p$
4. **Paso 4 (Distributividad):** Aplicar las propiedades distributivas para extraer las conjunciones ($\land$) fuera de los paréntesis:
    - $A \lor (B \land C) \equiv (A \lor B) \land (A \lor C)$

---

### **3. Ejemplo Resuelto con Redacción Formal**

**Problema:** Obtener la Forma Normal Conjuntiva de la Ley del Silogismo Hipotético: $$f \equiv [(p \to q) \land (q \to r)] \to (p \to r)$$

#### **Desarrollo paso a paso:**

- **Paso 1 (Bicondicionales):** La expresión no contiene bicondicionales.
    
- **Paso 2 (Eliminación de Condicionales):** Aplicamos la equivalencia $A \to B \equiv \neg A \lor B$ al condicional principal y a los condicionales internos: $$f \equiv \neg [(\neg p \lor q) \land (\neg q \lor r)] \lor (\neg p \lor r)$$
    
- **Paso 3 (Paso de negaciones al interior):** Aplicamos la ley de Morgan sobre la conjunción del primer corchete, $\neg(X \land Y) \equiv \neg X \lor \neg Y$: $$f \equiv \neg(\neg p \lor q) \lor \neg(\neg q \lor r) \lor (\neg p \lor r)$$ Aplicamos nuevamente Morgan a cada paréntesis individual y la doble negación $\neg(\neg A) \equiv A$: $$f \equiv (p \land \neg q) \lor (q \land \neg r) \lor (\neg p \lor r)$$
    
- **Paso 4 (Aplicación de la Distributividad):** Para obtener conjunciones de disyunciones, distribuimos las disyunciones sobre las conjunciones. Llamemos $D \equiv (\neg p \lor r)$: $$[(p \land \neg q) \lor (q \land \neg r)] \lor D \equiv [(p \lor q) \land (p \lor \neg r) \land (\neg q \lor \neg r)] \lor D$$ Distribuyendo $\lor D$ sobre cada uno de los tres bloques: $$f \equiv (p \lor q \lor \neg p \lor r) \land (p \lor \neg r \lor \neg p \lor r) \land (\neg q \lor \neg r \lor \neg p \lor r)$$ Simplificando cada cláusula observando que $p \lor \neg p \equiv 1$ y $r \lor \neg r \equiv 1$ (Ley del tercio excluso):
    
    - Cláusula 1: $(1 \lor q \lor r) \equiv 1$
    - Cláusula 2: $(1 \lor 1) \equiv 1$
    - Cláusula 3: $(\neg p \lor \neg q \lor 1) \equiv 1$
    
    $$f \equiv 1 \land 1 \land 1 \equiv 1$$ **Conclusión:** La forma clausulada simplificada es **$1$**, lo que demuestra formalmente que la expresión es una **tautología**.
    

---

### **4. Verificación en WolframAlpha**

Para comprobar tus ejercicios prácticos analíticamente, introduce en **WolframAlpha** la siguiente instrucción de texto exacto:

`conjunctive normal form of ((p implies q) and (q implies r)) implies (p implies r)`

---

### **5. Ejercicios Propuestos para los 45 min de la Sesión**

Realiza los siguientes ejercicios del texto base redactando la justificación de cada paso:

1. Obtener la FNC de la expresión: $p \to (q \land r)$. _(Pista: El resultado es $(\neg p \lor q) \land (\neg p \lor r)$)_.
2. Transformar a forma normal conjuntiva la regla de exportación: $[(p \land q) \to r] \leftrightarrow [p \to (q \to r)]$.

### 6. Ejercicion de exámenes

#### Febrero 2026


## Material de apoyo

- [**Presentación**](Sesión08_Transformación_de_fórmulas_a_forma_normal_conjuntiva_paso_a_paso.pptx)
- [**Resumen de audio**](Sesión08_Transformación_de_fórmulas_a_forma_normal_conjuntiva_paso_a_paso.m4a)
