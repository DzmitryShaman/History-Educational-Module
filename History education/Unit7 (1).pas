unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm7 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn2: TButton;
    lbl4: TLabel;
    lbl5: TLabel;
    img1: TImage;
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit3, Unit1;

{$R *.dfm}

procedure TForm7.btn2Click(Sender: TObject);
begin
  Form7.Hide;
  form3.show;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  BorderStyle := bsNone;
  WindowState := wsMaximized;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
  if (edt1.Text='') and (edt2.Text='') and (edt3.Text='') then
  begin
   lbl4.Caption:='¬ведите данные';
  end;
  if ( length(Edt1.Text) = 0 ) or ( length(Edt2.Text) = 0 ) or ( length(Edt3.Text) = 0 ) then
  begin
  lbl4.Caption:='¬ведите данные';
      Exit;
  end
  else Form1.Show;
  Form7.Hide
end;

end.
