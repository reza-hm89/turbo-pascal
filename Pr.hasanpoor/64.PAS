uses    crt;
var     a:array [1..10] of integer;
        i:integer;
Begin
        clrscr;
        for i:=1 to 10 do
        begin
                write('a[',i,']: ');
                readln(a[i]);
        end;
        for i:=1 to 10 do
            write(a[i]:3);
        readln;
end.