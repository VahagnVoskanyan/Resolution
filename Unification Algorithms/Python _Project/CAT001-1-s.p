%------------------------------------------------------------------------------
% File     : Vampire---4.9
% Problem  : CAT001-1 : TPTP v8.2.0. Released v1.0.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : run_vampire %s %d THM

% Computer : n011.cluster.edu
% Model    : x86_64 x86_64
% CPU      : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory   : 8042.1875MB
% OS       : Linux 3.10.0-693.el7.x86_64
% CPULimit : 300s
% WCLimit  : 300s
% DateTime : Mon Jun 24 04:43:15 EDT 2024

% Result   : Unsatisfiable 7.35s 1.49s
% Output   : Refutation 7.35s
% Verified : 
% SZS Type : Refutation
%            Derivation depth      :   21
%            Number of leaves      :   20
% Syntax   : Number of formulae    :   91 (  41 unt;   0 def)
%            Number of atoms       :  162 (  14 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :  143 (  72   ~;  71   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   11 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    5 (   3 usr;   1 prp; 0-3 aty)
%            Number of functors    :    9 (   9 usr;   6 con; 0-2 aty)
%            Number of variables   :  150 ( 150   !;   0   ?)

% Comments : 
%------------------------------------------------------------------------------
fof(f14947,plain,
    $false,
    inference(subsumption_resolution,[],[f14039,f23]) ).

fof(f23,axiom,
    h != g,
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f14039,plain,
    h = g,
    inference(resolution,[],[f14037,f5176]) ).

fof(f5176,plain,
    ! [X0] :
      ( ~ product(c,X0,compose(c,g))
      | g = X0 ),
    inference(resolution,[],[f5137,f20]) ).

fof(f20,axiom,
    ! [X8,X9,X7] :
      ( ~ product(c,X7,X8)
      | ~ product(c,X9,X8)
      | X7 = X9 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f5137,plain,
    product(c,g,compose(c,g)),
    inference(resolution,[],[f5096,f1]) ).

fof(f1,axiom,
    ! [X0,X1] :
      ( ~ defined(X0,X1)
      | product(X0,X1,compose(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f5096,plain,
    defined(c,g),
    inference(resolution,[],[f5014,f3428]) ).

fof(f3428,plain,
    ! [X0,X1] :
      ( ~ product(domain(b),X0,X1)
      | defined(c,X0) ),
    inference(superposition,[],[f3348,f1279]) ).

fof(f1279,plain,
    domain(c) = domain(b),
    inference(resolution,[],[f409,f365]) ).

fof(f365,plain,
    product(domain(c),domain(b),domain(b)),
    inference(resolution,[],[f32,f67]) ).

fof(f67,plain,
    product(domain(c),domain(b),domain(c)),
    inference(resolution,[],[f64,f50]) ).

fof(f50,plain,
    ! [X2,X0,X1] :
      ( ~ product(X2,X0,X1)
      | product(X0,domain(X1),X0) ),
    inference(resolution,[],[f29,f36]) ).

fof(f36,plain,
    ! [X2,X0,X1] :
      ( defined(X0,domain(X1))
      | ~ product(X2,X0,X1) ),
    inference(resolution,[],[f3,f12]) ).

fof(f12,axiom,
    ! [X0] : defined(X0,domain(X0)),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f3,axiom,
    ! [X2,X3,X0,X1] :
      ( ~ defined(X3,X2)
      | defined(X1,X2)
      | ~ product(X0,X1,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f29,plain,
    ! [X0,X1] :
      ( ~ defined(X0,domain(X1))
      | product(X0,domain(X1),X0) ),
    inference(resolution,[],[f17,f10]) ).

fof(f10,axiom,
    ! [X0] : identity_map(domain(X0)),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f17,axiom,
    ! [X0,X1] :
      ( ~ identity_map(X1)
      | ~ defined(X0,X1)
      | product(X0,X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f64,plain,
    product(b,domain(c),b),
    inference(resolution,[],[f50,f19]) ).

fof(f19,axiom,
    product(a,b,c),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f32,plain,
    ! [X2,X0,X1] :
      ( ~ product(domain(X0),X1,X2)
      | product(domain(X0),X1,X1) ),
    inference(resolution,[],[f27,f2]) ).

fof(f2,axiom,
    ! [X2,X0,X1] :
      ( defined(X0,X1)
      | ~ product(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f27,plain,
    ! [X0,X1] :
      ( ~ defined(domain(X0),X1)
      | product(domain(X0),X1,X1) ),
    inference(resolution,[],[f16,f10]) ).

fof(f16,axiom,
    ! [X0,X1] :
      ( ~ identity_map(X0)
      | ~ defined(X0,X1)
      | product(X0,X1,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f409,plain,
    ! [X0] :
      ( ~ product(domain(c),domain(b),X0)
      | domain(c) = X0 ),
    inference(resolution,[],[f18,f67]) ).

fof(f18,axiom,
    ! [X2,X0,X1,X6] :
      ( ~ product(X0,X1,X2)
      | ~ product(X0,X1,X6)
      | X2 = X6 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f3348,plain,
    ! [X2,X0,X1] :
      ( ~ product(domain(X0),X1,X2)
      | defined(X0,X1) ),
    inference(resolution,[],[f3317,f2]) ).

fof(f3317,plain,
    ! [X0,X1] :
      ( ~ defined(domain(X0),X1)
      | defined(X0,X1) ),
    inference(resolution,[],[f2834,f14]) ).

fof(f14,axiom,
    ! [X0] : product(X0,domain(X0),X0),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f2834,plain,
    ! [X2,X3,X0,X1] :
      ( ~ product(X1,domain(X0),X2)
      | defined(X1,X3)
      | ~ defined(domain(X0),X3) ),
    inference(superposition,[],[f1746,f689]) ).

fof(f689,plain,
    ! [X0] : domain(X0) = codomain(domain(X0)),
    inference(resolution,[],[f417,f52]) ).

fof(f52,plain,
    ! [X0] : product(codomain(domain(X0)),domain(X0),codomain(domain(X0))),
    inference(resolution,[],[f29,f13]) ).

fof(f13,axiom,
    ! [X0] : defined(codomain(X0),X0),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f417,plain,
    ! [X0,X1] :
      ( ~ product(codomain(X0),X0,X1)
      | X0 = X1 ),
    inference(resolution,[],[f18,f15]) ).

fof(f15,axiom,
    ! [X0] : product(codomain(X0),X0,X0),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f1746,plain,
    ! [X2,X3,X0,X1] :
      ( ~ product(X2,codomain(X0),X3)
      | defined(X2,X1)
      | ~ defined(codomain(X0),X1) ),
    inference(resolution,[],[f212,f2]) ).

fof(f212,plain,
    ! [X2,X0,X1] :
      ( ~ defined(X2,codomain(X0))
      | ~ defined(codomain(X0),X1)
      | defined(X2,X1) ),
    inference(resolution,[],[f9,f11]) ).

fof(f11,axiom,
    ! [X0] : identity_map(codomain(X0)),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f9,axiom,
    ! [X2,X0,X1] :
      ( ~ identity_map(X1)
      | ~ defined(X1,X2)
      | ~ defined(X0,X1)
      | defined(X0,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f5014,plain,
    product(domain(b),g,g),
    inference(resolution,[],[f3729,f22]) ).

fof(f22,axiom,
    product(b,g,d),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f3729,plain,
    ! [X2,X0,X1] :
      ( ~ product(X0,X1,X2)
      | product(domain(X0),X1,X1) ),
    inference(resolution,[],[f1183,f14]) ).

fof(f1183,plain,
    ! [X2,X3,X0,X1,X4] :
      ( ~ product(X0,domain(X1),X2)
      | ~ product(X2,X3,X4)
      | product(domain(X1),X3,X3) ),
    inference(resolution,[],[f37,f27]) ).

fof(f37,plain,
    ! [X2,X3,X0,X1,X4] :
      ( defined(X0,X1)
      | ~ product(X2,X0,X3)
      | ~ product(X3,X1,X4) ),
    inference(resolution,[],[f3,f2]) ).

fof(f14037,plain,
    product(c,h,compose(c,g)),
    inference(resolution,[],[f12954,f19]) ).

fof(f12954,plain,
    ! [X0] :
      ( ~ product(a,b,X0)
      | product(X0,h,compose(c,g)) ),
    inference(backward_demodulation,[],[f3926,f12921]) ).

fof(f12921,plain,
    compose(a,d) = compose(c,g),
    inference(resolution,[],[f12920,f5180]) ).

fof(f5180,plain,
    ! [X0] :
      ( ~ product(c,g,X0)
      | compose(c,g) = X0 ),
    inference(resolution,[],[f5137,f18]) ).

fof(f12920,plain,
    product(c,g,compose(a,d)),
    inference(resolution,[],[f3925,f19]) ).

fof(f3925,plain,
    ! [X0] :
      ( ~ product(a,b,X0)
      | product(X0,g,compose(a,d)) ),
    inference(resolution,[],[f3814,f1086]) ).

fof(f1086,plain,
    ! [X2,X0,X1] :
      ( ~ product(X0,d,X2)
      | ~ product(X0,b,X1)
      | product(X1,g,X2) ),
    inference(resolution,[],[f8,f22]) ).

fof(f8,axiom,
    ! [X2,X3,X0,X1,X4,X5] :
      ( ~ product(X1,X2,X4)
      | ~ product(X0,X1,X3)
      | ~ product(X0,X4,X5)
      | product(X3,X2,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f3814,plain,
    product(a,d,compose(a,d)),
    inference(resolution,[],[f3759,f1]) ).

fof(f3759,plain,
    defined(a,d),
    inference(resolution,[],[f3655,f3486]) ).

fof(f3486,plain,
    ! [X0,X1] :
      ( ~ product(X1,domain(X0),codomain(b))
      | defined(X0,d) ),
    inference(resolution,[],[f3354,f110]) ).

fof(f110,plain,
    ! [X2,X0,X1] :
      ( defined(X0,codomain(X1))
      | ~ product(X2,X0,codomain(X1)) ),
    inference(resolution,[],[f104,f3]) ).

fof(f104,plain,
    ! [X0] : defined(codomain(X0),codomain(X0)),
    inference(resolution,[],[f55,f38]) ).

fof(f38,plain,
    ! [X2,X0,X1] :
      ( ~ product(X2,X0,codomain(X1))
      | defined(X0,X1) ),
    inference(resolution,[],[f3,f13]) ).

fof(f55,plain,
    ! [X0] : product(codomain(codomain(X0)),codomain(X0),codomain(codomain(X0))),
    inference(resolution,[],[f30,f13]) ).

fof(f30,plain,
    ! [X0,X1] :
      ( ~ defined(X0,codomain(X1))
      | product(X0,codomain(X1),X0) ),
    inference(resolution,[],[f17,f11]) ).

fof(f3354,plain,
    ! [X0] :
      ( ~ defined(domain(X0),codomain(b))
      | defined(X0,d) ),
    inference(resolution,[],[f3317,f2860]) ).

fof(f2860,plain,
    ! [X0] :
      ( defined(X0,d)
      | ~ defined(X0,codomain(b)) ),
    inference(resolution,[],[f2827,f1034]) ).

fof(f1034,plain,
    product(codomain(b),d,d),
    inference(resolution,[],[f1027,f28]) ).

fof(f28,plain,
    ! [X0,X1] :
      ( ~ defined(codomain(X0),X1)
      | product(codomain(X0),X1,X1) ),
    inference(resolution,[],[f16,f11]) ).

fof(f1027,plain,
    defined(codomain(b),d),
    inference(resolution,[],[f966,f38]) ).

fof(f966,plain,
    product(codomain(d),codomain(b),codomain(d)),
    inference(resolution,[],[f54,f783]) ).

fof(f783,plain,
    product(codomain(d),codomain(b),codomain(b)),
    inference(backward_demodulation,[],[f149,f690]) ).

fof(f690,plain,
    ! [X0] : codomain(X0) = codomain(codomain(X0)),
    inference(resolution,[],[f417,f55]) ).

fof(f149,plain,
    product(codomain(codomain(d)),codomain(b),codomain(b)),
    inference(resolution,[],[f140,f86]) ).

fof(f86,plain,
    ! [X2,X0,X1] :
      ( ~ product(X0,X1,X2)
      | product(codomain(X2),X0,X0) ),
    inference(resolution,[],[f77,f28]) ).

fof(f77,plain,
    ! [X2,X0,X1] :
      ( defined(codomain(X0),X1)
      | ~ product(X1,X2,X0) ),
    inference(resolution,[],[f6,f13]) ).

fof(f6,axiom,
    ! [X2,X0,X1,X4] :
      ( ~ defined(X0,X4)
      | defined(X0,X1)
      | ~ product(X1,X2,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f140,plain,
    product(codomain(b),codomain(d),codomain(d)),
    inference(resolution,[],[f133,f86]) ).

fof(f133,plain,
    product(codomain(d),b,b),
    inference(resolution,[],[f86,f21]) ).

fof(f21,axiom,
    product(b,h,d),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown) ).

fof(f54,plain,
    ! [X2,X0,X1] :
      ( ~ product(X0,codomain(X1),X2)
      | product(X0,codomain(X1),X0) ),
    inference(resolution,[],[f30,f2]) ).

fof(f2827,plain,
    ! [X2,X3,X0,X1] :
      ( ~ product(codomain(X0),X1,X2)
      | defined(X3,X1)
      | ~ defined(X3,codomain(X0)) ),
    inference(superposition,[],[f1634,f502]) ).

fof(f502,plain,
    ! [X0] : codomain(X0) = domain(codomain(X0)),
    inference(resolution,[],[f399,f34]) ).

fof(f34,plain,
    ! [X0] : product(codomain(X0),domain(codomain(X0)),domain(codomain(X0))),
    inference(resolution,[],[f28,f12]) ).

fof(f399,plain,
    ! [X0,X1] :
      ( ~ product(X0,domain(X0),X1)
      | X0 = X1 ),
    inference(resolution,[],[f18,f14]) ).

fof(f1634,plain,
    ! [X2,X3,X0,X1] :
      ( ~ product(domain(X1),X2,X3)
      | defined(X0,X2)
      | ~ defined(X0,domain(X1)) ),
    inference(resolution,[],[f211,f2]) ).

fof(f211,plain,
    ! [X2,X0,X1] :
      ( ~ defined(domain(X0),X1)
      | ~ defined(X2,domain(X0))
      | defined(X2,X1) ),
    inference(resolution,[],[f9,f10]) ).

fof(f3655,plain,
    product(codomain(b),domain(a),codomain(b)),
    inference(resolution,[],[f3626,f90]) ).

fof(f90,plain,
    ! [X2,X0,X1] :
      ( ~ product(domain(X0),X1,X2)
      | product(codomain(X2),domain(X0),codomain(X2)) ),
    inference(resolution,[],[f77,f29]) ).

fof(f3626,plain,
    product(domain(a),b,b),
    inference(resolution,[],[f3617,f32]) ).

fof(f3617,plain,
    product(domain(a),b,compose(domain(a),b)),
    inference(resolution,[],[f3592,f14]) ).

fof(f3592,plain,
    ! [X0,X1] :
      ( ~ product(X0,X1,a)
      | product(X1,b,compose(X1,b)) ),
    inference(resolution,[],[f1182,f19]) ).

fof(f1182,plain,
    ! [X2,X3,X0,X1,X4] :
      ( ~ product(X2,X3,X4)
      | ~ product(X0,X1,X2)
      | product(X1,X3,compose(X1,X3)) ),
    inference(resolution,[],[f37,f1]) ).

fof(f3926,plain,
    ! [X0] :
      ( ~ product(a,b,X0)
      | product(X0,h,compose(a,d)) ),
    inference(resolution,[],[f3814,f1085]) ).

fof(f1085,plain,
    ! [X2,X0,X1] :
      ( ~ product(X0,d,X2)
      | ~ product(X0,b,X1)
      | product(X1,h,X2) ),
    inference(resolution,[],[f8,f21]) ).

%------------------------------------------------------------------------------