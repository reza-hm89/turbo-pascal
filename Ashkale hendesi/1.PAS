{****  n=4
 ****
 ****
 ****     }
uses    crt;
var     i,j,n:integer;
begin
        clrscr;
        write('Enter n:');
        readln(n);
        for i:=1 to n do
        begin
                for j:=1 to n do
                    write('*');
                writeln;
        end;
        readln
end.