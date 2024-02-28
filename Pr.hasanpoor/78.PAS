uses    crt;
var     a,b:array [1..100] of integer;
        i,j,n:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             write('Enter number ',i,': ');
             readln(a[i]);
        end;
        for i:=n downto 1 do
        begin
             j:=j+1;
             b[j]:=a[i];
        end;
        write('a[',n,']: ');
        for i:=1 to n do
             write(a[i]:3);
        writeln;
        write('b[',n,']: ');
        for i:=1 to n do
            write(b[i]:3);
        readln
end.