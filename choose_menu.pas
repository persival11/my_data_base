{unit choose_menu - �� �����, �����⢫��騩 �롮� ������� � ������� ����}
unit choose_menu;
interface
uses crt,drawing,table_v_v, S_L, other;
procedure choose_deustv(k:integer);
procedure general_my_menu;
implementation

{��楤�� �������� ����}
procedure general_my_menu;
const n=7;
colortext=11;
background=12;
var
  mas:array[1..n] of string;
  x,y,i,j:integer;
  c:char;
begin

  mas[1] := '��ᬮ��';
  mas[2] := '����������';
  mas[3] := '���࠭����';
  mas[4] := '����㧪�';
  mas[5] := '����ன��';
  mas[6] := '����';
  mas[n] := '��室';
  textbackground(0); //
  //TextColor(15); //
  clrscr;
  draw(38,14, '  ����');
  for i := 1 to n do
  begin
    GotoXY(25,6+i);   // 6+i
    if i=1 then
    begin
      textbackground(background);
      write(mas[i]);
      textbackground(black);
    end
    else Write(mas[i]);

  end;


  j:=1;
  x:=25;y:=7;
  gotoxy(x,y);
  repeat
    c:=readkey;
    if c = #0 then
    begin
      gotoxy(x,y);
      c:=readkey;
      case ord(c) of
        72:
          begin
            if j<>1 then
            begin
              textbackground(black);
              write(mas[j]);
              y:=y-1;
              j:=j-1;
              gotoxy(x,y);
              textbackground(background);
              write(mas[j]);
            end;
          end;
        80:
          begin
            if j<>n then
            begin
              textbackground(black);
              write(mas[j]);
              y:=y+1;
              j:=j+1;
              gotoxy(x,y);
              textbackground(background);
              write(mas[j]);
            end;
          end;
      end;
    end;
  until c=#13;
  choose_deustv(j);

end;
{��楤�� �롮� ����⢨� � ������� ����}
procedure choose_deustv(k:integer);
begin
  clrscr;
  case k of
   1:
     begin
       menu_vivod;
     end;
   2:
     begin
       menu_vvod;
     end;
   3:
     begin
       save;
     end;
   4:
     begin
       load;
     end;
   5:
     begin
       setting;
     end;
   6:
     begin
       about;
     end;
   7:
     begin
       clother;
     end;
  end;

end;

end.

