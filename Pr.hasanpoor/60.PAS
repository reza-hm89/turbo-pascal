uses    crt;
var     n,i,sign,x:integer;
        sum,p:real;
begin
        clrscr;
        sign:=1;
        write('Enter n,x: ');
        readln(n,x);
        p:=x;
        sum:=1/p;
        for i:=2 to n do
        begin
             sign:=-sign;
             p:=x*x*i+p;
             sum:=sign*(1/p)+sum;
        end;
        write(sum:2:2);
        readln
end.