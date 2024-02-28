uses    crt;
var     a,b,t:integer;
begin
        clrscr;
        write('Enter a,b: ');
        readln(a,b);
        while (b>0) do
        begin
             t:=a mod b;
             a:=b;
             b:=t;
        end;
        write(a);
        readln
end.