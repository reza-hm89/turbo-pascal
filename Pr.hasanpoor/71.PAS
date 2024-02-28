uses    crt;
var     a,b:array [0..100] of integer;
        i,n:integer;
Begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
                write('Enter number ',i,': ');
                readln(a[i]);
        end;
        for i:=1 to 100 do
             b[a[i]]:=b[a[i]]+1;
        for i:=1 to 100 do
            write('    b[',i,']: ',b[i]:4);
        readln;
end.