uses    crt;
var     r,s:integer;
        n:longint;
begin
        clrscr;
        write('Enter number: ');
        readln(n);
        while (n<>0) do
        begin
             r:=n mod 10;
             s:=s+r;
             n:=n div 100;
        end;
        write('Sum of digits: ',s);
        readln
end.