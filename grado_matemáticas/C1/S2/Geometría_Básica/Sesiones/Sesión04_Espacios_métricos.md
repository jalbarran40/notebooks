Para esta **Sesión 4**, abordaremos la primera sesión práctica del cuatrimestre, dedicada a ejercitar las propiedades de la distancia en espacios métricos, con especial atención a la **desigualdad triangular** y la **métrica inducida**.

---

### Sesión 4 (Práctica): Ejercicios de Desigualdad Triangular y Métrica Inducida

**Objetivo:** Desarrollar destreza demostrativa utilizando el tercer axioma de la métrica, probar la **desigualdad triangular inversa** y formalizar el concepto de **métrica inducida** sobre subconjuntos.

---

#### 1. Repaso Lógico y Desigualdad Triangular Inversa (10 minutos)

Recordemos que en un espacio métrico \((M, \delta)\), la desigualdad triangular establece que para todo \(x, y, z \in M\):

\[\delta(x, y) \le \delta(x, z) + \delta(z, y)\]

##### Lema (Desigualdad Triangular Inversa)

Para cualquier terna de puntos \(x, y, z \in M\), la diferencia de distancias respecto a un punto común está acotada superiormente por la distancia directa entre ellos:

\[|\delta(x, z) - \delta(y, z)| \le \delta(x, y)\]

**Demostración:**

1. Aplicando la desigualdad triangular a la terna \(x, y, z\): \[\delta(x, z) \le \delta(x, y) + \delta(y, z) \implies \delta(x, z) - \delta(y, z) \le \delta(x, y)\]
2. Intercambiando los papeles de \(x\) e \(y\) y usando la simetría (\(\delta(y, x) = \delta(x, y)\)): \[\delta(y, z) \le \delta(y, x) + \delta(x, z) \implies -(\delta(x, z) - \delta(y, z)) \le \delta(x, y)\]
3. Combinando ambas desigualdades racionales en el valor absoluto, obtenemos \(|\delta(x, z) - \delta(y, z)| \le \delta(x, y)\). \(\blacksquare\)

---

#### 2. Ejercicio Práctico 1: Aplicación en \(\mathbb{R}^2\) (15 minutos)

**Enunciado:** Dados los puntos \(A = (0, 0)\), \(B = (3, 4)\) y \(C = (3, 0)\) en \(\mathbb{R}^2\):

1. Verifica la desigualdad triangular directa e inversa usando la métrica euclídea \(\delta_E\).
2. Compara el resultado utilizando la métrica del taxi \(\delta_T\).

##### Solución Paso a Paso:

- **Con Métrica Euclídea (\(\delta_E\)):**
    
    - \(\delta_E(A, C) = \sqrt{(3-0)^2 + (0-0)^2} = 3\)
    - \(\delta_E(C, B) = \sqrt{(3-3)^2 + (4-0)^2} = 4\)
    - \(\delta_E(A, B) = \sqrt{(3-0)^2 + (4-0)^2} = \sqrt{25} = 5\)
    
    Verificación directa: \(\delta_E(A, B) = 5 \le \delta_E(A, C) + \delta_E(C, B) = 3 + 4 = 7\) (se cumple estrictamente).
    
    Verificación inversa: \(|\delta_E(A, C) - \delta_E(B, C)| = |3 - 4| = 1 \le \delta_E(A, B) = 5\) (se cumple).
    
- **Con Métrica del Taxi (\(\delta_T\)):**
    
    - \(\delta_T(A, C) = |3-0| + |0-0| = 3\)
    - \(\delta_T(C, B) = |3-3| + |4-0| = 4\)
    - \(\delta_T(A, B) = |3-0| + |4-0| = 7\)
    
    Verificación: \(\delta_T(A, B) = 7 = \delta_T(A, C) + \delta_T(C, B) = 3 + 4 = 7\).
    
    _Nota metodológica:_ En \(\delta_T\), como el punto \(C\) se halla dentro del rectángulo \( \times\), la desigualdad triangular se convierte en una **igualdad estricta**.
    

---

#### 3. Concepto y Ejercicio de Métrica Inducida (15 minutos)

##### Definición de Métrica Inducida (o Restricción)

Sea \((M, \delta)\) un espacio métrico y sea \(N \subseteq M\) un subconjunto no vacío. La función restricción \(\delta_N = \delta|_{N \times N}: N \times N \to \mathbb{R}\) define una métrica sobre \(N\), denominada **métrica inducida por \((M, \delta)\) en \(N\)**. La pareja \((N, \delta_N)\) forma por sí misma un espacio métrico.

##### Ejercicio Práctico 2: La Circunferencia Unidad \(S^1 \subset \mathbb{R}^2\)

Consideremos \(S^1 = {(x, y) \in \mathbb{R}^2 : x^2 + y^2 = 1}\) y dos puntos antipodales \(P = (1, 0)\) y \(Q = (-1, 0)\).

1. **Métrica inducida ambiental \((\delta_E|_{S^1})\):** La distancia entre \(P\) y \(Q\) bajo la métrica euclídea inducida del plano es la longitud del segmento en \(\mathbb{R}^2\) (la cuerda): \[\delta_E|_{S^1}(P, Q) = \sqrt{(-1 - 1)^2 + (0 - 0)^2} = 2\]
    
2. **Diferencia con la distancia intrínseca (\(d_{arco}\)):** Si midiéramos exclusivamente "sobre" la curva \(S^1\) (distancia geodésica o de arco), la distancia entre \(P\) y \(Q\) sería la mitad del perímetro: \(d_{arco}(P, Q) = \pi \approx 3,1416\).
    

> **Advertencia (Error Frecuente en Exámenes):** La **métrica inducida** \(\delta_N\) simula "medir con la regla del espacio grande \(M\)" atravesando el espacio exterior entre puntos de \(N\). No debe confundirse con la distancia intrínseca o camino mínimo contenido exclusivamente dentro de \(N\).

---

#### 4. Resumen Ejecutivo (5 minutos)

- La **desigualdad triangular inversa** \(|\delta(x, z) - \delta(y, z)| \le \delta(x, y)\) permite acotar variaciones en mediciones de distancias.
- Todo subconjunto \(N\) de un espacio métrico \((M, \delta)\) hereda de manera natural la estructura de espacio métrico mediante la **restricción** de la función distancia.

---

## Materiales de apoyo

- [**Presentación**](Presentaciones/Sesión04_Espacios_métricos.pptx): He solicitado la generación de la presentación **"Sesión04_Práctica_Desigualdad_Triangular_y_Métrica_Inducida"** estructurada según el manual de estilo (formato minimalista, notación LaTeX y bloques de ejercicios con avisos de errores comunes).
- [**Resumen de audio**](Audios/Sesión04_Espacios_métricos.m4a): Se ha despachado el episodio en formato **Deep Dive** en español, donde se discute analíticamente la demostración de la desigualdad triangular inversa y el concepto de métrica inducida sobre subconjuntos.

