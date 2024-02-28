uses    crt;
var     a:array[1..10,1..10] of integer;
        i,j,n,m,x,y:word;
begin
        clrscr;
        write('Enter n,m: ');
        readln(n,m);
        for i:=1 to n do
            for j:=1 to m do
                readln(a[i][j]);
        for i:=1 to n do
        begin
            for j:=1 to m do
                write(a[i][j]:3);
            writeln;
        end;
        write('Enter x,y : ');
        readln(x,y);
        for i:=x to n-1 do
            for j:=1 to m do
                a[i][j]:=a[i+1][j];
        for j:=y to m-1 do
            for i:=1 to n do
                a[i][j]:=a[i][j+1];
        for i:=1 to n-1 do
        begin
            for j:=1 to m-1 do
                write(a[i][j]:3);
            writeln;
        end;
        readln
end.