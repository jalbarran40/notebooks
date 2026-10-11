# Ejercicio 2.24 — Intervalos encajados

Sea $a \in \mathbb{R}$, se considera la familia de intervalos cerrados

$$
I_n = \left[a - \frac{1}{n},\, a + \frac{1}{n}\right] \subset \mathbb{R}
$$

con $n \in \mathbb{N}^*$. Demuestre que

$$
\bigcap_{n\in\mathbb{N}^*} I_n = \{a\}
$$

y

$$
\bigcup_{n\in\mathbb{N}^*} I_n = [a-1,\,a+1].
$$

## Solución

Es evidente que

$$
a \in \left[a - \frac{1}{n},\, a + \frac{1}{n}\right],
\qquad \forall n \in \mathbb{N}^*.
$$

Luego,

$$
\{a\} \subseteq \bigcap_{n\in\mathbb{N}^*} I_n.
$$

Supongamos que la inclusión

$$
\bigcap_{n\in\mathbb{N}^*} I_n \subseteq \{a\}
$$

no es cierta, entonces $\exists b \in \bigcap_{n\in\mathbb{N}^*} I_n$ tal que

$$
b \neq a.
$$

Si tomamos $n_0 \in \mathbb{N}^*$ tal que

$$
\frac{1}{n_0} < |b-a|,
$$

se tiene que

$$
b \notin \left[a-\frac{1}{n_0},\,a+\frac{1}{n_0}\right],
$$

que está en contradicción con la suposición de que

$$
b \in \bigcap_{n\in\mathbb{N}^*} I_n.
$$

Así pues, se cumple la inclusión

$$
\bigcap_{n\in\mathbb{N}^*} I_n \subseteq \{a\}.
$$

La igualdad

$$
\bigcup_{n\in\mathbb{N}^*} I_n = [a-1,\,a+1]
$$

es evidente pues la familia de intervalos satisface:

$$
[a-1,\,a+1]
\supset
\left[a-\frac{1}{2},\,a+\frac{1}{2}\right]
\supset
\left[a-\frac{1}{3},\,a+\frac{1}{3}\right]
\supset
\left[a-\frac{1}{4},\,a+\frac{1}{4}\right]
\supset \cdots
$$

$\square$



$\mathcal{F} = \{F_i \mid i \in I\}$
