var     n,cntr,s1,s2,s:integer;

begin   write('Enter number:');
        readln(n);
        if (n=1)  then writeln('1')
        else writeln('1 1');
        cntr:=2;
        S1:=1;
        S2:=1;
        while (cntr<n) do
        begin;
              s:=s1+s2;
              writeln(s);
              s1:=s2;
              s2:=s;
              cntr:=cntr+1;
        end;
        readln;
        readln;
end.
