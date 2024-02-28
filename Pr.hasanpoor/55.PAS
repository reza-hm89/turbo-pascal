uses    crt;
var     i,n:integer;
        s:longint;
        sum,sum1:real;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             write('Enter your salary: ');
             readln(s);
             if (s<=190000) then
             begin
                        sum:=s*0.04;
                        sum1:=sum+s;
             end
             else if (s<=250000) then
             begin
                        sum:=s*0.055;
                        sum1:=sum+s;
             end
             else
             begin
                        sum:=s*0.07;
                        sum1:=sum+s;
             end;
        writeln('New salary: ',sum1:2:2);
        writeln('first salary: ',s:2);
        writeln('Extra salary: ',sum:2:2);
        readln;
        clrscr;
        end;
        readln
end.