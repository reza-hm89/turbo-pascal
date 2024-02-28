uses    crt;
var     x,y:integer;
begin
        write('Enter x: ');
        readln(x);
        if x>0 then
               y:=3*x-7
        else if x<0 then
               y:=4*x+10
        else
               y:=5;
        write('Y= ',y);
        readln
end.