------------------------------ MODULE DieHard ------------------------------
EXTENDS Integers
VARIABLES big, small
TypeOK == /\ big \in 0..5
          /\ small \in  0..3

Init == /\ big = 0
        /\ small = 0

Min(m, n) == IF (m < n) THEN m ELSE n

FillBig == /\ big' = 5
           /\ small' = small
           
FillSmall == /\ small' = 3
             /\ big' = big
             
EmptyBig == /\ big' = 0
            /\ small' = small
            
EmptySmall == /\ small' = 0
             /\ big' = big
            
SmallToBig ==
    LET poured == Min(big+small, 5) - big
    IN /\ big' = big + poured
       /\ small' = small - poured
   
BigToSmall ==
LET poured == Min(big+small, 3) - small
IN /\ small' = small + poured
   /\ big' = big - poured
 
Next == \/ FillBig
        \/ FillSmall
        \/ EmptyBig
        \/ EmptySmall
        \/ SmallToBig
        \/ BigToSmall
        
=============================================================================
\* Modification History
\* Last modified Thu Oct 27 10:57:35 IST 2016 by kp
\* Created Thu Oct 27 10:40:34 IST 2016 by kp
