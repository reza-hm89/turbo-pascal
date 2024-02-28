uses    crt;
var     n,i,num,s,r:longint;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        num:=n;
        n:= n div 2;
        s:=0;
        for i:=1 to n do
        begin
             r:=num mod i;
             if (r=0) then
                      s:=s+i;
        end;
        if s=num then
                 write('Yes')
        else     write('No');
        readln
end.