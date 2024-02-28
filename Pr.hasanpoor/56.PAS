uses    crt;
var     i,j,n:byte;
        sum,mon,s:longint;
        name:string;
begin
        clrscr;
        write('Enter your name: ');
        readln(name);
        write('Enter your money: ');
        readln(mon);
        write('Tedad morajee be bank ra vared konid: ');
        readln(n);
        sum:=mon;
        for i:=1 to n do
        begin
                write('Enter your money: ');
                readln(s);
                writeln('Variz 1        bardasht 2');
                readln(j);
                if j=1 then
                     sum:=s+sum
                else if j=2 then
                     sum:=sum-s;
                clrscr;
        end;
        write('Your money: ',sum);
        readln
end.