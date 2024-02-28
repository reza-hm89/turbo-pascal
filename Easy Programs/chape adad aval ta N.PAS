uses    crt;
var     i,j,n,index:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=2 to n-1 do
        begin
             index:=0;
             for j:=2 to i-1 do
                 if (i mod j)=0 then
                    index:=1;
             if index=0 then
                write(i:4);
        end;
        readln
end.

