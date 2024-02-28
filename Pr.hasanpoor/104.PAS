uses    crt;
var     a,b,c:array [1..100,1..100] of integer;
        i,j,n,m:integer;
begin
        clrscr;
        write('Enter n,m: ');
        readln(n,m);
        writeln('Matrix A:');
        for i:=1 to n do
            for j:=1 to m do
                readln(a[i,j]);
        clrscr;
        writeln('Matrix B:');
        for i:=1 to n do
            for j:=1 to m do
                readln(b[i,j]);
        for i:=1 to n do
            for j:=1 to m do
                c[i,j]:=a[i,j]+b[i,j];
        clrscr;
        writeln('Matrix C:');
        for i:=1 to n do
        begin
            for j:=1 to m do
                write(c[i,j]:4);
            writeln;
        end;
        readln
end.