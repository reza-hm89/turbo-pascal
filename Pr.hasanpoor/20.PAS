uses    crt;
var     n,i,sum,num:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        sum:=0;
        for i:=1 to n do
        begin
                write('Enter number: ');
                readln(num);
                sum:=sum+num;
        end;
        write('Sum is : ',sum);
        readln
end.