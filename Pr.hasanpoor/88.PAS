uses    crt;
var     i,n,num,index:integer;
        a:array [1..100] of longint;
        gh:longint;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
            readln(a[i]);
        write('Enter your number: ');
        readln(num);
        for i:=1 to n do
            if (a[i]=num) then
               index:=1;
        if index=0 then
        begin
             n:=n+1;
           a[n]:=num;
        end
        else
            writeln('Adad tekrari bod!');
        for i:=1 to n do
            write(a[i]:3);
        readln
end.