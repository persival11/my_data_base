{Unit tablet_v_v - �� �����, ��������騩 ���� ��뤮 ���ଠ樨}
unit table_v_v;
interface
procedure menu_vivod;
procedure menu_vvod;


implementation
uses crt, drawing,choose_menu;

{��楤�� �।�����祭� ��� �뢮�� ���ଠ樨 � ���� ⨯�� "���ࠪ⨢��
 ���ᨢ" � "���ࠪ⨢�� ᯨ᮪"}
procedure menu_vivod;
const n=2;
colortext=11;
background=12;
var
  mas:array[1..n] of string;
  x,y,i,j:integer;
  c:char;
begin
  mas[1] := '���ࠪ⨢�� ���ᨢ';
  mas[2] := '���ࠪ⨢�� C��᮪';
  textbackground(0); //梥� �ᥣ� 䮭�
  clrscr;
  TextColor(15);
  Gotoxy(24,5);
  draw(45,9,'      ����');
  for i := 1 to n do
  begin
    GotoXY(23,6+i);   // 6+i
    if i=1 then
    begin
      textbackground(background);
      write(mas[i]);
      textbackground(black);
    end
    else Write(mas[i]);
  end;
  j:=1; // ����� ������⮢ ���ᨢ�
  x:=23;y:=7;
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
  until (c=#13)or(c=#27);
  if c=#13 then write('jjj')
  else general_my_menu;
  textbackground(0);
end;


{��楤�� �।�����祭� ��� ����� ���ଠ樨 � ���� ⨯�� "���ࠪ⨢��
 ���ᨢ" � "���ࠪ⨢�� ᯨ᮪"}
procedure menu_vvod;
const n=2;
colortext=11;
background=12;
var
  mas:array[1..n] of string;
  x,y,i,j:integer;
  c:char;
begin
  mas[1] := '���ࠪ⨢�� ���ᨢ';
  mas[2] := '���ࠪ⨢�� C��᮪';
  textbackground(0); //梥� �ᥣ� 䮭�
  clrscr;
  TextColor(15);
  Gotoxy(24,5);
  draw(45,9,'     �����');
  for i := 1 to n do
  begin
    GotoXY(23,6+i);   // 6+i
    if i=1 then
    begin
      textbackground(background);
      write(mas[i]);
      textbackground(black);
    end
    else Write(mas[i]);
  end;
  j:=1; // ����� ������⮢ ���ᨢ�
  x:=23;y:=7;
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
  until (c=#13)or(c=#27);
  if c=#13 then write('jjj')
  else general_my_menu;
  textbackground(0);
end;

end.

