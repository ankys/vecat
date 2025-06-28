
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

== 線積分

== 面積分
