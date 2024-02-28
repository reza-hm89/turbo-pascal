uses    crt;
var     i,j,s,n,x,sign:integer;
        sum:real;
Begin
        clrscr;
        s:=1;
        write('Enter n,x: ');
        readln(n,x);
        sign:=1;
        for i:=1 to n do
        begin
             s:=1;
             for j:=1 to 2*i-1 do
                 s:=s*x;
             sum:=(1/s)*sign+sum;
             sign:=-sign;
        end;
        write('sum: ',sum:2:2);
        readln
end.