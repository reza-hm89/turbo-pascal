uses    crt;
var     a:array [1..100] of integer;
        i,j,n:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             write('Enter number ',i,': ');
             readln(a[i]);
        end;
        for i:=1 to n do
        begin
            for j:=1 to a[i] do
                write(a[i]:3);
            writeln;
        end;
        readln
end.