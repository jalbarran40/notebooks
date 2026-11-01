### Sesión 1: Los Números Naturales y los Axiomas de Peano

#### Bloque Teórico (25 minutos)

El estudio del análisis matemático requiere que no demos nada por sentado. Para construir el sistema de los números reales, empezamos por los cimientos: los **números naturales ($\mathbb{N}$)**, definidos formalmente mediante los **Axiomas de Peano** 1, 3.  
Un sistema de números naturales es un conjunto $\mathbb{N}$ con una función $s: \mathbb{N} \to \mathbb{N}$ (llamada aplicación "siguiente") que cumple tres propiedades fundamentales 2, 3:

1. **Inyectividad:** La función $s$ es inyectiva. Esto garantiza que números naturales distintos tengan "siguientes" distintos 2, 4.  
2. **El origen:** Existe un único elemento, el **1**, que **no es el siguiente de ningún otro número** ($s(n) \neq 1$ para todo $n \in \mathbb{N}$) 2, 4.  
3. **Principio de Inducción:** Si un subconjunto $U$ de $\mathbb{N}$ contiene al 1 y, cada vez que contiene a un número $n$, también contiene a su siguiente $s(n)$, entonces ese subconjunto es, necesariamente, todo el conjunto $\mathbb{N}$ 2, 5.

**Nota importante:** Algunos textos (como Delgado Pineda) incluyen el **0** como primer elemento, pero la guía principal de Fernández Novoa comienza en el **1** 3, 8. En esta asignatura seguiremos el convenio del 1 como base.

#### Bloque Práctico (20 minutos)

Para entender estos axiomas, vamos a razonar con la **función sucesor**. Intuitivamente sabemos que $1+1=2$, pero axiomáticamente lo expresamos así:

* $s(1) = 2$  
* $s(2) = 3$  
* $s(3) = 4$

**Ejercicio de reflexión:** ¿Por qué el Axioma 2 prohíbe que el 1 sea sucesor de alguien? Si el 1 fuera sucesor de, por ejemplo, el 5, los números naturales formarían un "bucle" o círculo ($1, 2, 3, 4, 5, 1...$). Al prohibirlo, Peano asegura que la recta numérica sea infinita y lineal.  

**Preparación para la S2:** El Axioma 3 es el más potente. Piensa en él como una **fila infinita de fichas de dominó**:

1. Empujas la primera ficha (compruebas la propiedad para el 1).  
2. Si una ficha cae, tira a la siguiente (si $n$ cumple la propiedad, $s(n)$ también).**Resultado:** Caen todas las fichas (la propiedad es válida para todo $\mathbb{N}$).

### Materiales de apoyo 
- **Sugerencia del Tutor:** He generado la [**presentación de refuerzo**](Sesión01_Teoría_de_los_números_naturales_y_los_Axiomas_de_Peano.pptx) para que puedas visualizar estos axiomas de forma esquemática. Te recomiendo revisarla antes de nuestra próxima sesión, donde empezaremos a hacer demostraciones reales.  
- [Audio](Sesión01_Teoría_de_los_números_naturales_y_los_Axiomas_de_Peano.m4a)
-