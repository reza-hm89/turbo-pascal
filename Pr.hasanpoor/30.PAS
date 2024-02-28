uses    crt;
var     r:integer;
        a,s:longint;
begin
        clrscr;
        write('Enter a number: ');
        readln(a);
        while (a>0) do
        begin
             r:=a mod 10;
             s:=s*10+r;
             a:=a div 10;
        end;
        writeln('Invert: ',s);
        readln
end.