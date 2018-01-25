unit BK;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    FI1: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    Bevel1: TBevel;
    Image2: TImage;
    Label2: TLabel;
    N4: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses BK2, BK3, BK4, Unit5;

   {$R *.DFM}


procedure TForm1.N2Click(Sender: TObject);
begin
form1.close;
form2.close;
form3.close;
form4.close;
close;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
form1.visible:=false;
form2.visible:=true;
end;

procedure TForm1.About1Click(Sender: TObject);
begin
form1.visible:=false;
form3.visible:=true;
end;


procedure TForm1.N4Click(Sender: TObject);
begin
form1.Enabled:=false;
form2.Enabled:=false;
form3.Enabled:=false;
form4.Enabled:=false;
form5.visible:=true;
end;

end.
