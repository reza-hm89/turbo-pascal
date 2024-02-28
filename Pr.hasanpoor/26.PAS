uses    crt;
var     a,b,s,i:longint;
begin
        clrscr;
        s:=1;
        write('Enter a,b: ');
        readln(a,b);
        while (i<b) do
        begin
             s:=a*s;
             i:=i+1;
        end;
        write('a^b= ',s);
        readln
end.