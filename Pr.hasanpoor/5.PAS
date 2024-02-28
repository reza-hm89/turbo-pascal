uses    crt;
var     a,b:integer;
begin
        clrscr;
        write('Enter a,b:');
        readln(a,b);
        a:=a+b;
        b:=a-b;
        a:=a-b;
        writeln('a= ',a);
        writeln('b= ',b);
        readln
end.