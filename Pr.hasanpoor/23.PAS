uses    crt;
var     n,i:longint;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        while (n<>0) do
        begin
             i:=i+1;
             n:=n div 10;
        end;
        write('Numbers of digit: ',i);
        readln
end.