### Conceptos y Atributos de los Subespacios Vectoriales

|Concepto / Atributo|Definición y Descripción|Propiedades Clave|
|:--|:--|:--|
|**Subespacio Vectorial (Definición Básica)**|Subconjunto no vacío $U$ de un espacio vectorial $V$ que es, en sí mismo, un espacio vectorial con las operaciones de $V$.|Debe ser cerrado para la suma y el producto por escalares: $\forall u, v \in U, \forall a, b \in \mathbb{K}, au + bv \in U$.|
|**Subespacio Invariante**|Un subespacio $W$ es $f$-invariante si la imagen de cualquier vector de $W$ mediante el endomorfismo $f$ permanece en $W$ ($f(W) \subseteq W$).|El núcleo, la imagen y los subespacios propios son siempre invariantes. La suma e intersección de subespacios invariantes también lo son.|
|**Subespacio Propio (Eigenspace)**|Conjunto de todos los autovectores asociados a un autovalor $\lambda$, denotado como $V_\lambda$ o $W(\lambda)$.|Se define como $V_\lambda = \ker(f - \lambda Id)$. Su dimensión es la multiplicidad geométrica ($m_g$).|
|**Subespacio Propio Generalizado**|Extensión del subespacio propio definida mediante las potencias de la aplicación: $K^i(\lambda) = \ker(f - \lambda Id)^i$.|Forman una cadena ascendente: $K^1(\lambda) \subseteq K^2(\lambda) \subseteq \dots \subseteq K^k(\lambda)$. Son siempre $f$-invariantes.|
|**Subespacio Máximo**|El eslabón final de la cadena de subespacios generalizados donde la dimensión se estabiliza, denotado como $M(\lambda)$.|Su dimensión coincide con la multiplicidad algebraica ($m_a$) del autovalor. El espacio total es suma directa de los subespacios máximos.|
|**Subespacio Irreducible**|Subespacio invariante que no puede descomponerse en suma directa de otros dos subespacios invariantes no triviales.|Un subespacio es irreducible si y solo si es cíclico.|
|**Subespacio Reducible**|Subespacio invariante que puede expresarse como suma directa de dos o más subespacios invariantes no triviales.|Todo subespacio invariante es suma directa de subespacios irreducibles contenidos en los subespacios máximos.|
|**Subespacio Cíclico**|Subespacio de dimensión $r$ generado por un vector $v$ y sus imágenes sucesivas por $(f - \lambda Id)$ hasta la potencia $r-1$.|Su matriz asociada es un bloque de Jordan de orden $r$, $B_r(\lambda)$.|
|**Subespacio Ortogonal (en Espacios Euclídeos)**|Conjunto de vectores perpendiculares a todos los vectores de un subespacio dado $U$, denotado como $U^\perp$.|En dimensión finita, $V = U \oplus U^\perp$. Si $U$ es invariante por una isometría, $U^\perp$ también lo es.|
|**Subespacio Conjugado (Formas Bilineales)**|Conjunto de vectores $v$ tales que la forma bilineal $f(u, v) = 0$ para todo $u$ en un subespacio $U$.|Generaliza el concepto de ortogonalidad a formas bilineales simétricas o antisimétricas.|
|**Subespacio Trivial / Impropio**|Los subespacios extremos de cualquier espacio vectorial: el subespacio nulo ${0}$ y el espacio total $V$.|Siempre son invariantes para cualquier endomorfismo.|

Esta estructura te permite identificar no solo la naturaleza algebraica de los subespacios, sino también su comportamiento dinámico (invarianza) y métrico (ortogonalidad/conjugación) dentro del temario de la UNED.