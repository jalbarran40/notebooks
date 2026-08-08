En el contexto del Álgebra Lineal, los morfismos (o aplicaciones lineales) son funciones entre espacios vectoriales que preservan su estructura interna de suma y producto por un escalar.

A continuación, presento una tabla que resume las definiciones y caracterizaciones principales de los diferentes tipos de morfismos, con un enfoque especial en los **endomorfismos**:

### Clasificación de Morfismos (Aplicaciones Lineales)

|Tipo de Morfismo|Definición|Caracterización y Propiedades Clave|
|:--|:--|:--|
|**Morfismo (Aplicación Lineal)**|Aplicación \(f: U \to V\) que cumple \(f(u + w) = f(u) + f(w)\) y \(f(\alpha u) = \alpha f(u)\).|Se resume en \(f(\alpha u + \beta w) = \alpha f(u) + \beta f(w)\). Transforma el \(0_U\) en el \(0_V\).|
|**Monomorfismo**|Aplicación lineal **inyectiva**.|Su núcleo es el subespacio trivial: \(Ker(f) = {0}\). Preserva la independencia lineal de vectores.|
|**Epimorfismo**|Aplicación lineal **suprayectiva**.|Su imagen coincide con el espacio de llegada: \(Im(f) = V\). El rango coincide con la dimensión de \(V\).|
|**Isomorfismo**|Aplicación lineal **biyectiva** (inyectiva y suprayectiva).|Si \(dim(U) = dim(V) < \infty\), basta con que sea inyectiva o suprayectiva para ser isomorfismo. Su matriz asociada es cuadrada y regular.|
|**Endomorfismo**|Aplicación lineal de un espacio en sí mismo (\(f: V \to V\)).|Su matriz asociada respecto a una base \(B\) es siempre cuadrada (\(\mathcal{M}_B(f)\)). Permite estudiar autovalores y autovectores.|
|**Automorfismo**|Endomorfismo que además es biyectivo.|El determinante de cualquier matriz asociada es distinto de cero (\(det(f) \neq 0\)). Forman el grupo lineal \(GL(V)\).|

### El Endomorfismo: Conceptos Específicos

Un **endomorfismo** es fundamental en Álgebra Lineal I porque permite analizar la estructura interna de un único espacio vectorial a través de transformaciones. Sus características distintivas incluyen:

- **Matriz Asociada:** Al coincidir el espacio de partida y de llegada, se suele utilizar la misma base \(B\) para ambos, lo que facilita el cálculo de potencias de la matriz y el estudio de su **polinomio característico**.
- **Invariantes:** Posee propiedades que no cambian aunque cambiemos de base, como la **traza**, el **determinante** y el rango.
- **Diagonalización:** Un endomorfismo es diagonalizable si existe una base de \(V\) formada por autovectores de \(f\), lo que permite representarlo mediante una matriz diagonal mucho más sencilla de operar.
- **Subespacios Invariantes:** Son subespacios \(W\) tales que \(f(W) \subseteq W\). El núcleo (\(Ker(f)\)) y la imagen (\(Im(f)\)) son siempre subespacios invariantes.