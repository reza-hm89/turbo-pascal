program tamrin10;
uses    crt;
const   n=12;
var     a:array[1..100] of integer;
        i,j,s:integer;
begin
        writeln('Dar amade mahyane ra vared konid:');
        for i:=1 to n do
        begin
             read(a[i]);
             s:=s+a[i];
        end;
        writeln('Average=',s/n:9:2);
        readln;
        readln;
end.
