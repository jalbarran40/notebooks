# **SESIÓN 49 (PRÁCTICA): CÁLCULO DE M.C.D. Y RESOLUCIÓN DE ECUACIONES DIOFÁNTICAS SENCILLAS**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 5: LOS NÚMEROS NATURALES Y LOS ENTEROS (Capítulo 5)  
**Objetivo:** Dominar el algoritmo para la resolución de **ecuaciones diofánticas lineales de dos variables** de la forma $a x + b y = c$ (con $a, b, c \in \mathbb{Z}$ no nulos), aplicar la **Identidad de Bézout** para hallar una **solución particular $(x_0, y_0)$** mediante el **Algoritmo de Euclides**, caracterizar la condición de existencia de soluciones (**$d = \text{mcd}(a, b) \mid c$**), parametrizar la **familia completa de soluciones enteras**, y resolver problemas contextualizados de examen con restricciones de positividad ($x \ge 0, y \ge 0$).

---

### **1. Resumen Metodológico: Esquema General de Resolución (Estándar UNED)**

Una **ecuación diofántica lineal** en dos variables es una ecuación algebraica con coeficientes enteros cuya búsqueda de soluciones se restringe estrictamente al conjunto de los números enteros: $$a x + b y = c \quad \text{con } a, b, c \in \mathbb{Z}, , a \neq 0, b \neq 0$$

#### **Algoritmo de Resolución en 4 Pasos para el Examen Presencial de Desarrollo:**

1. **Paso 1: Cálculo del $d = \text{mcd}(a, b)$ mediante el Algoritmo de Euclides.**  
    Se aplican divisiones enteras sucesivas hasta obtener el último resto no nulo.
2. **Paso 2: Criterio de Solvencia (Proposición 2.2.5 / Teorema de Existencia).**  
    La ecuación $ax + by = c$ posee soluciones enteras **si y solo si $d = \text{mcd}(a, b)$ divide exactamente a $c$** ($d \mid c$).
    - Si $d \nmid c$, se concluye de forma inmediata que **la ecuación NO tiene soluciones en $\mathbb{Z}$** (demostración por contradicción inmediata, pues $d \mid a$ y $d \mid b \implies d \mid (ax+by) = c$).
    - Si $d \mid c$, existe un entero $k \in \mathbb{Z}$ tal que $c = k \cdot d$ y la ecuación admite **infinitas soluciones enteras**.
3. **Paso 3: Obtención de una Solución Particular $(x_0, y_0)$.**  
    Mediante el despeje regresivo de restos en las divisiones de Euclides, obtenemos los coeficientes de Bézout $u, v \in \mathbb{Z}$ tales que $a u + b v = d$.  
    Multiplicando por $k = \frac{c}{d}$, obtenemos una solución particular: $$x_0 = u \cdot \left(\frac{c}{d}\right), \quad y_0 = v \cdot \left(\frac{c}{d}\right)$$
4. **Paso 4: Expresión de la Familia Completa de Soluciones Enteras (Proposición 2.2.6).**  
    Todas las soluciones de la ecuación en $\mathbb{Z} \times \mathbb{Z}$ vienen dadas por la parametrización: $$x = x_0 + \left(\frac{b}{d}\right) k, \quad y = y_0 - \left(\frac{a}{d}\right) k \quad (k \in \mathbb{Z})$$

---

### **2. Batería de Ejercicios Resueltos de Examen (Texto Base)**

#### **Ejercicio 1: Resolución de una Ecuación Diofántica Lineal con Solución**

**Enunciado:** Hallar todas las soluciones enteras de la ecuación diofántica: $$4704 x + 903 y = 42$$

- **Resolución Paso a Paso (Estándar UNED):**
    
    1. **Cálculo del $\text{mcd}(4704, 903)$ con Euclides:**  
        (Obtenido en la Sesión 48):  
        $$4704 = 5 \cdot 903 + 189$$ $$903 = 4 \cdot 189 + 147$$ $$189 = 1 \cdot 147 + 42$$ $$147 = 3 \cdot 42 + 21$$ $$42 = 2 \cdot 21 + 0$$ El último resto no nulo es $21$, luego **$d = \text{mcd}(4704, 903) = 21$**.
        
    2. **Verificación del Criterio de Solvencia:**  
        Comprobamos si $d = 21$ divide a $c = 42$: $$\frac{42}{21} = 2 \implies 21 \mid 42$$ Como el m.c.d. divide a $c$, **la ecuación posee infinitas soluciones en $\mathbb{Z}$**.
        
    3. **Cálculo de la Solución Particular $(x_0, y_0)$:**  
        Mediante el despeje regresivo de restos (Sesión 48), obtuvimos la Identidad de Bézout: $$4704 \cdot (-19) + 903 \cdot (99) = 21$$ Multiplicando toda la igualdad por $k = \frac{42}{21} = 2$: $$4704 \cdot (-19 \cdot 2) + 903 \cdot (99 \cdot 2) = 21 \cdot 2 = 42$$ $$4704 \cdot (-38) + 903 \cdot (198) = 42$$ Obtenemos la solución particular **$x_0 = -38$** e **$y_0 = 198$**.
        
    4. **Parametrización de la Solución General:**  
        Calculamos los pasos de avance de la solución: $$\frac{b}{d} = \frac{903}{21} = 43, \quad \frac{a}{d} = \frac{4704}{21} = 224$$ Por consiguiente, la familia completa de soluciones enteras en $\mathbb{Z} \times \mathbb{Z}$ es: $$\begin{cases} x = -38 + 43 k \ y = 198 - 224 k \end{cases} \quad (k \in \mathbb{Z})$$
        

---

#### **Ejercicio 2: Inexistencia de Solución Entera**

**Enunciado:** Demostrar analíticamente que la ecuación diofántica $6x + 9y = 5$ no admite ninguna solución en el conjunto de los números enteros $\mathbb{Z}$.

- **Resolución Paso a Paso:**
    
    1. **Cálculo del m.c.d.:**  
        $d = \text{mcd}(6, 9) = 3$.
        
    2. **Aplicación del Criterio de Solvencia:**  
        Analizamos si $3$ divide a $5$. Como $5 = 1 \cdot 3 + 2$, el resto es $2 \neq 0$, por lo que **$3 \nmid 5$**.
        
    3. **Demostración Rigurosa por Reducción al Absurdo:**  
        Supongamos por contradicción que existiera una pareja de enteros $(x_1, y_1) \in \mathbb{Z} \times \mathbb{Z}$ tal que $6 x_1 + 9 y_1 = 5$.  
        Sacando factor común $3$ en el miembro izquierdo: $$3 \cdot (2 x_1 + 3 y_1) = 5$$ Como $x_1, y_1 \in \mathbb{Z}$, la expresión $m = 2 x_1 + 3 y_1$ es un número entero ($m \in \mathbb{Z}$).  
        Esto significaría que $3 \cdot m = 5$, lo que implica que $3 \mid 5$, lo cual es una **contradicción manifiesto en $\mathbb{Z}$**.
        
        **Conclusión:** La ecuación **$6x + 9y = 5$ no tiene solución en $\mathbb{Z}$**. $\blacksquare$
        

---

#### **Ejercicio 3: Problema Aplicado con Restricción de Soluciones Positivas (Texto Base)**

**Enunciado:** Una persona desea comprar $430 dólares en cheques de viaje. Dichos cheques existen únicamente en denominaciones de $20 y $50 dólares. ¿Cuántos cheques de cada tipo debe adquirir?

- **Resolución Paso a Paso (Ejemplo F del libro base Dorronsoro & Hernández):**
    
    1. **Planteamiento:**  
        Sean $x$ la cantidad de cheques de $20 y $y$ la cantidad de cheques de $50. Se exige hallar soluciones **enteras y no negativas** ($x \ge 0, y \ge 0$) de la ecuación: $$20 x + 50 y = 430 \iff 2 x + 5 y = 43$$
        
    2. **Cálculo del m.c.d. y Solvencia:**  
        $d = \text{mcd}(2, 5) = 1$. Como $1 \mid 43$, existen soluciones.
        
    3. **Solución Particular:**  
        Por inspección directa o Bézout para $2x + 5y = 1$: $2(-2) + 5(1) = 1$.  
        Multiplicando por 43: $$2 \cdot (-86) + 5 \cdot (43) = 43 \implies x_0 = -86, \quad y_0 = 43$$
        
    4. **Solución General en $\mathbb{Z}$:**  
        $$x = -86 + 5 k, \quad y = 43 - 2 k \quad (k \in \mathbb{Z})$$
        
    5. **Imposición de la Restricción de Positividad ($x \ge 0, y \ge 0$):**  
        $$\begin{cases} -86 + 5k \ge 0 \implies 5k \ge 86 \implies k \ge \frac{86}{5} = 17,2 \ 43 - 2k \ge 0 \implies 2k \le 43 \implies k \le \frac{43}{2} = 21,5 \end{cases}$$ Como $k \in \mathbb{Z}$, los únicos valores enteros posibles para $k$ son: **$k \in {18, 19, 20, 21}$**.
        
    6. **Listado de Soluciones Válidas para el Problema:**
        
    
    | Valor de $k$ | Cheques de $20 ($x = -86 + 5k$) | Cheques de $50 ($y = 43 - 2k$) | Comprobación ($20x + 50y$) | | :---: | :---: | :---: | :---: | | **$k = 18$** | $x = -86 + 90 = \mathbf{4}$ | $y = 43 - 36 = \mathbf{7}$ | $20(4) + 50(7) = 80 + 350 = 430$ | | **$k = 19$** | $x = -86 + 95 = \mathbf{9}$ | $y = 43 - 38 = \mathbf{5}$ | $20(9) + 50(5) = 180 + 250 = 430$ | | **$k = 20$** | $x = -86 + 100 = \mathbf{14}$ | $y = 43 - 40 = \mathbf{3}$ | $20(14) + 50(3) = 280 + 150 = 430$ | | **$k = 21$** | $x = -86 + 105 = \mathbf{19}$ | $y = 43 - 42 = \mathbf{1}$ | $20(19) + 50(1) = 380 + 50 = 430$ |
    
    Existen exactamente **4 combinaciones posibles de cheques**.
    

---

### **3. Ejercicios Propuestos para Trabajo Personal (45 min)**

1. **Ejercicio 1:** Resolver la ecuación diofántica $12 x + 25 y = 331$ hallando la solución general y determinando si existen soluciones en enteros positivos ($x > 0, y > 0$).
2. **Ejercicio 2:** Estudiar la existencia de soluciones para la ecuación $15 x - 21 y = 10$.
3. **Ejercicio 3 (Ejercicio 12 del Capítulo 5 del texto base):** Un pasillo rectangular de $860\text{ cm}$ de largo y $240\text{ cm}$ de ancho se ha embaldosado con baldosas cuadradas de la mayor dimensión posible para que quepan un número entero de ellas. ¿Cuál es la dimensión de cada baldosa y cuántas se han empleado?

---

### **4. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Dada la ecuación diofántica lineal $18 x + 24 y = c$ con $c \in \mathbb{Z}$, ¿para qué valor de $c$ entre los siguientes **NO existe** ninguna solución entera en $\mathbb{Z} \times \mathbb{Z}$?

- **A)** $c = 12$
- **B)** $c = 15$
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - Calculamos el m.c.d. de los coeficientes: $d = \text{mcd}(18, 24) = 6$.
> - Por el criterio de solvencia (Proposición 2.2.5), la ecuación admite soluciones enteras si y solo si $d = 6$ divide al término independiente $c$ ($6 \mid c$).
> - Para la opción A ($c = 12$): $6 \mid 12$ (puesto que $12 = 6 \cdot 2$), luego **sí tiene solución**.
> - Para la opción B ($c = 15$): $6 \nmid 15$ (puesto que $15 = 6 \cdot 2 + 3$), luego **no tiene solución entera**.
> - Por lo tanto, la opción **B** es la **correcta**.

## Material de apoyo

- [**Presentación**](Presentaciones/Sesión49_Cálculo_del_mcd.pptx): Maquetada conforme al _AAA_Manual_de_Estilo_Presentaciones_, con la jerarquía del Bloque 5, recuadros normativos para el Teorema de Solvencia de Ecuaciones Diofánticas, la Identidad de Bézout, el escape estricto de llaves `\{` y `\}`, la notación oficial `\varnothing` para el conjunto vacío, la resolución paso a paso del Algoritmo de Euclides y la pregunta de autoevaluación.
- [**Resumen de audio**](Audios/Sesión49_Cálculo_del_mcd.m4a): Enfocado en la transición de la teoría de divisibilidad a la resolución práctica de ecuaciones diofánticas lineales $ax + by = c$, la justificación del criterio de solvencia $d \mid c$, la obtención de soluciones particulares mediante el despeje regresivo en el Algoritmo de Euclides, la parametrización general $x = x_0 + \frac{b}{d}k$ e $y = y_0 - \frac{a}{d}k$, la búsqueda de soluciones no negativas para problemas aplicados y las recomendaciones de redacción formal para el examen de la UNED.

---
