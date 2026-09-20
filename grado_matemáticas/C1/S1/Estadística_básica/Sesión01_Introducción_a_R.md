Esta sesión está diseñada para que te familiarices con el entorno de trabajo que usaremos durante todo el cuatrimestre para aplicar los conceptos estadísticos.

He preparado el contenido teórico-práctico, una presentación visual y una explicación en audio para que elijas el formato que mejor te ayude a aprender.

---

### Sesión 01: Introducción a R

#### **1. ¿Qué es R y por qué lo usamos?**

R es un software de libre distribución que nació como una versión abierta del lenguaje S. En el Grado de Matemáticas de la UNED, lo utilizamos porque es el estándar en la comunidad científica para el análisis de datos y la estadística aplicada.

#### **2. La Consola y las Expresiones**

Al abrir R, verás el símbolo `>` (prompt). Aquí es donde escribes tus instrucciones o "expresiones".

- Para ejecutar una orden, pulsa **Enter**.
- Si una expresión no está terminada, aparecerá el signo `+`, indicándote que R espera que completes la instrucción.

#### **3. Elementos básicos: Objetos y Asignación**

En R, todo se guarda en **objetos**. Para crear un objeto y asignarle un valor, usamos el operador de asignación `<-`.

**Scriptlet de ejemplo:**

```
# Asignamos el valor 10 al objeto 'x'
x <- 10

# Ahora podemos usar 'x' en cálculos
x + 5
# El resultado será 15
```

_Nota: El `` indica la posición del primer valor en el resultado._

#### **4. Reglas para nombres de objetos**

- Deben empezar por una **letra**.
- Pueden contener letras (mayúsculas y minúsculas), números y puntos.
- **Importante:** R distingue entre mayúsculas y minúsculas (`A` es diferente de `a`).

#### **5. R como Calculadora y el uso de Funciones**

R es una potente calculadora matemática. Además, utiliza **funciones**, que son órdenes seguidas de paréntesis que contienen "argumentos".

**Scriptlet de ejemplo:**

```
9 * 8           # Multiplicación -> 72
sqrt(16)        # Raíz cuadrada -> 4
exp(2)          # Exponencial de 2

# Obtener ayuda sobre una función
?sqrt           # Abre el manual de la función raíz cuadrada
```

#### **6. Gestión del Área de Trabajo (Workspace)**

A medida que creas objetos, estos se guardan en la memoria.

- `objects()`: Lista todos los objetos que has creado.
- `rm(nombre_objeto)`: Elimina un objeto específico.
- `q()`: Cierra la sesión de R. El programa te preguntará si quieres guardar la "imagen del área de trabajo". Si dices que sí, tus objetos estarán allí la próxima vez que abras R.

---

#### Materiales complementarios:

1. **Presentación (Slides):** Un resumen visual de los conceptos clave (consola, objetos, asignación y funciones básicas) que puedes usar para repasar rápidamente.
	![[Sesión01_Introducción_a_R.pptx]]
2. **Resumen de Audio (Podcast):** Una conversación detallada entre dos interlocutores que profundiza en la filosofía de R, cómo dar tus primeros pasos sin miedo a la consola y la importancia de gestionar bien tu área de trabajo en la UNED.
	![[Sesión01_Introducción_a_R.m4a]]

#### **Sugerencia práctica para terminar la sesión:** 
Abre tu consola de R y prueba a crear tres objetos: `peso`, `altura` e `imc`. Recuerda que para el IMC la fórmula es `peso / altura^2`. ¡Es la mejor forma de asimilar el uso del operador `<-`!
