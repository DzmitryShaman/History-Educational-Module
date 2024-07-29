unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm6 = class(TForm)
    btn1: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl4: TLabel;
    img2: TImage;
    img1: TImage;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
  Form6.Hide;
  form3.show;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  BorderStyle := bsNone;
  WindowState := wsMaximized;
end;

end.
