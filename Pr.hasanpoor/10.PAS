uses    crt;
var     a:longint;
begin
        clrscr;
        write('Enter a: ');
        readln(a);
        if (a>=0) then
                  write(a)
        else      write(-a);
        readln
end.