program Tamrin7;
uses    crt;
var     n,i,j,cntr,k:integer;
begin
        clrscr;
        textcolor(7);
        write('Enter a Numer:');
        readln(n);
        writeln('Output is:');
        k:=n;
        for i:=1 to n do
          begin
               write('':k-1);
               for j:=1 to i do
                   write('*');
               writeln;
               k:=k-1;
          end;
          textcolor(17);
          writeln;
          write('Press any Key to exit');
          readln;
end.