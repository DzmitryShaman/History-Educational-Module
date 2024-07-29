unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, OleCtrls, SHDocVw;

type
  TForm5 = class(TForm)
    WebBrowser1: TWebBrowser;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.N1Click(Sender: TObject);
begin
Close;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
WebBrowser1.Navigate('http://uchebnik.biz/book/62-informatika-bazovyj-kurs.html');
WebBrowser1.Silent := True;
end;

end.
