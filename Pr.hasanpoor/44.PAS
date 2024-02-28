uses    crt;
var     a,b,s,i:integer;
begin
        clrscr;
        write('Enter a,b: ');
        readln(a,b);
        i:=a+1;
        while (i<b) do
        begin
             s:=s+i;
             i:=i+1;
        end;
        write('Sum : ',s);
        readln
end.