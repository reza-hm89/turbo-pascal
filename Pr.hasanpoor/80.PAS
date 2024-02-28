uses    crt;
var     a:array [1..100] of integer;
        i,j,k,n,num,index:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        k:=n;
        for i:=1 to n do
        begin
             write('Enter number ',i,': ');
             readln(a[i]);
        end;
        write('Enter your number: ');
        readln(num);
        for i:=1 to n do
        begin
             if a[i]=num then
             begin
                  for j:=i to n do
                      a[j]:=a[j+1];
                  index:=1;
                  k:=k-1;
                  i:=i-1;
             end;
        end;
        if index<>0 then
        for i:=1 to k do
            write(a[i]:3)
        else write('Not found');
        readln
end.