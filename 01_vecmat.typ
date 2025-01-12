
#import "deps/theorem.typ": thmrules, theorem, proposition, definition, example, remark, proof
#show: thmrules.with()

= ベクトルと行列

== スカラー

本テキストの基礎的な概念であるスカラーやベクトルそして行列は線形代数で導入されるものと同じであるが、
@r_n24b のように土台の体を一般化せずに、実数体のみを考えることになる。
つまり本テキストでは_スカラー_は実数つまり$RR$の元のことである。
スカラーは小文字のアルファベットを使って$a, b, c, f, x, y, z$などと表す。
重要なスカラーは$0$と$1$であり、それぞれ零元と単位元である。

実数体$RR$は実数の集合であり、実数の四則演算と大小関係に関する演算が定義されている。
実数体なので代数的閉体ではないが、正規化可能でありつまり非負の実数$a$に対して平方根$sqrt(a)$が非負の実数として定義される。
複素数の場合と違い、共役は自分自身なので、複素共役の概念は存在しないことに注意する。

== ベクトル

本テキストの_ベクトル_とは$N = 1, 2, 3, dots$として実数体上の$N$次元数ベクトルのことであり$RR^N$の元のことである。
つまり、ベクトルは$N$個のスカラーの組$(a_1, a_2, a_3, dots, a_N)$である。
ベクトルは太字の小文字アルファベットを使って$bold(a), bold(b), bold(c), bold(f), bold(x), bold(y), bold(z)$などと表す。
零ベクトルは$bold(0)$とする。
また、$i = 1, dots, N$に対して、第$i$成分だけ$1$で他の成分が全て$0$であるベクトルを$bold(e)_i$と表し、$bold(e)_1, dots, bold(e)_N$をまとめて$N$次元標準基底ベクトルという。

ベクトルは加法とスカラー倍が定義され線形空間をなすことに注意する。
ベクトルには三つの重要な積があり、内積（スカラー積）と外積（ベクトル積、クロス積）それとテンソル積であり、それぞれスカラー、ベクトル、行列となる。
この節では内積について導入する。
次数の等しいベクトル$bold(a) = (a_1, a_2, dots, a_N)$と$bold(b) = (b_1, b_2, dots, b_N)$の_内積_は対応する成分をかけて足し合わせたものであり、
$
bold(a) dot bold(b) = a_1 b_1+dots+a_N b_N = sum_(i=1)^N a_i b_i
$
として定義される。
実数体上の内積なので、スカラー積と同じものである。

== 行列

本テキストの_行列_とは$M, N = 1, 2, 3, dots$として実数体上の$M times N$行列のことであり$RR^(M times N)$の元のことである。
つまり、行列は$M times N$個のスカラーの並び
$
mat(a_(1 1), dots.c, a_(1 N); dots.v, dots.down, dots.v; a_(M 1), dots.c, a_(M N))
$
である。
行列は大文字アルファベットを使って$A, B, C, F, X, Y, Z$などと表す。
零行列は$O$とする。

行列も加法とスカラー倍が定義され線形空間をなす。
その他にも$M times L$行列と$L times N$行列の積が$M times N$行列として定義される。
また、$N$次元ベクトルを$N times 1$行列とみなして、$M times N$行列と$N$次元ベクトルの積が$M$次元ベクトルとして定義される。

$M times N$行列$A$に対して_転置行列_$A^T$を$N times M$行列
$
mat(a_(1 1), dots.c, a_(1 N); dots.v, dots.down, dots.v; a_(M 1), dots.c, a_(M N))^T
= mat(a_(1 1), dots.c, a_(M 1); dots.v, dots.down, dots.v; a_(1 N), dots.c, a_(M N))
$
として定義する。
$M = N$の場合の$N$次正方行列$A$に対して対角成分の和を$A$の_トレース_または_跡_といい$tr A$と表す。
トレースは
$
tr A = a_(1 1)+dots+a_(N N) = sum_(i=1)^N a_(i i)
$
なるスカラーである。
また、$N$次正方行列$A$に対して
$
A X = X A = I
$
となる$N$次正方行列$X$が（一意に）存在するとき、$X$を$A$の_逆行列_といい$A^(-1)$と表す。
ただし、$I$は単位行列つまり対角成分が1で他が0の$N$次正方行列である。

さらに正方行列には行列式$det(A)$というスカラーが定義される。
$N = 1, 2, 3$の場合の行列式は
$
det mat(a) = +a,
$
$
det mat(a, b; c, d) = +a d-b c,
$
$
det mat(a, b, c; d, e, f; g, h, i) = +a e i+b f g+c d h-c e g-b d i-a f h
$
であるが、それより高い次数の場合は定義を省略する。
行列式は$N$個の$N$次元ベクトルを行列の列として並べたものの体積を符号付きで表すものである。

二つのサイズの等しい$M times N$行列$A$と$B$に対して_内積_$A colon B$をベクトルの内積と同様に対応する成分をかけて足し合わせたものとする。
そしてこれは転置とトレースを使っても表すことができることに注意する。
つまり、
$
A colon B = sum_(i=1)^M sum_(j=1)^N a_(i j) b_(i j) = tr(A^T B)
$
である。

== ベクトルの外積と三重積

ベクトルの外積は二次元と三次元の場合に定義されるものであり、行列式ひいては面積や体積と関係がある。

二次元ベクトル$bold(a) = vec(a_1, a_2)$と$bold(b) = vec(b_1, b_2)$の_外積_$bold(a) times bold(b)$は行列式でありスカラーである。
つまり定義は
$
bold(a) times bold(b)
= det mat(bold(a), bold(b))
= det mat(a_1, a_2; b_1, b_2)
= a_1 b_2-a_2 b_1
$
である。

三次元ベクトル$bold(a) = vec(a_1, a_2, a_3)$と$bold(b) = vec(b_1, b_2, b_3)$の_外積_は
$
bold(a) times bold(b)
= vec(a_2 b_3-a_3 b_2, a_3 b_1-a_1 b_3, a_1 b_2-a_2 b_1)
$
標準基底ベクトル$bold(e)_1, bold(e)_2, bold(e)_3$を使うと形式的には
$
bold(a) times bold(b)
= (a_2 b_3-a_3 b_2)bold(e)_1+(a_3 b_1-a_1 b_3)bold(e)_2+(a_1 b_2-a_2 b_1)bold(e)_3
= det mat(bold(e)_1, bold(e)_2, bold(e)_3; a_1, a_2, a_3; b_1, b_2, b_3)
$
となる。

#proposition([三重積の公式])[
三次元ベクトル$bold(a), bold(b), bold(c)$に対してスカラー三重積
$
bold(a) dot (bold(b) times bold(c))
= bold(b) dot (bold(c) times bold(a))
= bold(c) dot (bold(a) times bold(b))
= det mat(bold(a), bold(b), bold(c))
$
とベクトル三重積
$
bold(a) times (bold(b) times bold(c))
= (bold(a) dot bold(c))bold(b)-(bold(a) dot bold(b))bold(c)
$
が成り立つ。
]

この命題の中に出てくる行列式$det mat(bold(a), bold(b), bold(c))$は三つのベクトル$bold(a), bold(b), bold(c)$の（スカラー）_三重積_と呼ばれ、$[bold(a), bold(b), bold(c)]$とも書かれる。

#proof[
成分を$bold(a) = vec(a_1, a_2, a_3), bold(b) = vec(b_1, b_2, b_3), bold(c) = vec(c_1, c_2, c_3)$とおくと
$
bold(b) times bold(c) = vec(b_2 c_3-b_3 c_2, b_3 c_1-b_1 c_3, b_1 c_2-b_2 c_1)
$
より、スカラー三重積について
$
bold(a) dot (bold(b) times bold(c))
= a_1 (b_2 c_3-b_3 c_2)+a_2 (b_3 c_1-b_1 c_3)+a_3 (b_1 c_2-b_2 c_1)
$
でこれは三重積$[bold(a), bold(b), bold(c)] = det mat(bold(a), bold(b), bold(c))$に他ならない。
$bold(a), bold(b), bold(c)$の並びを巡回させても三重積の値は変化しないので、$bold(b) dot (bold(c) times bold(a))$や$bold(c) dot (bold(a) times bold(b))$も同じ値になる。

また、ベクトル三重積についても
$
bold(a) times (bold(b) times bold(c))
&= vec(
	a_2 (b_1 c_2-b_2 c_1)-a_3 (b_3 c_1-b_1 c_3),
	a_3 (b_2 c_3-b_3 c_2)-a_1 (b_1 c_2-b_2 c_1),
	a_1 (b_3 c_1-b_1 c_3)-a_2 (b_2 c_3-b_3 c_2)
)
= vec((a_2 c_2+a_3 c_3)b_1, (a_3 c_3+a_1 c_1)b_2, (a_1 c_1+a_2 c_2)b_3)
	-vec((a_2 b_2+a_3 b_3)c_1, (a_3 b_3+a_1 b_1)c_2, (a_1 b_1+a_2 b_2)c_3) \
&= (a_1 c_1+a_2 c_2+a_3 c_3)vec(b_1, b_2, b_3)-(a_1 b_1+a_2 b_2+a_3 b_3)vec(c_1, c_2, c_3) \
&= (bold(a) dot bold(c))bold(b)-(bold(a) dot bold(b))bold(c)
$
である。
]

#remark[
ベクトル三重積の式より、ベクトルの外積について結合法則は成り立たず、$bold(a) dot (bold(b) times bold(c))$と$(bold(a) dot bold(b)) times bold(c)$は一般には異なる。
なお、次のヤコビ恒等式からこの二つの差もベクトル三重積で得られることがわかる。
]

#proposition([ヤコビ恒等式])[
三次元ベクトル$bold(a), bold(b), bold(c)$に対して
$
bold(a) times (bold(b) times bold(c))+bold(b) times (bold(c) times bold(a))+bold(c) times (bold(a) times bold(b)) = bold(0)
$
が成り立つ。
]

#proof[
ベクトル三重積の公式より
$
bold(a) times (bold(b) times bold(c))+bold(b) times (bold(c) times bold(a))+bold(c) times (bold(a) times bold(b))
= ((bold(a) dot bold(c))bold(b)-(bold(a) dot bold(b))bold(c))+((bold(b) dot bold(a))bold(c)-(bold(b) dot bold(c))bold(a))+((bold(c) dot bold(b))bold(a)-(bold(c) dot bold(a))bold(b))
= bold(0)
$
である。
]
