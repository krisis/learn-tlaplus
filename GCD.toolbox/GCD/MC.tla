---- MODULE MC ----
EXTENDS GCD, TLC

\* CONSTANT definition @modelParameterDefinitions:0
def_ov_1477549593325120000 ==
-1000..1000
----
\* Constant expression definition @modelExpressionEval
const_expr_1477549593336121000 == 
GCD(493,29)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1477549593336121000>>)
----

=============================================================================
\* Modification History
\* Created Thu Oct 27 11:56:33 IST 2016 by kp
