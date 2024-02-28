uses    crt;
var     i,n,f,j:integer;
        sum:real;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             f:=1;
             for j:=1 to i do
                 f:=f*j;
             sum:=(1/f)+sum;
        end;
        writeln;
        write('Sum= ',sum:2:2);
        readln
end.
