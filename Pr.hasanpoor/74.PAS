uses    crt;
var     a:array [1..100] of integer;
        i,j,n,num,index:integer;
begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             write('Enter number ',i,': ');
             readln(a[i]);
        end;
        write('Enter Your Number: ');
        readln(num);
        for i:=1 to n do
             if num=a[i] then
                  j:=j+1;
        if j<>0 then
           write(j,' Times repeated')
        else
           write('Not found');
        readln
end.