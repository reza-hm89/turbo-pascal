program tamrin9;
uses crt;
var  a:array[1..100] of integer;
     i,j,n,sum:integer;
begin

     write('Enter N:');
     readln(n);
     for i:=1 to n do
         read(a[i]);
     j:=5;
     sum:=0;
     while j<=n do
     begin
           sum:=sum+a[j];
           j:=j+5;
     end;
     writeln('s=a[5]+a[10]+...+a[',n,']: ',sum);
     readln;
     readln;
end.
