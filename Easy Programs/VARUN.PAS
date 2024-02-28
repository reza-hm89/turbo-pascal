var  n,m:integer;
begin
     write('Enter nubmer:');
     readln(n);
     if n>3000 then
     begin
     write('Error! Enter number<3000:');
     readln(n);
     end;
     while n<>0 do
     begin
          m:= n mod 10;
          write(m);
          n:= n div 10;
     end;
     readln;
end.