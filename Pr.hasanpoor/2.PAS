{masahat va mohit dayere}
uses    crt;
const   pi=3.14;
var     r:integer;
        s,p:real;
begin
        clrscr;
        write('Enter r:');
        readln(r);
        p:=2*pi*r;
        s:=pi*r*r;
        writeln('Area= ',s:1:2);
        writeln('Perimeter= ',p:1:2);
        readln
end.