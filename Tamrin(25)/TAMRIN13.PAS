program Tamrin6;
uses    crt;
var     n,i,j,cntr,k:integer;
begin
        clrscr;
        textcolor(7);
        write('Enter a Numer:');
        readln(n);
        writeln('Output is:');
        for i:=1 to (2*n)-1 do
        begin
             if i<=n then
             begin
                  for j:=1 to (2*n)-1 do
                  begin
                       if (j>n-i) and (j<n+i) then
                          write('*':3)
                       else
                          write('   ');
                  end;
              end
              else
                begin
                     for j:=1 to (2*n)-1 do
                     begin
                          if (j>i-n) and (j<(2*n-1)-(i-n)+1) then
                             write('*':3)
                          else
                              write('   ');
                     end;
                end;
                writeln;
          end;
          textcolor(17);
          writeln;
          write('Press any Key to exit');
          readln;
end.