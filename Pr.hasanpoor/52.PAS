uses    crt;
var     i,j,n,s:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        j:=1;
        for i:=1 to n do
        begin
             s:=s+j;
             j:=j+2;
        end;
        write(n,'^2= ',s);
        readln
end.