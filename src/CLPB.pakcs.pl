% Provides an interface to the CLP(B) solver library of Sicstus-Prolog.
%
% The clauses in this file are added to the Prolog translation of the
% module CLPB.

:- prolog(sicstus) -> use_module(library(clpb))
                    ; onlySICStusMessage('CLPB constraints'), halt(0).

'CLPB.prim_neg'(B,NB) :- =(~(B),NB).

'CLPB.prim_and'(B2,B1,B) :- =(B1*B2,B).

'CLPB.prim_or'(B2,B1,B) :- =(B1+B2,B).

'CLPB.prim_xor'(B2,B1,B) :- =(#(B1,B2),B).

'CLPB.card'(Ns,Bs,B) :- =(B,card(Ns,Bs)).

'CLPB.prim_exists'(V,B,R) :- =(V^B,R).

'CLPB.sat'(B,C) :- sat(B), C='Prelude.True'.

'CLPB.prim_check'(B,R) :- taut(B,R).

'CLPB.labeling'(Bs,C) :- labeling(Bs), C='Prelude.True'.

