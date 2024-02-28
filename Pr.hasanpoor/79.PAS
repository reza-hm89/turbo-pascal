uses    crt;
var     a,b,c:array [1..100] of integer;
        i,j,n:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        writeln('a[',n,']:');
        for i:=1 to n do
        begin
             write('Enter number ',i,': ');
             readln(a[i]);
        end;
        writeln('b[',n,']');
        for i:=1 to n do
        begin
             write('Enter number ',i,': ');
             readln(b[i]);
        end;
        for i:=1 to n do
            c[i]:=a[i]+b[i];
        write('c[',n,']:');
        for i:=1 to n do
            write(c[i]:3);
        readln
end.