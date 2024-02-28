uses    crt;
var     a,b,c:array [1..100] of integer;
        i,j,n,m,index:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
            readln(a[i]);
        for i:=1 to n do
            c[i]:=a[i];
        write('Enter m: ');
        readln(m);
        for i:=1 to m do
            readln(b[i]);
        for i:=1 to n do
        begin
             index:=0;
             for j:=1 to n do
                 if a[j]=b[i] then
                    index:=1;
             if index=0 then
             begin
                      n:=n+1;
                      c[n]:=b[i];
             end;
        end;
        for i:=1 to n do
            write(c[i]:3);
        readln
end.
