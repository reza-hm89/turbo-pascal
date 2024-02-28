uses    crt;
var     i,a,b,s:integer;
begin
        clrscr;
        write('Enter a,b: ');
        readln(a,b);
        for i:=1 to b do
             s:=s+a;
        write('a*b= ',s);
        readln
end.