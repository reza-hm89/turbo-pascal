uses    crt;
var     a:array [1..100,1..100] of integer;
        i,j,n,index:integer;
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
                if (i<j) and (a[i,j]<>0) then
                   index:=1;
        end;
        if index=0 then
        write('Matrix paein mosalasi ast')
        else
        write('Matrix paein mosalasi nist');
        readln
end.