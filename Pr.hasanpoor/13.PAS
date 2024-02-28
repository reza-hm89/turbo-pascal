uses    crt;
var     a,b:integer;
begin
        clrscr;
        write('Enter a,b: ');
        readln(a,b);
        if a>b then
                  write(b,a:3)
        else      write(a,b:3);
        readln
end.