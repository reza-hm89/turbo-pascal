uses    crt;
var     a,b:array [1..100] of integer;
        i,j,k,n,num:integer;
Begin
        clrscr;
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
                write('Number ',i,':');
                readln(num);
                if num>0 then
                begin
                     j:=j+1;
                     a[j]:=num;
                end
                else if num<0 then
                begin
                     k:=k+1;
                     b[k]:=num;
                end;
        end;
        for i:=1 to j do
            write(a[i]:5);
        writeln;
        for i:=1 to k do
            write(b[i]:5);
        readln;
end.