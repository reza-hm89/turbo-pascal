uses    crt;
var     i,n,s:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
            s:=s+i;
        write('Sum= ',s);
        readln
end.
