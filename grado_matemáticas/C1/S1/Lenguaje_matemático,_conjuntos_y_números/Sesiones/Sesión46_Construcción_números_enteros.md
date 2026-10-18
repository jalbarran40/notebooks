# **SESIÓN 46 (TEORÍA): CONSTRUCCIÓN DE LOS NÚMEROS ENTEROS COMO CLASES DE EQUIVALENCIA**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 5: LOS NÚMEROS NATURALES Y LOS ENTEROS (Capítulo 5)  
**Objetivo:** Justificar la necesidad algebraica de ampliar el conjunto de los números naturales $\mathbb{N}$ al conjunto de los **números enteros $\mathbb{Z}$** para garantizar la resolubilidad universal de la resta (ecuaciones de la forma $b + x = a$), definir formalmente la **relación de equivalencia $\mathcal{E}$ en $\mathbb{N} \times \mathbb{N}$** dada por $(a, b) \mathcal{E} (c, d) \iff a + d = b + c$, construir el **conjunto cociente $\mathbb{Z} = (\mathbb{N} \times \mathbb{N})/\mathcal{E}$** e identificar los **representantes canónicos**, formalizar y **probar la buena definición (consistencia)** de las operaciones internas de suma y producto, y establecer la **inclusión isomórfica de $\mathbb{N}$ en $\mathbb{Z}$** mediante $\mathbb{Z}_+$.

---

### **1. Marco Teórico: Motivación e Insuficiencia de los Números Naturales**

En el semianillo aditivo de los números naturales $(\mathbb{N}, +)$, para cualesquiera dos elementos $a, b \in \mathbb{N}$, podemos plantear la ecuación lineal básica:

$$b + x = a$$

- **Caso Soluble en $\mathbb{N}$:** Si $b \le a$, existe un único número natural $x \in \mathbb{N}$ que satisface la ecuación (por ejemplo, $3 + x = 5 \implies x = 2 \in \mathbb{N}$).
- **Caso Insoluble en $\mathbb{N}$:** Si $a < b$, **no existe ningún número natural** $x \in \mathbb{N}$ que verifique la igualdad (por ejemplo, $5 + x = 3$ exigiría $x = 3 - 5 = -2 \notin \mathbb{N}$).

Para dotar a la estructura de un marco algebraico donde la operación sustracción (o resolución de ecuaciones aditivas) sea ejecutable **sin limitaciones**, se requiere construir una extensión formal de $\mathbb{N}$.

---

### **2. La Relación de Equivalencia en $\mathbb{N} \times \mathbb{N}$**

Dado que una resta diferida $a - b$ se puede representar de forma intuitiva mediante el par ordenado de naturales $(a, b) \in \mathbb{N} \times \mathbb{N}$, observamos que pares distintos como $(5, 3)$, $(8, 6)$ y $(3, 1)$ representan conceptualmente la misma "diferencia" (el número $2$).

Para formalizar esta igualdad sin recurrir al concepto aún no definido de resta negativos, utilizamos la propiedad aditiva cruzada: $$a - b = c - d \iff a + d = b + c$$

#### **Definición 5.35 (Relación de Equivalencia en $\mathbb{N} \times \mathbb{N}$):**

En el producto cartesiano $\mathbb{N} \times \mathbb{N}$, se define la relación binaria $\mathcal{E}$ mediante:

$$(a, b) \mathcal{E} (c, d) \iff a + d = b + c$$

#### **Proposición (Propiedades de la Relación $\mathcal{E}$):**

_La relación $\mathcal{E}$ es una **relación de equivalencia** en $\mathbb{N} \times \mathbb{N}$._

- **Demostración Analítica Paso a Paso (Estándar UNED):**
    
    1. **Reflexiva:**  
        Para todo $(a, b) \in \mathbb{N} \times \mathbb{N}$, por la propiedad conmutativa de la suma en $\mathbb{N}$ tenemos que $a + b = b + a$.  
        Por tanto, **$(a, b) \mathcal{E} (a, b)$**.
        
    2. **Simétrica:**  
        Sean $(a, b) \mathcal{E} (c, d) \implies a + d = b + c \implies c + b = d + a \implies c + b = d + a$.  
        Por tanto, **$(c, d) \mathcal{E} (a, b)$**.
        
    3. **Transitiva:**  
        Sean $(a, b) \mathcal{E} (c, d)$ y $(c, d) \mathcal{E} (e, f)$. Por definición: $$a + d = b + c \quad \land \quad c + f = d + e$$ Sumando miembro a miembro ambas igualdades en $\mathbb{N}$: $$(a + d) + (c + f) = (b + c) + (d + e)$$ Reagrupando mediante la asociatividad y conmutatividad de la suma en $\mathbb{N}$: $$(a + f) + (c + d) = (b + e) + (c + d)$$ Aplicando la **propiedad cancelativa de la suma en $\mathbb{N}$** (Proposición 5.2.4) para el término común $(c + d)$: $$a + f = b + e \implies (a, b) \mathcal{E} (e, f)$$
        
        Concluimos que **$\mathcal{E}$ es una relación de equivalencia**. $\blacksquare$
        

---

### **3. El Conjunto Cociente $\mathbb{Z}$ y Representantes Canónicos**

#### **A. Definición del Conjunto de los Números Enteros ($\mathbb{Z}$)**

Se define el conjunto de los **números enteros $\mathbb{Z}$** como el conjunto cociente obtenido al clasificar $\mathbb{N} \times \mathbb{N}$ mediante la relación de equivalencia $\mathcal{E}$:

$$\mathbb{Z} = (\mathbb{N} \times \mathbb{N}) / \mathcal{E} = {[(a, b)] \mid (a, b) \in \mathbb{N} \times \mathbb{N}}$$

#### **B. Interpretación Geométrica de las Clases de Equivalencia**

Si representamos el producto cartesiano $\mathbb{N} \times \mathbb{N}$ como una rejilla de puntos de coordenadas enteras en el plano cartesiano:

- La clase de equivalencia $[(a, b)] = {(x, y) \in \mathbb{N} \times \mathbb{N} \mid x + b = y + a}$ está formada por todos los puntos que pertenecen a la **recta de pendiente 1** paralela a la diagonal principal que pasa por el punto $(a, b)$.

```
   y ^
     |       /   /   /  [(0,2)] = -2
     |     /   /   /    [(0,1)] = -1
     |   /   /   /      [(0,0)] = 0
     | /   /   /        [(1,0)] = +1
     +-------------------> x
```

#### **C. Representantes Canónicos (Definición y Teorema)**

Para cualquier clase de equivalencia $\alpha = [(a, b)] \in \mathbb{Z}$, existe un **único par equivalente $(m, n)$ en el que al menos una de las dos componentes es cero**:

1. Si $a \ge b \implies \exists m \in \mathbb{N}$ tal que $a = b + m \implies (a, b) \mathcal{E} (m, 0)$.  
    La clase se denota abreviadamente por el entero no negativo **$m = [(m, 0)] \in \mathbb{Z}_+$**.
2. Si $a < b \implies \exists n \in \mathbb{N}^*$ tal que $b = a + n \implies (a, b) \mathcal{E} (0, n)$.  
    La clase se denota abreviadamente por el entero estrictamente negativo **$-n = [(0, n)] \in \mathbb{Z}_-$**.

$$\mathbb{Z} = \mathbb{Z}_+ \cup \mathbb{Z}_- = {\dots, -3, -2, -1, 0, 1, 2, 3, \dots}$$

---

### **4. Definición de Operaciones en $\mathbb{Z}$ y Prueba de Buena Definición**

#### **Definición 5.36 (Suma y Producto de Números Enteros):**

Dados dos números enteros $\alpha = [(a, b)]$ y $\beta = [(c, d)] \in \mathbb{Z}$, se definen las operaciones internas de **suma ($+$)** y **producto ($\cdot$)** mediante:

$$\alpha + \beta = [(a + c, b + d)]$$ $$\alpha \cdot \beta = [(ac + bd, ad + bc)]$$

---

#### **Prueba de Buena Definición (Consistencia / Independencia de Representantes):**

En el examen presencial de desarrollo de la UNED es fundamental probar que los resultados no dependen de los pares concretos elegidos para representar a $\alpha$ y $\beta$.

- **Demostración de Buena Definición para la Suma:**
    
    1. Sean $(a, b) \mathcal{E} (a', b')$ y $(c, d) \mathcal{E} (c', d')$.
    2. Por definición: $a + b' = a' + b$ y $c + d' = c' + d$.
    3. Sumando ambas igualdades en $\mathbb{N}$: $$(a + b') + (c + d') = (a' + b) + (c' + d)$$
    4. Reagrupando por asociatividad y conmutatividad en $\mathbb{N}$: $$(a + c) + (b' + d') = (a' + c') + (b + d)$$
    5. Esto significa por definición que **$(a + c, b + d) \mathcal{E} (a' + c', b' + d')$**.  
        Luego la suma de clases está **bien definida**. $\blacksquare$
- **Demostración de Buena Definición para el Producto:**
    
    1. Partimos de $a + b' = a' + b$ y $c + d' = c' + d$.
    2. Multiplicando la primera igualdad por $c$ y por $d$ y sumando adecuadamente con los productos de la segunda igualdad por $a'$ y $b'$, tras simplificar se verifica analíticamente que: $$(ac + bd) + (a'd' + b'c') = (ad + bc) + (a'c' + b'd')$$
    3. Por tanto, **$(ac + bd, ad + bc) \mathcal{E} (a'c' + b'd', a'd' + b'c')$**, demostrando que el producto está **bien definido**. $\blacksquare$

---

### **5. Propiedades Algebraicas y el Isomorfismo $\mathbb{N} \cong \mathbb{Z}_+$**

#### **Teorema 5.38 (Estructura Algebraica de los Enteros):**

La terna $(\mathbb{Z}, +, \cdot)$ es un **anillo conmutativo unitario e íntegro (dominio de integridad)**.

- **Elemento Nulo de la Suma:** $0 = [(0, 0)]$.
- **Elemento Opuesto:** El opuesto de $[(a, b)]$ es $-[(a, b)] = [(b, a)]$, pues $[(a, b)] + [(b, a)] = [(a+b, b+a)] = [(0, 0)]$.
- **Elemento Unidad del Producto:** $1 = [(1, 0)]$.
- **Ausencia de Divisores de Cero:** Si $\alpha \cdot \beta = 0 \implies \alpha = 0 \lor \beta = 0$.

---

#### **Teorema (Inclusión Isomórfica de $\mathbb{N}$ en $\mathbb{Z}$):**

La aplicación $f: \mathbb{N} \to \mathbb{Z}$ definida por:

$$f(n) = [(n, 0)]$$

es un **monomorfismo inyectivo de semianillos ordenados** que establece un **isomorfismo estructural entre $\mathbb{N}$ y el subconjunto $\mathbb{Z}_+ = {[(m, 0)] \mid m \in \mathbb{N}}$**.

- **Inyectividad:** $f(n) = f(m) \implies [(n, 0)] = [(m, 0)] \implies n + 0 = m + 0 \implies n = m$.
- **Conservación de Operaciones:**
    - $f(n + m) = [(n + m, 0)] = [(n, 0)] + [(m, 0)] = f(n) + f(m)$.
    - $f(n \cdot m) = [(n \cdot m, 0)] = [(n, 0)] \cdot [(m, 0)] = f(n) \cdot f(m)$.

> **Abuso Aceptado de Notación:** Identificamos plenamente cada natural $n \in \mathbb{N}$ con su imagen entera $[(n, 0)] \in \mathbb{Z}_+$, lo que permite escribir rigurosamente la cadena de inclusiones numéricas: $\mathbb{N} \subset \mathbb{Z}$.

---

### **6. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Comprobar analíticamente que los pares $(7, 3)$, $(12, 8)$ y $(4, 0)$ pertenecen a la misma clase de equivalencia en $\mathbb{Z}$ e identificar su representante canónico.
2. **Ejercicio 2:** Dados $\alpha = [(2, 5)]$ y $\beta = [(4, 1)]$ en $\mathbb{Z}$, calcular explícitamente su suma $\alpha + \beta$ y su producto $\alpha \cdot \beta$ utilizando representantes canónicos y comprobar los resultados.
3. **Ejercicio 3 (Ejercicio 24 del Capítulo 5 del texto base):** Se considera en $\mathbb{Z} \times \mathbb{Z}$ la suma y producto componentes a componente: $(a, b) + (c, d) = (a+c, b+d)$ y $(a, b) \cdot (c, d) = (ac, bd)$. Estudiar si $(\mathbb{Z}^2, +, \cdot)$ es un anillo conmutativo, unitario o íntegro.

---

### **7. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** En la construcción formal de los números enteros $\mathbb{Z}$ como el conjunto cociente $(\mathbb{N} \times \mathbb{N})/\mathcal{E}$, dos pares ordenados $(a, b)$ y $(c, d)$ son equivalentes ($(a, b) \mathcal{E} (c, d)$) si y solo si se cumple la condición:

- **A)** $a + c = b + d$
- **B)** $a + d = b + c$
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - La relación de equivalencia $\mathcal{E}$ en $\mathbb{N} \times \mathbb{N}$ formaliza la igualdad de diferencias cruzando los términos de la resta hipotética $a - b = c - d$.
> - Por consiguiente, la condición formal rigurosa es **$a + d = b + c$** (Axioma de la definición 5.35 del libro de texto base).
> - La opción A sumaría componentes homólogas en lugar de cruzadas, lo cual carece de sentido algebraico para definir la resta.
> - Por lo tanto, la opción **B** es la **correcta**.

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión46_Construcción_números_enteros.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con la jerarquía del Bloque 5, recuadros normativos para las definiciones axiomáticas, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la representación gráfica de clases en el plano $\mathbb{N} \times \mathbb{N}$, las pruebas de consistencia de operaciones y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión46_Construcción_números_enteros.m4a): Enfocado en la necesidad algebraica de ampliar el semianillo $\mathbb{N}$ para dotar de solución universal a la ecuación $b + x = a$, la formalización de la relación de equivalencia $(a, b) \mathcal{E} (c, d) \iff a + d = b + c$, la interpretación geométrica del conjunto cociente $\mathbb{Z} = (\mathbb{N} \times \mathbb{N})/\mathcal{E}$, la prueba de que la suma y el producto están bien definidos, y el isomorfismo $\mathbb{N} \cong \mathbb{Z}_+$.

---
