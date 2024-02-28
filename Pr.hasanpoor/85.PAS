uses    crt;
var     i,j,n,index,find,cntr,k:byte;
        a:array [1..20] of integer;
Begin
        clrscr;
        textcolor(15);
        write('Enter n: ');
        readln(n);
        for i:=1 to n do
        begin
             write('Enter number ',i,' : ');
             readln(a[i]);
        end;
        for i:=1 to n do
        begin
            index:=a[i];
            k:=0;
            for j:=1 to n do
                if a[j]=index then
                   k:=k+1;
                if k>cntr then
                begin
                        find:=index;
                        cntr:=k;
                end;
        end;
        write('Number ',find,' has been repeated ',cntr,' times');
        readln;
end.