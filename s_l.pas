{unit S_L - �� �����, ��������騩 ��࠭���� � ����㧪�}
unit S_L;
interface
procedure save;
procedure load;



implementation
uses crt, drawing,choose_menu;
{��楤�� @save@ ��࠭�� �������� ����� � 䠩�� ��� ⨯��}
procedure save;
const n=3;
colortext=11;
background=12;
var
  mas:array[1..n] of string;
  x,y,i,j:integer;
  c:char;


begin
  mas[1] := '� ���⨯��� 䠩�';
  mas[2] := '� ⨯���஢���� 䠩�';
  mas[3] := '� ⥪�⮢� 䠩�';
  textbackground(0); //梥� �ᥣ� 䮭�
  TextColor(15);
  clrscr;
  Gotoxy(28,5);

  draw(48,10,'    ����������');
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


  j:=1; // ����� ������⮢ ���ᨢ�
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
  until (c=#13)or(c=#27);
  if c=#13 then write('jjj')
  else general_my_menu;
end;
{��楤�� @load@ ����㦠�� ��࠭���� ����� �� 䠩�� ��� ⨯��}
procedure load;
  const n=3;
  colortext=11;
  background=12;
  var
    mas:array[1..n] of string;
    x,y,i,j:integer;
    c:char;


  begin
    mas[1] := '�� ���⨯����� 䠩��';
    mas[2] := '�� ⨯���஢������ 䠩��';
    mas[3] := '�� ⥪�⮢��� 䠩��';
    textbackground(0); //梥� �ᥣ� 䮭�
    TextColor(15);
    clrscr;
    Gotoxy(28,5);

    draw(51,10,'       ��������');
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


    j:=1; // ����� ������⮢ ���ᨢ�
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
    until (c=#13)or(c=#27);
    if c=#13 then write('jjj')
    else general_my_menu;
end;

end.

