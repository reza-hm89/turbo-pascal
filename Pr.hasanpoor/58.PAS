uses    crt;
var     n,m,s:integer;
begin
        clrscr;
        write('Enter number: ');
        readln(n);
        while n<>0 do
        begin
             m:=n;
             s:=0;
             while m<>0 do
             begin
                  s:=s*10+(m mod 10);
                  m:=m div 10;
             end;
             writeln(s);
             write('Enter number: ');
             readln(n);
        end;
end.