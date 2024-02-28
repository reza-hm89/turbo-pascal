uses    crt;
var     i,y:integer;
        ch:char;
begin
        clrscr;
        textcolor(15);
        gotoxy(35,10);
        write('New game');
        gotoxy(35,14);
        write('Save game');
        gotoxy(35,18);
        write('Load game');
        gotoxy(35,22);
        write('Exit');
        textcolor(8);
        for i:=20 to 57 do
        begin
                gotoxy(i,6);
                write('Û');
                gotoxy(i,26);
                write('Û');
        end;
        for i:=6 to 26 do
        begin
                gotoxy(20,i);
                write('Û');
                gotoxy(57,i);
                write('Û');
        end;
        textcolor(7);
        gotoxy(30,10);
        write('-->');
        y:=10;
        ch:=readkey;
        while ord(ch)<>27 do
        begin
                textcolor(7);
                if ord(ch)=72 then
                begin
                     gotoxy(30,y);
                     write('   ');
                     y:=y-4;
                     if y<10 then y:=22;
                     gotoxy(30,y);
                     write('-->');
                end
                else if ord(ch)=80 then
                begin
                     gotoxy(30,y);
                     write('   ');
                     y:=y+4;
                     if y>22 then y:=10;
                     gotoxy(30,y);
                     write('-->');
                end
                else if (ord(ch)=13) and (y=10) then
                begin
                     textcolor(3);
                     gotoxy(35,30);
                     write('New game');
                end
                else if (ord(ch)=13) and (y=14) then
                begin
                     textcolor(3);
                     gotoxy(35,30);
                     write('Save game');
                end
                else if (ord(ch)=13) and (y=18) then
                begin
                     textcolor(3);
                     gotoxy(35,30);
                     write('Load game');
                end
                else if (ord(ch)=13) and (y=22) then
                     exit;
        gotoxy(20,6);
        ch:=readkey;
        gotoxy(35,30);
        write('            ');
        end;
end.