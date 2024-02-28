{       ****  n=4
         ***
          **
           *}
uses    crt;
var     i,j,n,k:integer;
begin
        clrscr;
        write('Enter n:');
        readln(n);
        k:=1;
        for i:=1 to n do
        begin
                write('':k);
                for j:=i to n do
                    write('*');
                writeln;
                k:=k+1;
        end;
        readln
end.