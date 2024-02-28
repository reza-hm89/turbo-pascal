{** lozi **}
uses    crt;
var     i,j,n,k,z:integer;
begin
        clrscr;
        write('Enter n:');
        readln(n);
        k:=n;
        z:=0;
        for i:=1 to n do
        begin
                write('*':k);
                write('':z,'*');
                writeln;
                k:=k-1;
                z:=z+2;
        end;
        k:=1;
        z:=2*n-2;
        for i:=n downto 1 do
        begin
                write('*':k);
                write('':z,'*');
                writeln;
                k:=k+1;
                z:=z-2;
        end;
        readln
end.
