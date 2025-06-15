
#import "deps/theorem.typ": thmrules, theorem, proposition, definition, example, remark, proof
#show: thmrules.with()

#import "@preview/physica:0.9.4": dd, pdv

= 物理学への応用

== 逆二乗の法則の積分

ニュートン力学において、三次元空間に二つの質点$1, 2$があるとしてそれぞれ位置が$P_1, P_2$で質量が$m_1, m_2$とすると、二つの質点にはそれぞれ万有引力と呼ばれる引力が働き、その大きさは$m_1$と$m_2$と二点間の距離$r = d(P_1, P_2)$の逆二乗に比例するのであった。
つまり、質点$2$に働く質点$1$からの万有引力は向きも考慮に入れると
$
bold(F)
= -G (m_1 m_2)/r^2 arrow(P_1 P_2)/abs(arrow(P_1 P_2))
= -G m_1 m_2 arrow(P_1 P_2)/abs(arrow(P_1 P_2))^3
$
となり、質点$1$に働く質点$2$からの万有引力はその逆向きになる。

太陽と地球のように質点間の距離$r$が十分大きく質点が点とみなせる時はこれで良いかもしれないが、
地球と地表上の物体のように質点間の距離が小さくなると、質点は点とみなすことはできない。
そのような場合、地表上の物体を点とみなしたとして、その点に働く力はどのようになるのだろうか。
地球をたくさんの質点の集まりとしてそれぞれからの物体に働く万有引力の合計を求めることで、地表上の物体に働く力を求めることができる。
この合計の力はまさしくベクトル場の積分となり、本テキストの重要な応用の一つである。

仮に地球が中心が$P_1 in RR^3$にあり半径が$R > 0$の点集合$B_R (P_1)$でその中で密度が一定値$rho > 0$とすると、
位置$P_2 in RR^3$にある質量$m_2$の物体に働く万有引力の合計は
$
bold(F)
= -integral_(B_R (P_1)) G m_2 rho arrow(P P_2)/abs(arrow(P P_2))^3 dd(P)
= G m_2 rho integral_(B_R (P_1)) arrow(P_2 P)/abs(arrow(P_2 P))^3 dd(P)
$
となる。
ここで地球の中心を原点だと思って$arrow(P_2 P) = arrow(P_1 P)-arrow(P_1 P_2) = bold(x)-bold(a)$とおくと、
この積分の計算は
$
bold(I) = integral_(B_R) (bold(x)-bold(a))/abs(bold(x)-bold(a))^3 dd(bold(x))
$
に帰着される。
空間の次元が$3$で、被積分関数の大きさは$1/abs(bold(x)-bold(a))^2$と$-2$次で足すと正なので、この積分は$bold(a)$が$B_R$の中に入っている、つまり$P_2 in B_R (P_1)$の場合でも収束することに注意する。

この積分の値を計算してみよう。
座標軸を適宜回転させて取り直すことで、$bold(a) = vec(a, 0, 0)$ ($a > 0$)の場合のみ考えれば良い。
$bold(x) = vec(x, y, z)$とおくと、
$
bold(I) = integral.triple_(x^2+y^2+z^2 <= R^2) 1/sqrt((x-a)^2+y^2+z^2)^3 vec(x-a, y, z) dd(x, y, z)
$
である。
球座標変換$(x, y, z) = (r cos theta, r sin theta cos phi, r sin theta sin theta)$するとヤコビアンは$abs(pdv((x, y, z), (r, theta, phi))) = r^2 sin theta$であることを思い出して、
$
bold(I) = integral_0^R integral_0^pi integral_0^(2 pi) (r^2 sin theta)/sqrt((r cos theta-a)^2+r^2 sin^2 theta)^3 vec(r cos theta-a, r sin theta cos phi, r sin theta sin phi) dd(phi)dd(theta)dd(r)
$
となる。
$phi$での積分を実行すると$y, z$成分は消えて、
$
bold(I)
= integral_0^R integral_0^pi (r^2 sin theta)/sqrt((r cos theta-a)^2+r^2 sin^2 theta)^3 vec(2 pi r cos theta-a, 0, 0) dd(theta)dd(r)
= integral_0^R integral_0^pi (2 pi r^2 (r cos theta-a)sin theta)/sqrt((r cos theta-a)^2+r^2 sin^2 theta)^3 dd(theta)dd(r) vec(1, 0, 0)
$
となる。
このスカラーな積分を$I$とおく、つまり
$
I = 2 pi integral_0^R integral_0^pi (r^2 (r cos theta-a)sin theta)/sqrt(r^2-2 a r cos theta+a^2)^3 dd(theta)dd(r)
$
で$t = cos theta$と置換すると、
$
I = -2 pi integral_0^R integral_(+1)^(-1) (r^2 (r t-a))/sqrt(r^2-2 a r t+a^2)^3 dd(t)dd(r)
$
である。
分母は$t$について一次式の平方根なので丸ごと新しい変数に置換するのが正攻法である。
つまり$s = sqrt(r^2-2 a r t+a^2)$とおくと、
$t$が$+1$から$-1$を動く時$s$は$abs(r-a)$から$abs(r+a) = r+a$を動き、$t = (r^2+a^2-s^2)/(2 a r)$なので、
$
I
= -2 pi integral_0^R integral_(abs(r-a))^(r+a) (r^2 ((r^2+a^2-s^2)/(2 a)-a))/s^3 (-s)/(a r) dd(s)dd(r)
= pi/a^2 integral_0^R integral_(abs(r-a))^(r+a) (r (r^2-a^2-s^2))/s^2 dd(s)dd(r)
$
被積分関数は$r((r^2-a^2)s^(-2)-1)$で不定積分は$r(-(r^2-a^2)s^(-1)-s)+C$なので、
$
I
&= pi/a^2 integral_0^R r(-(r^2-a^2)(1/(abs(r-a))-1/(r+a))-((r+a)-abs(r-a))) dd(s)dd(r) \
&= -(2 pi)/a^2 integral_0^R (1-(r-a)/(abs(r-a)))r^2 dd(r)
$
ここで$1-(r-a)/(abs(r-a))$の値は$r < a$なら$2$で$r > a$なら$0$であることに注意する。
よって、$a > R$のときは常に$r <= R < a$なので、
$
I
= -(2 pi)/a^2 integral_0^R 2 r^2 dd(r)
= -4/3 pi R^3 1/a^2
$
で、$a <= R$のときは
$
I
= -(2 pi)/a^2 integral_0^a 2 r^2 dd(r)
= -4/3 pi a
$
となる。
