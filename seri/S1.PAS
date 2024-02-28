uses    crt;
var     i,j,s,sum,n:integer;
Begin
        clrscr;
        s:=1;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             s:=1;
             for j:=1 to i do
                 s:=s*i;
             sum:=sum+s;
        end;
        write('sum: ',sum);
        readln
end.