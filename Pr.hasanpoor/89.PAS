uses    crt;
var     i,j,k,n,num,index:integer;
        a:array [1..100] of longint;
        gh:longint;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        write('Enter number: ');
        readln(a[1]);
        for i:=2 to n do
        begin
             repeat
                   write('Enter number: ');
                   readln(num);
             until a[i-1]<num;
             a[i]:=num;
        end;
        write('Enter number: ');
        readln(num);
        for i:=1 to n do
            if a[i]=num then
                 index:=1;
        if index=0 then
        begin
             for i:=1 to n do
                  if a[i]>num then
                  begin
                       k:=i;
                       for j:=n+1 downto i do
                           a[j]:=a[j-1];
                       a[k]:=num;
                       i:=n;
                  end;
        for i:=1 to n+1 do
            write(a[i]:3);
        end;
        readln
end.
