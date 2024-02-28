uses    crt;
var     m,n,s:integer;
function mp(m,n:integer):integer;
begin
        if n=1 then
           mp:=m
        else
            mp:=m+mp(m,n-1);
end;
begin
        clrscr;
        write('Enter m,n: ');
        readln(m,n);
        s:=mp(m,n);
        write(s);
        readln;
end.