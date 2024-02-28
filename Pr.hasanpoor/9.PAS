uses    crt;
var     k,h,m,s,sh,gh:longint;
begin
        clrscr;
        write('Enter gh: ');
        readln(gh);
        k:=gh;
        h:=gh div 1000;
        gh:=gh mod 1000;
        m:=gh div 100;
        gh:=gh mod 100;
        s:=gh div 30;
        sh:=k-(h*30+m*3+s);
        write(sh);
        readln
end.