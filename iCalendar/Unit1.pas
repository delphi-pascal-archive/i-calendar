unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, JvComponent, JvMagnet;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image2: TImage;
    Timer1: TTimer;
    Image4: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    JvFormMagnet1: TJvFormMagnet;
    Label9: TLabel;
    Timer2: TTimer;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure Label1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);

    procedure Timer1Timer(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
    var
  Form1: TForm1;
  iClock : TDateTime;

implementation

{$R *.dfm}
var month:array[1..12] of string=('Январь','Февраль','Март','Апрель','Май','Июнь','Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь');
procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
form1.MouseDown(button,Shift,x,y);
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 ReleaseCapture;
  perform(WM_SysCommand, $F012, 0);
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.Label1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
form1.MouseDown(button,Shift,x,y);
end;

procedure TForm1.Label5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
form1.MouseDown(button,Shift,x,y);
end;

procedure TForm1.Label2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
form1.MouseDown(button,Shift,x,y);
end;

procedure TForm1.Label4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
form1.MouseDown(button,Shift,x,y);
end;

procedure TForm1.Label3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
form1.MouseDown(button,Shift,x,y);
end;

function GetDayOfWeek :string;stdcall;//Функция взятия даты
var
day:integer;//номер дня
week:array [1..7] of string;//Дни недели
begin
week[1]:='Воскресенье';
week[2]:='Понедельник';
week[3]:='Вторник';
week[4]:='Среда';
week[5]:='Четверг';
week[6]:='Пятница';
week[7]:='Суббота';
day:=DayOfWeek(Date);
Result:=week[day];
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Label1.Visible:=true;
Label5.Caption:='Сегодня';
Label6.Visible:=false;
label7.Visible:=false;
Label8.Visible:=false;
form1.Label1.Caption:=FormatDateTime('dd', now);
form1.Label3.Caption:=FormatDateTime('yyyy', now);
form1.Label4.Caption:=month[strtoint(FormatDateTime('mm', now))];
Form1.Label2.Caption:=GetDayOfWeek;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
ShowWindow(Application.Handle, sw_Hide);
end;

procedure TForm1.FormPaint(Sender: TObject);
begin
form1.Label1.Caption:=FormatDateTime('dd', now);
form1.Label3.Caption:=FormatDateTime('yyyy', now);
form1.Label4.Caption:=month[strtoint(FormatDateTime('mm', now))];
Form1.Label2.Caption:=GetDayOfWeek;
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
form1.Label1.Caption:=FormatDateTime('dd', now);
form1.Label3.Caption:=FormatDateTime('yyyy', now);
form1.Label4.Caption:=month[strtoint(FormatDateTime('mm', now))];
Form1.Label2.Caption:=GetDayOfWeek;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
form1.Label1.Caption:=FormatDateTime('dd', now);
form1.Label3.Caption:=FormatDateTime('yyyy', now);
form1.Label4.Caption:=month[strtoint(FormatDateTime('mm', now))];
Form1.Label2.Caption:=GetDayOfWeek;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
form1.Label1.Caption:=FormatDateTime('dd', now);
form1.Label3.Caption:=FormatDateTime('yyyy', now);
form1.Label4.Caption:=month[strtoint(FormatDateTime('mm', now))];
Form1.Label2.Caption:=GetDayOfWeek;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
Label1.Visible:=false;
Label5.Caption:='О програ..';
Label6.Visible:=true;
label7.Visible:=true;
Label8.Visible:=true;
Label9.Visible:=false;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
Label1.Visible:=true;
Label9.Visible:=true;
Label5.Caption:='Сегодня';
Label6.Visible:=false;
label7.Visible:=false;
Label8.Visible:=false;
end;

procedure TForm1.Label7Click(Sender: TObject);
begin
Label1.Visible:=true;
Label5.Caption:='Сегодня';
Label6.Visible:=false;
label7.Visible:=false;
Label8.Visible:=false;
Label9.Visible:=true;
end;

procedure TForm1.Label6Click(Sender: TObject);
begin
Label1.Visible:=true;
Label5.Caption:='Сегодня';
Label6.Visible:=false;
label7.Visible:=false;
Label8.Visible:=false;
Label9.Visible:=true;
end;

procedure TForm1.Label5Click(Sender: TObject);
begin
Label1.Visible:=true;
Label5.Caption:='Сегодня';
Label6.Visible:=false;
label7.Visible:=false;
Label8.Visible:=false;
Label9.Visible:=true;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
Label1.Visible:=true;
Label5.Caption:='Сегодня';
Label6.Visible:=false;
label7.Visible:=false;
Label8.Visible:=false;
Label9.Visible:=true;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
Label1.Visible:=true;
Label5.Caption:='Сегодня';
Label6.Visible:=false;
label7.Visible:=false;
Label8.Visible:=false;
Label9.Visible:=true;
end;

procedure TForm1.Label4Click(Sender: TObject);
begin
Label1.Visible:=true;
Label5.Caption:='Сегодня';
Label6.Visible:=false;
label7.Visible:=false;
Label8.Visible:=false;
Label9.Visible:=true;
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
Label1.Visible:=true;
Label5.Caption:='Сегодня';
Label6.Visible:=false;
label7.Visible:=false;
Label8.Visible:=false;
Label9.Visible:=true;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin

  Label9.Caption:='Время '+TimeToStr(Now);
end;

end.
