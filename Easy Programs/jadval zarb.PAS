var     n,i,j:integer;
begin
     repeat
           write('Enter n( 1...19):');
           readln(n);
     until (n>0) and (n<20);
     for i:=1 to n do
     begin;
           for j:=1 to n do
               write(i*j:4);
           writeln;
     end;
     readln;
     readln;
end.