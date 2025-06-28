
#import "deps/theorem.typ": thmrules, theorem, proposition, definition, example, remark, proof
#show: thmrules.with()

#import "@preview/physica:0.9.4": grad, div, curl, laplacian, dd
#let opgrad = $op("grad")$
#let opdiv = $op("div")$
#let opcurl = $op("curl")$
#let oprot = $op("rot")$
#let hesse = $op("H")$

= 積分

== 場の積分

ベクトル解析における積分の基礎はスカラー場つまり点集合からスカラー値の関数の積分であり、
積分領域が有界開集合の閉包の場合、その定義は多変数関数の重積分と同じである。
正確な定義は@r_n24c を参照するとして、積分領域を$X$、スカラー場$f = f(x)$に対して積分
$
integral_X f(x) dd(x)
$
が定義され、
微分積分学の基本定理や線形性、単調性、置換積分や変数変換の公式、累次積分や極限と積分の交換など十分よい性質を満たしているとする。

この積分をベクトル場のようにベクトル値や行列値の関数に拡張することは容易である。
つまり各成分ごとに積分を実行すれば良い。
つまり$N$次元ベクトル値の関数$bold(f)(x) = vec(f_1 (x), dots.v, f_N (x))$に対して積分は
$
integral_X bold(f)(x) dd(x) = vec(integral_X f_1 (x) dd(x), dots.v, integral_X f_N (x) dd(x))
$
と、$M times N$行列値の関数$F(x) = mat(f_(1 1) (x), dots.c, f_(1 N) (x); dots.v, dots.down, dots.v; f_(M 1) (x), dots.c, f_(M N) (x))$に対しては
$
integral_X F(x) dd(x)
= mat(
	integral_X f_(1 1) (x) dd(x), dots.c, integral_X f_(1 N) (x) dd(x);
	dots.v, dots.down, dots.v;
	integral_X f_(M 1) (x) dd(x), dots.c, integral_X f_(M N) (x) dd(x);
)
$
と定義される。

その一方でやっかいなのが積分領域$X$の扱いである。
上述の通り積分領域が有界開集合の閉包のような、関数の定義域の次元と等しい次元の場合は重積分が採用されるが、
その境界$partial X$では一般に被積分関数の値が無視されて重積分の値は常に$0$となる。

しかしながら、この境界上の積分にも何らかの意味を持たせて積分値を定義したい。
というのも微分積分学の基本定理の拡張としてスカラー場の勾配やベクトル場の発散の重積分を境界上の積分に落とし込みたいためである。
このような境界上の積分を総称して本テキストでは_境界積分_と呼ぶことにする。

注意しなければならないのは一口に境界と言ってもその実態はさまざまで、球に対して球面のように明らかに次元が一つ下がるものもあれば、コッホ曲線のようなフラクタルなどと呼ばれる図形が現れる場合もある。
本テキストではフラクタルは除いて$N$次元空間の中で$N-1$個のパラメータで定義されるような曲面を積分領域にするような面積分と、
$1$個のパラメータで定義される曲線を積分領域にするような線積分を中心に扱う。
これらに加えて有界開集合の閉包のような$N$個のパラメータで定義される場合を体積分、
有限個の点を積分領域にするような場合を点積分と呼ぶことにする。
つまり体積分、面積分、線積分、点積分はそれぞれ次元$N$、$N-1$、$1$、$0$の積分である。
それぞれ
$
integral_X f(x) dd(V(x)),
quad integral_X f(x) dd(S(x)),
quad integral_X f(x) dd(s(x)),
quad integral_X f(x) dd(c(x))
$
などと表現されるが、
$X$を見ればそれがそれがどの積分か判定できるので、$V, S, s, c$は省略されうる。
また、積分する変数$x$もわかる場合には$dd(x)$は省略されることに注意する。

== 線積分

== 面積分
