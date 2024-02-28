uses    crt;
var     a:array [1..100] of integer;
        i,n,sum:integer;
Begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             write('a[',i,']:');
             readln(a[i]);
             sum:=sum+a[i];
        end;
        write('Average: ',sum/n:2:2);
        readln;
end.