%--------------------------------------------------------------------------
% File     : CAT001-1 : TPTP v9.0.0. Released v1.0.0.
% Domain   : Category Theory
% Problem  : XY monomorphism => Y monomorphism
% Version  : [Mit67] axioms.
% English  : If xy is a monomorphism, then y is a monomorphism.

% Refs     : [Mit67] Mitchell (1967), Theory of Categories
%          : [MOW76] McCharen et al. (1976), Problems and Experiments for a
% Source   : [ANL]
% Names    : C1 [MOW76]
%          : p1.ver1.in [ANL]

% Status   : Unsatisfiable
% Rating   : 0.08 v9.0.0, 0.06 v8.2.0, 0.08 v8.1.0, 0.11 v7.5.0, 0.10 v7.4.0, 0.11 v7.3.0, 0.00 v6.0.0, 0.33 v5.5.0, 0.31 v5.4.0, 0.27 v5.3.0, 0.33 v5.2.0, 0.38 v5.1.0, 0.43 v5.0.0, 0.29 v4.1.0, 0.11 v4.0.1, 0.17 v4.0.0, 0.33 v3.7.0, 0.17 v3.5.0, 0.00 v3.1.0, 0.22 v2.7.0, 0.00 v2.6.0, 0.29 v2.5.0, 0.00 v2.4.0, 0.17 v2.3.0, 0.00 v2.2.1, 0.44 v2.2.0, 0.43 v2.1.0, 0.60 v2.0.0
% Syntax   : Number of clauses     :   23 (  10 unt;   0 nHn;  17 RR)
%            Number of literals    :   52 (   3 equ;  30 neg)
%            Maximal clause size   :    4 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-3 aty)
%            Number of functors    :    9 (   9 usr;   6 con; 0-2 aty)
%            Number of variables   :   55 (   5 sgn)
% SPC      : CNF_UNS_RFO_SEQ_HRN

% Comments :
%--------------------------------------------------------------------------
%----Include Mitchell's axioms for category theory
include('Axioms/CAT001-0.ax').
%--------------------------------------------------------------------------
cnf(ab_equals_c,hypothesis,
    product(a,b,c) ).

cnf(cancellation_for_product,hypothesis,
    ( ~ product(c,X1,X2)
    | ~ product(c,X3,X2)
    | X1 = X3 ) ).

cnf(bh_equals_d,hypothesis,
    product(b,h,d) ).

cnf(bg_equals_d,hypothesis,
    product(b,g,d) ).

cnf(prove_h_equals_g,negated_conjecture,
    h != g ).

%--------------------------------------------------------------------------
