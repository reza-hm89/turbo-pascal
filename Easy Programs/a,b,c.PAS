uses    crt;
var     a,b,c,temp:integer;
begin
        write('Enter a,b,c:');
        readln(a,b,c);
        if (a>b) then
        begin
                temp:=a;
                a:=b;
                b:=temp;
        end;
        if (a>c) then
        begin
                temp:=a;
                a:=c;
                c:=temp;
        end;
        if (b>c) then
        begin
                temp:=b;
                b:=c;
                c:=temp;
        end;
        writeln;
        write(a:2,b:2,c:2);
        readln;
end.