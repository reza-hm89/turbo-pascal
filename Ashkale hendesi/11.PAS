var  a:array[1..20] of integer;
     n,m,i,j,x,k:integer;
begin
     write('Enter nubmer:');
     readln(n);
     if n>3000 then
     begin
     write('Error! Enter number<3000:');
     readln(n);
     end;
     i:=1;
     while n<>0 do
     begin
           m:= n mod 10;
           a[i]:=m;
           n:= n div 10;
           i:=i+1;
     end;
     for j:=i-1 downto 1 do
     begin
           x:=a[j];
           for k:=1 to x do
               write(' * ');
           writeln;
     end;
     readln;
end.