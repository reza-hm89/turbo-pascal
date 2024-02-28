{miyangin 3 adad}
uses    crt;
var     a,b,c:integer;
        avg:real;
begin
        clrscr;
        write('Enter a,b,c:');
        readln(a,b,c);
        avg:=(a+b+c)/3;
        write('Average= ',avg:1:2);
        readln
end.