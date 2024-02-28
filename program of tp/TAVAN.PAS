program tavan;
var     x,m,cntr,y:integer;
begin
        y:=1;
        cntr:=1;
        write('enter your number=');
        readln(x);
        write('be tavane ');
        read(m);
        while(cntr<=m) do
        begin;
        y:=y*x;
        cntr:=cntr+1;
        end;
        writeln('adade morede nazar=',y);
        readln;
        readln;
end.