uses    crt;
var     i,j,k,n:integer;
Begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
            for j:=1 to i do
            begin
                 k:=k+1;
                 write(k:3);
            end;
            writeln;
        end;
        readln
end.