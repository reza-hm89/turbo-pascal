uses crt;
var  i,j,n,k:integer;
begin
     
     write('Enter your Number:');
     readln(n);
     k:=n;
     for i:=1 to n do
     begin
          for j:=1 to n do
          begin
               if j=i then write('*':j)
               else if j=k then write('*':j-1);
          end;
          k:=k-1;
          writeln;
     end;
     readln;
     readln;
end.
