{unit other - �� �����, ��������騩 ����ன��, ���ଠ�� � ��室}
unit other;
interface
procedure setting;
procedure clother;
procedure about;

implementation
uses crt, drawing,choose_menu;
{��楤�� "setting" �࣠�����뢠�� ����ன�� 梥� ⥪�� � 梥� 䮭�}
procedure setting;


const n=2;
colortext=11;
background=12;
var
  mas:array[1..n] of string;
  x,y,i,j:integer;
  c:char;


begin
  mas[1] := '���� ⥪��';
  mas[2] := '���� 䮭�';
  textbackground(0); //梥� �ᥣ� 䮭�
  TextColor(15);
  clrscr;
  Gotoxy(24,5);

  draw(37,9,'����ன��');
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


  j:=1; // ����� ����⮢ ���ᨢ�
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
end;
{��楤�� "clother" ������﫥� �롮� ������� ��� ��� �� ��}
procedure clother;
const n=2;
colortext=11;
background=12;
var
  mas:array[1..n] of string;
  x,y,i,j:integer;
  c:char;


begin
  mas[1] := '��';
  mas[2] := '���';
  textbackground(0); //梥� �ᥣ� 䮭�
  TextColor(15);
  clrscr;
  Gotoxy(24,5);

  draw(35,9,'��室');
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


  j:=1; // ����� ����⮢ ���ᨢ�
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
  if (c=#13) and (j=2) then general_my_menu;
end;
{��楤�� "about" �뢮��� ���ଠ�� �� ����}
procedure about;
var c:char;
begin
  textbackground(black);
  clrscr;
  draw(40,9, '   ����');
  gotoxy(24,7);
  write('�����設 �����');

  repeat
    c:=readkey;

  until c=#27;
  general_my_menu;

end;

end.

