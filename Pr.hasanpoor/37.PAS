uses    crt;
var     i,n,s,sign:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        sign:=1;
        for i:=1 to n do
        begin
            s:=s+i*sign;
            sign:=-sign;
        end;
        write('Sum= ',s);
        readln
end.
