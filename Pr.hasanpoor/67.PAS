uses    crt;
var     a:array [1..100] of integer;
        i,n:integer;
Begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             write('a[',i,']:');
             readln(a[i]);
        end;
        i:=1;
        while i<=n do
        begin
             write(a[i]:3);
             i:=i+2;
        end;
        readln;
end.