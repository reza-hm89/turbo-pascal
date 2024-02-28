uses    crt;
var     m,n,r,i:integer;
begin
        clrscr;
        write('Enter N,M: ');
        readln(n,m);
        while n>0 do
        begin
             r:=n mod 10;
             if r=m then
                i:=i+1;
             n:=n div 10;
        end;
        if i<>0 then
            write(i)
        else
            write('No exist');
        readln
end.