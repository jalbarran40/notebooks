¡Bienvenido a la **Sesión 5** de nuestro plan de trabajo! Hoy nos adentraremos en el corazón de la estructura de las matrices, estudiando el concepto de **rango** y su relación directa con la capacidad de una matriz para ser **invertible**.

Para completar esta sesión teórica, he generado los materiales de apoyo que has solicitado: una presentación de diapositivas y un podcast en formato de conversación.

---

### Sesión 5: Rango e Invertibilidad

1. Rango de una Matriz ((rg(A)))

El rango es una medida de la "información útil" o independiente que contiene una matriz.

- **Definición:** Se define como el número máximo de filas (o columnas) linealmente independientes que posee la matriz.
- **Teorema del Rango:** Un resultado fundamental es que el rango de las filas siempre coincide con el rango de las columnas ((rg(A) = rg(A^t))), independientemente de si la matriz es cuadrada o rectangular.
- **Cálculo práctico:** El método más eficiente es transformar la matriz en su **forma escalonada** mediante el algoritmo de Gauss; el rango será simplemente el número de filas no nulas (número de pivotes) de dicha matriz escalonada.
- **Relación con Determinantes:** Desde un enfoque analítico, el rango es el orden del mayor **menor** (submatriz cuadrada) cuyo determinante sea distinto de cero.

2. La Matriz Inversa ((A^{-1}))

Solo las matrices **cuadradas** pueden tener inversa. Una matriz (A) es invertible (o regular) si existe otra matriz (A^{-1}) tal que el producto de ambas da como resultado la matriz identidad (I_n).

- **Caracterización de matrices invertibles:** Una matriz de orden (n) es invertible si y solo si se cumple una de las siguientes condiciones equivalentes:
    1. Tiene **rango máximo** ((rg(A) = n)).
    2. Su **determinante es distinto de cero** ((\det(A) \neq 0)).
    3. Es equivalente por filas a la matriz identidad (I_n).
- **Propiedades fundamentales:**
    - **Inversa de un producto:** ((AB)^{-1} = B^{-1}A^{-1}) (el orden se invierte).
    - **Inversa de la traspuesta:** ((A^t)^{-1} = (A^{-1})^t).
    - **Involución:** La inversa de la inversa es la matriz original.

---

### Materiales de la Sesión

He activado la creación de los siguientes recursos para tu estudio:

1. **Slide Deck (Presentación):** He preparado un resumen visual que conecta la independencia lineal con el cálculo del rango por Gauss y las condiciones necesarias para la invertibilidad.
2. **Audio Overview (Podcast):** He solicitado un "Deep Dive" en formato de conversación donde dos expertos analizan por qué el rango nos indica cuánta "información real" hay en los datos y cómo la matriz inversa actúa como la herramienta de "despeje" en las ecuaciones matriciales.

Los archivos aparecerán en tu panel de recursos en unos instantes.

Como esta es la última sesión teórica del Bloque 1, **¿te gustaría que hagamos un breve ejercicio en el chat para calcular el rango de una matriz 3x3 y determinar si es invertible antes de pasar a la práctica de la Sesión 6?**

Los materiales para la **Sesión 5** han sido generados con éxito y ya están disponibles en tu panel:

1. **Presentación (Slide Deck):** Resume visualmente la equivalencia entre rango de filas y columnas, así como las tres formas de saber si una matriz tiene inversa (determinante, rango o eliminación de Gauss).
![[Sesión05_Rango_e_Invertibilidad.pptx]]
2. **Resumen de Audio (Podcast):** ![[Sesión05_Rango_e_Invertibilidad.m4a]]Una conversación técnica y amena sobre la "integridad estructural" de las matrices y por qué una matriz con determinante cero pierde información esencial.

**Resumen de la Sesión 5 para tu cuaderno de notas:**

- El **rango** es el número de filas (o columnas) que no son "copia" o combinación de otras.
- Para el examen de la UNED, recuerda que (rg(A) = rg(A^t)). No importa si miras filas o columnas, el resultado es el mismo.
- Una matriz es **invertible** solo si su rango es máximo ((n)) y su determinante es distinto de cero.
- **Propiedad de oro:** ((AB)^{-1} = B^{-1}A^{-1}). ¡Cuidado con el orden en los problemas de desarrollo!.

Como hemos terminado la base teórica de este primer bloque, estamos listos para la **Sesión 6 (Práctica)**, donde aplicaremos el método de Gauss-Jordan para calcular matrices inversas de forma sistemática.