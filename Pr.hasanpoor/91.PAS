uses    crt;
var     a,b,c:array [1..100] of integer;
        i,j,k,n,m,index:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
            readln(a[i]);
        write('Enter m: ');
        readln(m);
        for i:=1 to m do
            readln(b[i]);
        i:=1;
        while (i<=m) or (i<=n) do
        begin
                index:=0;
                for j:=1 to n do{n or m}
                    if a[j]=b[i] then
                       index:=1;
                if index=1 then
                begin
                     k:=k+1;
                     c[k]:=b[i];
                end;
                i:=i+1;
        end;
        for i:=1 to k do
            write(c[i]:3);
        readln
end.
