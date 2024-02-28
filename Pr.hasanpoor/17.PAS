uses    crt;
var     a,b,c:integer;
begin
        clrscr;
        write('Enter a,b,c: ');
        readln(a,b,c);
        if (a+b>c) and (a+c>b) and (b+c>a) then
                       write('yes')
        else           write('no');
        readln
end.