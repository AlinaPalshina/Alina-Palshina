unit unitmod26;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, math;


function Ploshad(r,fi:real):real;
procedure save_params(r, fi: Real; filename: string);       // сохр. r, fi, в текстовый файл filename (по цифре на строку файла).
procedure load_params(var r, fi: Real; filename: string);   // загруж из файла filename r,fi(должны быть в отдельных строках)

implementation



function Ploshad(r,fi:real):real;
var p:real;
begin
p:=(pi * sqr(r) * fi) / (2 * pi);
Ploshad:=p;
end;

procedure save_params(r, fi: Real; filename: string);
var
  f: text;
begin
     assign(f, filename);
     rewrite(f);
     writeln(f, r);
     writeln(f, fi);
     closefile(f);
end;

procedure load_params(var r, fi: Real; filename: string);
var
  f: text;
begin
    assign(f, filename);
    reset(f);
    readln(f, r);
    readln(f, fi);
    closefile(f);
end;

end.

