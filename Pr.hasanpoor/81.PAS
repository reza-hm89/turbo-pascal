uses    crt;
var     a:array [1..100] of integer;
        i,n,num:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             write('Enter ID ',i,'(1-15): ');
             readln(num);
             a[num]:=a[num]+1;
        end;
        for i:=1 to 15 do
            writeln('a[',i,']: ',a[i]);
        readln
end.