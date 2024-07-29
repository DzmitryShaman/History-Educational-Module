unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls,inifiles, ExtCtrls, ShellApi, jpeg;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Button2: TButton;
    Button3: TButton;
    Button7: TButton;
    Image3: TImage;
    lbl3: TLabel;
    lbl4: TLabel;
    Button5: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    img3: TImage;
    img4: TImage;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure reloadClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Start;
    procedure Quest;
    procedure Check;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure WMGetSysCommand (var message: TMessage);
    message WM_SYSCOMMAND;
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  today: TDateTime;
  nepr, pr: String;
  Form1: TForm1;
  pathIni: String;
  sIniFile: TIniFile;
  finalS: String;
  i,b,c: integer;
  test1: Array[0..9] of Integer = (2,4,3,1,3,3,4,3,4,3);
  test2: Array[0..9] of Integer = (1,1,1,1,1,1,1,1,1,1);
  questions: Array[0..9] Of String = ('Вопрос 1','Вопрос 2','Вопрос 3','Вопрос 4','Вопрос 5','Вопрос 6','Вопрос 7','Вопрос 8','Вопрос 9','Вопрос 10');
implementation

uses Unit2, Unit3, Unit4, Unit5, Unit7, Unit6;

{$R *.dfm}
procedure TForm1.WMGetSysCommand (var message: TMessage);
begin
if (message.wParam = SC_CLOSE) then
Application.Terminate;
end;

procedure TForm1.Check;
begin
if (RadioButton1.Checked) then if (RadioButton1.Tag = StrToInt(sIniFile.ReadString(finalS,concat('c',IntToStr(i)), 'Даные утеряны или повреждены!'))) then
begin b:=b+1; pr:= pr + IntToStr(i+1) + ' '; end else nepr:= nepr + IntToStr(i+1) + ' ';
if (RadioButton2.Checked) then if (RadioButton2.Tag = StrToInt(sIniFile.ReadString(finalS,concat('c',IntToStr(i)), 'Даные утеряны или повреждены!'))) then
begin b:=b+1; pr:= pr + IntToStr(i+1) + ' '; end else nepr:= nepr + IntToStr(i+1) + ' ';
if (RadioButton3.Checked) then if (RadioButton3.Tag = StrToInt(sIniFile.ReadString(finalS,concat('c',IntToStr(i)), 'Даные утеряны или повреждены!'))) then
begin b:=b+1; pr:= pr + IntToStr(i+1) + ' '; end else nepr:= nepr + IntToStr(i+1) + ' ';
if (RadioButton4.Checked) then if (RadioButton4.Tag = StrToInt(sIniFile.ReadString(finalS,concat('c',IntToStr(i)), 'Даные утеряны или повреждены!'))) then
begin b:=b+1; pr:= pr + IntToStr(i+1) + ' '; end else nepr:= nepr + IntToStr(i+1) + ' ';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if (RadioButton1.Checked = false) and (RadioButton2.Checked = false)and(RadioButton3.Checked = false) and (RadioButton4.Checked = false) then
ShowMessage('Не выбран вариант ответа!')
else
begin
Check;
i:=i+1;
if (i < 10) then
begin
RadioButton1.Checked:= false;
RadioButton2.Checked:= false;
RadioButton3.Checked:= false;
RadioButton4.Checked:= false;
Label1.Caption:= questions[i];
Label2.Caption:= sIniFile.ReadString(finalS,concat('question',IntToStr(i)), 'Даные утеряны или повреждены!');
Label2.Caption:=StringReplace(Label2.Caption,';',#13#10,[rfreplaceall]);
RadioButton1.Caption:= sIniFile.ReadString(finalS,concat('otvety',IntToStr(i),'-1'), 'Даные утеряны или повреждены!');
RadioButton1.Caption:=StringReplace(RadioButton1.Caption,';',#13#10,[rfreplaceall]);
RadioButton2.Caption:= sIniFile.ReadString(finalS,concat('otvety',IntToStr(i),'-2'), 'Даные утеряны или повреждены!');
RadioButton2.Caption:=StringReplace(RadioButton2.Caption,';',#13#10,[rfreplaceall]);
RadioButton3.Caption:= sIniFile.ReadString(finalS,concat('otvety',IntToStr(i),'-3'), 'Даные утеряны или повреждены!');
RadioButton3.Caption:=StringReplace(RadioButton3.Caption,';',#13#10,[rfreplaceall]);
RadioButton4.Caption:= sIniFile.ReadString(finalS,concat('otvety',IntToStr(i),'-4'), 'Даные утеряны или повреждены');
RadioButton4.Caption:=StringReplace(RadioButton4.Caption,';',#13#10,[rfreplaceall]);
end
else
begin
With Form4.ADOQuery1 do begin
Connection:=Form4.ADOConnection1;
Insert;
today:= Now;
FieldByName('Время').Value:= DateToStr(today) + ' в ' + TimeToStr(today);
FieldByName('Тест').Value:= IntToStr(c) ;
FieldByName('Имя').Value:= Form7.Edt1.Text;
FieldByName('Оценка').Value:= IntToStr(b);
FieldByName('Правильные').Value:= pr;
FieldByName('Неправильные').Value:= nepr;
Post;
end;
Lbl3.Caption:= Form7.Edt1.Text + ', ваш тест закончен!';
Lbl4.Caption:= 'Кол-во правильных ответов: ' + IntToStr(b) + #13#10 + 'Неправильно: ' + Nepr + #13#10 + 'Правильно: ' + pr;
Label2.Hide;
Label1.Hide;
{reload:= TButton.Create(Self);
reload.Parent:= Form1;
reload.Left:= 48;
reload.Top:= 140;
reload.Caption:= 'Заново';
reload.OnClick:=reloadClick; }
lbl2.Visible:=True;
RadioButton1.Hide;
Button1.Hide;
RadioButton2.Hide;
RadioButton3.Hide;
RadioButton4.Hide;
img3.Visible:=False;
img4.Visible:=True;
btn1.Visible:=True;
btn5.Visible:=False;
end;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
finalS:= 'test1';
c:=1;
Quest;
end;
procedure TForm1.Button3Click(Sender: TObject);
begin
finalS:= 'test2';
c:=2;
Quest;
end;
procedure TForm1.Button4Click(Sender: TObject);
begin
finalS:= 'test3';
c:=3;
Quest;
end;
procedure TForm1.Button5Click(Sender: TObject);
begin
finalS:= 'test3';
c:=3;
Quest;
end;

procedure TForm1.Quest;
begin
Button7.Hide;
if (Form7.Edt1.Text = '') then Form7.Edt1.Text:='Аноним';
Image3.Hide;
Button2.Hide;
Button3.Hide;
Button5.Hide;
btn3.Hide;
btn2.Hide;
btn4.Hide;
btn5.Hide;
lbl1.Hide;
i:=0;
b:=0;
Label1.Caption:= questions[0];
Label2.Caption:= sIniFile.ReadString(finalS,concat('question',IntToStr(i)), 'Данные утеряны или повреждены');
Label2.Caption:=StringReplace(Label2.Caption,';',#13#10,[rfreplaceall]);
RadioButton1.Caption:= sIniFile.ReadString(finalS,concat('otvety',IntToStr(i),'-1'), 'Данные утеряны или повреждены!');
RadioButton2.Caption:= sIniFile.ReadString(finalS,concat('otvety',IntToStr(i),'-2'), 'Данные утеряны или повреждены!');
RadioButton3.Caption:= sIniFile.ReadString(finalS,concat('otvety',IntToStr(i),'-3'), 'Данные утеряны или повреждены!');
RadioButton4.Caption:= sIniFile.ReadString(finalS,concat('otvety',IntToStr(i),'-4'), 'Данные утеряны или повреждены!');
RadioButton1.Show;
RadioButton2.Show;
RadioButton3.Show;
RadioButton4.Show;
Label1.Show;
Label2.Show;
Button1.Show;
end;
procedure TForm1.reloadClick(Sender: TObject);
begin
Start;
Button7.Show;
{reload.Hide; }
Button2.Show;
Button3.Show;
end;
procedure TForm1.Start;
begin
pr:= '';
nepr:='';
finalS:= 'main';
pathINI:=extractfilepath(application.ExeName)+'\Vladizz.ini';
sIniFile := TIniFile.Create(pathINI);
RadioButton1.Hide;
RadioButton2.Hide;
RadioButton3.Hide;
RadioButton4.Hide;
Label1.Caption:= sIniFile.ReadString(finalS,'start','Раздел поврежден!');
Label1.Caption:=StringReplace(Label1.Caption,';',#13#10,[rfreplaceall]);
Label2.Hide;
Button1.Hide;
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
BorderStyle := bsNone;
WindowState := wsMaximized;
Start;
end;



procedure TForm1.Button6Click(Sender: TObject);
begin
Form3.Show;
Form1.Hide;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
ShellExecute(handle, 'open', '19.docx', nil, nil, SW_SHOW);
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
finalS:= 'test5';
c:=5;
Quest;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
finalS:= 'test4';
c:=4;
Quest;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
finalS:= 'test6';
c:=6;
Quest;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
Form3.Show;
Form1.Hide;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
 form3.Show;
 Form1.Hide;
end;

end.
