
#import "deps/theorem.typ": thmrules, theorem, proposition, definition, example, remark, proof
#show: thmrules.with()

#let grad = $op("grad")$

= 微分

== 一変数関数の微分

この章では各種関数の微分について述べるが、その基礎となるのは一変数関数の微分である。
高校数学でも習う通り、一変数関数$f(x)$の点$x = a$での_微分係数_は
$
f'(a) = lim_(x -> a) (f(x)-f(a))/(x-a)
$
で（極限が存在する時に）定義されるスカラーである。
極限を取る前の分数を_差分商_と呼び、差分商の極限を取ることで微分係数を得る。
さらに$a$を$f$の定義域の内部の範囲で動かして得られる関数$f'(x)$を$f$の_微分導関数_と呼ぶ。
本テキストで微分と言ったらこの微分係数や微分導関数を指し、$f'(x)$や$(f(x))'$と表す。
自明なこととして$x$によらない定数の微分は零である。
また、微分導関数の微分導関数を二階微分、さらにその微分導関数を三階微分などのようにして高階微分が定義される。

@r_n24a では微分可能性が主な話題になっていたが、本テキストでは関数や場は必要な回数だけ微分可能であるという_滑らか_であることを前提として話を進める。
微分は線形性を満たし積、商、合成関数の微分法があるほか各種関数の微分公式があるため微分が計算できる関数の範囲は広い。

== ベクトル族の微分

一変数$N$次元ベクトル族$bold(f)(x) = vec(f_1 (x), dots.v, f_N (x))$の微分も差分商
$
lim_(x -> a) (bold(f)(x)-bold(f)(a))/(x-a)
= lim_(x -> a) vec((f_1 (x)-f_1 (a))/(x-a), dots.v, (f_N (x)-f_N (a))/(x-a))
= vec(lim_(x -> a) (f_1 (x)-f_1 (a))/(x-a), dots.v, lim_(x -> a) (f_N (x)-f_N (a))/(x-a))
$
で定義される。
成分ごとの微分となるため、微分は$N$次元ベクトル値関数である。
これを$bold(f)'(x)$や$(bold(f)(x))'$と表す。
まとめると$N$次元ベクトル族$bold(f)(x) = vec(f_1 (x), dots.v, f_N (x))$の_微分_は各成分に関する微分を並べた$N$次元ベクトル値関数であり、
$
bold(f)'(x) = vec(f_1 '(x), dots.v, f_N '(x))
$
となる。
自明なこととして$x$によらない定数ベクトルの微分は零ベクトルである。

#proposition([ベクトルの内積の微分])[
$N$次元ベクトル族$bold(f)(x)$と$bold(g)(x)$の内積$bold(f)(x) dot bold(g)(x)$の微分は
$
(bold(f)(x) dot bold(g)(x))' = bold(f)'(x) dot bold(g)(x)+bold(f)(x) dot bold(g)'(x)
$
となる。
]

#proof[
成分を$bold(f)(x) = vec(f_1 (x), dots.v, f_N (x))$と$bold(g)(x) = vec(g_1 (x), dots.v, g_N (x))$とおくと、
内積は
$
bold(f)(x) dot bold(g)(x) = f_1 (x) g_1 (x)+dots+f_N (x) g_N (x)
$
なので微分すると
$
(bold(f)(x) dot bold(g)(x))'
= f_1 '(x) g_1 (x)+f_1 (x) g_1 '(x)+dots+f_N '(x) g_N (x)+f_N (x) g_N '(x)
= bold(f)'(x) dot bold(g)(x)+bold(f)(x) dot bold(g)'(x)
$
となる。
]

== 行列族の微分

行列族の微分も差分商の極限であるが、行列の線形構造から、結果的に成分ごとの微分に帰着する。
つまり$M times N$型の行列族$F(x)$の_微分_は各成分に関する微分を並べた$M times N$型の行列値関数である。
これを$F'(x)$や$(F(x))'$と表す。
自明なこととして$x$によらない定数行列の微分は零行列である。
また、転置行列の微分は微分してから転置したものとなる。

#proposition([行列の積の微分])[
$M times L$型の行列族$F(x)$と$L times N$型の行列族$G(x)$の積$F(x)G(x)$の微分は
$
(F(x)G(x))' = F'(x)G(x)+F(x)G'(x)
$
となる。
]

#example([逆行列の微分])[
$N$次正方行列族$F(x)$の逆行列$F(x)^(-1)$の微分について、逆行列の特徴づけ
$
F(x) F(x)^(-1) = I
$
を微分することで、
$
F'(x) F(x)^(-1)+F(x) (F(x)^(-1))' = O
$
より
$
(F(x)^(-1))' = -F(x)^(-1) F'(x) F(x)^(-1)
$
が成り立つ。
]

== 偏微分

以降では多変数や変数の中にスカラーとはみなせない点やベクトルあるいは行列が含まれる関数の微分を考える。
この場合には一つのスカラー変数あるいは成分に注目してなら一変数とみなして微分することができる。
このような微分を_偏微分_と呼ぶ。
例えば多変数関数$f(x_1, dots, x_N)$の$x_i$成分に関する偏微分は$f_(x_i) (x_1, dots, x_N)$や$(f(x_1, dots, x_N))_(x_i)$と表す。

#proposition([合成関数の微分])[
多変数関数$f(x_1, dots, x_N)$と$N$個の関数$x_1 (t), dots, x_N (t)$の合成関数$f(x_1 (t), dots, x_N (t))$の微分は
$
(f(x_1 (t), dots, x_N (t)))'
= f_(x_1) (x_1 (t), dots, x_N (t)) x_1 '(t)+dots+f_(x_N) (x_1 (t), dots, x_N (t)) x_N '(t)
$
となる。
]

証明は省略する。

== ベクトル変数関数の勾配

$N$次元ベクトル変数関数$f(bold(x))$の_勾配_は各成分に関する偏微分を並べた$N$次元ベクトル値関数である。
つまり$bold(x) = vec(x_1, dots.v, x_N)$として、
$
gradient f(bold(x))
= vec(f_(x_1) (bold(x)), dots.v, f_(x_N) (bold(x)))
$
と定義する。
各成分$x_i$は全て独立であることに注意する。

#proposition([ベクトル変数の合成関数の微分])[
$N$次元ベクトル変数関数$f(X)$と$N$次元ベクトル族$bold(x)(t)$の合成関数$f(bold(x)(t))$の微分は
$
(f(bold(x)(t)))'
= gradient f(bold(x)(t)) dot bold(x)' (t)
= sum_(i=1)^N f_(x_i) (bold(x)(t)) x_i '(t)
$
となる。
]

$N$次元ベクトル変数$M$次元ベクトル値関数$bold(f)(bold(x))$の_勾配_は各成分に関する偏微分を並べた$M times N$型の行列値関数である。
つまり$bold(f)(bold(x)) = vec(f^1 (bold(x)), dots.v, f^M (bold(x)))$、$bold(x) = vec(x_1, dots.v, x_N)$として、
$
gradient bold(f)(bold(x))
= mat(f^1_(x_1) (bold(x)), dots.c, f^1_(x_N) (bold(x)); dots.v, dots.down, dots.v; f^M_(x_1) (bold(x)), dots.c, f^M_(x_N) (bold(x)))
$
と定義する。
各成分$x_i$は全て独立であることに注意する。

#proposition([ベクトル変数ベクトル値の合成関数の微分])[
$N$次元ベクトル変数$M$次元ベクトル値関数$bold(f)(bold(x))$と$N$次元ベクトル族$bold(x)(t)$の合成関数$bold(f)(bold(x)(t))$の微分は
$
(bold(f)(bold(x)(t)))'
= gradient bold(f)(bold(x)(t))bold(x)'(t)
= vec(sum_(i=1)^N f^1_(x_i) (bold(x)(t)) x_i '(t), dots.v, sum_(i=1)^N f^M_(x_i) (bold(x)(t)) x_i '(t))
$
となる。
]

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
= sum_(i=1)^M sum_(j=1)^N f_(x_(i j)) (X(t)) x_(i j) '(t)
$
となる。
]

#example([跡の微分])[
$N$次正方行列族$F(x)$の跡$tr(F(x))$の微分について、
$
(tr(F(x)))'
&= gradient tr(F(x)) colon F' (x)
= I colon F' (x)
= tr I F' (x) \
&= tr F' (x)
$
が成り立つ。
]

#example([行列式の微分])[
$N$次正方行列族$F(x)$の行列式$det(F(x))$の微分について、
$
(det(F(x)))'
&= gradient det(F(x)) colon F' (x)
= det(F(x)) (F(x)^(-1))^T colon F' (x) \
&= det(F(x)) tr(F(x)^(-1) F' (x))
$
が成り立つ。
]

== スカラー場の勾配

$N$次元点にスカラーを対応させる$N$次元スカラー場$f(x)$の_勾配_は、ベクトル変数関数と同様に、各成分に関する偏微分を並べた$N$次元ベクトル値関数である。
つまり$x = (x_1, dots, x_N)$として、
$
gradient f(x)
= (f_(x_1) (x), dots, f_(x_N) (x))
$
と定義する。
各成分$x_i$は全て独立であることに注意する。
$N$次元スカラー場の勾配$gradient f$は$N$次元点ごとに$N$次元ベクトルを対応させるので$N$次元ベクトル場であることに注意する。
勾配$gradient f$は$arrow(gradient) f$や$grad f$とも表される。

== ベクトル場の発散

== ベクトル場の回転

== 高階の微分について

== 多変数関数について

== 曲線の微分

== 曲面の微分
