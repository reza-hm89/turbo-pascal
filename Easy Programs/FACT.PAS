var     cntr,n,
        sum,fact:real;
begin
        writeln('1+1/2!+1/3!+...+1/n!');
        cntr:=1;
        fact:=1;
        sum:=0;
        write('enter n:');
        readln(n);
        while n<>0 do
        begin
             while cntr<=n do
             begin
                  fact:=fact*cntr;
                  cntr:=cntr+1;
             end;
        sum:=sum+(1/fact);
        n:=n-1;
        cntr:=1;
        fact:=1;
        end;
        write(sum:9:5);
        readln;
end.