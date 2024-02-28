uses    crt;
var     a,r,s,p:integer;
begin
        clrscr;
        write('Enter a number: ');
        readln(a);
        p:=1;
        while a>0 do
        begin
             r:=a mod 2;
             s:=s+(r*p);
             p:=p*10;
             a:=a div 2;
        end;
        write ('Mabnay 2: ',s);
        readln
end.
