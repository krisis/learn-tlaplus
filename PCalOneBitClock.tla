-------------------------- MODULE PCalOneBitClock --------------------------
EXTENDS Integers
(***************************************************************************
--algorithm Clock {
    variable b \in {0, 1};
    { while (TRUE) {
         b := (b + 1) % 2
      }
    }
}
 ***************************************************************************)
\* BEGIN TRANSLATION
VARIABLE b

vars == << b >>

Init == (* Global variables *)
        /\ b \in {0, 1}

Next == b' = (b + 1) % 2

Spec == Init /\ [][Next]_vars

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Thu Oct 27 10:33:46 IST 2016 by kp
\* Created Thu Oct 27 10:25:48 IST 2016 by kp
