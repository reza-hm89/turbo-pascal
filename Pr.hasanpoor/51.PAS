uses    crt;
var     i,a,b:integer;
begin
        clrscr;
        write('Enter a,b: ');
        readln(a,b);
        while a>=b do
        begin
             a:=a-b;
             i:=i+1;
        end;
        write('a/b= ',i);
        readln
end.