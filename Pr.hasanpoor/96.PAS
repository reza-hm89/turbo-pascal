uses    crt;
var     a:array [1..10,1..10] of integer;
        i,j,i1,j1,max:integer;
begin
        clrscr;
        for i:=1 to 5 do
            for j:=1 to 4 do
            begin
                write('a[',i,',',j,']:');
                readln(a[i,j]);
            end;
        for i:=1 to 5 do
        begin
            for j:=1 to 4 do
                if a[i][j]>max then
                begin
                     max:=a[i][j];
                     i1:=i;
                     j1:=j;
                end;
        end;
            writeln('Max= ',max,' in ',i1,',',j1);
        readln;
end.
