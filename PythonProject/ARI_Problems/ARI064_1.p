%------------------------------------------------------------------------------
% File     : ARI064_1 : TPTP v9.0.0. Released v5.0.0.
% Domain   : Arithmetic
% Problem  : Integer: Sum only 2 and 3 is 5
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v6.2.0, 0.12 v6.1.0, 0.22 v6.0.0, 0.14 v5.5.0, 0.11 v5.4.0, 0.25 v5.3.0, 0.20 v5.2.0, 0.33 v5.1.0, 0.40 v5.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 typ;   0 def)
%            Number of atoms       :    2 (   2 equ)
%            Maximal formula atoms :    2 (   2 avg)
%            Number of connectives :    1 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    5 (   0 atm;   1 fun;   3 num;   1 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    4 (   0 usr;   3 con; 0-2 aty)
%            Number of variables   :    1 (   1   !;   0   ?;   1   :)
% SPC      : TF0_THM_EQU_ARI

% Comments :
%------------------------------------------------------------------------------
tff(sum_only_2_3_5,conjecture,
    ! [X: $int] :
      ( ( $sum(X,3) = 5 )
     => ( X = 2 ) ) ).

%------------------------------------------------------------------------------
