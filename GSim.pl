#!/usr/bin/perl

#Gerador de simulacoes para testar os trocas

use List::Util qw(shuffle);

open(OT, ">Entr.txt") or die "Nao deu pra abrir o arquivo $!";

@O = (0, 0, 1);
@S = shuffle @O;
for ($i = 0; $i < 1000; $i++){
  print OT "@S\n";
  @S = shuffle @S;
}
