uses    crt;
var     a:array [1..10] of integer;
        i,n:integer;
Begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
                write('a[',i,']: ');
                readln(a[i]);
        end;
        for i:=n downto 1 do
            write(a[i]:3);
        readln;
end.