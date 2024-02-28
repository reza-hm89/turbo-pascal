uses crt;
var n,cntr:integer;
    sum,p:real;
begin
     clrscr;
     sum:=0;
     writeln('1^1+2^2+...+n^n');
     write('Enter number of statement:');
     readln(n);
     while n<>0 do
     begin
          cntr:=1;
          p:=1;
          while cntr<=n do
          begin
               p:=p*n;
               cntr:=cntr+1;
          end;
          sum:=sum+p;
          n:=n-1;
     end;
     write(sum:8:0);
     readln;
end.