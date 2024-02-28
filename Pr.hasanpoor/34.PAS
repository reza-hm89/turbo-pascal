uses    crt;
var     i,n,id,u:integer;
        avg,g,s,s1:real;
begin
        clrscr;
        write('Enter ID: ');
        readln(id);
        write('Enter Tedad doroos: ');
        readln(n);
        for i:=1 to n do
        begin
                write('Enter your unit and grade: ');
                readln (u,g);
                s:=u*g+s;
                s1:=u+s1;
        end;
        avg:=s/s1;
        writeln('ID= ',id);
        write('Average= ',avg:2:2);
        readln
end.
