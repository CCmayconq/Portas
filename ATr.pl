#!/usr/bin/perl

#Trocas aleatorias do problema das portas

open(IN, "<Entr.txt") or die "Nao deu pra abrir o arquivo $!";
open(OT, ">>ATr.txt") or die "Nao deu pra abrir o arquivo $!";

chomp(@L = <IN>);
close(IN);

foreach (@L) {
  $YW = 0;
  $P = int(rand(3));
  $Ch = 0;
  @A = (0, 0, 0);
  $A[$P] = 1;
  @T = split(' ', $_);
  $i = 0;
  while ($Ch == 0){
    if ($A[$i] == 0 && $T[$i] == 0){
      $A[$i] = 2;
      $Ch = 1;
    }
    $i++;
  }
  $A[$P] = 0;
  $P = int(rand(2));
  if ($A[$P] == 1){
    $A[$P+1] = 1;
  } else {
    $A[$P] = 1;
  }
  for (my $j = 0; $j < 3; $j++) {
    if ($A[$j] == 1 && $T[$j] == 1){
      $YW = 1;
    }
  }
  print OT "$YW\n";
}
