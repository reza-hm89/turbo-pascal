uses    crt;
var     a,b,s,i:integer;
begin
        clrscr;
        write('Enter a,b: ');
        readln(a,b);
        if (a mod 2)=0 then
           i:=a+2
        else
            i:=a+1;
        while (i<b) do
        begin
             s:=s+i;
             i:=i+2;
        end;
        write('Sum : ',s);
        readln
end.