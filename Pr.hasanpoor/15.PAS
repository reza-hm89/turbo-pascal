uses    crt;
var     a,b,c:integer;
        x1,x2,d:real;
begin
        write('Enter a,b,c: ');
        readln(a,b,c);
        d:=(b*b)-(4*a*c);
        if (d>0) then
        begin
                 x1:=(-b+sqrt(d))/(2*a);
                 x2:=(-b-sqrt(d))/(2*a);
                 write('x1= ',x1:1:2,' x2= ',x2:1:2);
        end
        else if (d=0) then
        begin
                 x1:=-b/(2*a);
                 write('x1= ',x1:1:25);
        end
        else     write('No exist');
        readln
end.