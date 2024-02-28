uses    crt;
var     a,b,c,max:integer;
begin
        clrscr;
        write('Enter a,b,c: ');
        readln(a,b,c);
        if (a>b) and (a>c) then
                max:=a
        else if (b>a) and (b>c) then
                max:=b
        else    max:=c;
        write('Max= ',max);

        readln
end.