uses    crt;
var     a,b:integer;
        s,p:real;
begin
        clrscr;
        write('Enter a,b:');
        readln(a,b);
        p:=2*(a+b);
        s:=a*b;
        writeln('Area= ',s:1:2);
        writeln('Perimeter= ',p:1:2);
        readln
end.