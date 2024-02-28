var     n,cntr,y,x,temp:integer;

begin   write('Enter Number:');
        readln(n);
        cntr:=1;
        y:=1;
        x:=0;
        while (cntr<=n) do
        begin;
                writeln(y);
                temp:=x+y;
                x:=y;
                y:=temp;
                cntr:=cntr+1;
        end;
        readln;
end.    readln;
