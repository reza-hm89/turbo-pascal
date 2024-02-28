uses    crt;
var     a,b,c,s,i:integer;
begin
        clrscr;
        write('Enter a,b,c: ');
        readln(a,b,c);
        i:=a+1;
        while (i<b) do
        begin
             if (i mod c)=0 then
                write(i:3);
             i:=i+1;
        end;
        readln
end.