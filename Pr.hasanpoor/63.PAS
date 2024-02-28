uses    crt;
var     i,j,x,y,m:integer;
begin
        clrscr;
        gotoxy(1,1);
        write('SAT');
        gotoxy(1,2);
        write('SUN');
        gotoxy(1,3);
        write('MON');
        gotoxy(1,4);
        write('TUS');
        gotoxy(1,5);
        write('WED');
        gotoxy(1,6);
        write('TUR');
        gotoxy(1,7);
        write('FRI');
        x:=5;
        y:=3;
        i:=1;
        while i<=12 do
        begin
        if i<=6 then m:=31
        else m:=30;
        for j:=1 to m do
        begin
                gotoxy(x,y);
                write(j);
                y:=y+1;
                if y=8 then
                begin
                     y:=1;
                     x:=x+3;
                end;
        end;
        i:=i+1;
        end;
        readln
end.