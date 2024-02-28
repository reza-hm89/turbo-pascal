uses    crt;
var     i,j,n:integer;
Begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=n downto 1 do
        begin
            for j:=i to n do
                 write(j:3);
            writeln;
        end;
        readln
end.