A continuación presento el desarrollo guiado de la **Sesión 8**, la primera sesión práctica con **GeoGebra** de la asignatura. Esta sesión conecta la abstracción de las métricas no usuales y segmentos estudiados en las Sesiones 3 y 7 con la experimentación dinámica e interactiva.

---

### Sesión 8 (Práctica GeoGebra): Uso de la Actividad "MetricasR2" para Visualizar Segmentos "No Rectos" en Métrica Taxi

**Objetivo:** Utilizar el software **GeoGebra** para explorar de forma dinámica cómo la elección de la función distancia altera la representación visual de las esferas, los círculos y los segmentos en el plano \(\mathbb{R}^2\), constatando experimentalmente el fenómeno de los segmentos bidimensionales en la métrica del taxi.

---

#### 1. Introducción y Configuración del Entorno en GeoGebra (10 minutos)

En las sesiones teóricas aprendimos que el plano euclidiano \((\mathbb{R}^2, d_E)\) es solo uno de los posibles espacios métricos. Al cambiar a la **métrica del taxi** (o rectangular):

\[d_T(A, B) = |a_1 - b_1| + |a_2 - b_2|\]

las figuras geométricas cambian radicalmente de aspecto visual. La actividad dinámica **"MetricasR2"** nos permite alternar entre \(d_E\) y \(d_T\) mediante casillas de control y deslizadores.

##### Pasos de Configuración Inicial en GeoGebra:

1. Abrir **GeoGebra** (versión Clásica o Suite Geometría).
2. Activar la **Vista Gráfica** con la cuadrícula visible (Grid) para facilitar la lectura de coordenadas integras.
3. Definir dos puntos libres en la vista gráfica: \(A = (1, 2)\) y \(B = (5, 5)\).
4. Crear una casilla de entrada o deslizador \(r \in\) con incremento de \(0.1\) para controlar el radio de las esferas métricas.

---

#### 2. Visualización Dinámica de Esferas Métricas \(S_C(r)\) (10 minutos)

##### Experimento 1: Comparación de Esferas Euclídeas vs. Taxi

- **En Métrica Euclídea (\(d_E\)):** La orden `Circunferencia(A, r)` dibuja el lugar geométrico \(d_E(A, X) = r\), produciendo la circunferencia "redonda" habitual.
- **En Métrica del Taxi (\(d_T\)):** El lugar geométrico \(d_T(A, X) = r\), o equivalente \(|x - 1| + |y - 2| = r\), se introduce en GeoGebra mediante la ecuación implícita:

\[\text{EsferaTaxi: } |x - a_1| + |y - a_2| = r\]

##### Observación Gráfica:

Al variar dinámicamente el deslizador \(r\), observamos en pantalla que la esfera \(S_A^{d_T}(r)\) es un **cuadrado rotado \(45^\circ\)** centrado en \(A\), cuyas diagonales son paralelas a los ejes coordinados y tienen una longitud total de \(2r\) (con lados de longitud \(\sqrt{2}r\)).

---

#### 3. Trazado Dinámico de Segmentos y el Rectángulo \(\text{Rect}(A, B)\) (15 minutos)

Recordemos la definición formal de segmento de la Sesión 7: \[[A, B]_{d_T} = {X \in \mathbb{R}^2 : d_T(A, X) + d_T(X, B) = d_T(A, B)}\]

##### Experimento 2: Construcción del Segmento en GeoGebra

1. Para los puntos \(A = (1, 2)\) y \(B = (5, 5)\), la distancia del taxi es \(d_T(A, B) = |5 - 1| + |5 - 2| = 4 + 3 = 7\).
2. Introducimos en la barra de entrada de GeoGebra la ecuación implícita del segmento:

\[\text{SegmentoTaxi: } |x - 1| + |y - 2| + |x - 5| + |y - 5| = 7\]

##### Resultado en Pantalla:

GeoGebra colorea no una línea unidimensional, sino **todo el rectángulo cerrado** de vértices \((1,2)\), \((5,2)\), \((5,5)\) y \((1,5)\):

\[\text{Rect}(A, B) = \times\]

##### Prueba de Pertenencia Dinámica:

Creamos un punto libre \(P = (x_P, y_P)\) en la vista gráfica y definimos el valor numérico \(L(P) = d_T(A, P) + d_T(P, B)\). Al arrastrar \(P\) con el ratón:

- Si \(P\) está **dentro** del rectángulo teñido, \(L(P)\) se mantiene exactamente igual a \(7\) en todo momento.
- En cuanto \(P\) sale del rectángulo, \(L(P) > 7\) estrictamente.

---

#### 4. Múltiples Caminos Mínimos y Geodésicas Escalón (5 minutos)

A diferencia de la geometría euclídea (donde la recta es la única vía más corta), en la métrica del taxi existen **infinitos caminos rectilíneos a trozos** que unen \(A\) y \(B\) con la misma longitud mínima \(d_T(A, B) = 7\).

##### Experimento 3:

Utilizando la herramienta `Poligonal`, construimos una trayectoria en "escalera" uniendo los puntos \((1,2) \to (3,2) \to (3,4) \to (5,4) \to (5,5)\). Sumando la longitud de los tramos horizontales y verticales en GeoGebra, verificamos que la longitud de la poligonal es \(2 + 2 + 2 + 1 = 7\). Cualquier trayectoria monótona dentro del rectángulo es una **geodésica válida**.

---

#### 5. Instrucciones para el Cuaderno de Laboratorio (5 minutos)

Para consolidar el aprendizaje de esta sesión y preparar los exámenes de la UNED:

1. Guardar el archivo de la sesión con el nombre `Sesion08_MetricasR2.ggb`.
2. Incluir en tu cuaderno de estudio un par de capturas donde se observe:
    - La superposición de la esfera euclídea y la esfera taxi para el mismo radio.
    - El rectángulo relleno que representa el segmento \([A, B]_{d_T}\).

---

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión08_Práctica_Geogebra.pptx): He generado la presentación **"8. Práctica GeoGebra: Actividad MetricasR2"**, estructurada según las directrices del _Manual de Estilo de Presentaciones UNED_ (organización por bloques, cuadros con advertencias metodológicas y notación LaTeX).
- [**Resumen de audio**](Audios/Sesión08_Práctica_Geogebra.m4a): Se ha procesado el episodio en formato **Deep Dive** en español, donde dos locutores conversan sobre la experiencia interactiva de manipular GeoGebra, la ruptura de prejuicios visuales al ver esferas cuadradas y la relevancia práctica de crear un cuaderno de laboratorio para la preparación de los exámenes presenciales.

