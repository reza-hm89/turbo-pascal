uses    crt;
var     m,d:longint;
begin
        clrscr;
        write('Enter mounth & days:');
        readln(m,d);
        d:=(m-1)*30+d;
        write('Days: ',d);
        readln
end.