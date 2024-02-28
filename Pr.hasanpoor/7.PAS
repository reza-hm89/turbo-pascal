uses    crt;
var     a,h,m,s:longint;
begin
        clrscr;
        write('Enter year:');
        readln(a);
        h:=a*365*24;
        m:=h*60;
        s:=m*60;
        write(a,' years is : ',h,' hours ',m,' minutes ',s,' seconds');
        readln
end.