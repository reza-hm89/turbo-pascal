program Tamrin3;
uses    crt;
var     n,i,j:integer;
begin
        clrscr;
        write('Enter a Numer:');
        readln(n);
        writeln('Output is:');
        for i:=1 to n do
        begin
             for j:=1 to n do
             begin
                  if j>(n-i) then
                     write('*':3)
                  else
                     write('   ');
              end;
              writeln;
        end;
            textcolor(17);
            writeln;
            write('Press any Key to exit');
            readln;
end.