uses    crt;
var     a,b,c:integer;
begin
        clrscr;
        write('Enter a,b,c: ');
        readln(a,b,c);
        if a*a+b*b=c*c then
                       write('yes')
        else           write('no');
        readln
end.