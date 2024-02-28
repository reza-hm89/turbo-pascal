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
            max:=a[i][1];
            for j:=1 to n do
                if a[i][j]>max then
                begin
                     max:=a[i][j];
                     j1:=j;
                end;
                writeln('max',i,': ',max,'in ',j1);
        end;
        readln;
end.
