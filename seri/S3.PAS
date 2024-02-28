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
             s:=s*x;
             sum:=s/i*sign+sum;
             sign:=-sign;
        end;
        write('sum: ',sum:2:2);
        readln
end.