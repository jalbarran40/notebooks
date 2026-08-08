
## Morfismos

En el contexto del Álgebra Lineal, la distinción entre la **L** (de _Linear_) y **GL** (de _General Linear_) es fundamental para entender no solo qué elementos estamos manejando, sino también bajo qué "reglas de juego" (estructuras algebraicas) operan.

Aquí tienes el desglose de lo que significa cada una y qué aporta la "G" de grupo:

### 1. ¿Qué significa $L(V)$ o $L(U, V)$?

La letra **L** hace referencia al conjunto de todas las **aplicaciones lineales**.

- **$L(U, V)$:** Es el conjunto de todos los homomorfismos (morfismos) del espacio $U$ en el $V$.
- **$L(V)$:** Es el conjunto de todos los **endomorfismos** de $V$ (aplicaciones de $V$ en sí mismo).
- **Estructura:** $L(V)$ tiene estructura de **espacio vectorial** (puedes sumar dos aplicaciones y multiplicarlas por un escalar) y de **anillo** (puedes componerlas), pero **no es un grupo** para la composición porque no todos los endomorfismos tienen inversa (por ejemplo, la aplicación nula no la tiene).

### 2. ¿Qué significa $GL(V)$?

La abreviatura **GL** proviene de **General Linear Group** (Grupo Lineal General).

- **Definición:** Es el conjunto de todos los **automorfismos** de $V$, es decir, aquellos endomorfismos que son **biyectivos** (inyectivos y suprayectivos a la vez).
- **Representación matricial:** En términos de matrices, $GL(n, \mathbb{K})$ representa el conjunto de todas las **matrices regulares o invertibles** de orden $n$ (aquellas cuyo determinante es distinto de cero).

### 3. ¿Qué aporta la "G" sobre la "L" simple?

Añadir la "G" (General/Grupo) supone una restricción muy potente que cambia la naturaleza del conjunto:

|Característica|$L(V)$ (Lineal)|$GL(V)$ (Grupo Lineal)|
|:--|:--|:--|
|**Elementos**|Todos los endomorfismos (incluyendo los que "colapsan" el espacio).|Solo los endomorfismos **invertibles** (automorfismos).|
|**Inversa**|No todos tienen. La aplicación nula no se puede "deshacer".|**Todo** elemento tiene una aplicación inversa dentro del conjunto.|
|**Estructura**|Espacio vectorial / Anillo unitario.|**Grupo** bajo la operación de composición.|
|**Determinante**|Puede ser cualquier valor (incluido 0).|El determinante es **siempre distinto de cero** ($\det \neq 0$).|

### ¿Qué significa $\mathcal{BL}(V)$?
El conjunto de todas las formas bilineales de un espacio vectorial $V$ se denota por  $\mathcal{BL}(V)$.
Dado un  $\mathbb{K}$ -espacio vectorial V, una aplicación  $f: V \times V \to \mathbb{K}$  se dice que es una **forma bilineal** si para todo vector  $u, v. w \in V$  y todo escalar  $a.b \in \mathbb{K}$  cumple las siguientes propiedades:
> 
> (1) $f(u+v,w) = f(u,w) + f(v,w)$.
> (2) $f(au, v) = af(u, v)$.
> (3) $f(u, v + w) = f(u, v) + f(u, w)$.
> (4) $f(u, bv) = bf(u, v)$.
> 
> Estas cuatro propiedades son equivalentes a esta dos:
> 
> (5) $f(au + bv, w) = af(u, w) + bf(v, w)$.
> (6) $f(u, av + bw) = af(u, v) + bf(u, w)$.


**En resumen:** Mientras que la **L** ($L(V)$) es el "mundo entero" de las aplicaciones lineales donde conviven las que mantienen la dimensión y las que la pierden, la **G** ($GL(V)$) selecciona solo a las "élites" invertibles para formar un **grupo**. Este grupo es vital en geometría porque sus elementos son los que permiten transformar el espacio sin deformarlo irremediablemente, permitiendo siempre volver al estado original mediante la inversa.


Para completar el cuadro sobre las estructuras en el Álgebra Lineal, es fundamental distinguir que, mientras los endomorfismos ($L(V)$) y los automorfismos ($GL(V)$) se centran en las **transformaciones** de los vectores, las **aplicaciones bilineales** se centran en la **relación entre pares de vectores** para producir un escalar.

A continuación te detallo qué aportan y cómo integramos este tercer concepto en el resumen:

### 1. ¿Qué aportan las aplicaciones bilineales?

Las aplicaciones bilineales ($f: V \times V \to \mathbb{K}$) introducen la capacidad de definir **métrica y geometría** dentro del espacio vectorial. Sin ellas, un espacio vectorial es solo un conjunto de "flechas" que se pueden sumar; con ellas, podemos hablar de:

- **Longitudes y Ángulos:** Al ser la base del producto escalar, permiten medir distancias y la inclinación entre vectores.
- **Ortogonalidad:** Introducen el concepto de "perpendicularidad" (vectores cuyo producto es cero).
- **Formas Cuadráticas:** Permiten estudiar funciones de segundo grado (como distancias al cuadrado o energía), ya que toda forma cuadrática nace de una aplicación bilineal simétrica.
- **Dualidad:** Conectan el espacio de vectores con su espacio dual ($V^*$), ya que fijando un vector en una forma bilineal se obtiene una forma lineal.

### 2. Resumen Comparativo de las tres estructuras

Podemos resumir el papel de cada conjunto según su función y la estructura algebraica que conforman:

| Estructura                       | Notación Común     | Función Principal                                                                                                                | Estructura Algebraica                                                |
| :------------------------------- | :----------------- | :------------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------- |
| **Espacio de Endomorfismos**     | $\mathcal{L}(V)$ | **Transformar:** Estudia todas las funciones lineales que "mueven" vectores de $V$ a $V$.                                    | **Espacio Vectorial y Anillo** (se pueden sumar y componer).         |
| **Grupo Lineal General**         | $GL(V)$          | **Transformar sin deformar:** Selecciona solo las transformaciones que se pueden "deshacer" (invertibles).                       | **Grupo** bajo la composición (poseen inversa).                      |
| **Espacio de Formas Bilineales** | $BL(V)$          | **Relacionar / Medir:** Estudia funciones que toman dos vectores para dar un número, definiendo la "regla de medir" del espacio. | **Espacio Vectorial** (se pueden sumar y multiplicar por escalares). |

### Conclusión para tu estudio

Si los endomorfismos son los **movimientos** y el grupo lineal son los **movimientos reversibles**, las aplicaciones bilineales son el **escenario geométrico** donde esto ocurre.

Por ejemplo, gracias a una aplicación bilineal (el producto escalar), podemos clasificar un automorfismo de $GL(V)$ como una **rotación** o una **simetría**, porque sabemos que "conserva la medida" definida por dicha aplicación bilineal.
---

Aquí te confirmo y detallo cada uno de tus puntos según la bibliografía de la asignatura:

1. **$L(v_1, v_2, \dots, v_n)$: El Subespacio Generado**
    
    - **Confirmación:** Es correcto. Esta notación (también escrita a veces como $T(S)$, $S$ o $\langle S \rangle$) representa la **envolvente lineal** o el subespacio engendrado por un sistema de vectores.
    - **Significado:** Es el conjunto de todas las posibles **combinaciones lineales** que se pueden formar con esos vectores "ladrillo". En los textos de la UNED verás indistintamente $L[u_1, \dots, u_q]$ o $L(S)$.
2. **$\mathcal{L}(V)$: El Espacio de Endomorfismos**
    
    - **Confirmación:** Es correcto. Se refiere al conjunto de todas las aplicaciones lineales de un espacio vectorial $V$ en sí mismo (endomorfismos).
    - **Matiz importante:** Si la aplicación es entre dos espacios distintos ($U$ y $V$), la notación correcta es $\mathcal{L}(U, V)$. Este conjunto no es solo una lista, sino que tiene estructura de **espacio vectorial** (puedes sumar aplicaciones) y de **anillo** (puedes componerlas), pero no todos sus elementos tienen inversa.
3. **$GL(V)$: El Grupo Lineal General**
    
    - **Confirmación:** Es correcto. La **G** añade la restricción de que el conjunto debe ser un **Grupo** bajo la operación de composición.
    - **Condición de biyectividad:** Para que formen un grupo, cada aplicación debe tener una inversa que también esté en el conjunto. Por tanto, $GL(V)$ solo contiene a los **automorfismos** (aplicaciones lineales, inyectivas y suprayectivas). En términos matriciales, esto equivale al conjunto de todas las **matrices regulares** (aquellas con determinante distinto de cero).

### Resumen para tu estudio:

|Notación|Nombre|¿Qué contiene?|Estructura|
|:--|:--|:--|:--|
|**$L(v_1, \dots, v_n)$**|Envolvente lineal|Vectores (combinaciones lineales)|Subespacio vectorial.|
|**$\mathcal{L}(V)$**|Espacio de aplicaciones|Todas las aplicaciones lineales $V \to V$|Espacio vectorial y Anillo.|
|**$GL(V)$**|Grupo Lineal General|Solo aplicaciones lineales biyectivas|Grupo.|

Como ves, la diferencia radica en si estamos hablando de un **conjunto de vectores** (el generado) o de un **conjunto de funciones** (el espacio de aplicaciones o el grupo).

¿Te gustaría que practicáramos algún ejercicio donde tengamos que pasar de un espacio generado $L(S)$ a su representación en el grupo $GL(n)$ mediante matrices inversas?

## Aplicación invariante

Decimos que un subespacio vectorial $W$ de un espacio vectorial $V$ es **invariante** respecto a un endomorfismo (o aplicación lineal) $f: V \to V$ si la imagen de cualquier vector de dicho subespacio permanece dentro del mismo subespacio.

En términos algebraicos, esto se expresa como $f(W) \subseteq W$, lo que significa que para todo vector $w \in W$, se cumple que $f(w) \in W$.

Para que lo asimiles mejor, aquí tienes los puntos clave sobre su comportamiento y relevancia:

### 1. ¿Cómo verificarlo en la práctica?

Si un subespacio $W$ está generado por un conjunto de vectores ${v_1, \dots, v_k}$, basta con comprobar que la imagen de cada uno de esos generadores sigue siendo una combinación lineal de ellos, es decir, que $f(v_i) \in W$ para todo $i$.

### 2. Ejemplos fundamentales que siempre son invariantes

Para cualquier aplicación lineal $f$, existen subespacios que por definición siempre cumplen la invarianza:

- **El subespacio nulo ${0}$ y el espacio total $V$:** Son los llamados subespacios invariantes triviales.
- **El Núcleo ($\text{ker } f$):** Como todos sus vectores van al 0, y el 0 está en el núcleo, se queda dentro.
- **La Imagen ($\text{im } f$):** La imagen de cualquier vector de la imagen es, por definición, otro vector de la imagen.
- **Subespacios propios ($V_\lambda$):** Formados por los autovectores asociados a un autovalor $\lambda$. Al aplicar $f$ a un autovector, el resultado es simplemente el mismo vector escalado, por lo que no sale de la "recta" o subespacio que lo contiene.

### 3. Propiedades de estabilidad

- La **suma** y la **intersección** de dos subespacios invariantes generan, a su vez, otro subespacio que también es invariante.
- En espacios con producto escalar (**espacios euclídeos**), si un subespacio $W$ es invariante bajo un endomorfismo ortogonal o normal, su **complemento ortogonal** $W^\perp$ también será invariante.

### 4. ¿Por qué es tan importante en esta asignatura?

El concepto de invarianza es la base para la **clasificación de endomorfismos**. Identificar subespacios invariantes nos permite "descomponer" el espacio total en bloques más pequeños y manejables. Esto es precisamente lo que hacemos al buscar la **Forma Canónica de Jordan**: dividimos el espacio en subespacios cíclicos (irreducibles) donde la matriz de la aplicación toma su forma más simple posible.

**Sugerencia del tutor:** Puedes usar **GeoGebra** para visualizar cómo, en una transformación de $\mathbb{R}^2$, los vectores de una recta invariante (autovectores) cambian de longitud pero nunca se salen de su propia línea de dirección. Si tienes una matriz compleja, puedes usar **WolframAlpha** con el comando `invariant subspaces` para ver la estructura de estos espacios en dimensiones mayores.