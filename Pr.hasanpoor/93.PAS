uses    crt;
var     a,b,c:array [1..100] of integer;
        i,j,n,m,k,t:integer;
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
        j:=1;
        while (i<=n) and (j<=m) do
        begin
             if a[i]<b[j] then
             begin
                  k:=k+1;
                  c[k]:=a[i];
                  i:=i+1;
             end
             else if b[j]<a[i] then
             begin
                  k:=k+1;
                  c[k]:=b[j];
                  j:=j+1;
             end
             else
             begin
                  k:=k+1;
                  c[k]:=a[i];
                  i:=i+1;
                  j:=j+1;
             end;
        end;
        for t:=i to n do
        begin
             k:=k+1;
             c[k]:=a[t];
        end;
        for t:=j to m do
        begin
             k:=k+1;
             c[k]:=b[t];
        end;
        for i:=1 to k do
            write(c[i]:3);
        readln
end.