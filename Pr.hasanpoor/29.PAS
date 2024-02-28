uses    crt;
var     r,min,max:integer;
        a:longint;
begin
        clrscr;
        write('Enter a number: ');
        readln(a);
        r:=a mod 10;
        min:=r;
        max:=r;
        a:= a div 10;
        while (a>0) do
        begin
             r:=a mod 10;
             if (r>max) then
                max:=r;
             if (r<min) then
                min:=r;
             a:=a div 10;
        end;
        writeln('Max digit: ',max);
        writeln('Min digit: ',min);
        readln
end.