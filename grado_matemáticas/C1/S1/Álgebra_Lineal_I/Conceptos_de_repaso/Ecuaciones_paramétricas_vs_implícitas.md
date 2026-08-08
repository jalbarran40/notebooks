En el estudio de los espacios vectoriales, la diferencia entre **ecuaciones implícitas** (o cartesianas) y **ecuaciones paramétricas** radica fundamentalmente en cómo describen el subespacio: las primeras lo definen mediante **condiciones** que deben cumplir sus vectores, mientras que las segundas lo describen a través de sus **generadores**.

Aquí tienes el desglose detallado de sus diferencias, características y la forma de pasar de una a otra:

### 1. Ecuaciones Paramétricas: El subespacio como "Imagen"

Las ecuaciones paramétricas describen un subespacio vectorial \(V\) como el conjunto de todas las **combinaciones lineales** de un sistema de generadores (o una base).

- **Concepto:** Representan la construcción del espacio desde sus "ladrillos" básicos. Conceptualmente, describen el subespacio como la **Imagen (\(Im(f)\))** de una aplicación lineal.
- **Estructura:** Se expresan igualando cada coordenada a una combinación de parámetros (\(\lambda_1, \lambda_2, \dots, \lambda_k\)). Por ejemplo: \[x_i = a_{i1}\lambda_1 + a_{i2}\lambda_2 + \dots + a_{ik}\lambda_k\]
- **Parámetros:** El número de parámetros independientes coincide exactamente con la **dimensión** del subespacio.
- **Utilidad:** Son ideales para generar vectores que sabemos con certeza que pertenecen al subespacio simplemente dando valores a los parámetros.

### 2. Ecuaciones Implícitas (Cartesianas): El subespacio como "Núcleo"

Las ecuaciones implícitas definen el subespacio mediante un **sistema de ecuaciones lineales homogéneas** que los vectores deben satisfacer para "poder entrar" en el subespacio.

- **Concepto:** Representan las restricciones o leyes que rigen el subespacio. Conceptualmente, describen el subespacio como el **Núcleo (\(Ker(f)\))** de una aplicación lineal.
- **Estructura:** Son igualdades de la forma \(AX = 0\). Por ejemplo: \[c_{11}x_1 + c_{12}x_2 + \dots + c_{1n}x_n = 0\]
- **Número de ecuaciones:** En un espacio de dimensión \(n\), un subespacio de dimensión \(k\) requiere **\(n - k\)** ecuaciones implícitas linealmente independientes (lo que se conoce como la _codimensión_).
- **Utilidad:** Son la herramienta perfecta para verificar si un vector concreto pertenece o no al subespacio; basta con sustituir sus coordenadas en las ecuaciones y ver si el resultado es cero.

### 3. Resumen comparativo

|Característica|Ecuaciones Paramétricas|Ecuaciones Implícitas|
|:--|:--|:--|
|**Visión**|El subespacio como **Generado**.|El subespacio como **Restricción**.|
|**Rol Algebraico**|Es la **Imagen** de una aplicación.|Es el **Núcleo** de una aplicación.|
|**Componentes**|Las columnas son los **generadores**.|Las filas son los **vectores normales**.|
|**Cantidad**|\(k\) parámetros (dimensión).|\(n - k\) ecuaciones (codimensión).|
|**Uso principal**|Para "fabricar" vectores del espacio.|Para "testear" si un vector es del espacio.|

### 4. ¿Cómo pasar de unas a otras?

- **De Implícitas a Paramétricas:** Se debe **resolver el sistema homogéneo**. Al resolverlo por Gauss-Jordan, las variables libres se convierten en los parámetros y la solución general nos da los vectores de la base.
- **De Paramétricas a Implícitas:** Se deben **eliminar los parámetros**. Esto se hace típicamente planteando una matriz con las coordenadas del vector genérico y los generadores, e imponiendo que el determinante (o los menores de orden superior al rango) sea cero para asegurar la compatibilidad del sistema.

**Consejo de examen:** Si te piden calcular la **intersección** de dos subespacios, lo más fácil es reunir las ecuaciones **implícitas** de ambos en un solo sistema. Si te piden la **suma**, lo más directo es unir sus sistemas de **generadores** (base de las paramétricas).