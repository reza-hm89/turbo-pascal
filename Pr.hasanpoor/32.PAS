uses    crt;
var     a,f,i:integer;
begin
        clrscr;
        f:=1;
        write('Enter a number: ');
        readln(a);
        for i:=1 to a do
            f:=f*i;
        write('Fact= ',f);
        readln
end.