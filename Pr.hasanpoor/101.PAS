uses    crt;
var     a:array [1..100,1..100] of integer;
        i,j,n,s:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
            for j:=1 to n do
            begin
                write('a[',i,',',j,']:');
                readln(a[i,j]);
            end;
        for i:=1 to n do
            for j:=1 to n do
                if i=j then
                   s:=a[i,j]+s;
        write('sum of ghotre asli: ',s);
        readln;
end.
