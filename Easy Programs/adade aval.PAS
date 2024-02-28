var     n,i,p:integer;
begin   writeln('enter number:');
        read(n);
        if n<1 then
        begin  writeln('adad eshtebeh vared shode(N>0)');
              readln(n);
        end;
        i:=2;
        p:=1;
        while (i<=n/2) and (p<>0) do
        begin;
        p:=n mod i;
        i:=i+1;
        end;
        if (p<>0) then writeln('adad aval ast')
        else           writeln('adad aval nist');
        readln;
        readln;
end.