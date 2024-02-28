uses    crt;
var     n,s,r:longint;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        s:=0;
        while (n<>0) do
        begin
             r:=n mod 10;
             s:=s+r;
             n:=n div 10;
        end;
        write('Sum of digits: ',s);
        readln
end.