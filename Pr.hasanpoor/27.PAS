uses    crt;
var     a,max:longint;
begin
        clrscr;
        write('Enter number: ');
        readln(a);
        max:=a;
        while (a<>0) do
        begin
             write('Enter number: ');
             readln(a);
             if (a>max) then
                max:=a;
        end;
        write('Max= ',max);
        readln
end.