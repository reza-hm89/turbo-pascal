uses    crt;
var     n,x,i,j,f,p,sign:integer;
        sum:real;
begin
        clrscr;
        write('Enter n,x: ');
        readln(n,x);
        sign:=-1;
        sum:=1;
        for i:=2 to n do
        begin
             p:=1;
             f:=1;
             for j:=1 to 2*i-2 do
             begin
                        p:=p*x;
                        f:=f*j;
             end;
             sum:=(p/f)*sign+sum;
             sign:=-sign;
        end;
        write(sum:2:2);
        readln
end.