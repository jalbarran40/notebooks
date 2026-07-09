
### Sesión 1: Introducción a los Invariantes Lineales y Endomorfismos
1. Definición de Endomorfismo

Un **endomorfismo** es una aplicación lineal (f: V \to V) de un espacio vectorial de tipo finito en sí mismo. En el contexto de esta asignatura, trabajaremos principalmente sobre los cuerpos de los números reales ((\mathbb{R})) o complejos ((\mathbb{C})).

2. Equivalencia Lineal y Semejanza de Matrices

El estudio de los endomorfismos busca comprender su comportamiento cualitativo de manera independiente a la base elegida.

- **Equivalencia lineal:** Dos endomorfismos (f) y (g) son linealmente equivalentes si representan la misma transformación bajo distintos sistemas de coordenadas.
- **Semejanza:** En términos matriciales, dos matrices cuadradas (A) y (B) son **semejantes** si existe una matriz invertible (P) tal que (B = P^{-1}AP). Las matrices semejantes representan al mismo endomorfismo respecto a bases diferentes.

3. Concepto de Invariante Lineal

Un **invariante lineal** es una propiedad o valor que permanece inalterado por cambios de base (es decir, es común a todas las matrices semejantes). Algunos de los invariantes más importantes son:

- **El rango:** Dimensión de la imagen de la aplicación.
- **La traza:** Suma de los elementos de la diagonal principal de la matriz.
- **El determinante:** El valor del determinante de la matriz asociada.
- **El polinomio característico:** Un objeto fundamental que estudiaremos en sesiones posteriores y que determina otros invariantes como los autovalores.

4. Subespacios Invariantes

Un concepto capital en la clasificación de endomorfismos es el de **subespacio invariante**.

- **Definición:** Un subespacio vectorial (W \subseteq V) es **f-invariante** si la imagen de cualquier vector de (W) vuelve a caer dentro de (W), es decir, (f(W) \subseteq W).
- **Ejemplos fundamentales:** Para cualquier endomorfismo (f), los siguientes subespacios son siempre invariantes:
    1. El subespacio nulo ({0}).
    2. El espacio total (V).
    3. El núcleo de la aplicación, (\ker(f)).
    4. La imagen de la aplicación, (\text{im}(f)).

5. Motivación: El problema de la clasificación

El objetivo final es encontrar una representación matricial lo más sencilla posible (como la **forma canónica de Jordan**) que permita identificar si dos endomorfismos son "esencialmente el mismo" basándose en sus invariantes. La identificación de subespacios invariantes permite "descomponer" el espacio en bloques más pequeños y manejables para simplificar la matriz asociada.

### Material de apoyo
- [Presentación](Sesión01_Introducción_al_Lenguaje_Matricial.pptx)
- [Audio](Sesión01_Introducción_al_Lenguaje_Matricial.m4a)