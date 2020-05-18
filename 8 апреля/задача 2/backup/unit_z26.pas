unit unit_z26;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus, math, unitmod26;

type

  { TForm_s }

  TForm_s {объект этого класса}= class(TForm) //класс формы
    Button1: TButton;                          //поля этого класса идут отсюда
    Edit_d: TEdit;
    Edit_r: TEdit;
    Label_result: TLabel;
    Label_r: TLabel;
    Label_duga: TLabel;
    MainMenu1: TMainMenu;
    Result: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;            //и заканчиваются здесь
    procedure Button1Click(Sender: TObject);     //все процедуры являются методами класса
    procedure MenuItem1Click(Sender: TObject);   //их определения находится в секции implementation
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure DataFromForm();
  private

  public

  end;

var
  Form_s: TForm_s;
  fi,r:real;

implementation

{$R *.lfm}

{ TForm_s }

procedure TForm_s.DataFromForm();
begin

  if TryStrToFloat(Edit_r.text,r) = false then
  begin
     Edit_r.Color:=clRed;
     ShowMessage('Неправильно введён параметр r');
     exit;
  end;
  if TryStrToFloat(Edit_d.text,fi) = false then
  begin
     Edit_d.Color:=clRed;
     ShowMessage('Неправильно введён параметр fi');
     exit;
  end;
end;

procedure TForm_s.Button1Click(Sender: TObject);
   var s: real;
 begin
DataFromForm();
s:=Ploshad(r,fi);
Result.Lines.append(FloatToStr(s));
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
    Result.Lines.SaveToFile(Savedialog1.FileName);
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

