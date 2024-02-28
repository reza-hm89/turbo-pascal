program tamrin11;
uses    crt;
const   n=10;
var     a:array[1..100] of integer;
        i,s1,s2,s:integer;
begin
        s1:=0;
        s2:=1;
        write('Chape 10 jomle zir: ');
        writeln('1  2  4  7 ...');
        writeln;
        for i:=1 to n do
        begin
             s:=s1+s2;
             write(s:3);
             s2:=s;
             s1:=s1+1;
        end;
        readln;
end.
