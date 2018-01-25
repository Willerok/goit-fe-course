unit BK4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, Mask, ExtCtrls;

type
 armas=array [1..4] of integer;
  TForm4 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Comp: TPanel;
    Label8: TLabel;
    Label6: TLabel;
    Button2: TButton;
    e1: TMaskEdit;
    e2: TMaskEdit;
    e3: TMaskEdit;
    e4: TMaskEdit;
    GroupBox1: TGroupBox;
    Hod: TListBox;
    list: TListBox;
    bik: TListBox;
    korova: TListBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Chis: TPanel;
    Edit3: TEdit;
    Button1: TButton;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Image2: TMemo;
    Image1: TMemo;
    N6: TMenuItem;
    Label9: TLabel;
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  second,aga,svich,b:boolean;
  last,lobas,chi,z:string;
  chislo:array[1..4] of integer;
  ham,p,r,com_bull,com_cow,bull,cow,fit,ho:integer;
  nmas: array [0..9] of integer;
  tmas,masik,chis: armas;
  count: integer;
  bichar,kerov,otvet:array[1..15] of integer;
  ca:char;
  implementation

uses BK, BK2, BK3, Unit5;

{$R *.DFM}
procedure gen_chisla();
var i,j,k,n:integer;
 mas1:array [0..9] of integer;
begin
 randomize;
 n:=count;
 for i:=0 to 9 do mas1[i]:=nmas[i];
 for i:=1 to 4 do
  begin
   j:=random(n);
   tmas[i]:=mas1[j];
   for k:=j to n-1 do  mas1[k]:=mas1[k+1];
   n:=n-1;
  end;
end;

function fitnes(bik,kor:integer):integer;
begin
 fitnes:=2*bik+kor;
end;

procedure bik_kor(chis1,chis2:armas;n:integer;var bik,kor:integer);
var h,lor,i,j:integer;  br,brr:string;
begin
bik:=0;
kor:=0;
for i:=1 to n do begin
brr:=brr+inttostr(chis2[i]);

 for j:=1 to n do
  begin
   if (i=j)and(chis1[i]=chis2[j]) then bik:=bik+1;
   if (i<>j) and (chis1[i]=chis2[j]) then kor:=kor+1;
  end; end;
 p:=p+1;
 otvet[p]:=strtoint(brr);
 bichar[p]:=bik;
 kerov[p]:=kor;
 if bik+kor=4 then
  begin
  p:=p+1;
  otvet[p]:=strtoint(z);
  bichar[p]:=4;
  kerov[p]:=0;
  end;


end;
procedure Ai(m,chis:armas;n:integer);
var mas:array[0..9] of integer;
    b,b1:armas;
    k,a,j,i,bik,kor,fit:integer;
    f:boolean;
begin
 a:=0;
 for i:=1 to 4 do
  begin
   b[i]:=m[i];
   b1[i]:=m[i];
  end;
 for i:=0 to 9 do
  begin
  f:=true;
  for j:=1 to 4 do
   if i=m[j] then
    begin
     f:=false;
     break;
    end;
  if f=true then
   begin
   mas[a]:=nmas[i];
   a:=a+1;
   end;
 end;
 k:=a-1;
 j:=1;
 bik_kor(chis,b,4,bik,kor);
 fit:=bik+kor;
 for i:=1 to 4 do b1[i]:=b[i];
 while fit<4 do
  begin
    for i:=0 to k do
     begin
      b1[j]:=mas[i];
      bik_kor(chis,b1,4,bik,kor);
      if fit<bik+kor then
       begin
        b[j]:=mas[i];
        j:=j+1;
        for a:=i to k-1 do mas[a]:=mas[a+1];
        fit:=bik+kor;
        break;
       end;
      if fit>bik+kor then
       begin
        j:=j+1;
        for a:=i to k-1 do mas[a]:=mas[a+1];
        k:=k-1;
        break;
       end;
     end;
     for i:=1 to 4 do b1[i]:=b[i];
  end;

 for i:=1 to 4 do masik[i]:=b[i];
end;

procedure TForm4.N3Click(Sender: TObject);
begin
  form1.close;
  form2.close;
  form3.close;
  form4.close;
  close;
end;

procedure TForm4.N2Click(Sender: TObject);
begin
  form4.visible:=false;
  form2.visible:=true;
end;

procedure TForm4.N5Click(Sender: TObject);
begin
  form4.visible:=false;
  form3.visible:=true;
end;

procedure TForm4.Button1Click(Sender: TObject);
var g:integer; m:armas;
k,i:integer;
begin
   second:=true;
   ho:=1;
   z:=Edit3.Text;
   b:=true;
   if z='' then b:=false;
   if length(z)<4 then
    if Button2.Default=false then application.messagebox('И какая цель этого клацанья?', 'Глупо', MB_OK)
   else begin
         b:=false;
         application.messagebox('Что? Кто-то остальное окусил?', 'Маловато будет!!!', MB_OK);
        end;
   if length(z)>4 then begin
                        b:=false;
                        application.messagebox('Чуток хрямсь, и будет нормально!', 'Небольшой перебор-с', MB_OK);
                       end;
   if b=true then begin
                   b:=false;
                   for g:= 1 to 4 do
                    case z[g] of
                     '0'..'9' : b:=true;
                    else begin
                          b:=false;
                          application.messagebox('Стоит попробовать. Но не в этой жизни.', 'А с вас улыбаюсь', MB_OK);
                          break;
                         end;
                    end;
                  end;
   if b= true then begin
                    for g:= 1 to 4 do
                     if (z[1]='0')or(z[g]=' ')or(z[1]=z[2])or(z[1]=z[3])or(z[1]=z[4])or(z[2]=z[3])or(z[2]=z[4])or(z[3]=z[4])
                      then begin
                            b:=false;
                            application.messagebox('Теоритически правильно. Практически - нет.', 'Диллема', MB_OK);
                            break;
                           end;
                   end;
   if b=true then begin
                   last:=z;
                   r:=strtoint(z);
                   Chis.Visible:=false;
                   e1.text:=z[1];
                   e2.text:=z[2];
                   e3.text:=z[3];
                   e4.text:=z[4];
                   list.Clear;
                   hod.clear;
                   Image2.Visible:=true;
                   Image1.Visible:=false;
k:=1000;
count:=9;
for i:=0 to 9 do nmas[i]:=i;
 for i:=1 to 4 do
  begin
  m[i]:=r div k;
  r:=r mod k;
  k:=k div 10;
  end;
gen_chisla();
Ai(tmas,m,4);
k:=1000;
r:=0;
 for i:=1 to 4 do
  begin
  r:=masik[i]*k+r;
  k:=k div 10;
  end;
                  end;
   Edit3.Text:='';
   svich:=true;
   com_cow:=0;
   cow:=0;
   bull:=0;
   com_bull:=0;
   Edit1.Text:='';
   Edit2.Text:='';
   aga:=false;
  p:=0;
  ham:=0;
  ham:=ham+1;
hod.items.add(inttostr(ho)+'.');
lobas:=inttostr(otvet[ham])  ;
if lobas[4]='' then list.items.add('0'+lobas) else
list.items.add(lobas);
  end;

procedure TForm4.FormActivate(Sender: TObject);
begin
  label9.Visible:=false;
  list.Clear;
  hod.Clear;
  Bik.Clear;
  korova.clear;
  if form5.RadioGroup1.ItemIndex=1 then
   begin
     form4.Color:=clMenu;
     Comp.Color:=clMenu;
     Label3.Color:=clMenu;
     Label3.Font.Color:=clBlack;
     Label4.Color:=clMenu;
     Label4.Font.Color:=clBlack;
     Label5.Color:=clMenu;
     Label5.Font.Color:=clBlack;
     Label6.Color:=clMenu;
     Label6.Font.Color:=clBlack;
     Label7.Color:=clMenu;
     Label7.Font.Color:=clBlack;
     Label10.Color:=clMenu;
     Label10.Font.Color:=clBlack;
     Label1.Color:=clMenu;
     Label1.Font.Color:=clBlack;
     Label2.Color:=clMenu;
     Label2.Font.Color:=clBlack;
     Label8.Color:=clMenu;
     Label8.Font.Color:=clBlack;
     Label6.Color:=clMenu;
     Label6.Font.Color:=clBlack;
     e1.Color:=clMenu;
     e1.Font.Color:=clBlack;
     e2.Color:=clMenu;
     e2.Font.Color:=clBlack;
     e3.Color:=clMenu;
     e3.Font.Color:=clBlack;
     e4.Color:=clMenu;
     e4.Font.Color:=clBlack;
     Chis.Color:=clMenu;
     Edit3.Color:=clMenu;
     Edit3.Font.Color:=clBlack;
     hod.Color:=clMenu;
     hod.Font.Color:=clBlack;
     list.Color:=clMenu;
     list.Font.Color:=clBlack;
     bik.Color:=clMenu;
     bik.Font.Color:=clBlack;
     korova.Color:=clMenu;
     korova.Font.Color:=clBlack;
     Edit1.Color:=clMenu;
     Edit1.Font.Color:=clBlack;
     Edit2.Color:=clMenu;
     Edit2.Font.Color:=clBlack;
     GroupBox1.font.color:=clBlack;
     GroupBox1.color:=clMenu;
     Image1.Color:=clMenu;
     Image1.Font.Color:=clBlack;
     Image2.Color:=clMenu;
     Image2.Font.Color:=clBlack;
   end;
  if form5.RadioGroup1.ItemIndex=0 then
   begin
     form4.Color:=clBlack;
     Comp.Color:=clBlack;
     Label3.Color:=clBlack;
     Label3.Font.Color:=clRed;
     Label4.Color:=clBlack;
     Label4.Font.Color:=clRed;
     Label5.Color:=clBlack;
     Label5.Font.Color:=clRed;
     Label6.Color:=clBlack;
     Label6.Font.Color:=clRed;
     Label7.Color:=clBlack;
     Label7.Font.Color:=clRed;
     Label10.Color:=clBlack;
     Label10.Font.Color:=clRed;
     Label1.Color:=clBlack;
     Label1.Font.Color:=clRed;
     Label2.Color:=clBlack;
     Label2.Font.Color:=clRed;
     Label8.Color:=clBlack;
     Label8.Font.Color:=clRed;
     Label6.Color:=clBlack;
     Label6.Font.Color:=clRed;
     e1.Color:=clBlack;
     e1.Font.Color:=clRed;
     e2.Color:=clBlack;
     e2.Font.Color:=clRed;
     e3.Color:=clBlack;
     e3.Font.Color:=clRed;
     e4.Color:=clBlack;
     e4.Font.Color:=clRed;
     Chis.Color:=clBlack;
     Edit3.Color:=clBlack;
     Edit3.Font.Color:=clRed;
     hod.Color:=clBlack;
     hod.Font.Color:=clRed;
     list.Color:=clBlack;
     list.Font.Color:=clRed;
     bik.Color:=clBlack;
     bik.Font.Color:=clRed;
     korova.Color:=clBlack;
     korova.Font.Color:=clRed;
     Edit1.Color:=clBlack;
     Edit1.Font.Color:=clRed;
     Edit2.Color:=clBlack;
     Edit2.Font.Color:=clRed;
     GroupBox1.font.color:=clRed;
     GroupBox1.color:=clBlack;
     Image1.Color:=clBlack;
     Image1.Font.Color:=clRed;
     Image2.Color:=clBlack;
     Image2.Font.Color:=clRed;
   end;
  if form5.RadioGroup1.ItemIndex=2 then
   begin
     form4.Color:=ClBlue;
     Comp.Color:=ClBlue;
     Label3.Color:=ClBlue;
     Label3.Font.Color:=clYellow;
     Label4.Color:=ClBlue;
     Label4.Font.Color:=clYellow;
     Label5.Color:=ClBlue;
     Label5.Font.Color:=clYellow;
     Label6.Color:=ClBlue;
     Label6.Font.Color:=clYellow;
     Label7.Color:=ClBlue;
     Label7.Font.Color:=clYellow;
     Label10.Color:=ClBlue;
     Label10.Font.Color:=clYellow;
     Label1.Color:=ClBlue;
     Label1.Font.Color:=clYellow;
     Label2.Color:=ClBlue;
     Label2.Font.Color:=clYellow;
     Label8.Color:=ClBlue;
     Label8.Font.Color:=clYellow;
     Label6.Color:=ClBlue;
     Label6.Font.Color:=clYellow;
     e1.Color:=ClBlue;
     e1.Font.Color:=clYellow;
     e2.Color:=ClBlue;
     e2.Font.Color:=clYellow;
     e3.Color:=ClBlue;
     e3.Font.Color:=clYellow;
     e4.Color:=ClBlue;
     e4.Font.Color:=clYellow;
     Chis.Color:=ClBlue;
     Edit3.Color:=ClBlue;
     Edit3.Font.Color:=clYellow;
     hod.Color:=ClBlue;
     hod.Font.Color:=clYellow;
     list.Color:=ClBlue;
     list.Font.Color:=clYellow;
     bik.Color:=ClBlue;
     bik.Font.Color:=clYellow;
     korova.Color:=ClBlue;
     korova.Font.Color:=clYellow;
     Edit1.Color:=ClBlue;
     Edit1.Font.Color:=clYellow;
     Edit2.Color:=ClBlue;
     Edit2.Font.Color:=clYellow;
     GroupBox1.font.color:=clYellow;
     GroupBox1.color:=ClBlue;
     Image1.Color:=ClBlue;
     Image1.Font.Color:=clYellow;
     Image2.Color:=ClBlue;
     Image2.Font.Color:=clYellow;
   end;
if form5.RadioGroup1.ItemIndex=3 then
   begin
     form4.Color:=clWhite;
     Comp.Color:=clWhite;
     Label3.Color:=clWhite;
     Label3.Font.Color:=clBlack;
     Label4.Color:=clWhite;
     Label4.Font.Color:=clBlack;
     Label5.Color:=clWhite;
     Label5.Font.Color:=clBlack;
     Label6.Color:=clWhite;
     Label6.Font.Color:=clBlack;
     Label7.Color:=clWhite;
     Label7.Font.Color:=clBlack;
     Label10.Color:=clWhite;
     Label10.Font.Color:=clBlack;
     Label1.Color:=clWhite;
     Label1.Font.Color:=clBlack;
     Label2.Color:=clWhite;
     Label2.Font.Color:=clBlack;
     Label8.Color:=clWhite;
     Label8.Font.Color:=clBlack;
     Label6.Color:=clWhite;
     Label6.Font.Color:=clBlack;
     e1.Color:=clWhite;
     e1.Font.Color:=clBlack;
     e2.Color:=clWhite;
     e2.Font.Color:=clBlack;
     e3.Color:=clWhite;
     e3.Font.Color:=clBlack;
     e4.Color:=clWhite;
     e4.Font.Color:=clBlack;
     Chis.Color:=clWhite;
     Edit3.Color:=clWhite;
     Edit3.Font.Color:=clBlack;
     hod.Color:=clWhite;
     hod.Font.Color:=clBlack;
     list.Color:=clWhite;
     list.Font.Color:=clBlack;
     bik.Color:=clWhite;
     bik.Font.Color:=clBlack;
     korova.Color:=clWhite;
     korova.Font.Color:=clBlack;
     Edit1.Color:=clWhite;
     Edit1.Font.Color:=clBlack;
     Edit2.Color:=clWhite;
     Edit2.Font.Color:=clBlack;
     GroupBox1.font.color:=clBlack;
     GroupBox1.color:=clWhite;
     Image1.Color:=clWhite;
     Image1.Font.Color:=clBlack;
     Image2.Color:=clWhite;
     Image2.Font.Color:=clBlack;
   end;
if form5.RadioGroup1.ItemIndex=4 then
   begin
     form4.Color:=clRed;
     Comp.Color:=clRed;
     Label3.Color:=clRed;
     Label3.Font.Color:=clYellow;
     Label4.Color:=clRed;
     Label4.Font.Color:=clYellow;
     Label5.Color:=clRed;
     Label5.Font.Color:=clYellow;
     Label6.Color:=clRed;
     Label6.Font.Color:=clYellow;
     Label7.Color:=clRed;
     Label7.Font.Color:=clYellow;
     Label10.Color:=clRed;
     Label10.Font.Color:=clYellow;
     Label1.Color:=clRed;
     Label1.Font.Color:=clYellow;
     Label2.Color:=clRed;
     Label2.Font.Color:=clYellow;
     Label8.Color:=clRed;
     Label8.Font.Color:=clYellow;
     Label6.Color:=clRed;
     Label6.Font.Color:=clYellow;
     e1.Color:=clRed;
     e1.Font.Color:=clYellow;
     e2.Color:=clRed;
     e2.Font.Color:=clYellow;
     e3.Color:=clRed;
     e3.Font.Color:=clYellow;
     e4.Color:=clRed;
     e4.Font.Color:=clYellow;
     Chis.Color:=clRed;
     Edit3.Color:=clRed;
     Edit3.Font.Color:=clYellow;
     hod.Color:=clRed;
     hod.Font.Color:=clYellow;
     list.Color:=clRed;
     list.Font.Color:=clYellow;
     bik.Color:=clRed;
     bik.Font.Color:=clYellow;
     korova.Color:=clRed;
     korova.Font.Color:=clYellow;
     Edit1.Color:=clRed;
     Edit1.Font.Color:=clYellow;
     Edit2.Color:=clRed;
     Edit2.Font.Color:=clYellow;
     GroupBox1.font.color:=clYellow;
     GroupBox1.color:=clRed;
     Image1.Color:=clRed;
     Image1.Font.Color:=clYellow;
     Image2.Color:=clRed;
     Image2.Font.Color:=clYellow;
   end;
end;

procedure TForm4.N6Click(Sender: TObject);
begin
form1.Enabled:=false;
form2.Enabled:=false;
form3.Enabled:=false;
form4.Enabled:=false;
form5.visible:=true;
end;


procedure TForm4.Button2Click(Sender: TObject);
var brr,br:string; lor:integer;
begin
aga:=false;

if (length(Edit1.Text)=1)and(length(Edit2.Text)=1) then
  begin
   ca:=Edit1.Text[1];
   case ca of
    '0'..'9' : begin
                ca:=Edit2.Text[1];
                case ca of '0'..'9' : begin
                                          bull:=strtoint(Edit1.Text);
                                          cow:=strtoint(ca);
                                          bichar[p]:=bull;
  kerov[p]:=cow;
                                          if (bull=bichar[ham])and(cow=kerov[ham]) then begin
                                                                                   b:=true;
                                                                                   bik.items.add(inttostr(bull));
                                                                                   korova.Items.add(inttostr(cow));
                                                                                   aga:=true;
                                                                                   cow:=0;
                                                                                   bull:=0;
                                                                                  end
                                          else begin application.messagebox('Высоко сижу, далеко гляжу и обман ваш вижу!', 'Я за вами наблюдаю!', MB_OK); svich:=false;Edit1.Clear;Edit2.Clear; exit; cow:=0; bull:=0;end;
                                         end;
                else application.messagebox('Не согласен с данной точкой зрения', 'Я против!', MB_OK);
                end;
               end;
   else application.messagebox('Не согласен с данной точкой зрения', 'Я против!', MB_OK);
   end;
  end
 else application.messagebox('Чего-то вы напутали', 'Не согласен', MB_OK);
 if aga= true then
 begin
 brr:='';
  br:='';
  p:=p+1;
  /////////////////////////////perestanovka
  brr:=inttostr(otvet[p]);
  case bull of
   0: begin
       lor:=random(2);
       if lor=0 then
        begin
         ca:=brr[1];
         brr[1]:=brr[2];
         brr[2]:=ca;
        ca:=brr[3];
         brr[3]:=brr[4];
         brr[2]:=ca;
        end
       else
        begin
         ca:=brr[1];
         brr[1]:=brr[4];
         brr[4]:=ca;
         ca:=brr[2];
         brr[2]:=brr[3];
         brr[3]:=ca;
        end;
      end;
   1:begin
     end;
   2:begin
      lor:=random(2);
      if lor=0 then
       begin
        ca:=brr[1];
        brr[1]:=brr[2];
        brr[2]:=ca;
       end
      else
       begin
        ca:=brr[1];
        brr[1]:=brr[4];
        brr[4]:=ca;
       end;
      otvet[p]:=strtoint(brr);
     end;
  end;
  end;
 if (bichar[p-1]=4)and(kerov[p-1]=0) then begin label9.Visible:=true; comp.Visible:=false; Button2.Enabled:=False; image1.Visible:=false; image2.Visible:=false;end
else begin
ho:=ho+1;
ham:=ham+1;
hod.items.add(inttostr(ho)+'.');
if ham>p then
lobas:=inttostr(otvet[ham]) else lobas:=inttostr(otvet[p]);
if lobas[4]='' then list.items.add('0'+lobas) else
list.items.add(lobas);
end;

Edit1.Clear;
Edit2.Clear;
cow:=0;
bull:=0;
 end;

end.
