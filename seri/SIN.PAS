uses    crt;
var     n,x,i,j,p,f,sign:integer;
        sum:real;
Begin
        clrscr;
        write('Enter n,x: ');
        readln(n,x);
        sign:=1;
        for i:=1 to n do
        begin
             f:=1;
             p:=1;
             for j:=1 to 2*i-1 do
             begin
                  f:=f*j;
                  p:=x*p;
             end;
             sum:=((p/f)*sign)+sum;
             sign:=-sign;
        end;
        write('Sum: ',sum:2:2);
        readln
end.