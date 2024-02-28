uses    crt;
var     a,b:array [1..100] of integer;
        i,j,k,n,index:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             write('Enter number ',i,': ');
             readln(a[i]);
        end;
        b[1]:=a[1];
        k:=1;
        for i:=2 to n do
        begin
             index:=0;
             for j:=1 to i do
                 if a[i]=b[j] then
                    index:=1;
             if index=0 then
             begin
                     k:=k+1;
                     b[k]:=a[i];
             end;
        end;
        for i:=1 to k do
            write(b[i]:3);
        readln
end.