unit BK3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Bevel1: TBevel;
    N6: TMenuItem;
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses BK, BK2, BK4, Unit5;

{$R *.DFM}

procedure TForm3.N4Click(Sender: TObject);
begin
form3.visible:=false;
form2.visible:=true;


 end;

procedure TForm3.N5Click(Sender: TObject);
begin
form1.close;
form2.close;
form3.close;
form4.close;
close;
end;

procedure TForm3.N6Click(Sender: TObject);
begin
form1.Enabled:=false;
form2.Enabled:=false;
form3.Enabled:=false;
form4.Enabled:=false;
form5.visible:=true;
end;

end.
