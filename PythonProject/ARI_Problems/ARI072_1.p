%------------------------------------------------------------------------------
% File     : ARI072_1 : TPTP v9.0.0. Released v5.0.0.
% Domain   : Arithmetic
% Problem  : Integer: Sum 5 and -2 is something
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v7.4.0, 0.12 v7.3.0, 0.17 v7.0.0, 0.00 v6.2.0, 0.12 v6.1.0, 0.00 v5.3.0, 0.20 v5.2.0, 0.17 v5.1.0, 0.20 v5.0.0
% Syntax   : Number of formulae    :    1 (   1 unt;   0 typ;   0 def)
%            Number of atoms       :    1 (   1 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    4 (   0 atm;   1 fun;   2 num;   1 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    3 (   0 usr;   2 con; 0-2 aty)
%            Number of variables   :    1 (   0   !;   1   ?;   1   :)
% SPC      : TF0_THM_EQU_ARI

% Comments :
%------------------------------------------------------------------------------
tff(sum_5_n2_what,conjecture,
    ? [X: $int] : ( $sum(5,-2) = X ) ).

%------------------------------------------------------------------------------
