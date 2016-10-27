-------------------------------- MODULE GCD --------------------------------
EXTENDS Integers
Divides(p, n) == \E q \in Int : n = q * p
DivisorsOf(n) == {p \in Int : Divides(p, n)}
SetMax(s) == CHOOSE i \in s : \A j \in s : i >= j
GCD(m, n) == SetMax(DivisorsOf(m) \cap DivisorsOf(n))

=============================================================================
\* Modification History
\* Last modified Thu Oct 27 11:55:47 IST 2016 by kp
\* Created Thu Oct 27 11:23:03 IST 2016 by kp
