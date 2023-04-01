
%Guilherme Konishi Yoshihara ADS noite 6 ciclo
%RA 2840482021003

progenitor(ivo,eva).
progenitor(rai,noe).
progenitor(gil,rai).
progenitor(gil,clo).
progenitor(gil,ary).
progenitor(ary,gal).
progenitor(ana,eva).
progenitor(eva,noe).
progenitor(bia,rai).
progenitor(bia,clo).
progenitor(bia,ary).
progenitor(lia,gal).

mulher(ana).
mulher(eva).
mulher(bia).
mulher(clo).
mulher(lia).
mulher(gal).

homem(ivo).
homem(rai).
homem(noe).
homem(gil).
homem(ary).


pai(X,Y) :- progenitor(X,Y),homem(X).
mae(X,Y) :- progenitor(X,Y),mulher(X).


gerou(X,Y) :- pai(X,Y); mae(X,Y).

filho(X,Y) :- gerou(Y,X), homen(X).
filha(X,Y) :- gerou(Y,X), mulher(X).

irmao(X,Y) :- gerou(Z,X),gerou(Z,Y), homem(X), X\==Y.
irma(X,Y) :- gerou(Z,X),gerou(Z,Y), mulher(X), X\==Y.

tio(X,Y) :- irmao(X,Z), progenitor(Z,Y).
tia(X,Y) :- irma(X,Z), progenitor(Z,Y).

primo(X,Y) :- tia(Z,X), gerou(Z,Y), homem(X); tio(Z,X),gerou(Z,X),homem(X).
prima(X,Y) :- tia(Z,X), gerou(Z,Y), mulher(X); tio(Z,X),gerou(Z,X),mulher(X).

avoo(X,Y) :-gerou(X,Z), gerou(Z,Y),homem(X).
avooh(X,Y) :-gerou(X,Z), gerou(Z,Y),mulher(X).

