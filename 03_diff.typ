
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
