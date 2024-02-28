uses    crt;
var     n,i,j,num:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        j:=0;
        for i:=1 to n do
        begin
                write('Enter number: ');
                readln(num);
                if (num mod 2=0) then
                        j:=j+1;
        end;
        write('numbers of evens : ',j);
        readln
end.