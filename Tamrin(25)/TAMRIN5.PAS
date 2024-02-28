program Tamrin5;
uses    crt;
var     n,i,j,cntr:integer;
begin
        clrscr;
        textcolor(7);
        write('Enter a Numer:');
        readln(n);
        writeln('Output is:');
        i:=1;
        while cntr<n do
          begin
                for j:=1 to n do
                    write(i*j:5);
                writeln;
                cntr:=cntr+1;
                i:=2*i;
          end;
          textcolor(17);
          writeln;
          write('Press any Key to exit');
          readln;
end.