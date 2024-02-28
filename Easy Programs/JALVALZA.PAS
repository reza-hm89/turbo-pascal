program jadval zarb;
var  i,j,n:integer;
begin
     write('Enter a Number:');
     Readln(n);
     for i:=1 to n do
     begin
          for j:=1 to n do
             write(i*j);
             writeln;
     end;
     readln;
end.