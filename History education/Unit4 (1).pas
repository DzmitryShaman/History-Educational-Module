unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids;

type
  TForm4 = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    {procedure FormCreate(Sender: TObject); }
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
while AdoQuery1.RecordCount<>0 do
begin
AdoQuery1.First;
AdoQuery1.Delete;
end;
end;
{
procedure TForm4.FormCreate(Sender: TObject);
begin
  BorderStyle := bsNone;
  WindowState := wsMaximized;
end; }

end.
