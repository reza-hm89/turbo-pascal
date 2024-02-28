uses crt;
label 1;
var n:integer;
procedure  mabnaye2(var a:integer);
var  b:array[1..100] of integer;
     j,i:integer;
begin
     i:=1;
     while (a<>0) do
     begin
         b[i]:=a mod 2;
         a:=a div 2;
         i:=i+1;
      end;
          for j:=i-1 downto 1 do
          write(b[j]);
end;

begin
     clrscr;
     textcolor(7);
     write('Enter Your Number:');
     readln(n);
     mabnaye2(n);
     write(n);
     readln;
end.