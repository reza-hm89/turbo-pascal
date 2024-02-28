uses    crt;
var     i,n,num,s:integer;
        avg:real;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             write('Enter grade: ');
             readln(num);
             s:=s+num;
        end;
        avg:=s/n;
        write('Average= ',avg:2:2);
        readln
end.