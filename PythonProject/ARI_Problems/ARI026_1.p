%------------------------------------------------------------------------------
% File     : ARI026_1 : TPTP v9.0.0. Released v5.0.0.
% Domain   : Arithmetic
% Problem  : Integer: Something lesseq to -2
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v7.4.0, 0.17 v7.3.0, 0.12 v7.1.0, 0.17 v7.0.0, 0.00 v6.1.0, 0.11 v6.0.0, 0.12 v5.5.0, 0.00 v5.3.0, 0.14 v5.2.0, 0.40 v5.1.0, 0.50 v5.0.0
% Syntax   : Number of formulae    :    1 (   1 unt;   0 typ;   0 def)
%            Number of atoms       :    1 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number arithmetic     :    3 (   1 atm;   0 fun;   1 num;   1 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   0 usr;   1 con; 0-0 aty)
%            Number of variables   :    1 (   0   !;   1   ?;   1   :)
% SPC      : TF0_THM_NEQ_ARI

% Comments :
%------------------------------------------------------------------------------
tff(something_lesseq_n2,conjecture,
    ? [X: $int] : $lesseq(X,-2) ).

%------------------------------------------------------------------------------
