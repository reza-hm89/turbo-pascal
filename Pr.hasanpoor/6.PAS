uses    crt;
var     a,b:integer;
begin
        clrscr;
        write('Enter a,b:');
        readln(a);
        b:=(a div 10) + (a mod 10);
        writeln('sum of digits= ',b);
        readln
end.