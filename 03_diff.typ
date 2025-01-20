
#import "deps/theorem.typ": thmrules, theorem, proposition, definition, example, remark, proof
#show: thmrules.with()

= 微分

== 一変数族の微分

== 偏微分

== ベクトル変数関数の勾配

== 行列変数関数の勾配

$M times N$型の行列変数関数$f(X)$の_勾配_は各成分に関する偏微分を並べた$M times N$型の行列値関数である。
つまり$X = mat(x_(1 1), dots.c, x_(1 N); dots.v, dots.down, dots.v; x_(M 1), dots.c, x_(M N))$として、
$
gradient f(X)
= mat(f_(x_(1 1)) (X), dots.c, f_(x_(1 N)) (X); dots.v, dots.down, dots.v; f_(x_(M 1)) (X), dots.c, f_(x_(M N)) (X))
$
と定義する。
各成分$x_(i j)$は全て独立であることに注意する。

#example([跡の勾配])[
$N$次正方行列$X$の跡
$
tr(X) = x_(1 1)+dots+x_(N N)
$
の$x_(i j)$偏微分は、
$i eq.not j$の時は$x_(i j)$が登場しないので$0$であり、
$i = j$の時は$1$である。
したがって跡の勾配は単位行列
$
gradient tr(X) = I
$
となる。
跡は線形なので、勾配は定数行列である。
]

#example([行列式の勾配])[
$N$次正方行列$X$の行列式$det(X)$の勾配を考える。
$x_(i j)$偏微分は第$i$行についての余因子展開
$
det(X) = x_(i 1) tilde(X)_(i 1)+dots+x_(i N) tilde(X)_(i N)
$
から求める。
ここで、$tilde(X)_(i 1), dots, tilde(X)_(i N)$は余因子でありいずれも$x_(i j)$が登場しないので、
$
partial_(x_(i j)) det(X) = tilde(X)_(i j)
$
となり、行列式の勾配は余因子行列の転置行列である（余因子行列の定義が転置を取ったようになっていることに注意する）。
さらに余因子行列は逆行列と結びつくので、
$
gradient det(X) = tilde(X)^T = det(X) (X^(-1))^T
$
が成り立つ。
]

#proposition([行列変数の合成関数の微分])[
$M times N$型の行列変数関数$f(X)$と$M times N$型の行列族$X(t)$の合成関数$f(X(t))$の微分は
$
(f(X(t)))'
= gradient f(X(t)) colon X' (t)
= sum_(i=1)^M sum_(j=1)^N f_(x_(i j)) (X(t)) x_(i j) (t)
$
となる。
]

証明はベクトルの時と同様に多変数関数の合成関数の微分と同様なので詳細は省略する。

#example([行列式の微分])[
$N$次正方行列族$X(t)$の行列式$det(X(t))$の微分について、
$
(det(X(t)))'
&= gradient det(X(t)) colon X' (t)
= det(X(t)) (X(t)^(-1))^T colon X' (t) \
&= det(X(t)) tr(X(t)^(-1) X' (t))
$
が成り立つ。
]
