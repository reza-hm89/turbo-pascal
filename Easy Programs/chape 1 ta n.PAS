uses crt;
var     cntr,n:integer;
begin
        clrscr;
        cntr:=0;
        writeln('enter your number:');
        read(n);
        while(cntr<n) do
        begin;
        cntr:=cntr+1;
        write(' ',cntr);
        end;
        readln;
        readln;
end.
