var     cntr,n:integer;
begin
     cntr:=1;
     while cntr<=5 do
     begin
          write('enter number:');
          readln(n);
          if n mod 2=0 then writeln(n);
          cntr:=cntr+1;
     end;
     readln;
end.