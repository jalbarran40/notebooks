# **SESIÓN 20 (PRÁCTICA): REPRESENTACIÓN GRÁFICA DEL PRODUCTO CARTESIANO EN EL PLANO EUCLÍDEO**

**Duración:** 45 minutos  
**Bloque:** BLOQUE 2: CONJUNTOS (Capítulo 2)  
**Objetivo:** Dominar la representación geométrica del producto cartesiano $A \times B$, distinguiendo de forma rigurosa entre conjuntos discretos (diagramas de coordenadas formados por puntos aislados) y conjuntos continuos (regiones rectangulares, bandas o franjas en el plano euclídeo $\mathbb{R}^2 = \mathbb{R} \times \mathbb{R}$). Aplicar **GeoGebra** para la visualización de inecuaciones e intervalos.

---

### **1. Marco Teórico: Representación Gráfica de $A \times B$**

El producto cartesiano $A \times B = {(x, y) \mid x \in A \land y \in B}$ se representa en un sistema de ejes ortogonales (ejes de coordenadas cartesianas), situando los elementos del primer conjunto $A$ en el **eje horizontal** (eje de abscisas) y los del segundo conjunto $B$ en el **eje vertical** (eje de ordenadas).

La naturaleza geométrica del gráfico depende de la estructura de los conjuntos $A$ y $B$:

#### **A. Caso Discreto (Conjuntos Finitos o Numerables)**

- Si $A$ y $B$ son conjuntos finitos con $\text{card}(A) = m$ y $\text{card}(B) = n$, el producto $A \times B$ se representa mediante una **red o grilla de $m \cdot n$ puntos aislados** en el plano.
- Se trazan rectas verticales por cada elemento de $A$ y rectas horizontales por cada elemento de $B$; los puntos de intersección constituyen el conjunto $A \times B$.

#### **B. Caso Continuo (Intervalos de Números Reales en $\mathbb{R}^2$)**

- Cuando $A$ y $B$ son subconjuntos continuos de $\mathbb{R}$ (intervalos), el producto cartesiano $A \times B$ pasa de ser una colección de puntos a representar **regiones bidimensionales completas** (rectángulos, franjas o tiras en el plano euclídeo).

---

### **2. Producto de Intervalos y Convenio de Fronteras en $\mathbb{R}^2$**

Para dos intervalos $I_1, I_2 \subseteq \mathbb{R}$, el producto $I_1 \times I_2$ determina una región en el plano $\mathbb{R}^2$:

|Tipo de Producto|Expresión Analítica|Representación Geométrica|
|:--|:--|:--|
|**Intervalos Cerrados**|$[a, b] \times [c, d] = {(x,y) \in \mathbb{R}^2 \mid a \le x \le b \land c \le y \le d}$|Rectángulo cerrado con todos sus **bordes sólidos/continuos**.|
|**Intervalos Abiertos**|$(a, b) \times (c, d) = {(x,y) \in \mathbb{R}^2 \mid a < x < b \land c < y < d}$|Rectángulo abierto con todos sus **bordes punteados/discontinuos**.|
|**Intervalos Semiabiertos**|$[a, b) \times (c, d] = {(x,y) \in \mathbb{R}^2 \mid a \le x < b \land c < y \le d}$|Rectángulo con borde sólido en los límites incluidos ($x=a, y=d$) y borde punteado en los no incluidos ($x=b, y=c$).|
|**Franjas No Acotadas**|$[a, b] \times \mathbb{R} = {(x,y) \in \mathbb{R}^2 \mid a \le x \le b}$|Banda vertical infinita delimitada por las rectas verticales $x=a$ y $x=b$.|

---

### **3. Guía de Visualización con GeoGebra**

De acuerdo con el _Manual_de_Estilo_Presentaciones_, utilizaremos GeoGebra para la representación de regiones del plano definidas por inecuaciones.

#### **Comandos e Inecuaciones en GeoGebra:**

- Para representar el producto cartesiano de los intervalos $A =$ y $B = [-2, 3]$:
    - En la barra de entrada de GeoGebra, teclea directamente la conjunción lógica de inecuaciones: `1 <= x && x <= 4 && -2 <= y && y <= 3`
    - GeoGebra sombreará automáticamente la región rectangular correspondiente y dibujará las líneas de contorno continuas o discontinuas según corresponda a la inclusión del borde.

---

### **4. Ejercicios Prácticos de la Sesión (45 minutos)**

#### **Ejercicio 1: Asimetría del Producto Cartesiano (Discreto vs. Continuo)**

**Enunciado:** Sean los conjuntos $A = {1, 2, 3}$ y $B = \subseteq \mathbb{R}$.

1. Representar gráficamente $A \times B$ en el plano cartesiano.
2. Representar gráficamente $B \times A$.
3. Concluir si $A \times B = B \times A$.

- **Resolución Paso a Paso:**
    1. **Análisis de $A \times B$:**  
        $A \times B = {(x, y) \in \mathbb{R}^2 \mid x \in {1, 2, 3} \land 1 \le y \le 3}$.  
        Geométricamente, para cada $x \in {1, 2, 3}$ fijo, $y$ varía continuamente entre $1$ y $3$. El gráfico consta de **3 segmentos verticales paralelos al eje Y** de longitud $2$, situados sobre las rectas $x = 1$, $x = 2$ y $x = 3$.
    2. **Análisis de $B \times A$:**  
        $B \times A = {(x, y) \in \mathbb{R}^2 \mid 1 \le x \le 3 \land y \in {1, 2, 3}}$.  
        Geométricamente, para cada $y \in {1, 2, 3}$ fijo, $x$ varía continuamente entre $1$ y $3$. El gráfico consta de **3 segmentos horizontales paralelos al eje X** de longitud $2$, situados sobre las rectas $y = 1$, $y = 2$ y $y = 3$.
    3. **Conclusión:** Dado que las figuras geométricas no coinciden en el plano (una es un conjunto de segmentos verticales y la otra de segmentos horizontales), se comprueba visualmente que **$A \times B \neq B \times A$** (el producto cartesiano no es conmutativo).

---

#### **Ejercicio 2: Región Definida por Inecuaciones Combinadas**

**Enunciado:** Representar en el plano euclídeo $\mathbb{R}^2$ el producto cartesiano del intervalo semiabierto $I_1 = [-2, 3)$ por el intervalo cerrado $I_2 =$.

- **Resolución Paso a Paso:**
    1. Expresión analítica: $I_1 \times I_2 = {(x, y) \in \mathbb{R}^2 \mid -2 \le x < 3 \land 1 \le y \le 4}$.
    2. Trazado de fronteras en el plano:
        - Límite izquierdo ($x = -2$ con $-2 \le x$): Se dibuja como una **línea recta vertical sólida** desde $y=1$ hasta $y=4$.
        - Límite derecho ($x = 3$ con $x < 3$): Se dibuja como una **línea recta vertical punteada/discontinua** desde $y=1$ hasta $y=4$.
        - Límite inferior ($y = 1$ con $1 \le y$): Se dibuja como una **línea recta horizontal sólida** desde $x=-2$ hasta $x=3$.
        - Límite superior ($y = 4$ con $y \le 4$): Se dibuja como una **línea recta horizontal sólida** desde $x=-2$ hasta $x=3$.
    3. El área encerrada por estas cuatro rectas se sombea completamente.

---

### **5. Pregunta de Autoevaluación (Estilo PEC)**

**Enunciado:** Sean los conjuntos $A =$ y $B = {1, 3}$. ¿Cuál de las siguientes afirmaciones sobre la representación gráfica de $A \times B$ en el plano euclídeo $\mathbb{R}^2$ es **verdadera**?

- **A)** Es una región rectangular maciza de área igual a $4$.
- **B)** Consiste en dos segmentos de recta horizontales paralelos al eje $X$, de longitud $2$, situados en $y = 1$ y $y = 3$.
- **C)** Ninguna de las anteriores.

> **Solución Explicada:**
> 
> - $A \times B = {(x, y) \in \mathbb{R}^2 \mid 0 \le x \le 2 \land (y = 1 \lor y = 3)}$.
> - Para $y = 1$, $x$ varía en $$, lo que da el segmento horizontal desde $(0, 1)$ hasta $(2, 1)$.
> - Para $y = 3$, $x$ varía en $$, lo que da el segmento horizontal desde $(0, 3)$ hasta $(2, 3)$.
> - Por tanto, la gráfica consta de **dos segmentos horizontales** paralelos al eje $X$.
> - La opción **B** es la **correcta**.

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión20_Representación_del_producto_cartesiano.pptx): Elaborada conforme al _Manual_de_Estilo_Presentaciones_, con la estructura por bloques, notación oficial de la UNED, recuadros de comandos para GeoGebra y la pregunta de autoevaluación.
- [**Resumen de Audio**](Audios/Sesión20_Representación_del_producto_cartesiano.m4a): Enfocado en la distinción entre representaciones discretas (rejillas de puntos) y continuas (regiones planas e intervalos), el trazado de fronteras abiertas y cerradas en $\mathbb{R}^2$, y la demostración visual de la no conmutatividad de $A \times B$.