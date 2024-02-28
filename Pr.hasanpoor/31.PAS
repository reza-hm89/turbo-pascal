uses    crt;
var     r:integer;
        a,s,num:longint;
begin
        clrscr;
        write('Enter a number: ');
        readln(num);
        a:=num;
        while (a>0) do
        begin
             r:=a mod 10;
             s:=s*10+r;
             a:=a div 10;
        end;
        if (s=num) then
           write('Yes')
        else
           write('No');
        readln
end.