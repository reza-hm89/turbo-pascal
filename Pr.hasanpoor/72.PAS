uses    crt;
var     i,k,n:integer;
        a:array [0..100] of integer;
begin
        clrscr;
        write('Enter number: ');
        readln(n);
        while n>0 do
        begin
             k:=k+1;
             a[k]:=n mod 2;
             n:=n div 2;
        end;
        for i:=k downto 1 do
            write(a[i]);
        readln
end.
