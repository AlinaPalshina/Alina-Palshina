unit unit_z26;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus, math, unitmod26;

type

  { TForm_s }

  TForm_s = class(TForm)
    Button1: TButton;
    Edit_d: TEdit;
    Edit_r: TEdit;
    Label_result: TLabel;
    Label_r: TLabel;
    Label_duga: TLabel;
    MainMenu1: TMainMenu;
    Memo_result: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
  private

  public

  end;

var
  Form_s: TForm_s;

implementation

{$R *.lfm}

{ TForm_s }

procedure TForm_s.Button1Click(Sender: TObject);
   var r, s, fi: real;
 begin
r:=StrToFloat(Edit_r.Text);
fi:=StrToFloat(Edit_d.Text);
s:=Ploshad (r,fi);
Memo_result.Lines.Text:=FloatToStr(s);
end;

procedure TForm_s.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm_s.MenuItem2Click(Sender: TObject);
   var f:text;
begin
  if savedialog1.Execute then
  begin
    Assignfile(f,savedialog1.FileName);
    rewrite(f);
    writeln(f,Edit_r.Text);
    writeln(f,Edit_d.Text);
    closefile(f);
  end;
end;

procedure TForm_s.MenuItem3Click(Sender: TObject);
begin
     if Savedialog1.Execute then
  begin
    Memo_result.Lines.SaveToFile(Savedialog1.FileName);
  end;
end;

procedure TForm_s.MenuItem4Click(Sender: TObject);
    var f:text;
    s:string;
begin
  if opendialog1.Execute then
  begin
    Assignfile(f,opendialog1.FileName);
    reset(f);
    readln(f,s);
    Edit_r.Text:=s;
    readln(f,s);
    Edit_d.Text:=s;
    closefile(f);
  end;
end;

procedure TForm_s.MenuItem5Click(Sender: TObject);
begin
   Showmessage ('Автор:Пальшина Алина' +#13#10+ 'Задача №26' +#13#10+  'Найти площадь сектора, радиус которого равен 13.7, а дуга содержит заданное число радиан φ.');
end;

procedure TForm_s.MenuItem6Click(Sender: TObject);
begin
 Form_s.close;
end;

end.

