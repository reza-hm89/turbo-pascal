var     n,m:integer;
begin
     writeln('Enter Number:');
     readln(n);
     m:=1;
     for m:=1 to n do
       if n mod m=0 then
       write(m:3);
       readln;
       readln;
end.