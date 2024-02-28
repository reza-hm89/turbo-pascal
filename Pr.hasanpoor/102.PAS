uses    crt;
var     a,b:array [1..100,1..100] of integer;
        i,j,n,t:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
            for j:=1 to n do
                readln(a[i,j]);
        for i:=1 to n do
        begin
            for j:=1 to n do
                b[i,j]:=a[j,i];
        end;
        for i:=1 to n do
            for j:=1 to n do
                write(b[i,j]:4);
        readln
end.