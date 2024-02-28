uses    crt;
var     a:array [1..10,1..10] of integer;
        i,j,j1,n,max:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
            for j:=1 to n do
            begin
                write('a[',i,',',j,']:');
                readln(a[i,j]);
            end;
        for i:=1 to n do
        begin
            max:=a[1][i];
            for j:=1 to n do
                if a[j][i]>max then
                begin
                     max:=a[j][i];
                     j1:=i;
                end;
                writeln('max',i,': ',max,'in ',j1);
        end;
        readln;
end.
