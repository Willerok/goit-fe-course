unit BK2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, ExtCtrls, Mask;

type
   TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Comp: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    List: TListBox;
    Button2: TButton;
    Label8: TLabel;
    e1: TMaskEdit;
    e2: TMaskEdit;
    e3: TMaskEdit;
    e4: TMaskEdit;
    RadioGroup1: TRadioGroup;
    bik: TListBox;
    korova: TListBox;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Hod: TListBox;
    Chislo: TEdit;
    Label4: TLabel;
    aga: TButton;
    Bevel1: TBevel;
    N6: TMenuItem;
    Win: TMemo;
    Loose: TMemo;
    Hint: TMemo;
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure agaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N6Click(Sender: TObject);
     private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  cow,bull,a,i:integer;
  zagad,b:boolean;
  h,z:string;
  cop:array[1..4] of integer;


  implementation
uses BK3,BK, BK4, Unit5;

{$R *.DFM}

procedure TForm2.N4Click(Sender: TObject);
begin
form1.close;
form2.close;
form3.close;
form4.close;
close;
end;

procedure TForm2.N3Click(Sender: TObject);
begin
form2.visible:=true;;
Panel1.Visible:=true;
comp.visible:=false;
 chislo.text:='';
 cow:=0;
 bull:=0;
 list.Clear;
 bik.clear;
 korova.clear;
 a:=0;
 h:='';
 z:='';
e1.text:=' ';
e2.text:=' ';
e3.text:=' ';
e4.text:=' ';
Chislo.ReadOnly:=false;
RadioGroup1.ItemIndex:=-1;
HOD.CLEAR;
win.Visible:=false;
loose.Visible:=false;
hint.Visible:=true;
Button2.Default:=true;
aga.visible:=false;
form4.Chis.Visible:=true;
form4.Edit3.text:='';
list.Clear;
form4.list.Clear;
form4.hod.Clear;
form4.Bik.Clear;
form4.korova.clear;
if form5.RadioGroup1.ItemIndex=0 then
   begin
    Form2.Color:=clBlack;
    Panel1.Color:=clBlack;
    label1.Color:=clBlack;
    label1.Font.Color:=clRed;
    RadioGroup1.Color:=clBlack;
    RadioGroup1.Font.Color:=clRed;
    Comp.Color:=clBlack;
    label2.Color:=clBlack;
    label2.Font.Color:=clRed;
    label3.Color:=clBlack;
    label3.Font.Color:=clRed;
    label4.Color:=clBlack;
    label4.Font.Color:=clRed;
    label6.Color:=clBlack;
    label6.Font.Color:=clRed;
    label8.Color:=clBlack;
    label8.Font.Color:=clRed;
    GroupBox1.Color:=clBlack;
    GroupBox1.Font.Color:=clRed;
    e1.Color:=clBlack;
    e2.Color:=clBlack;
    e3.Color:=clBlack;
    e4.Color:=clBlack;
    e1.Font.Color:=clRed;
    e2.Font.Color:=clRed;
    e3.Font.Color:=clRed;
    e4.Font.Color:=clRed;
    Chislo.Color:=clBlack;
    Chislo.Font.Color:=clRed;
    hod.Color:=clBlack;
    hod.Font.Color:=clRed;
    list.Color:=clBlack;
    list.Font.Color:=clRed;
    bik.Color:=clBlack;
    bik.Font.Color:=clRed;
    korova.Color:=clBlack;
    korova.Font.Color:=clRed;
   end;
if form5.RadioGroup1.ItemIndex=1 then
   begin
    Form2.Color:=clMenu;
    Panel1.Color:=clMenu;
    label1.Color:=clMenu;
    label1.Font.Color:=clBlack;
    RadioGroup1.Color:=clMenu;
    RadioGroup1.Font.Color:=clBlack;
    Comp.Color:=clMenu;
    label2.Color:=clMenu;
    label2.Font.Color:=clBlack;
    label3.Color:=clMenu;
    label3.Font.Color:=clBlack;
    label4.Color:=clMenu;
    label4.Font.Color:=clBlack;
    label6.Color:=clMenu;
    label6.Font.Color:=clBlack;
    label8.Color:=clMenu;
    label8.Font.Color:=clBlack;
    GroupBox1.Color:=clMenu;
    GroupBox1.Font.Color:=clBlack;
    e1.Color:=clMenu;
    e2.Color:=clMenu;
    e3.Color:=clMenu;
    e4.Color:=clMenu;
    e1.Font.Color:=clBlack;
    e2.Font.Color:=clBlack;
    e3.Font.Color:=clBlack;
    e4.Font.Color:=clBlack;
    Chislo.Color:=clMenu;
    Chislo.Font.Color:=clBlack;
    hod.Color:=clMenu;
    hod.Font.Color:=clBlack;
    list.Color:=clMenu;
    list.Font.Color:=clBlack;
    bik.Color:=clMenu;
    bik.Font.Color:=clBlack;
    korova.Color:=clMenu;
    korova.Font.Color:=clBlack;
   end;
  if form5.RadioGroup1.ItemIndex=2 then
   begin
    Form2.Color:=clBlue;
    Panel1.Color:=clBlue;
    label1.Color:=clBlue;
    label1.Font.Color:=clYellow;
    RadioGroup1.Color:=clBlue;
    RadioGroup1.Font.Color:=clYellow;
    Comp.Color:=clBlue;
    label2.Color:=clBlue;
    label2.Font.Color:=clYellow;
    label3.Color:=clBlue;
    label3.Font.Color:=clYellow;
    label4.Color:=clBlue;
    label4.Font.Color:=clYellow;
    label6.Color:=clBlue;
    label6.Font.Color:=clYellow;
    label8.Color:=clBlue;
    label8.Font.Color:=clYellow;
    GroupBox1.Color:=clBlue;
    GroupBox1.Font.Color:=clYellow;
    e1.Color:=clBlue;
    e2.Color:=clBlue;
    e3.Color:=clBlue;
    e4.Color:=clBlue;
    e1.Font.Color:=clYellow;
    e2.Font.Color:=clYellow;
    e3.Font.Color:=clYellow;
    e4.Font.Color:=clYellow;
    Chislo.Color:=clBlue;
    Chislo.Font.Color:=clYellow;
    hod.Color:=clBlue;
    hod.Font.Color:=clYellow;
    list.Color:=clBlue;
    list.Font.Color:=clYellow;
    bik.Color:=clBlue;
    bik.Font.Color:=clYellow;
    korova.Color:=clBlue;
    korova.Font.Color:=clYellow;
   end;
   if form5.RadioGroup1.ItemIndex=3 then
   begin
    Form2.Color:=clWhite;
    Panel1.Color:=clWhite;
    label1.Color:=clWhite;
    label1.Font.Color:=clBlack;
    RadioGroup1.Color:=clWhite;
    RadioGroup1.Font.Color:=clBlack;
    Comp.Color:=clWhite;
    label2.Color:=clWhite;
    label2.Font.Color:=clBlack;
    label3.Color:=clWhite;
    label3.Font.Color:=clBlack;
    label4.Color:=clWhite;
    label4.Font.Color:=clBlack;
    label6.Color:=clWhite;
    label6.Font.Color:=clBlack;
    label8.Color:=clWhite;
    label8.Font.Color:=clBlack;
    GroupBox1.Color:=clWhite;
    GroupBox1.Font.Color:=clBlack;
    e1.Color:=clWhite;
    e2.Color:=clWhite;
    e3.Color:=clWhite;
    e4.Color:=clWhite;
    e1.Font.Color:=clBlack;
    e2.Font.Color:=clBlack;
    e3.Font.Color:=clBlack;
    e4.Font.Color:=clBlack;
    Chislo.Color:=clWhite;
    Chislo.Font.Color:=clBlack;
    hod.Color:=clWhite;
    hod.Font.Color:=clBlack;
    list.Color:=clWhite;
    list.Font.Color:=clBlack;
    bik.Color:=clWhite;
    bik.Font.Color:=clBlack;
    korova.Color:=clWhite;
    korova.Font.Color:=clBlack;
   end;
   if form5.RadioGroup1.ItemIndex=4 then
   begin
    Form2.Color:=clRed;
    Panel1.Color:=clRed;
    label1.Color:=clRed;
    label1.Font.Color:=clYellow;
    RadioGroup1.Color:=clRed;
    RadioGroup1.Font.Color:=clYellow;
    Comp.Color:=clRed;
    label2.Color:=clRed;
    label2.Font.Color:=clYellow;
    label3.Color:=clRed;
    label3.Font.Color:=clYellow;
    label4.Color:=clRed;
    label4.Font.Color:=clYellow;
    label6.Color:=clRed;
    label6.Font.Color:=clYellow;
    label8.Color:=clRed;
    label8.Font.Color:=clYellow;
    GroupBox1.Color:=clRed;
    GroupBox1.Font.Color:=clYellow;
    e1.Color:=clRed;
    e2.Color:=clRed;
    e3.Color:=clRed;
    e4.Color:=clRed;
    e1.Font.Color:=clYellow;
    e2.Font.Color:=clYellow;
    e3.Font.Color:=clYellow;
    e4.Font.Color:=clYellow;
    Chislo.Color:=clRed;
    Chislo.Font.Color:=clYellow;
    hod.Color:=clRed;
    hod.Font.Color:=clYellow;
    list.Color:=clRed;
    list.Font.Color:=clYellow;
    bik.Color:=clRed;
    bik.Font.Color:=clYellow;
    korova.Color:=clRed;
    korova.Font.Color:=clYellow;
 end;
end;
procedure TForm2.Button1Click(Sender: TObject);
  var g:shortint;
begin
   if RadioGroup1.ItemIndex=-1 then application.messagebox('Выбери Что-нибудь!!!', 'Ошибочка', MB_OK)
   else
    if RadioGroup1.ItemIndex=0 then
     begin
       panel1.visible:=false;
       comp.visible:=true;
       zagad:=true;
     end
    else
     begin
      form2.visible:=false;
      form4.visible:=true;
      zagad:=false;
     end;
      if zagad=true then
      begin
        begin
          RANDOMIZE;
          cop[1]:=random(8)+1;
          cop[2]:=random(9);
          while cop[2]=cop[1] do cop[2]:=random(9);
          cop[3]:=random(9);
          while (cop[3]=cop[2])or(cop[3]=cop[1]) do cop[3]:=random(9);
          cop[4]:=random(9);
          while (cop[4]=cop[3])or(cop[4]=cop[2])or(cop[4]=cop[1]) do cop[4]:=random(9);
        end;
       h:='';
       for g:= 1 to 4 do
        h:=h+inttostr(cop[g]);
      end;
end;

procedure TForm2.N5Click(Sender: TObject);
begin
  form2.visible:=false;
  form3.visible:=true;
end;

procedure TForm2.Button2Click(Sender: TObject);
  var g:shortint;
begin
  begin
    z:=Chislo.text;
    b:=true;
    if z='' then b:=false;
    if length(z)<4 then if Button2.Default=false then application.messagebox('И какая цель этого клацанья?', 'Глупо', MB_OK)
    else begin b:=false; application.messagebox('Что? Кто-то остальное окусил?', 'Маловато будет!!!', MB_OK); end;
    if length(z)>4 then begin b:=false; application.messagebox('Чуток хрямсь, и будет нормально!', 'Небольшой перебор-с', MB_OK);  end;
    if b=true then
     begin
       b:=false;
       for g:= 1 to 4 do
        case z[g] of
            '0'..'9' : b:=true;
         else begin b:=false;  application.messagebox('Стоит попробовать. Но не в этой жизни.', 'А с вас улыбаюсь', MB_OK); break; end;
        end;
     end;
  if b= true then
  begin
    for g:= 1 to 4 do
    if (z[1]='0')or(z[g]=' ')or(z[1]=z[2])or(z[1]=z[3])or(z[1]=z[4])or(z[2]=z[3])or(z[2]=z[4])or(z[3]=z[4])
     then begin b:=false; application.messagebox('Теоритически правильно. Практически - нет.', 'Диллема', MB_OK); break; end; end;
   if b=true then
    begin
      list.Items.Add(Chislo.text);
      hod.items.Add(inttostr(a+1)+'.');
      a:=a+1;
    end;
  if a=15 then
   begin
     if z=h then
      begin
       e1.text:=h[1];
       e2.text:=h[2];
       e3.text:=h[3];
       e4.text:=h[4];
       Chislo.ReadOnly:=true;
       Hint.Visible:=false;
       Loose.visible:=false;
       win.Visible:=true;
       Button2.Default:=false;
       aga.visible:=true;
      end
     else
      begin
       e1.text:=h[1];
       e2.text:=h[2];
       e3.text:=h[3];
       e4.text:=h[4];
       Chislo.ReadOnly:=true;
       Hint.Visible:=false;
       loose.visible:=true;
       Button2.Default:=false;
       aga.visible:=true;
      end;
   end;
  if zagad=true then
   begin
     if z=h then
      begin
        e1.text:=h[1];
        e2.text:=h[2];
        e3.text:=h[3];
        e4.text:=h[4];
        bik.items.add(inttostr(4));
        korova.items.add(inttostr(0));
        Chislo.ReadOnly:=true;
        hint.Visible:=false;
        win.visible:=true;
        Button2.Default:=false;
        aga.visible:=true;
      end
     else
      begin
        if b=true then
         begin
           for g:= 1 to 4 do
            if z[g]=h[g] then bull:=bull+1;
           for g:= 1 to 4 do
            if (z[g]=h[1])or(z[g]=h[2])or(z[g]=h[3])or(z[g]=h[4]) then cow:=cow+1;
           bik.items.add(inttostr(bull));
           korova.items.add(inttostr(cow-bull));
           cow:=0;
           bull:=0;
         end;
      end;
  end;
end;
chislo.text:='';
end;

procedure TForm2.agaClick(Sender: TObject);
begin
form2.visible:=true;
Panel1.Visible:=true;
comp.visible:=false;
 chislo.text:='';
 cow:=0;
 bull:=0;
 list.Clear;
 bik.clear;
 korova.clear;
 a:=0;
 h:='';
 z:='';
e1.text:=' ';
e2.text:=' ';
e3.text:=' ';
e4.text:=' ';
Chislo.ReadOnly:=false;
RadioGroup1.ItemIndex:=-1;
HOD.CLEAR;
win.Visible:=false;
loose.Visible:=false;
hint.Visible:=true;
     Button2.Default:=true;
aga.visible:=false;
form4.list.Clear;
form4.Image2.Visible:=false;
form4.Image1.Visible:=true;
form4.hod.Clear;
form4.Bik.Clear;
form4.korova.clear;

end;

procedure TForm2.FormActivate(Sender: TObject);
begin
//             ОЧИСТКА
form4.list.Clear;
form2.visible:=true;;
Panel1.Visible:=true;
comp.visible:=false;
chislo.text:='';
cow:=0;
bull:=0;
list.Clear;
bik.clear;
korova.clear;
a:=0;
h:='';
z:='';
e1.text:=' ';
e2.text:=' ';
e3.text:=' ';
e4.text:=' ';
Chislo.ReadOnly:=false;
RadioGroup1.ItemIndex:=-1;
HOD.CLEAR;
win.Visible:=false;
loose.Visible:=false;
hint.Visible:=true;
Button2.Default:=true;
aga.visible:=false;
form4.Chis.Visible:=true;
form4.Edit3.text:='';
form4.Image2.Visible:=false;
form4.Image1.Visible:=true;
form4.hod.Clear;
form4.Bik.Clear;
form4.korova.clear;
//            ПРОВЕРКА ПАЛИТРЫ
  if form5.RadioGroup1.ItemIndex=0 then
   begin
    Form2.Color:=clBlack;
    Panel1.Color:=clBlack;
    label1.Color:=clBlack;
    label1.Font.Color:=clRed;
    RadioGroup1.Color:=clBlack;
    RadioGroup1.Font.Color:=clRed;
    Comp.Color:=clBlack;
    label2.Color:=clBlack;
    label2.Font.Color:=clRed;
    label3.Color:=clBlack;
    label3.Font.Color:=clRed;
    label4.Color:=clBlack;
    label4.Font.Color:=clRed;
    label6.Color:=clBlack;
    label6.Font.Color:=clRed;
    label8.Color:=clBlack;
    label8.Font.Color:=clRed;
    GroupBox1.Color:=clBlack;
    GroupBox1.Font.Color:=clRed;
    e1.Color:=clBlack;
    e2.Color:=clBlack;
    e3.Color:=clBlack;
    e4.Color:=clBlack;
    e1.Font.Color:=clRed;
    e2.Font.Color:=clRed;
    e3.Font.Color:=clRed;
    e4.Font.Color:=clRed;
    Chislo.Color:=clBlack;
    Chislo.Font.Color:=clRed;
    hod.Color:=clBlack;
    hod.Font.Color:=clRed;
    list.Color:=clBlack;
    list.Font.Color:=clRed;
    bik.Color:=clBlack;
    bik.Font.Color:=clRed;
    korova.Color:=clBlack;
    korova.Font.Color:=clRed;
    win.color:=clBlack;
    win.Font.Color:=clRed;
    Loose.Color:=clBlack;
    Loose.Font.Color:=clRed;
    Hint.Color:=clBlack;
    Hint.Font.Color:=clRed;
   end;
  if form5.RadioGroup1.ItemIndex=1 then
   begin
    Form2.Color:=clMenu;
    Panel1.Color:=clMenu;
    label1.Color:=clMenu;
    label1.Font.Color:=clBlack;
    RadioGroup1.Color:=clMenu;
    RadioGroup1.Font.Color:=clBlack;
    Comp.Color:=clMenu;
    label2.Color:=clMenu;
    label2.Font.Color:=clBlack;
    label3.Color:=clMenu;
    label3.Font.Color:=clBlack;
    label4.Color:=clMenu;
    label4.Font.Color:=clBlack;
    label6.Color:=clMenu;
    label6.Font.Color:=clBlack;
    label8.Color:=clMenu;
    label8.Font.Color:=clBlack;
    GroupBox1.Color:=clMenu;
    GroupBox1.Font.Color:=clBlack;
    e1.Color:=clMenu;
    e2.Color:=clMenu;
    e3.Color:=clMenu;
    e4.Color:=clMenu;
    e1.Font.Color:=clBlack;
    e2.Font.Color:=clBlack;
    e3.Font.Color:=clBlack;
    e4.Font.Color:=clBlack;
    Chislo.Color:=clMenu;
    Chislo.Font.Color:=clBlack;
    hod.Color:=clMenu;
    hod.Font.Color:=clBlack;
    list.Color:=clMenu;
    list.Font.Color:=clBlack;
    bik.Color:=clMenu;
    bik.Font.Color:=clBlack;
    korova.Color:=clMenu;
    korova.Font.Color:=clBlack;
    win.color:=clMenu;
    win.Font.Color:=clBlack;
    Loose.Color:=clMenu;
    Loose.Font.Color:=clBlack;
    Hint.Color:=clMenu;
    Hint.Font.Color:=clBlack;
   end;
  if form5.RadioGroup1.ItemIndex=2 then
   begin
    Form2.Color:=clBlue;
    Panel1.Color:=clBlue;
    label1.Color:=clBlue;
    label1.Font.Color:=clYellow;
    RadioGroup1.Color:=clBlue;
    RadioGroup1.Font.Color:=clYellow;
    Comp.Color:=clBlue;
    label2.Color:=clBlue;
    label2.Font.Color:=clYellow;
    label3.Color:=clBlue;
    label3.Font.Color:=clYellow;
    label4.Color:=clBlue;
    label4.Font.Color:=clYellow;
    label6.Color:=clBlue;
    label6.Font.Color:=clYellow;
    label8.Color:=clBlue;
    label8.Font.Color:=clYellow;
    GroupBox1.Color:=clBlue;
    GroupBox1.Font.Color:=clYellow;
    e1.Color:=clBlue;
    e2.Color:=clBlue;
    e3.Color:=clBlue;
    e4.Color:=clBlue;
    e1.Font.Color:=clYellow;
    e2.Font.Color:=clYellow;
    e3.Font.Color:=clYellow;
    e4.Font.Color:=clYellow;
    Chislo.Color:=clBlue;
    Chislo.Font.Color:=clYellow;
    hod.Color:=clBlue;
    hod.Font.Color:=clYellow;
    list.Color:=clBlue;
    list.Font.Color:=clYellow;
    bik.Color:=clBlue;
    bik.Font.Color:=clYellow;
    korova.Color:=clBlue;
    korova.Font.Color:=clYellow;
    win.color:=clBlue;
    win.Font.Color:=clYellow;
    Loose.Color:=clBlue;
    Loose.Font.Color:=clYellow;
    Hint.Color:=clBlue;
    Hint.Font.Color:=clYellow;
   end;
   if form5.RadioGroup1.ItemIndex=3 then
   begin
    Form2.Color:=clWhite;
    Panel1.Color:=clWhite;
    label1.Color:=clWhite;
    label1.Font.Color:=clBlack;
    RadioGroup1.Color:=clWhite;
    RadioGroup1.Font.Color:=clBlack;
    Comp.Color:=clWhite;
    label2.Color:=clWhite;
    label2.Font.Color:=clBlack;
    label3.Color:=clWhite;
    label3.Font.Color:=clBlack;
    label4.Color:=clWhite;
    label4.Font.Color:=clBlack;
    label6.Color:=clWhite;
    label6.Font.Color:=clBlack;
    label8.Color:=clWhite;
    label8.Font.Color:=clBlack;
    GroupBox1.Color:=clWhite;
    GroupBox1.Font.Color:=clBlack;
    e1.Color:=clWhite;
    e2.Color:=clWhite;
    e3.Color:=clWhite;
    e4.Color:=clWhite;
    e1.Font.Color:=clBlack;
    e2.Font.Color:=clBlack;
    e3.Font.Color:=clBlack;
    e4.Font.Color:=clBlack;
    Chislo.Color:=clWhite;
    Chislo.Font.Color:=clBlack;
    hod.Color:=clWhite;
    hod.Font.Color:=clBlack;
    list.Color:=clWhite;
    list.Font.Color:=clBlack;
    bik.Color:=clWhite;
    bik.Font.Color:=clBlack;
    korova.Color:=clWhite;
    korova.Font.Color:=clBlack;
    win.color:=clWhite;
    win.Font.Color:=clBlack;
    Loose.Color:=clWhite;
    Loose.Font.Color:=clBlack;
    Hint.Color:=clWhite;
    Hint.Font.Color:=clBlack;
   end;
   if form5.RadioGroup1.ItemIndex=4 then
   begin
    Form2.Color:=clRed;
    Panel1.Color:=clRed;
    label1.Color:=clRed;
    label1.Font.Color:=clYellow;
    RadioGroup1.Color:=clRed;
    RadioGroup1.Font.Color:=clYellow;
    Comp.Color:=clRed;
    label2.Color:=clRed;
    label2.Font.Color:=clYellow;
    label3.Color:=clRed;
    label3.Font.Color:=clYellow;
    label4.Color:=clRed;
    label4.Font.Color:=clYellow;
    label6.Color:=clRed;
    label6.Font.Color:=clYellow;
    label8.Color:=clRed;
    label8.Font.Color:=clYellow;
    GroupBox1.Color:=clRed;
    GroupBox1.Font.Color:=clYellow;
    e1.Color:=clRed;
    e2.Color:=clRed;
    e3.Color:=clRed;
    e4.Color:=clRed;
    e1.Font.Color:=clYellow;
    e2.Font.Color:=clYellow;
    e3.Font.Color:=clYellow;
    e4.Font.Color:=clYellow;
    Chislo.Color:=clRed;
    Chislo.Font.Color:=clYellow;
    hod.Color:=clRed;
    hod.Font.Color:=clYellow;
    list.Color:=clRed;
    list.Font.Color:=clYellow;
    bik.Color:=clRed;
    bik.Font.Color:=clYellow;
    korova.Color:=clRed;
    korova.Font.Color:=clYellow;
    win.color:=clRed;
    win.Font.Color:=clYellow;
    Loose.Color:=clRed;
    Loose.Font.Color:=clYellow;
    Hint.Color:=clRed;
    Hint.Font.Color:=clYellow;
   end;
 end;
procedure TForm2.N6Click(Sender: TObject);
begin
form1.Enabled:=false;
form2.Enabled:=false;
form3.Enabled:=false;
form4.Enabled:=false;
form5.visible:=true;
end;

end.






