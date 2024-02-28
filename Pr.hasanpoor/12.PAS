uses    crt;
var     a,b:integer;
begin
        clrscr;
        write('Enter a,b: ');
        readln(a,b);
        if a>b then
                  write('Max= ',a)
        else      write('Max= ',b);
        readln
end.