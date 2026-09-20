¡Hola de nuevo! Siguiendo nuestro **Plan de Trabajo**, hoy abordaremos la **Sesión 2 (Práctica): Gestión de datos en R**.

En esta sesión aprenderás a manejar la estructura de datos más utilizada en R: el **vector**. Veremos cómo crearlos manualmente, cómo realizar operaciones con ellos y, lo más importante para tus prácticas de la UNED, cómo cargar datos desde archivos externos usando la función `scan()`.

---

### **Contenido de la Sesión 2: 

#### **1. Creación de Vectores con `c()`**

Un vector es un conjunto de elementos del mismo tipo (numérico, carácter o lógico) en un orden específico. La forma más sencilla de crearlos es con la función de combinación `c()`.

**Scriptlet de ejemplo:**

```
# Creamos un vector numérico con las notas de un examen
notas <- c(7, 4, 3, 10, 8)

# Consultamos su longitud y tipo
length(notas)   # Resultado: 5
mode(notas)     # Resultado: "numeric"
```

_Nota: Si los elementos son texto (modo `character`), deben ir entre comillas, por ejemplo: `nombres <- c("Pepe", "Juan")`._

#### **2. Selección y Modificación de Elementos**

Para acceder a un dato concreto usamos los corchetes `[]` indicando la posición. En R, los índices empiezan en 1.

**Scriptlet de ejemplo:**

```
notas        # Devuelve el primer elemento: 7
notas[2:4]      # Devuelve los elementos del 2 al 4: 4 3 10
notas <- 5   # Cambiamos el 3 por un 5
```

#### **3. Operaciones Vectoriales**

R permite aplicar funciones a todo el vector de una sola vez. Si operamos con dos vectores de la misma longitud, la operación se realiza elemento a elemento.

**Scriptlet de ejemplo:**

```
sqrt(notas)     # Calcula la raíz cuadrada de cada nota
notas * 2       # Multiplica cada elemento por 2
```

#### **4. Carga de datos con `scan()`**

Cuando los datos están en un archivo de texto plano (`.txt`), usamos `scan()` indicando la ruta del archivo. Es fundamental para trabajar con los problemas de la asignatura que suelen venir en ficheros externos.

**Scriptlet de ejemplo:**

```
# Supongamos que tienes un archivo datos.txt en tu USB (unidad e:)
# En Mac, la ruta sería algo como "/Volumes/USB/datos.txt"
valores <- scan("e:\\datos.txt") # En Windows se usan dobles barras
```

#### **5. Etiquetas con `names()`**

Podemos asignar nombres a los elementos de un vector para que los resultados sean más legibles.

**Scriptlet de ejemplo:**

```
z <- c(7, 4, 3)
names(z) <- c("Primer parcial", "Segundo parcial", "Final")
z
# Resultado:
# Primer parcial Segundo parcial           Final
#              7               4               3
```

---

He procedido a crear la presentación siguiendo estrictamente el **Manual de Estilo** (código monoespaciado, uso de `>` y comentarios) y el audio de apoyo con dos interlocutores para profundizar en estos conceptos.

¡Listo! Ya tienes disponibles los nuevos materiales en la sección **Studio**:

1. **Presentación (Slides):** Incluye los objetivos de la sesión, ejemplos visuales de creación de vectores, el uso de índices y la carga de datos externos, priorizando el enfoque práctico de los créditos ECTS.

	![[Sesión02_Gestión_de_Datos_en_R.pptx]]

1. **Resumen de Audio (Podcast):** Una conversación entre dos expertos que explican por qué el vector es el "átomo" de R, consejos para evitar errores con las rutas de archivos en `scan()` y la importancia de saber indexar correctamente para filtrar datos.

**Sugerencia práctica:** Intenta crear un vector con los años de nacimiento de 5 amigos y luego usa la función `mean()` para calcular la edad media. ¡Es un gran ejercicio para combinar lo visto en la Sesión 1 y 2!

¿Pasamos a la **Sesión 3 (Práctica): Estructuras de datos complejas (Matrices y Data Frames)** o tienes alguna duda sobre los vectores?

He generado los materiales para la **Sesión 2: Gestión de datos en R** según nuestro plan de trabajo.

Aquí tienes el resumen de los contenidos y el estado de los recursos adicionales:

### **Resumen de la Sesión 2: Vectores y Carga de Datos**

En esta sesión práctica nos enfocamos en la unidad básica de información en R: el **vector**.

- **Creación Manual:** Utilizamos la función `c()` para combinar valores. Es fundamental recordar que todos los elementos de un vector deben ser del mismo "modo" (numéricos, caracteres o lógicos).
- **Indexación:** Para extraer o modificar datos específicos, usamos los corchetes `[ ]`. Por ejemplo, `x` accede al primer elemento.
- **Carga de Archivos con `scan()`:** Esta es la herramienta clave para importar datos desde archivos de texto plano (`.txt`). Es muy útil cuando trabajamos con grandes volúmenes de datos que no queremos teclear manualmente.
- **Etiquetado:** Mediante la función `names()`, podemos asignar etiquetas a cada posición del vector para facilitar la interpretación de los resultados.

**Scriptlet de repaso:**

```
# Carga de datos desde un fichero externo
mis_datos <- scan("datos.txt") #

# Ver los primeros 3 elementos
mis_datos[1:3] #

# Asignar nombres a los elementos si fuera necesario
names(mis_datos) <- c("Obs1", "Obs2", "Obs3", ...) #
```

### **Recursos en la sección Studio**

1. **Presentación (Slides):** He creado la presentación siguiendo el **Manual de Estilo**, utilizando fuentes monoespaciadas para el código y mostrando los resultados tal como aparecen en la consola de R.
2. **Audio de apoyo:** Lamentablemente, no he podido generar el resumen de audio en este momento debido a una limitación técnica temporal (cuota agotada). No obstante, podemos profundizar en cualquier concepto de esta sesión mediante este chat si lo necesitas.

**¿Te gustaría que pasemos a la Sesión 3 para ver estructuras más complejas como Matrices y Data Frames, o prefieres practicar un poco más con el uso de `scan()`?**