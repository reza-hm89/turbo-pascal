program setaremosalasi1;
uses    crt;
var     n,i,j:integer;
begin
        clrscr;
        write('Enter a Numer:');
        readln(n);
        writeln('Output is:');
        for i:=1 to n do
        begin
             for j:=1 to i do
                 write('*':3);
                 writeln;
        end;
            textcolor(17);
            writeln;
            write('Press any Key to exit');
            readln;
end.