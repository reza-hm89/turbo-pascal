var     x,y,z,max:integer;
begin
        write('x:');
        readln(x);
        write('y:');
        readln(y);
        write('z:');
        readln(z);
        max:=x;
        if max<y then max:=y;
        if max<z then
         max:=z;
        if max>x then writeln(max)
        else writeln(x);
        readln;

end.