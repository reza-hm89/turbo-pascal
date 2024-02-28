uses    crt;
var     a:array [1..3,1..4] of integer;
        i,j:integer;
begin
        clrscr;
        for i:=1 to 3 do
            for j:=1 to 4 do
                readln(a[i,j]);
        for i:=1 to 3 do
        begin
            for j:=1 to 4 do
                write(a[i][j]:3);
            writeln;
        end;
        readln;
end.
