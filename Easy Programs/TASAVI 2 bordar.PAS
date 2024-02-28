uses crt;
var     v1,v2:array[1..20]of integer;
        i,n:integer;
begin
        clrscr;
        writeln('v1=');
        readln(n);
        writeln('number v1:');
        for i:=1 to n do
        readln(v1[i]);
        writeln('v2=');
        readln(n);
        writeln('number v2:');
        for i:=1 to n do
        readln(v2[i]);
        i:=1;
        while i<n do
        begin
             if v1[i]=v2[i] then i:=i+1
             else writeln('mosavi nistand');
        end;
        write('v1=v2');
        readln;
end.
