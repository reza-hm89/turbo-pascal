uses    crt;
var     i,j,k,n:integer;
Begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             k:=i;
            for j:=1 to n do
            begin
                 write(k:3);
                 k:=k+1;
            end;
            writeln;
        end;
        readln
end.