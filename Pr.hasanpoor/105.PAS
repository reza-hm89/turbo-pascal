uses    crt;
var     a,b,c:array [1..100,1..100] of integer;
        i,j,t,n,m,k,z:integer;
begin
        clrscr;
        write('Enter n,m,k,z: ');
        readln(n,m,k,z);
        writeln('Matrix A:');
        for i:=1 to n do
            for j:=1 to m do
                readln(a[i,j]);
        clrscr;
        writeln('Matrix B:');
        for i:=1 to k do
            for j:=1 to z do
                readln(b[i,j]);
        for i:=1 to n do
        begin
            for j:=1 to z do
                for t:=1 to m do
                    c[i,j]:=a[i,t]*b[t,j]+c[i,j];
        end;
        for i:=1 to n do
        begin
            for j:=1 to z do
                write(c[i,j]:3);
            writeln;
        end;
        readln
end.