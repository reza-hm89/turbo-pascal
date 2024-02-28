uses    crt;
var     a,b,c,temp:integer;
        x1,x2,delta:real;
begin
        clrscr;
        write('Enter a,b,c:');
        readln(a,b,c);
        delta:=(b*b)-(4*a*c);
        if (delta>0) then
        begin
                x1:=(-b+sqrt(delta))/(2*a);
                x2:=(-b-sqrt(delta))/(2*a);
                write('X1= ',x1:2,' X2= ',x2:2);
        end
        else if (delta=0) then
        begin
                x1:=(-b)/(2*a);
                write('X1= ',x1);
        end
        else
                write('Moadele javabe haghighi nadarad');
end.