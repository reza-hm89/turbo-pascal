program Setareofoghi;
uses    crt;
var     n,i:integer;
begin
        clrscr;
        write('Enter a Numer:');
        readln(n);
        writeln('Output is:');
        for i:=1 to n do
            writeln('*');
            textcolor(17);
            write('Press any Key to exit');
            readln;
end.