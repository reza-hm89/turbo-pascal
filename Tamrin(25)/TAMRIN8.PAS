program tamrin8;
uses crt;
var  a:array[1..100] of integer;
     i,j,n:integer;
begin
     clrscr;
     textcolor(7);
     write('Enter Number of statment:');
     readln(n);
     for i:=1 to n do
         read(a[i]);
     j:=0;
     for i:=1 to n do
         if (9<a[i]) and (a[i]<100) then j:=j+1;
     writeln('Output is:',j);
     readln;
     writeln;
     textcolor(17);
     writeln('Press any key to Exit');
     readln;
end.