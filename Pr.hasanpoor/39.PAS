uses    crt;
var     i,n,s,s1,s2,sum:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        s:=1;
        for i:=1 to n do
        begin
            write(s:5);
            sum:=sum+s;
            s1:=s2;
            s2:=s;
            s:=s1+s2;
        end;
        writeln;
        write('Sum= ',sum);
        readln
end.
