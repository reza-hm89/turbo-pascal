uses    crt;
var     i:integer;
begin
        clrscr;
        i:=100;
        while (i>=100) and (i<=999) do
        begin
             if (i mod 10 = i div 100) then
                write(i:5);
             i:=i+1;
        end;
        readln
end.