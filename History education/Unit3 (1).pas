unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, ShellApi, jpeg, MPlayer;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N2: TMenuItem;
    Label5: TLabel;
    lbl1: TLabel;
    btn1: TButton;
    btn4: TButton;
    J1: TMenuItem;
    N4: TMenuItem;
    tmr1: TTimer;
    lbl2: TLabel;
    img1: TImage;
    mp1: TMediaPlayer;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure J1Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2, Unit7, Unit6, Unit8;

{$R *.dfm}
procedure TForm3.N2Click(Sender: TObject);
begin
Application.Terminate;
end;
procedure TForm3.N1Click(Sender: TObject);
begin
Form2.Show;
Form3.Hide
end;
procedure TForm3.N3Click(Sender: TObject);
begin
ShellExecute(0,'open',pansichar(extractfilepath(application.ExeName)+'\HelpV.chm'),Nil,Nil,SW_SHOWNORMAL);
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
Form3.Hide;
Form7.Show;
end;


procedure TForm3.btn2Click(Sender: TObject);
begin
  mp1.Pause;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  Form2.Show;
  Form3.Hide;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
  form3.Hide;
  form8.show;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  BorderStyle := bsNone;
  WindowState := wsMaximized;
end;

procedure TForm3.J1Click(Sender: TObject);
begin
  form6.Show;
  Form3.Hide
end;

procedure TForm3.tmr1Timer(Sender: TObject);
begin
lbl2.Caption:=TimeToStr(time)
end;

procedure TForm3.N4Click(Sender: TObject);
begin
ShellExecute(0, nil, '19.docx', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm3.FormShow(Sender: TObject);
begin
mp1.Play;
end;

end.
