{unit drawing - этот модуль рисут мою рамку}
unit drawing;
interface
uses crt;
procedure draw(xd,yd:integer; header:string);


implementation

{
Процедура "draw" рисует мою рамку.
xd-ширина(integer)
yd-длина(integer)
header-заголовок меню(string)
}
procedure draw(xd,yd:integer; header:string );
var i:integer;
begin

  Gotoxy(25,5);
  textcolor(11);
  Writeln(header); // шапка
  textcolor(12);
  gotoxy(xd,4);{правый верх}
  write(#187);
  gotoxy(xd,yd);{правый низ}  {xd=38 yd=14}
  write(#188);
  gotoxy(20,yd);{левый низ}
  write(#200);
  gotoxy(20,4);{левый верх}
  write(#201);
  {левая сторона}
  for i:=5 to (yd-1) do
  begin
    gotoxy(20,i);
    write(#186);
  end;
  {низ}
  for i:=21 to (xd-1) do
  begin
    gotoxy(i,yd);
    write(#205);
  end;
  {правая сторона}
  for i:=(yd-1) downto 5 do
  begin
    gotoxy(xd,i);
    write(#186)
  end;
  {верх}
  for i:=21 to (xd-1) do
  begin
    gotoxy(i,4);
    write(#205);
  end;

  textcolor(11);


  //gotoxy(1,1);

end;

end.

