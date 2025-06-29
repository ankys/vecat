
#import "deps/theorem.typ": thmrules, theorem, proposition, definition, example, remark, proof
#show: thmrules.with()

#import "@preview/physica:0.9.4": grad, div, curl, laplacian, dd, dv
#let opgrad = $op("grad")$
#let opdiv = $op("div")$
#let opcurl = $op("curl")$
#let oprot = $op("rot")$
#let hesse = $op("H")$

= 微分の積分

== 勾配定理

勾配定理はスカラー場の勾配ベクトル場の線積分をそのスカラー場の値の差に帰着させる定理である。

#theorem([勾配定理])[
$f$を$C^1$級の$N$次元スカラー場として、$C$を$N$次元空間上の曲線で始点を$P$、終点を$Q$とするものとする。
このとき、
$
integral_C grad f = f(Q)-f(P)
$
が成り立つ。
]

#proof[
$C$のパラメータ表示を$c(t)$ ($c(a) = P$, $c(b) = Q$)とすると、合成関数の微分法$dv(, t)(f compose c)(t) = grad f(c(t)) dot dot(c)(t)$と一変数関数に対する微分積分学の基本定理より
$
integral_C grad f
= integral_a^b grad f(c(t)) dot dot(c)(t) dd(t)
= integral_a^b dv(, t)(f compose c)(t) dd(t)
= (f compose c)(b)-(f compose c)(a)
= f(Q)-f(P)
$
である。
]

== ガウス・グリーンの定理

== ガウスの発散定理
