uses    crt;
var     a,b:integer;
begin
        clrscr;
        write('Enter a,b: ');
        readln(a,b);
        if (a mod b = 0) or ( b mod a = 0) then
                       write('yes')
        else           write('no');
        readln
end.