unit unitmod26;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, math;

procedure ReadParam(Var a,a1:string;var t:text);
Procedure SaveParam(Var a,a1:string; var t:text);
function Ploshad(r,fi:real):real;

implementation

 procedure ReadParam(Var a,a1:string;var t:text);
var
s,s1:string;
begin
readln(t,s);
a:=s;
readln(t,s1);
a1:=s1;
end;

Procedure SaveParam(Var a,a1:string;var t:text);
var
s,s1:string;
begin
s:=a;
s1:=a1;
writeln(t,s);
writeln(t,s1);
end;

function Ploshad(r,fi:real):real;
var p:real;
begin
p:=(pi * sqr(r) * fi) / (2 * pi);
Ploshad:=p;
end;

end.

