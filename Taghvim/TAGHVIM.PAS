uses    crt;
var     i,k,x,y,z,x1,y1,row,n:integer;
Begin
        clrscr;
        textcolor(15);
        writeln('                    D A Y S: ');
        writeln('monday:     1');
        writeln('Tuesday:    2');
        writeln('Wednesday:  3');
        writeln('Thursday:   4');
        writeln('Friday:     5');
        writeln('Saturday:   6');
        writeln('Sunday:     7');
        repeat
        gotoxy(18,9);
        write('                  ');
        gotoxy(1,9);
        write('Enter one number: ');
        readln(n);
        until (n>0) and (n<8);
        clrscr;
        textcolor(15);
        x:=5;
        y:=n;
        y1:=1;
        x1:=1;
        k:=8;
        z:=31;
        for row:=1 to 12 do
        begin
        if (row=4) or (row=7) or (row=10) then
        begin
             x1:=1;
             y1:=y1+10;
             x:=5;
             if y<>k then
                y:=y+10;
             k:=y1+7;
             if y=k then
                y:=y1;
             if y<y1 then
                y:=k-1;
        end;
        if (row=7) or (row=10) then
           z:=30;
        if row=12 then
           z:=29;
        gotoxy(x1,y1);
        write('MO');
        gotoxy(x1,y1+1);
        write('TU');
        gotoxy(x1,y1+2);
        write('WE');
        gotoxy(x1,y1+3);
        write('Th');
        gotoxy(x1,y1+4);
        write('FR');
        gotoxy(x1,y1+5);
        write('SA');
        gotoxy(x1,y1+6);
        write('SU');
        x:=x1+5;
             for i:=1 to z do
             begin
                  gotoxy(x,y);
                  write(i);
                  y:=y+1;
                  if (y>=k) then
                  begin
                       y:=y1;
                       x:=x+3;
                  end;
             end;
        x1:=x+8;
        end;
        readln
end.