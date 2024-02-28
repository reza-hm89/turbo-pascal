uses crt;
var  i,j,n,num:integer;
     fact:longint;
begin
     clrscr;
     write('Enter n:');
     readln(n);
     i:=1;
     while i<=n do
     begin
          write('Enter number',i,': ');
          readln(num);
          fact:=1;
          for j:=1 to num do
          fact:=fact*j;
          writeln('Fact= ',fact);
          fact:=1;
          i:=i+1;
     end;
     writeln;
     writeln('End...');
     readln;
end.