Plan de trabajo estructurado para cubrir todo el temario siguiendo la metodología de los créditos ECTS, que prioriza la aplicación de conceptos y el manejo del software **R**.

Este plan consta de **45 sesiones** de **45 minutos cada una**. Dado que usas un Mac con Apple Silicon, te recomiendo instalar la versión más reciente de R para tu arquitectura (ARM64) desde el sitio oficial de CRAN.

### **Fase 1: Introducción y Estadística Descriptiva**
En esta fase aprenderás a "hacer que los datos hablen" mediante resúmenes y gráficos.

*   **Sesión 1 (T):** Introducción a R. Objetos, operador de asignación (`<-`) y el entorno de trabajo.
*   **Sesión 2 (P):** Gestión de datos en R. Creación de vectores con `c()` y uso de `scan()`.
*   **Sesión 3 (P):** Estructuras de datos complejas. Matrices (`matrix`) y el uso de *Data Frames* con `read.table()`.
*   **Sesión 4 (T):** Conceptos fundamentales de la Estadística. Población, individuo y tipos de variables (cualitativas vs. cuantitativas).
*   **Sesión 5 (T):** Distribuciones de frecuencias. Datos agrupados y no agrupados. La regla de Sturges.
*   **Sesión 6 (P):** Representaciones gráficas unidimensionales en R. Diagramas de sectores (`pie`), barras (`barplot`) e histogramas (`hist`).
*   **Sesión 7 (T):** Medidas de tendencia central. Media aritmética, mediana y moda.
*   **Sesión 8 (P):** Cálculo de promedios en R. Funciones `mean()`, `median()` y el paquete `modeest` para la moda.
*   **Sesión 9 (T):** Medidas de posición (cuantiles) y dispersión (varianza, desviación típica y coeficiente de variación).
*   **Sesión 10 (P):** Dispersión y forma en R. Uso de `sd()`, `var()`, `quantile()` y el diagrama de cajas (`boxplot`).
*   **Sesión 11 (T):** Distribuciones bidimensionales. Tablas de contingencia y distribuciones marginales/condicionadas.
*   **Sesión 12 (P):** Gráficos bidimensionales en R. Nube de puntos (`plot`) e histogramas tridimensionales.

### **Fase 2: Probabilidad y Modelos Probabilísticos**
Aquí estudiamos la medida de la incertidumbre, base de la inferencia.

*   **Sesión 13 (T):** Conceptos de probabilidad. Espacio muestral, sucesos y axiomas de Kolmogorov.
*   **Sesión 14 (T):** Teoremas fundamentales. Probabilidad total y Teorema de Bayes.
*   **Sesión 15 (P):** Resolución de problemas de probabilidad y combinatoria aplicada.
*   **Sesión 16 (T):** Variables aleatorias. Función de distribución y funciones de masa/densidad.
*   **Sesión 17 (T):** Modelos discretos principales. Distribución Binomial y de Poisson.
*   **Sesión 18 (P):** Manejo de modelos discretos en R. Funciones `dbinom`, `pbinom`, `dpois` y `ppois`.
*   **Sesión 19 (T):** Modelos continuos principales. La Distribución Normal, Uniforme y Exponencial.
*   **Sesión 20 (P):** La Normal en R. Uso de `pnorm`, `qnorm` y tipificación de variables.
*   **Sesión 21 (T):** Teorema Central del Límite. Importancia de la aproximación normal para muestras grandes.

### **Fase 3: Estimación y Distribuciones en el Muestreo**
Pasamos de la muestra a la población midiendo el error en términos probabilísticos.

*   **Sesión 22 (T):** Introducción a la Inferencia. Muestra aleatoria simple y concepto de estimador.
*   **Sesión 23 (T):** Método de la Máxima Verosimilitud para obtener estimadores puntuales.
*   **Sesión 24 (T):** Distribuciones asociadas a la Normal. $\chi^2$ de Pearson, $t$ de Student y $F$ de Snedecor.
*   **Sesión 25 (P):** Cálculo de probabilidades de muestreo en R (`pchisq`, `pt`, `pf`) y búsqueda en tablas de la adenda.
*   **Sesión 26 (T):** Distribución en el muestreo de la media y la varianza para una población.
*   **Sesión 27 (T):** Comparación de dos poblaciones. Distribución de la diferencia de medias y cociente de varianzas.
*   **Sesión 28 (P):** Cálculo del tamaño muestral necesario para una precisión dada.

### **Fase 4: Intervalos de Confianza y Tests de Hipótesis**
Aprendemos a tomar decisiones estadísticas basadas en la evidencia muestral.

*   **Sesión 29 (T):** Concepto de Intervalo de Confianza (IC). Coeficiente de confianza y longitud del intervalo.
*   **Sesión 30 (P):** Cálculo de IC para la media y la varianza en R usando `t.test()` y `var.test()`.
*   **Sesión 31 (P):** IC para proporciones binomiales en R con `prop.test()`.
*   **Sesión 32 (T):** Teoría del Test de Hipótesis. Hipótesis nula/alternativa, errores tipo I y II, y el p-valor.
*   **Sesión 33 (T):** Tests paramétricos para una población (media y varianza).
*   **Sesión 34 (P):** Ejecución de tests unilaterales y bilaterales en R. Interpretación del p-valor.
*   **Sesión 35 (T):** Comparación de dos poblaciones independientes. Test para diferencia de medias (varianzas iguales vs. distintas).
*   **Sesión 36 (P):** Tests para datos apareados. Definición de la variable diferencia.

### **Fase 5: Métodos No Paramétricos, ANOVA y Regresión**
Técnicas avanzadas para cuando no hay normalidad o buscamos relaciones entre variables.

*   **Sesión 37 (T):** Pruebas $\chi^2$. Bondad del ajuste, homogeneidad e independencia.
*   **Sesión 38 (P):** Pruebas de recuentos en R. Uso de `chisq.test()` y corrección de Yates.
*   **Sesión 39 (T):** Tests de posición no paramétricos. Test de los signos y de Wilcoxon.
*   **Sesión 40 (P):** Comparación no paramétrica en R. `wilcox.test()` para muestras independientes y apareadas.
*   **Sesión 41 (T):** Análisis de la Varianza (ANOVA). Comparación de más de dos poblaciones y diseño aleatorizado.
*   **Sesión 42 (P):** ANOVA en R. Función `aov()` y validación de condiciones (Shapiro-Wilk y Bartlett).
*   **Sesión 43 (P):** Comparaciones múltiples. El test HSD de Tukey en R (`TukeyHSD`).
*   **Sesión 44 (T):** Regresión Lineal Simple y Múltiple. Coeficientes de regresión y correlación de Pearson.
*   **Sesión 45 (P):** Modelización en R. Función `lm()`, diagnóstico del modelo y predicciones.
