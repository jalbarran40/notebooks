Bienvenido a tu primera sesión de trabajo. Hoy sentaremos las bases de la asignatura y comenzaremos con el primer pilar de la Teoría de Números. He generado para ti una presentación visual y un resumen en audio que podrás consultar en la sección de materiales.

A continuación, el contenido detallado de la **Sesión 1**:

### 1. ¿Qué es la Matemática Discreta?
La matemática discreta es la disciplina dedicada al estudio de **conjuntos y procesos discretos**, siendo el concepto "discreto" el opuesto a "continuo". Mientras que en la matemática continua trabajamos con estructuras como la recta real, donde entre dos puntos siempre hay infinitos más, en la discreta trabajamos con elementos distintos y separados.

Los ejemplos más claros de conjuntos discretos son los **conjuntos finitos** y el conjunto de los **números enteros** ($\mathbb{Z}$). Esta rama es fundamental hoy en día porque es el lenguaje en el que trabajan los ordenadores, los cuales manejan cantidades finitas de datos y ejecutan procesos en un número finito de pasos.

### 2. El Concepto de Procesos Finitos
Un proceso finito es aquel que se desarrolla en un número limitado de pasos. En el contexto de la informática y la matemática discreta, esto es esencial para el diseño de **algoritmos**, que son secuencias de instrucciones que llevan a un resultado deseado en un tiempo finito.

### 3. El Algoritmo de la División
Entramos de lleno en la **Teoría Elemental de Números**. El Algoritmo de la División es un teorema fundamental que garantiza que, dados dos números enteros, siempre podemos realizar una división única con un resto controlado.

**Teorema:**
Sean $a \in \mathbb{Z}$ (dividendo) y $b \in \mathbb{N}$ (divisor). Entonces existen números enteros únicos $q$ (cociente) y $r$ (resto) tales que:
$$a = bq + r$$
con la condición crucial de que **$0 \le r < b$**.

*   **Unicidad:** Este teorema asegura que solo existe un par de números $(q, r)$ que cumplen estas condiciones para un $a$ y $b$ dados.
*   **Terminología:** Al número $a$ se le llama dividendo, a $b$ divisor, a $q$ cociente y a $r$ resto.

**Ejemplos rápidos:**
*   Si $a = 7$ y $b = 3$, entonces $7 = 3 \cdot 2 + 1$. Aquí $q = 2$ y $r = 1$ (observa que $0 \le 1 < 3$).
*   Si el dividendo es negativo, por ejemplo $a = -15$ y $b = 8$, tenemos $-15 = 8 \cdot (-2) + 1$. Aquí $q = -2$ y $r = 1$.

---
**Material de apoyo generado:**
*   **Presentación:** Una guía visual con las definiciones clave y ejemplos del algoritmo.
![[Sesión01_Introducción_a_la_matemática_discreta_y_el_concepto_de_procesos_finitos. Definición_del_algoritmo_de_la_división_en_los_enteros.pptx]]
*   **Resumen de audio:**: Un repaso rápido de 5 minutos sobre la importancia de lo discreto y la mecánica de la división.
![[Sesión01_Introducción_a_la_matemática_discreta_y_el_concepto_de_procesos_finitos. Definición_del_algoritmo_de_la_división_en_los_enteros.m4a]]
