uses    crt;
var     i,n,s,sum,p:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        s:=1;
        for i:=0 to n do
        begin
            sum:=sum+s;
            s:=s*2;
        end;
        write('Sum= ',sum);
        readln
end.
