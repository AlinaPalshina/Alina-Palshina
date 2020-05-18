unit unitmod26;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, math;


function Ploshad(r,fi:real):real;

implementation



function Ploshad(r,fi:real):real;
var p:real;
begin
p:=(pi * sqr(r) * fi) / (2 * pi);
Ploshad:=p;
end;

end.

