------------------------------- MODULE Euclid -------------------------------
EXTENDS GCD, Integers
CONSTANTS M, N
ASSUME /\ M \in Nat \ {0}
       /\ N \in Nat \ {0}

(***************************************************************************
--algorithm Euclid {
    variables x = M, y = N;
    {
        while (x # y) {
            if (x > y) x := x - y else y := y - x
        }
    }
  }
 ***************************************************************************)
\* BEGIN TRANSLATION
VARIABLES x, y, pc


vars == << x, y, pc >>

Init == (* Global variables *)
        /\ x = M
        /\ y = N
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ IF x # y
               THEN /\ IF x > y
                          THEN /\ x' = x - y
                               /\ y' = y
                          ELSE /\ y' = y - x
                               /\ x' = x
                    /\ pc' = "Lbl_1"
               ELSE /\ pc' = "Done"
                    /\ UNCHANGED << x, y >>

Next == Lbl_1
           \/ (* Disjunct to prevent deadlock on termination *)
              (pc = "Done" /\ UNCHANGED vars)

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION
PartialCorrectness == (pc = "Done") => (x = y) /\ (x = GCD(M,N))
=============================================================================
\* Modification History
\* Last modified Thu Oct 27 15:49:34 IST 2016 by kp
\* Created Thu Oct 27 14:38:42 IST 2016 by kp

