uses    crt;
var     a:array [0..9] of integer;
        i,r:integer;
        n:longint;
Begin
        clrscr;
        write('Enter n: ');
        readln(n);
        while n>0 do
        begin
                r:=n mod 10;
                a[r]:=a[r]+1;
                n:=n div 10;
        end;
        for i:=0 to 9 do
                writeln('a[',i,']: ',a[i]);
        readln;
end.