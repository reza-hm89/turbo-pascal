uses    crt;
var     n,s:longint;
function fact(n:integer):longint;
begin
        if n=0 then
           fact:=1
        else
            fact:=n*fact(n-1);
end;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        s:=fact(n);
        write(s);
        readln;
end.