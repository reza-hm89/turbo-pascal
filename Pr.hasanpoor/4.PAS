uses    crt;
var     a,b,temp:integer;
begin
        clrscr;
        write('Enter a,b:');
        readln(a,b);
        temp:=a;
        a:=b;
        b:=temp;
        writeln('a= ',a);
        writeln('b= ',b);
        readln
end.