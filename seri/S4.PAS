uses    crt;
var     i,j,k,x,y,z,n:integer;
Begin
        clrscr;
        for i:=100 to 999 do
        begin
             k:=i;
             x:=k mod 10;
             k:=k div 10;
             y:=k mod 10;
             z:=k div 10;
             if i=(x*x*x)+(y*y*y)+(z*z*z) then
                write(i:10);
        end;
        readln
end.