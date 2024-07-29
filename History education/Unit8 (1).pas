unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, ComCtrls, XPMan, jpeg;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    edt2: TEdit;
    edt1: TEdit;
    btn2: TButton;
    lbl3: TLabel;
    tmr1: TTimer;
    pb1: TProgressBar;
    btn3: TButton;
    btn4: TButton;
    lbl4: TLabel;
    lbl5: TLabel;
    img1: TImage;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
{    procedure tmr1Timer(Sender: TObject); }
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit1, Unit3, Unit4;

{$R *.dfm}

procedure TForm8.btn2Click(Sender: TObject);
begin
  Form8.Close;
  form3.show;
end;

procedure TForm8.btn1Click(Sender: TObject);
var
  login,password:string;
begin
  login:='shash';
  password:='1234';
if (edt1.Text= login) and (edt2.Text= password) then
begin
  pb1.Visible := True;
  btn1.Visible := False;
  btn2.visible := False;
  edt1.Visible := False;
  edt2.Visible := False;
  lbl1.Visible := False;
  lbl2.Visible := false;
  lbl3.Visible := False;
  tmr1.Enabled:=True;
  lbl5.Visible:=False;
  lbl4.Visible:=True;
end;
  if (edt1.Text<> login) and (edt2.Text<> password) then
  begin
   lbl3.Caption:='Неверно введены данные';
  end;
  if (edt1.Text= '') and (edt2.Text='') then
  begin
   lbl3.Caption:='Заполните поля';
  end;
  if not (edt1.Text= login) then
  begin
   lbl3.Caption:='Неверный логин';
  end;
  if not (edt2.Text= password) then
  begin
    lbl3.Caption:='Неверный пароль';
  end;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
  BorderStyle := bsNone;
  WindowState := wsMaximized;
end;

procedure TForm8.tmr1Timer(Sender: TObject);
begin
  pb1.Position := pb1.Position + 1;
  if pb1.position = 100 then begin
    tmr1.Enabled := False;
    btn3.Visible := True;
    btn2.Visible := True
  end;
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
  form4.show;
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
    Form3.Show;
    Form8.Hide
end;

end.
