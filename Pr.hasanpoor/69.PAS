uses    crt;
var     a:array [1..100] of integer;
        i,n,max,min:integer;
Begin
        clrscr;
        write('Enter n: ');
        readln(n);
        write('a[1]:');
        readln(a[1]);
        max:=a[1];
        min:=a[1];
        for i:=2 to n do
        begin
             write('a[',i,']:');
             readln(a[i]);
             if a[i]>max then
                max:=a[i];
             if a[i]<min then
                min:=a[i];
        end;
        writeln('Max: ',max);
        writeln('Min: ',min);
        readln;
end.